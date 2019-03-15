<?php

class BaidusubmitSitemap {
	const TYPE_ALL = 1;
	const TYPE_INC = 2;

	static function getMaxTid() {
		global $zbp;
		$query = $zbp->db->Query(
			$zbp->db->sql->Select(
				$zbp->table['Post'],
				array('max(log_id) AS `count_data`'),
				array(array('=', 'log_Status', ZC_POST_STATUS_PUBLIC)),
				null,
				null,
				null
			)
		);

		return ((count($query) > 0) ? (int) $query[0]['count_data'] : 0);
	}

	static function addSitemap($url, $type, $start, $end) {
		global $zbp;
		return $zbp->db->Insert(
			$zbp->db->sql->Insert(
				$zbp->table['plugin_baidusubmit_sitemap'],
				array(
					'url' => $url,
					'type' => $type,
					'start' => intval($start),
					'end' => $end,
					'create_time' => time(),
				)
			)
		);

	}

	static function getSiteFromUrl($url) {
		$url = trim($url);
		$pos = 0;
		if (0 == strncasecmp('http://', $url, 7)) {
			$pos = 7;
		}
		if (($end = strpos($url, '/', $pos)) > 0) {
			return substr($url, $pos, $end - $pos);
		}
		return substr($url, $pos);
	}

	static function dateFormat($time, $only_date = false) {
		//date_default_timezone_set(get_option('timezone_string', 'Asia/Shanghai'));
		if ($only_date) {
			return date('Y-m-d', $time);
		}
		return date('Y-m-d', $time) . 'T' . date('H:i:s', $time);
	}

	static function genPostUrl($post) {
		return $post->Url;
	}

	static function getPostIdByIdRange($start_id, $end_id) {
		global $zbp;
		$start_id = intval($start_id);
		$end_id = intval($end_id);

		$query = $zbp->db->Query(
			$zbp->db->sql->Select(
				$zbp->table['Post'],
				array('log_id'),
				array(
					array('>=', 'log_id', $start_id),
					array('<=', 'log_id', $end_id),
					array('=', 'log_Status', ZC_POST_STATUS_PUBLIC),
				),
				null,
				null,
				null
			)
		);

		$ret = array();
		foreach ($query as $val) {
			$ret[] = $val['log_id'];
		}
		return $ret;
	}

	static function getCommentListByPostId($post_id) {
		global $zbp;
		$post_id = intval($post_id);

		$query = $zbp->db->Query(
			$zbp->db->sql->Select(
				$zbp->table['Comment'],
				array(
					'comm_id As comment_ID',
					'comm_Name As comment_author',
					'comm_PostTime As comment_date',
					'comm_Content As comment_content',
				),
				array(
					array('=', 'comm_LogID', $post_id),
					array('=', 'comm_IsChecking', 0),
				),
				array(
					'comm_id' => 'ASC',
				),
				null,
				null
			)
		);

		$ret = array();
		foreach ($query as $val) {
			$ret[] = $val;
		}
		return $ret;
	}

