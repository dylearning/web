<?php
//注册插件
RegisterPlugin('baidusubmit', 'ActivePlugin_baidusubmit');
$baidusubmit_menus = array();
$baidusubmit_language = NULL;

$table['plugin_baidusubmit_urlstat']='%pre%plugin_baidusubmit_urlstat';
$table['plugin_baidusubmit_sitemap']='%pre%plugin_baidusubmit_sitemap';

$datainfo['plugin_baidusubmit_urlstat']=array(
	'ID' => array('id', 'integer', '', 0), 
	'Ctime' => array('ctime', 'integer', '', 0), 
	'Urlnum' => array('urlnum', 'integer', '', 0), 
	'Urlcount' => array('urlcount', 'integer', '', 0), 	
);
$datainfo['plugin_baidusubmit_sitemap']=array(
	'SID' => array('sid', 'integer', '', 0), 
	'Url' => array('url', 'string', 250, ''), 
	'Type' => array('type', 'integer', '', 0), 
	'Create_time' => array('create_time', 'integer', '', 0), 
	'Start' => array('start', 'integer', '', 0), 
	'End' => array('end', 'integer', '', 0), 
	'Item_count' => array('item_count', 'integer', '', 0), 
	'File_size' => array('file_size', 'integer', '', 0), 
	'Lost_time' => array('lost_time', 'integer', '', 0), 
);

if (!class_exists('BaidusubmitGenerator')) :
	require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . './inc/const.php';
	define('BAIDUSUBMIT_MAINFILE', 'baidusubmit/include.php');  //plugin_basename(__FILE__));

class BaidusubmitGenerator
{
    static function init()
    {
        //Links in plugins list
        //add_filter('plugin_row_meta',  array(__CLASS__, 'registerPluginLinks'), 10, 2);

        require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'./inc/options.php';
        if (BaidusubmitOptions::getOption('openping')) {
            //Existing posts was trash
            Add_Filter_Plugin('Filter_Plugin_DelArticle_Succeed', 'baidusubmit_deletePost');

            //Existing post was published
            Add_Filter_Plugin('Filter_Plugin_PostArticle_Succeed', 'baidusubmit_publishPost');
        }

        //Menus
        //add_action('admin_menu',       array(__CLASS__, 'registerAdminPage'));
		//Add_Filter_Plugin('Filter_Plugin_Admin_LeftMenu', 'baidusubmit_addmenu');
    }

    static function registerPluginLinks($links, $file)
    {
        if (BAIDUSUBMIT_MAINFILE === $file) {
            $blinks = BaidusubmitSetting::genLinks();
            $links = array_merge($links, $blinks);
        }
        return $links;
    }

    static function activation()
    {
        require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . './inc/install.php';
        BaidusubmitInstall::install();
    }

    static function deactivation()
    {
        require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . './inc/install.php';
        BaidusubmitInstall::deactivation();
    }

    static function uninstall()
    {
        require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . './inc/install.php';
        BaidusubmitInstall::uninstall();
    }

    static function deletePost($postid)
    {
        require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'./inc/sitemap.php';
        $url = get_permalink($postid);
        $content = BaidusubmitSitemap::genDeleteXml($url);
        //file_put_contents('/home/work/baidusubmit.log', date('[Y-m-d H:i:s]')."\n".$content, FILE_APPEND);
        $r = BaidusubmitSitemap::sendXml($content, 2);
        //file_put_contents('/home/work/baidusubmit.log', date('[Y-m-d H:i:s]')."\n".$r, FILE_APPEND);
    }

    static function publishPost($postid)
    {
        require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . './inc/sitemap.php';
        $schema = BaidusubmitSitemap::genSchemaByPostId($postid, $xpost);
        if (ZC_POST_STATUS_PUBLIC != $xpost->Status) {
            self::deletePost($postid);
            return;
        }
        $xml = $schema->toXml();
        $content = BaidusubmitSitemap::genPostXml($xml);
        //file_put_contents('/home/work/baidusubmit.log',  date('[Y-m-d H:i:s]')."\n".$content, FILE_APPEND);
        $r = BaidusubmitSitemap::sendXml($content, 1);
        //file_put_contents('/home/work/baidusubmit.log', date('[Y-m-d H:i:s]')."\n".$r, FILE_APPEND);
    }