	/**
	 *
	 * @param WP_Post $post
	 * @param array $multimedia
	 */
	static function filterContent($post, &$multimedia) {
		$imgtype = array('jpg', 'gif', 'png', 'bmp', 'jpeg');
		$audtype = array('wav', 'mid', 'mp3', 'm3u', 'wma', 'vqf', 'ra');
		$vidtype = array('swf', 'fla', 'flv', 'swi', 'f4v', 'asx', 'mpg', 'mpeg', 'aui', 'wmv', 'rm', 'rv', 'rmvb', 'mov');

		$multimedia = array('image' => array(), 'audio' => array(), 'video' => array());
		$matches = array();
		$content = trim($post->Content);

		if (false !== stripos($content, '<img')) {
			$imgregex = '/<img\s*(.*?)\s*src\s*=\s*["\'](.*?)["\'][^>]*>/isx';
			if (preg_match_all($imgregex, $content, $matches)) {
				foreach ($matches[2] as $url) {
					if (0 != strncasecmp('http', $url, 4)) {
						continue;
					}
					$multimedia['image'][$url] = $url;
				}
			}
		}

		if (false !== stripos($content, '<embed') || false !== stripos($content, '<source')) {
			$embregex = '/<(embed|source)\s*(.*?)\s*src\s*=\s*["\'](.*?)["\'][^>]*>/isx';
			if (preg_match_all($embregex, $content, $matches)) {
				foreach ($matches[3] as $url) {
					if (0 != strncasecmp('http', $url, 4)) {
						continue;
					}
					$ext = strtolower(pathinfo($url, PATHINFO_EXTENSION));
					if (in_array($ext, $audtype)) {
						$multimedia['audio'][$url] = array('url' => $url);
					} else if (in_array($ext, $vidtype)) {
						$multimedia['video'][$url] = array('url' => $url);
					}
				}
			}
		}

		if (false !== stripos($content, '<a')) {
			$linkregex = '/<a\s*(.*?)href\s*=\s*["\'](.*?)["\'](.*?)>(.*?)<\/a>/isx';
			if (preg_match_all($linkregex, $content, $matches)) {
				$linklist = $matches[2];
				$captionlist = $matches[4];
				foreach ($linklist as $key => $url) {
					$ext = strtolower(pathinfo($url, PATHINFO_EXTENSION));
					if (in_array($ext, $imgtype)) {
						$multimedia['image'][$url] = $url;
					} else if (in_array($ext, $audtype)) {
						$multimedia['audio'][$url] = array('name' => $captionlist[$key], 'url' => $url);
					} else if (in_array($ext, $vidtype) || stripos('.swf?', $url)) {
						$multimedia['video'][$url] = array('caption' => $captionlist[$key], 'url' => $url);
					}
				}
			}
		}

		if (false !== stripos($content, '[audio') || false !== stripos($content, '[video')) {
			$ubbregex = '/\[(audio|video)\s*(.*?)"(http:\/\/.*?)"(.*?)\](.*?)\[(\/audio|video)\]/isx';
			if (preg_match_all($ubbregex, $content, $matches)) {
				$typelist = $matches[1];
				$linklist = $matches[3];
				$captionlist = $matches[5];
				foreach ($captionlist as $key => $val) {
					if (empty($val)) {
						$captionlist[$key] = $linklist[$key];
					}

				}
				foreach ($linklist as $key => $url) {
					if (stripos($typelist[$key], 'audio') !== false) {
						$multimedia['audio'][$url] = array('name' => $captionlist[$key], 'url' => $url);
					} else if (stripos($typelist[$key], 'video') !== false) {
						$multimedia['video'][$url] = array('caption' => $captionlist[$key], 'url' => $url);
					}
				}
			}
		}

		// reset array key
		$multimedia['image'] = array_values($multimedia['image']);
		$multimedia['audio'] = array_values($multimedia['audio']);
		$multimedia['video'] = array_values($multimedia['video']);

		return strip_tags($post->Content);
	}

	static function getPostIdByTimeRange($start_time, $end_time, $limit) {
		global $zbp;
		$start_time = (int) $start_time; //date('Y-m-d H:i:s', $start_time);
		$end_time = (int) $end_time; //date('Y-m-d H:i:s', $end_time);
		$limit = intval($limit);

		$query = $zbp->db->Query(
			$zbp->db->sql->Select(
				$zbp->table['Post'],
				array('log_id'),
				array(
					array('>=', 'log_PostTime', $start_time),
					array('<=', 'log_PostTime', $end_time),
					array('=', 'log_Status', ZC_POST_STATUS_PUBLIC),
				),
				null,
				$limit,
				null
			)
		);

		$ret = array();
		foreach ($query as $val) {
			$ret[] = $val['log_id'];
		}
		return $ret;
	}

	static function getSitemap($type, $start, $end = 0) {
		global $zbp;
		$where = array(
			array('=', 'type', $type),
			array('=', 'start', $start),
		);
		if ($end) {
			$where[] = array('=', 'end', $end);
		}

		$sql = $zbp->db->sql->Select(
			$zbp->table['plugin_baidusubmit_sitemap'],
			array('*'),
			$where,
			null,
			null,
			null
		);

		return $zbp->db->Query($sql);
	}

	static function updateSitemap($id, $data) {
		global $zbp;
		$zbp->db->Update(
			$zbp->db->sql->Update(
				$zbp->table['plugin_baidusubmit_sitemap'],
				(array) $data,
				array(
					array('=', 'sid', intval($id)),
				)
			)
		);
	}

	static function headerStatus($status) {
		// 'cgi', 'cgi-fcgi'
		header('Status: ' . $status, TRUE);
		header($_SERVER['SERVER_PROTOCOL'] . ' ' . $status);
	}

	static function stripInvalidXml($value) {
		$ret = '';
		if (empty($value)) {
			return $ret;
		}

		$length = strlen($value);
		for ($i = 0; $i < $length; $i++) {
			$current = ord($value[$i]);
			if ($current == 0x9 || $current == 0xA || $current == 0xD ||
				($current >= 0x20 && $current <= 0xD7FF) ||
				($current >= 0xE000 && $current <= 0xFFFD) ||
				($current >= 0x10000 && $current <= 0x10FFFF)) {
				$ret .= chr($current);
			} else {
				$ret .= ' ';
			}
		}
		return $ret;
	}

	static function printIndexHeader() {
		header('Content-Type: text/xml; charset=utf-8');
		echo '<?xml version="1.0" encoding="UTF-8"?>', "\n";
		echo '<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">', "\n";
	}

	static function printIndexFooter() {
		echo '</sitemapindex>';
	}

	static function printSitemapList($sitemap_arr, $site, $suffix = '') {
		global $zbp;
		if (!is_array($sitemap_arr)) {
			return;
		}

		if (isset($_GET['debug'])) {
			foreach ($sitemap_arr as $sitemap) {
				echo '<sitemap>';
				echo '<loc><![CDATA[', $zbp->host, 'zb_users/plugin/baidusubmit/sitemap.php?', $sitemap['url'], $suffix, ']]></loc>';
				echo '<debug>';
				echo '<itemCount><![CDATA[', $sitemap['item_count'], ']]></itemCount>';
				echo '<fileSize><![CDATA[', $sitemap['file_size'], ']]></fileSize>';
				echo '<lostTime><![CDATA[', $sitemap['lost_time'], ']]></lostTime>';
				echo '<end><![CDATA[', $sitemap['end'], ']]></end>';
				echo '</debug>';
				echo '</sitemap>', "\n";
			}
		} else {
			foreach ($sitemap_arr as $sitemap) {
				echo '<sitemap><loc><![CDATA[', $zbp->host, 'zb_users/plugin/baidusubmit/sitemap.php?', $sitemap['url'], $suffix, ']]></loc></sitemap>', "\n";
			}
		}
	}

	static function genSitemapPasswd() {
		return substr(md5(mt_rand(10000000, 99999999) . microtime()), 0, 16);
	}

	static function submitIndex($action, $type, $site, $sppasswd, $sign) {
		$zzaction = '';
		if (0 == strncasecmp('del', $action, 3)) {
			$zzaction = '/deleteSitemap';
		} else if (0 == strncasecmp('add', $action, 3)) {
			$zzaction = '/saveSitemap';
		} else {
			return false;
		}

		$script = '';
		$stype = '';
		if (1 == $type) {
			$script = 'indexall';
			$stype = 'all';
		} else if (2 == $type) {
			$script = 'indexinc';
			$stype = 'inc';
		} else {
			return false;
		}

		$path = BAIDUSUBMIT_PLUGIN_PATH;
		$indexurl = "{$site}{$path}baidusubmit/sitemap.php?m={$script}&p={$sppasswd}";
		$config = include dirname(__FILE__) . DIRECTORY_SEPARATOR . 'const.php';
		$zzsite = $config['zzplatform'];
		$submiturl = $zzsite . $zzaction . '?siteurl=' . urlencode($site) . '&indexurl=' . urlencode($indexurl) . '&tokensign=' . urlencode($sign) . '&type=' . $stype . '&resource_name=RDF_Other_Blogposting';

		$ret = BaidusubmitSitemap::httpSend($submiturl);

		return array(
			'body' => $ret,
			'url' => $submiturl,
		);
	}

	static function encodeUrl($url) {
		$hexchars = '0123456789ABCDEF';
		$i = 0;
		$ret = '';
		while (isset($url[$i])) {
			$c = $url[$i];
			$j = ord($c);
			if ($c == ' ') {
				$ret .= '%20';
			} else if ($j > 127) {
				$ret .= '%' . $hexchars[$j >> 4] . $hexchars[$j & 15];
			} else {
				$ret .= $c;
			}
			$i++;
		}
		return $ret;
	}