    static function registerAdminPage()
    {
        require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . './inc/setting.php';

        if ('auth' === GetVars('action', 'GET')) {
            BaidusubmitSetting::authSite();
            exit;
        }
        else if ('savesetting' === GetVars('action', 'GET')) {
            BaidusubmitSetting::saveSettings();
            exit;
        }

        BaidusubmitSetting::checkUpdated();
        baidusubmit_add_menu_page(
				'baidu_admin',
                baidusubmit_language('Baidu Sitemap'),//__('Baidu Sitemap', 'sitemap'),
                baidusubmit_language('Baidu Sitemap'),//__('Baidu Sitemap', 'sitemap'),
                'manage_options',
                'baidu_admin', //URL里的参数
                array('BaidusubmitSetting', 'showAdminPage'));
        baidusubmit_add_menu_page(
                'baidu_admin',
                baidusubmit_language('Baidu Sitemap - Manage'),//__('Baidu Sitemap - Manage', 'sitemap'),
                baidusubmit_language('Manage'),//__('Manage', 'sitemap'),
                'manage_options', 
				'baidu_admin', 
				array('BaidusubmitSetting', 'showAdminPage'));
        baidusubmit_add_menu_page(
                'baidu_admin',
                baidusubmit_language('Baidu Sitemap - Submission History'),//__('Baidu Sitemap - Submission History', 'sitemap'),
                baidusubmit_language('Submission History'),//__('Submission History', 'sitemap'),
                'manage_options',
                'baidu_urlstat',  //URL里的参数
                array('BaidusubmitSetting', 'showUrlstatPage'));
    }
}
endif;

 
function ActivePlugin_baidusubmit() 
{
	BaidusubmitGenerator::init();
	BaidusubmitGenerator::registerAdminPage();
	Add_Filter_Plugin('Filter_Plugin_Admin_SettingMng_SubMenu','baidusubmit_addmenu');
}

function baidusubmit_addmenu()
{
	global $zbp;
	echo '<a href="'. $zbp->host .'zb_users/plugin/baidusubmit/main.php"><span class="m-left">百度SiteMap</span></a>';
}

function InstallPlugin_baidusubmit() 
{
	global $zbp;
	$zbp->SetHint('good', baidusubmit_language('After installing Baidu Sitemaps, you can quickly and completely submit webpages and content to Baidu.'));
	BaidusubmitOptions::initOptions();
	BaidusubmitGenerator::activation();
}

function UninstallPlugin_baidusubmit()
{
	BaidusubmitGenerator::deactivation();
}

function baidusubmit_deletePost(&$article)
{
	BaidusubmitGenerator::deletePost($article->ID);
}

function baidusubmit_publishPost(&$article)
{
	BaidusubmitGenerator::publishPost($article->ID);
}

function baidusubmit_add_menu_page($baidu_admin, $title, $submn, $manage_options, $param, $class_name)
{
	global $baidusubmit_menus;
	$baidusubmit_menus[$param] = array(
		'title' => $title,
		'submn' => $submn,
		'param' => $param,
		'class' => $class_name
	);
	
}

function baidusubmit_language($str)
{
	global $zbp;
	global $baidusubmit_language;
	if ($baidusubmit_language === NULL)
	{
		$filepath = dirname(__FILE__) . DIRECTORY_SEPARATOR . "./lang/sitemap-{$zbp->option['ZC_BLOG_LANGUAGEPACK']}.php";
		$baidusubmit_language =(file_exists($filepath) ? include $filepath : array());
	}
	return (isset($baidusubmit_language[$str]) ? $baidusubmit_language[$str] : $str);
}