	static function updateUrlStat($num) {
		$num = intval($num);
		$time = strtotime('today');
		global $zbp;
		$query = $zbp->db->Query(
			$zbp->db->sql->Select(
				$zbp->table['plugin_baidusubmit_urlstat'],
				array('urlcount', 'urlnum'),
				array(array('=', 'ctime', $time)),
				null,
				null,
				null
			)
		);
		if (count($query) > 0) {
			$zbp->db->Update(
				$zbp->db->sql->Update(
					$zbp->table['plugin_baidusubmit_urlstat'],
					array(
						'urlnum' => ((int) $query[0]['urlnum'] + $num),
						'urlcount' => ((int) $query[0]['urlcount'] + $num),
					),
					array(
						array('=', 'ctime', $time),
					)
				)
			);
		} else {
			$query = $zbp->db->Query($zbp->db->sql->Select(
				$zbp->table['plugin_baidusubmit_urlstat'],
				array('urlcount'),
				null,
				array(
					'ctime' => 'DESC',
				),
				'1',
				null
			));
			$precount = (count($query) == 0 ? 0 : $query[0]['urlcount']);
			$zbp->db->Insert(
				$zbp->db->sql->Insert(
					$zbp->table['plugin_baidusubmit_urlstat'],
					array(
						'ctime' => $time,
						'urlnum' => $num,
						'urlcount' => $precount + $num,
					)
				)
			);
		}

		$zbp->db->Delete(
			$zbp->db->sql->Delete(
				$zbp->table['plugin_baidusubmit_urlstat'],
				array(
					array('<', 'ctime', $time - 86400 * 7),
				)
			)
		);

	}

	static function getUrlStat() {
		global $zbp;
		return $zbp->db->Query($zbp->db->sql->Select(
			$zbp->table['plugin_baidusubmit_urlstat'],
			array('*'),
			null,
			array(
				'ctime' => 'DESC',
			),
			null,
			null
		));
	}

	static function getSitemapCount($type) {
		global $zbp;
		$query = $zbp->db->Query(
			$zbp->db->sql->Select(
				$zbp->table['plugin_baidusubmit_sitemap'],
				array('COUNT(*) AS `count_data`'),
				array(
					array('=', 'type', intval($type)),
				),
				null,
				null,
				null
			)
		);

		return (count($query) > 0 ? $query[0]['count_data'] : 0);

	}

	static function getSitemapMaxEnd($type) {
		global $zbp;
		$query = $zbp->db->Query(
			$zbp->db->sql->Select(
				$zbp->table['plugin_baidusubmit_sitemap'],
				array('MAX(end) AS `count_data`'),
				array(
					array('=', 'type', intval($type)),
				),
				null,
				null,
				null
			)
		);

		return (count($query) > 0 ? $query[0]['count_data'] : 0);
	}

	static function setIndexLastCrawl($offset) {
		$offset = intval($offset);
		if ($offset < 0) {
			return;
		}

		$lastcrawl = self::getIndexLastCrawl();
		if (0 == $offset || $offset != $lastcrawl['offset']) {
			$stime = time();
			return BaidusubmitOptions::setOption('lastcrawl', "$offset:$stime");
		}
	}

	static function getIndexLastCrawl() {
		list($offset, $stime) = explode(':', BaidusubmitOptions::getOption('lastcrawl', '0:0'));
		return array('offset' => $offset, 'stime' => $stime);
	}

	static function getSitemapList($type, $offset = -1, $limit = 0) {
		global $zbp;

		$limit = (($offset >= 0 && $limit > 0) ? array($offset, $limit) : null);

		return $zbp->db->Query(
			$zbp->db->sql->Select(
				$zbp->table['plugin_baidusubmit_sitemap'],
				array('*'),
				array(
					array('=', 'type', $type),
				),
				null,
				$limit,
				null
			)
		);

	}

	static function deleteIncreaseHistory($time) {
		global $zbp;
		return $zbp->db->Delete(
			$zbp->db->sql->Delete(
				$zbp->table['plugin_baidusubmit_sitemap'],
				array(
					array('=', 'type', self::TYPE_INC),
					array('<=', 'end', $time),
				)
			)
		);
	}

	static function genSchemaByPostId($post_id, &$post = null) {
		global $zbp;
		require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . 'schema.php';
		$post = new Post;
		$post->LoadInfoByID($post_id);
		$schema = new BaidusubmitSchemaPost();
		$schema->setTitle($post->Title);
		$schema->setLastmod($post->PostTime);
		$schema->setCommentCount($post->CommNums);
		$schema->setPublishTime($post->PostTime);

		$_user = $zbp->GetMemberById($post->AuthorID);
		$schema->setAuthor($_user->Name);

		$_url = BaidusubmitSitemap::genPostUrl($post);
		$schema->setUrl($_url);
		$schema->setLoc($_url);

		$_term = $post->Category;
		if ($_term && isset($_term)) {
			$schema->setTerm($_term->Name);
		}

		$_tags = explode(',', $post->TagsToNameString());
		if ($_tags && is_array($_tags)) {
			$_t = array();
			foreach ($_tags as $x) {
				$_t[] = $x;
			}
			$schema->setTags($_t);
		}

		$multimedia = array();
		$_content = BaidusubmitSitemap::filterContent($post, $multimedia);
		$schema->setContent($_content);
		if (!empty($multimedia['image'])) {
			$schema->setPictures($multimedia['image']);
		}
		if (!empty($multimedia['audio'])) {
			foreach ($multimedia['audio'] as $a) {
				$audio = new BaidusubmitSchemaAudio();
				$audio->setName((string) @$a['name']);
				$audio->setUrl((string) @$a['url']);
				$schema->addAudio($audio);
			}
			unset($a, $audio);
		}
		if (!empty($multimedia['video'])) {
			foreach ($multimedia['video'] as $v) {
				$video = new BaidusubmitSchemaVideo();
				$video->setCaption((string) @$v['caption']);
				$video->setThumbnail((string) @$v['thumbnail']);
				$video->setUrl((string) @$v['url']);
				$schema->addVideo($video);
			}
			unset($v, $video);
		}

		$commentlist = BaidusubmitSitemap::getCommentListByPostId($post->ID);
		if ($commentlist) {
			foreach ($commentlist as $c) {
				$comm = new BaidusubmitSchemaComment();
				$comm->setText($c['comment_content']);
				$comm->setTime($c['comment_date']);
				$comm->setCreator($c['comment_author']);
				$schema->addComment($comm);

			}
			$schema->setLatestCommentTime($c['comment_date']);
			unset($c, $comm);
		} else {
			$schema->setLatestCommentTime($post->PostTime);
		}

		return $schema;
	}

	static function genPostXml($xml) {
		$c = '<?xml version="1.0" encoding="UTF-8"?><urlset>' . "\n";
		$c .= $xml;
		$c .= '</urlset>';
		$c .= "\n";
		return $c;
	}

	static function genDeleteXml($url) {
		$xml = "<url><loc><![CDATA[{$url}]]></loc></url>";
		return self::genPostXml($xml);
	}

	static function sendXml($xml, $type) {
		require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . 'options.php';

		$url = '';
		$siteurl = BaidusubmitOptions::getOption('siteurl');
		$token = BaidusubmitOptions::getOption('pingtoken');
		if (!$token) {
			return false;
		}

		$const = include dirname(__FILE__) . DIRECTORY_SEPARATOR . 'const.php';
		$pingurl = $const['zzpingurl'];

		if ($type === 1) {
			//新增或更新
			$url .= $pingurl . '?site=' . urlencode($siteurl) . '&resource_name=RDF_Other_Blogposting&method=add';
		}
		if ($type === 2) {
			//删除
			$url .= $pingurl . '?site=' . urlencode($siteurl) . '&resource_name=sitemap&method=del';
		}
		$sign = md5($siteurl . $xml . $token);
		$url .= '&sign=' . $sign;
		return self::httpSend($url, 0, $xml);
	}

	static function httpSend($url, $limit = 0, $post = '', $cookie = '', $timeout = 15) {
		$return = '';
		$matches = parse_url($url);
		$scheme = $matches['scheme'];
		$host = $matches['host'];
		$path = $matches['path'] ? $matches['path'] . (@$matches['query'] ? '?' . $matches['query'] : ''):'/';
		$port = !empty($matches['port']) ? $matches['port'] : 80;

		$ajax = Network::Create();
		$ajax->open($post ? 'POST' : 'GET', $scheme . '://' . $host . ':' . $port . $path);
		$ajax->setRequestHeader('Cookie', $cookie);
		$ajax->send($post);
		return $limit ? substr($ajax->responseText, 0, $limit) : $ajax->responseText;
	}
}