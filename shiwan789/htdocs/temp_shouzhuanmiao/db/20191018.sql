SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS  `appcms_admin_list`;
CREATE TABLE `appcms_admin_list` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '账号',
  `upass` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `ustate` int(2) NOT NULL DEFAULT '0' COMMENT '用户状态（正常=0，停用=1）',
  `reg_date` int(11) NOT NULL DEFAULT '0' COMMENT '开通时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理表';

insert into `appcms_admin_list`(`uid`,`uname`,`upass`,`ustate`,`reg_date`) values
('1','admin','77e2edcc9b40441200e31dc57dbb8829','0','0');
DROP TABLE IF EXISTS  `appcms_app_history`;
CREATE TABLE `appcms_app_history` (
  `history_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'app下载id',
  `app_id` int(11) NOT NULL DEFAULT '0' COMMENT '应用ID',
  `app_version` varchar(500) NOT NULL DEFAULT '' COMMENT '版本号',
  `app_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `app_size` varchar(500) NOT NULL DEFAULT '' COMMENT '程序大小',
  `app_system` varchar(500) NOT NULL DEFAULT '' COMMENT '系统要求',
  `appcms_history_id` int(11) NOT NULL DEFAULT '0' COMMENT 'APPCMS数据中心下载ID',
  `down_url` varchar(500) NOT NULL DEFAULT '' COMMENT '下载地址',
  PRIMARY KEY (`history_id`),
  KEY `app_id` (`app_id`),
  KEY `appcms_history_id` (`appcms_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='应用历史版本表';

insert into `appcms_app_history`(`history_id`,`app_id`,`app_version`,`app_update_time`,`app_size`,`app_system`,`appcms_history_id`,`down_url`) values
('34','32','2.3.1','1558957029','11M','ios','0','http://im.jubaopeng8888.com/jbph5/api/sharePage/12445998'),
('31','29','1.0.0','1570112728','3M','ios','0','http://invite.chuangqish.top/invition/?userId=7931981&e=951&source=6'),
('20','20','1.0.0','1571277063','10M','ios','0','http://invite.nativefeednews.com/landing/share.html?promote=4748860'),
('32','30','1.1.0','1570112778','4M','ios|android','0','http://newer10867496.xddkj.com/share.html?id=10867496&sf=ios&sfrom=ios'),
('33','31','2.1.5','1558938990','10M','ios','0','http://uee.me/aShd4'),
('23','21','1.1.0','1557670764','10M','Android IOS','0','http://my.zrb.life/e-6433489'),
('24','22','1.1.0','1558787487','5M','ios|android','0','http://t.cn/EbkR3Pl'),
('25','23','1.0.0','1558839929','5M','ios','0','http://t.cn/EbkR3P0'),
('26','24','1.0.0','1558840847','5M','ios','0','http://wx.xy599.com/share.php?id=18296049'),
('27','25','1.0.0','1558880116','3M','ios','0','http://m.qianmaiap.com/?u=234991'),
('28','26','1.1.0','1569077454','2M','ios','0','http://feld.ppshiwan.com/?r=825477274&d=20190706&t=weixin'),
('29','27','5.1.2','1558923374','5M','ios','0','http://m.apptry100.cn/?u=72473447'),
('30','28','1.2.0','1569078758','2M','ios','0','http://q.zgkeyou.com/download?fromuid=1706458'),
('35','33','2.1.0','1558959202','3M','ios','0','http://uee.me/aShdJ'),
('36','34','3.2.5','1558960936','5M','ios','0','http://www.beeplay01.com/wxguide.html?id=92290742881'),
('37','35','2.0.3','1559033068','4M','ios','0','http://www.wulinzhuan.com/invite/5388940'),
('38','36','5.2.1','1559094316','10M','anroid|ios','0','http://uee.me/aVE7C'),
('39','37','2.3.1','1560047262','5M','Android|IOS','0','http://task.yuzhuan.com/reg.php?code=616017'),
('40','38','1.2.5','1560050673','14M','Android','0','http://uee.me/aVQgf'),
('41','39','2.3.6','1570449690','4M','Android','0','http://ima.nevoid.com/land.html?promote=android7zxq8gs'),
('42','40','2.7.3','1560088063','12M','Android','0','http://uo.sqylwx.cn/g0w2y6r6/1h/vffjr0l5/je.html?o874VFs=aj'),
('43','41','2.7.0','1560088014','2M','Android','0','http://player.cryptofootball.online/newsJump.html?env=p&coo=100775365&ch=aa'),
('44','42','2.2.0','1561182647','10M','IOS','0','http://share.jinchanzhuanqian.com/?uid=154238'),
('45','43','5.1.0','1561183304','10M','IOS','0','http://huojianshiwan.com/#/link/UzZrUDIyMitBVFJWb0hEYzc4TDE0dz09'),
('46','44','5.2.4','1561184406','12M','IOS','0','http://www.shiyongapp.com/guide/14299490'),
('47','45','10.3.6','1561267235','21M','IOS','0','http://www.mapzqq-com.com/test/jump/535914'),
('48','46','2.1.5','1570112851','10M','苹果IOS','0','http://uee.me/bXXHH'),
('49','47','3.6.1','1561267736','5M','苹果IOS','0','http://wx.th233.cn/?id=18439181'),
('50','48','5.3.3','1561778229','12M','苹果IOS','0','http://www.aidouzhuan.com/dz1/g/index.html?uid=zetm2bom9e'),
('51','49','2.6.0','1561778461','5M','苹果IOS','0','http://v2.mayixiaoka.com/rec/283209'),
('52','50','5.1.2','1561778542','23M','苹果IOS','0','http://m.moneyds.com/user/inviteu/81314070.html'),
('53','51','3.2.0','1562396312','10M','苹果IOS','0','http://zs.hua2mi.com/#/?parentid=201678'),
('54','52','5.4.7','1562396902','11M','苹果IOS','0','http://liontry.youweihd.com/p/i/NniqIn'),
('55','53','2.1.0','1562396933','13M','苹果IOS','0','http://jyouqian.com/weixin/friendJoin?re=TX7q9GgwaYE%23&bm=2.00'),
('56','54','8.3.1','1562396963','16M','苹果IOS','0','http://integral.xckoo.com/invite?uid=230703'),
('57','55','5.3.2','1562396994','21M','苹果IOS','0','http://m.jinrizuijia.net/invite/?inviter=rTJEEGCZ8aewTK4LQPFUURYkoy-yEwADV1tLmY2MitkvPga2UIe6EQGB5-wSZnpXmDbzW_5wf0E1&from=link'),
('58','56','3.2.0','1562397022','22M','苹果IOS','0','http://unsafe.duobaoman.cn/p/s.html?t=2&id=110137858&c=0&s=XS2TI');
DROP TABLE IF EXISTS  `appcms_app_list`;
CREATE TABLE `appcms_app_list` (
  `app_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '应用id',
  `last_cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '终极分类ID',
  `app_title` varchar(500) NOT NULL DEFAULT '' COMMENT '应用名称',
  `app_stitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `app_version` varchar(500) NOT NULL DEFAULT '' COMMENT '版本号（最新）',
  `app_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间（最新）',
  `app_size` varchar(50) NOT NULL DEFAULT '' COMMENT '程序大小（最新）',
  `app_system` varchar(100) NOT NULL DEFAULT '' COMMENT '系统要求（最新）',
  `app_type` varchar(20) NOT NULL DEFAULT '' COMMENT '软件类型：免费/收费',
  `app_logo` varchar(500) NOT NULL DEFAULT '' COMMENT '缩略图',
  `app_desc` text COMMENT '应用详情',
  `app_company` varchar(500) NOT NULL DEFAULT '' COMMENT '开发商',
  `app_company_url` varchar(500) NOT NULL DEFAULT '' COMMENT '开发商网址',
  `app_tags` varchar(1000) NOT NULL DEFAULT '' COMMENT '标签',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '入库时间',
  `app_grade` float NOT NULL DEFAULT '0' COMMENT '用户评分',
  `app_recomment` float NOT NULL DEFAULT '0' COMMENT '系统评分',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发布人ID',
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '发布人',
  `app_comments` int(11) NOT NULL DEFAULT '0' COMMENT '评论量',
  `app_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `app_down` int(11) NOT NULL DEFAULT '0' COMMENT '下载量',
  `app_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `data_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '数据中心应用ID',
  `charge_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '独立计费包ID',
  `rewrite_tag` varchar(100) NOT NULL DEFAULT '' COMMENT 'app页面伪静态标签',
  `seo_title` text COMMENT '应用SEO标题',
  `seo_keywords` text COMMENT '应用SEO关键字',
  `seo_desc` text COMMENT '应用SEO描述',
  PRIMARY KEY (`app_id`),
  KEY `cate_update_time` (`last_cate_id`,`app_update_time`),
  KEY `cate_order` (`last_cate_id`,`app_order`),
  KEY `cate_visitor` (`last_cate_id`,`app_visitors`),
  KEY `cate_create_time` (`last_cate_id`,`create_time`),
  KEY `cate_down` (`last_cate_id`,`app_down`),
  KEY `app_update_time` (`app_update_time`),
  KEY `app_order` (`app_order`),
  KEY `app_down` (`app_down`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='应用表';

insert into `appcms_app_list`(`app_id`,`last_cate_id`,`app_title`,`app_stitle`,`app_version`,`app_update_time`,`app_size`,`app_system`,`app_type`,`app_logo`,`app_desc`,`app_company`,`app_company_url`,`app_tags`,`create_time`,`app_grade`,`app_recomment`,`uid`,`uname`,`app_comments`,`app_visitors`,`app_down`,`app_order`,`data_app_id`,`charge_app_id`,`rewrite_tag`,`seo_title`,`seo_keywords`,`seo_desc`) values
('29','8','掉钱眼儿','掉钱眼儿','1.0.1','1570112754','3M','ios','','/upload/img/2019/05/27/5ceb55fe519df.png','<div>
	掉钱眼儿是一款可以赚钱的APP试玩体验平台。每天更新大量优质应用供大家体验，用户主要通过试玩APP赚钱，达到最低提现额度就可以申请提现到支付宝或者微信。下载并完成一定任务就可以获得相应奖励。下载任务、高额任务、流量分发等多种合作模式，效果稳定！累计投 放过上千款国内外知名APP。</div>
<div>
	&nbsp;</div>
<div>
	掉钱眼儿app是一款APP试玩推广平台，仅限苹果iOS平台使用。相比其他软件，<span style="color:#ff0000;">最大的优势在于不需首次</span>，只要你抢到了任务，就算以前下过这个软件，还是可以继续做。<span style="color:#ff0000;">首次成功送2元现金红包</span>。<span style="color:#ff0000;">试玩一款应用1-3元</span>，任务一般晚上9点更新。用户下载APP试玩体验，即可获得奖励，人人都是&ldquo;应用体验师&rdquo;。</div>
','','','掉钱眼儿','1570112754','10','10','1','admin','2122','21239','1999','9991','0','0','','掉钱眼儿下载_掉钱眼儿app下载_掉钱眼儿手机赚钱软件怎么玩？附新手攻略','掉钱眼儿,掉钱眼儿app','掉钱眼儿是一款可以赚钱的APP试玩体验平台。每天更新大量优质应用供大家体验，用户主要通过试玩APP赚钱，达到最低提现额度就可以申请提现到支付宝或者微信。下载并完成一定任务就可以获得相应奖励。下载任务、高额任务、流量分发等多种合作模式，效果稳定！累计投 放过上千款国内外知名APP。'),
('25','8','钱脉','钱脉','1.0.0','1558948658','3M','ios','','/upload/img/2019/05/26/5cea9d91ca790.JPG','<div>
	钱脉app是一款最新上线苹果手机试玩赚钱平台，<span style="color:#ff0000;">任务多多</span>，要赚钱，找钱脉，钱脉APP是一款能把人脉变成钱脉的APP，试玩一个应用<span style="color:#ff0000;">单价1元</span>，<span style="color:#ff0000;">5元就能提现，非常容易变现</span>。</div>
<div>
	&nbsp;</div>
<div>
	钱脉APP是一款能把人脉变成钱脉的APP，试玩一个应用单价1元起，5元就能提现。内置大量ios赚钱佣金任务，钱脉试玩有趣又好玩的应用还能赚钱，钱脉为你提供超多好玩的应用，玩一玩 应用就领现金奖励，赶快加入钱脉领奖励！</div>
','','','钱脉','1558948658','10','10','1','admin','1000','1021','2355','9995','0','0','','钱脉下载_官方钱脉app免费下载_钱脉手机赚钱软件是怎么样?','钱脉,官方下载','钱脉APP是一款能把人脉变成钱脉的APP，试玩一个应用单价1元起，5元就能提现。内置大量ios赚钱佣金任务，钱脉试玩有趣又好玩的应用还能赚钱，钱脉为你提供超多好玩的应用，玩一玩 应用就领现金奖励，赶快加入钱脉领奖励！'),
('26','8','PP红包','PP红包','1.1.0','1569077456','2M','ios','','/upload/img/2019/05/26/5ceaa34a45615.png','<div>
	pp红包是2017年推出的一款能随时随地帮你赚钱的神奇软件,目前仅支持苹果ios系统试玩赚钱,小伙伴们可以在pp红包中通过完成app里面规定的任务来获得现金红包和奖励。你只需要每天花一点点时间去完成下载试玩app任务，就能得到现金奖励！可以直接提现或充值话费哦。<span style="color:#ff0000;">10元即可提现，秒到账</span>！</div>
<div>
	&nbsp;</div>
<div>
	pp红包，经典老平台新手<span style="color:#ff0000;">任务量大</span>，安装红包助手<span style="color:#ff0000;">送3元</span>,试玩<span style="color:#ff0000;">每单收入1-3.5元</span>（奖励），任务有预告，提现秒到微信钱包或者支付宝。 苹果用户在此平台试用一款APP应用可获得奖励，你还在犹豫什么呢?如果小伙伴们感兴趣，可以考虑一下下载这款app体验感受一番。</div>
','','','PP红包','1569077456','10','10','1','admin','1000','1027','2345','9994','0','0','','pp红包下载_pp红包app助手下载_怎么用pp红包免费赚零发钱?','pp红包,pp红包助手','pp红包是2017年推出的一款能随时随地帮你赚钱的神奇软件,目前仅支持苹果ios系统试玩赚钱,小伙伴们可以在pp红包中通过完成app里面规定的任务来获得现金红包和奖励。你只需要每天花一点点时间去完成下载试玩app任务，就能得到现金奖励！可以直接提现或充值话费哦。10元即可提现，秒到账！'),
('27','8','秒赚大钱','秒赚大钱','5.1.2','1561131859','5M','ios','','/upload/img/2019/05/27/5ceb46d4d4a60.png','<div>
	秒赚大钱，试玩有趣又好玩的苹果app还可以赚零花钱，是一款手机赚钱应用，用户通过完成秒赚大钱app里的任务就能获得收益，轻轻松松赚取零花钱，任务非常简单，用户只需动动手指，将文字分享到朋友圈即可赚钱，是不是很简单。</div>
<div>
	&nbsp;</div>
<div>
	秒赚大钱app，试玩一个应用<span style="color:#ff0000;">单价1元起</span>，<span style="color:#ff0000;">新用户送2元</span>，<span style="color:#ff0000;">10元起提现</span>。轻轻松松赚钱，真的躺着都会赚钱的平台！不仅体验精品app可以赚钱，还能进行阅读高质量的文章赚钱，邀请好友赚的更多，让徒弟帮你赚钱，邀请可以提成11元。</div>
','','','秒赚大钱','1561131859','10','10','1','admin','1000','1011','2464','9993','0','0','','秒赚大钱下载_秒赚大钱app下载_秒赚大钱手机赚钱软件新手攻略','秒赚大钱,秒赚','秒赚大钱，试玩有趣又好玩的苹果app还可以赚零花钱，是一款手机赚钱应用，用户通过完成秒赚大钱app里的任务就能获得收益，轻轻松松赚取零花钱，任务非常简单，用户只需动动手指，将文字分享到朋友圈即可赚钱，是不是很简单。'),
('28','8','天天钱庄','天天钱庄','1.2.0','1569077635','2M','ios','','/upload/img/2019/05/27/5ceb4fc52f21d.png','<div>
	天天钱庄app，试玩APP就能赚钱，操作简单,赚钱容易，小伙伴们通过完成指定的下载体验任务,来获得现金奖励，让你越来越有钱的APP，海量任务,收益最高,轻松赚到零花钱的平台。提现便捷,超快到账,最安全靠谱的赚钱平台。</div>
<div>
	&nbsp;</div>
<div>
	天天钱庄，<span style="color:#ff0000;">老平台</span>，<span style="color:#ff0000;">任务很多的平台之一</span>，<span style="color:#ff0000;">推荐做</span>，<span style="color:#ff0000;">新用户注册送1元，单价0.8-2元，满5元就可以提现</span>，按要求的话赚的很快哦，真实有效的让您足不出户试玩应用，在家轻松赚钱！</div>
','','','天天钱庄','1569077635','10','10','1','admin','10000','10021','2343','9992','0','0','','天天钱庄下载_天天钱庄app下载_天天钱庄手机赚钱软件是真的吗?','天天钱庄,手机赚钱','天天钱庄app，试玩APP就能赚钱，操作简单,赚钱容易，小伙伴们通过完成指定的下载体验任务,来获得现金奖励，让你越来越有钱的APP，海量任务,收益最高,轻松赚到零花钱的平台。提现便捷,超快到账,最安全靠谱的赚钱平台。'),
('21','21','众人帮','','1.1.0','1558787962','10M','Android IOS','','/upload/img/2019/04/21/5cbc4141a6b3b.jpg','<h3 style="margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	<span style="font-weight: normal;">应用介绍</span></h3>
<br style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;" />
<p class="in-info" style="margin: 0px; padding: 0px; word-wrap: break-word; line-height: 20px; color: rgb(73, 73, 73); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	&nbsp;</p>
<div style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	<span style="font-size: 14px;">众人帮，让你充分利用自己的碎片时间，做简单悬赏任务，随时随地赚钱！让自己每月不缺零花钱！客户也可以发布悬赏、用众人帮的千万用户帮你完成调查问卷、数据采集、营销推广等工作。</span><br />
	<br />
	<div>
		<p style="margin: 0px 0px 5px; padding: 0px; word-wrap: normal; max-width: 100%; clear: both; min-height: 1em; font-size: 14px; border: 0px; list-style: none; word-break: normal; line-height: 21px; color: rgb(70, 70, 70); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; background-color: rgb(248, 248, 248); box-sizing: border-box !important;">
			<span style="margin: 0px; padding: 0px 2px 2px; max-width: 100%; word-break: normal; line-height: 1.8em; border-color: rgb(255, 175, 205); border-bottom-width: 2px; border-bottom-style: solid; display: block; float: left; color: rgb(0, 112, 192); box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; line-height: 25px; background-color: rgb(255, 255, 255); box-sizing: border-box !important; word-wrap: break-word !important;">1、软件特色</span></span></p>
		<p style="margin: 0px; padding: 0px; word-wrap: break-word !important; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 14px; line-height: 25px; box-sizing: border-box !important;">
			&nbsp;</p>
	</div>
	<div>
		<div>
			<span style="font-size: 14px;">多任务兼职赚钱平台，阅读、下载、调查等，两级好友10%佣金收益提成</span></div>
		<div>
			&nbsp;</div>
		<div>
			<p style="margin: 0px 0px 5px; padding: 0px; word-wrap: normal; max-width: 100%; clear: both; min-height: 1em; font-size: 14px; border: 0px; list-style: none; word-break: normal; line-height: 21px; color: rgb(70, 70, 70); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; background-color: rgb(248, 248, 248); box-sizing: border-box !important;">
				<span style="margin: 0px; padding: 0px 2px 2px; max-width: 100%; word-break: normal; line-height: 1.8em; border-color: rgb(255, 175, 205); border-bottom-width: 2px; border-bottom-style: solid; display: block; float: left; color: rgb(0, 112, 192); box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; line-height: 25px; background-color: rgb(255, 255, 255); box-sizing: border-box !important; word-wrap: break-word !important;">2、提现规则</span></span></p>
			<p style="margin: 0px; padding: 0px; word-wrap: break-word !important; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 14px; line-height: 25px; box-sizing: border-box !important;">
				&nbsp;</p>
		</div>
		<div>
			<span style="font-size: 14px;">完成新手任务，1元秒提现微信，之后30元起</span></div>
		<div>
			&nbsp;</div>
		<div>
			<p style="margin: 0px 0px 5px; padding: 0px; word-wrap: normal; max-width: 100%; clear: both; min-height: 1em; font-size: 14px; border: 0px; list-style: none; word-break: normal; line-height: 21px; color: rgb(70, 70, 70); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; background-color: rgb(248, 248, 248); box-sizing: border-box !important;">
				<span style="margin: 0px; padding: 0px 2px 2px; max-width: 100%; word-break: normal; line-height: 1.8em; border-color: rgb(255, 175, 205); border-bottom-width: 2px; border-bottom-style: solid; display: block; float: left; color: rgb(0, 112, 192); box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; line-height: 25px; background-color: rgb(255, 255, 255); box-sizing: border-box !important; word-wrap: break-word !important;">3、小贴士</span></span></p>
			<p style="margin: 0px; padding: 0px; word-wrap: break-word !important; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 14px; line-height: 25px; box-sizing: border-box !important;">
				&nbsp;</p>
			<div>
				<div>
					<span style="font-size: 14px;">申请为会员也可自主发布悬赏任务</span></div>
				<div>
					&nbsp;</div>
				<div>
					<span style="font-size: 14px;">众人帮官方QQ群：286384518</span></div>
			</div>
		</div>
	</div>
	<div>
		<span style="font-size: 14px;">&nbsp;</span></div>
	<div>
		<u style="color: rgb(255, 0, 0);"><span style="font-size: 14px;">注：请勿作弊！商家规则多变、具体玩法请亲自体验</span></u></div>
</div>
<p style="margin: 0px; padding: 0px; word-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	&nbsp;</p>
<br />
','','','','1558787962','0','10','1','admin','0','10019','1253','8999','0','0','','','',''),
('22','8','试客小兵','试客小兵','1.1.0','1570106315','5M','ios|android','','/upload/img/2019/05/25/5ce9316642ce1.jpg','<span style="font-family:微软雅黑;"><span style="font-size:14px;"><span style="color: rgb(79, 79, 79); text-align: justify;">应用试客，是手机赚钱体验</span><span style="text-align: justify; box-sizing: border-box; outline: 0px; word-break: break-all; color: rgb(255, 0, 0);">必做的平台</span><span style="color: rgb(79, 79, 79); text-align: justify;">，通过使用手机下载指定的应用就可以获得 </span><span style="color:#ff0000;"><span style="text-align: justify;">2 元- 3.5 元</span></span><span style="color: rgb(79, 79, 79); text-align: justify;">不等的现金奖励，</span><span style="text-align: justify; box-sizing: border-box; outline: 0px; word-break: break-all; color: rgb(255, 0, 0);">单价最高</span><span style="color: rgb(79, 79, 79); text-align: justify;">。目前仅支持苹果设备试玩，现金奖励可通过支付宝 / 微信轻松提现或兑换超划算的流量。</span></span></span><br />
<br />
<span style="color:#ff0000;"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 21px;">任务多</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 21px;">，</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 21px;">单价高</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 21px;">，</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 21px;">基本都是1.5元以上</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 21px;">，</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 21px;">必做平台</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 21px;">，目前就试客和钱咖这2个平台有这么高的单价加入应用试客验证成功就送</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 21px;">1元现金红包</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 21px;">，</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 21px;">8元提现秒到账</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 21px;">。试客小兵手把手教你秒变赚钱高手！。需要IOS9.0（包括IOS9.0）以上系统，扫描二维码进入。</span>','','','试客小兵,应用试客','1570106315','10','10','1','admin','1000','1062','3094','9998','0','0','','试客小兵下载_试客小兵app下载_应用试客手机赚钱软件是真的吗,怎么玩?','试客小兵,应用试客','应用试客(试客小兵)是什么？应用试客，是手机赚钱体验必做的平台，通过使用手机下载指定的应用就可以获得 2 元- 3.5 元不等的现金奖励，单价最高。目前仅支持苹果设备试玩，现金奖励可通过支付宝 / 微信轻松提现或兑换超划算的流量。'),
('23','8','钱咖','钱咖','1.0.0','1558948686','5M','ios','','/upload/img/2019/05/25/5ce93a85bff3d.jpg','钱咖是网赚、手赚必做的试玩平台，<span style="color:#ff0000;">业界第一手机赚钱平台</span>，<span style="color:#ff0000;">全网最高单价</span>。用户每成功体验一个软件只需要3-5分钟左右，<span style="color:#ff0000;">单价奖励1.5~3.5元不等</span>。<span style="color:#ff0000;">成功加入就送1元现金奖励</span>。<span style="color:#ff0000;">10元就可提现到微信或者支付宝</span>。提现24小时内到账，每天下午3点刷新任务，其他时间不定时刷新！该平台3元的任务要付费（这种任务下载的时候要付费1元，所以单价也特别高。）不想做的朋友可以不要做。3元以下的都是免费的也不需要验证。<br />
<br />
如何玩转钱咖？<span style="color:#ff0000;">钱咖官方教学新手视频</span>，一起来看视频吧，简单清晰明了<br />
<br />
<iframe allowfullscreen="" frameborder="0" height="498" src="https://v.qq.com/iframe/player.html?vid=e0681w1awma&amp;tiny=0&amp;auto=0" width="640"></iframe>','','','钱咖','1558948686','10','10','1','admin','1000','1042','2435','9997','0','0','','钱咖下载_钱咖app下载_钱咖官方新手教学视频攻略教程','钱咖,app试玩','钱咖是网赚、手赚必做的试玩平台，业界第一手机赚钱平台，全网最高单价。用户每成功体验一个软件只需要3-5分钟左右，单价奖励1.5~3.5元不等。成功加入就送1元现金奖励。10元就可提现到微信或者支付宝。提现24小时内到账，每天下午3点刷新任务，其他时间不定时刷新！该平台3元的任务要付费（这种任务下载的时候要付费1元，所以单价也特别高。）不想做的朋友可以不要做。3元以下的都是免费的也不需要验证。'),
('24','8','小鱼赚钱','小鱼赚钱','1.0.0','1569324404','5M','ios','','/upload/img/2019/05/26/5cea04adb683b.jpg','<div>
	<span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">小鱼赚钱是什么？</span></div>
<div>
	<span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">动动手指，试玩应用的赚钱软件。一款能赚钱的APP，用户通过完成指定的小任务，来获得现金奖励，也是用户数较多、用户信任度较高、规模较大的激励互动平台！</span><br />
	&nbsp;</div>
<span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">用户可以通过试玩应用等多种方式进行赚钱，并且你还可以邀请朋友加入小鱼赚钱成为徒弟，轻松享受分成，感兴趣的朋友赶紧下载试试吧。</span><br />
<br />
<span style="color:#ff0000;"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">任务最多，单价每单1-3元，1元</span><span style="font-size: 14px;"><span style="font-family: 微软雅黑; line-height: 1.5;">就</span></span><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">可提现</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">，这个平台</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">有时间提醒</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">，</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">下载完成后自动打开软件试玩</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">，</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">自动提交</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">，不好的一点是下载完成打开软件后，如果你打开其他软件，还是会跳到试玩的这个软件。总体来说非常不错。</span>','','','小鱼赚钱','1569324404','10','10','1','admin','1000','1034','2452','9996','0','0','','小鱼赚钱下载_小鱼赚钱app下载_小鱼赚钱手机软件是真的吗,怎么玩?','小鱼赚钱,试玩app','小鱼赚钱是什么？动动手指，试玩应用的赚钱软件。一款能赚钱的APP，用户通过完成指定的小任务，来获得现金奖励，也是用户数较多、用户信任度较高、规模较大的激励互动平台！'),
('20','8','iMoney爱盈利','iMoney爱盈利','1.0.0','1571277064','10M','ios','','/upload/img/2019/04/21/5cbc3d19da5f1.png','<p style="margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	<span style="color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px;"><strong>iMoney爱盈利</strong>是一家非常正规的苹果软件试用平台，可以说</span><span style="color:#ff0000;"><span style="font-family: 微软雅黑; font-size: 14px;">业内排名前三，重点首推</span></span><span style="color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px;">，非常专业，</span><span style="color:#ff0000;"><span style="font-family: 微软雅黑; font-size: 14px;">必做的平台</span></span><span style="font-size:14px;">，多种赚钱方式让您多一份零花钱，试玩赚钱，高额任务，挖矿赚钱，动动手指，轻松日入百元，新用户1元即可提现到微信。</span></p>
<div style="font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	&nbsp;</div>
<div style="font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	<span style="font-size:14px;"><span style="font-family: Arial, Verdana, sans-serif;">iMoney为你提供超多好玩的应用，试玩应用还能领取丰厚的现金红包，每天大量试玩任务，零投入收益远超XX宝。</span></span></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-size:14px;">支持 微信/支付宝 提现，累计近百万用户提现到支付宝，微信。</span></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-size:14px;">邀请身边亲朋好友一起赚钱，获得大量奖励以及永久提成，工作之外的第二份可观收入。</span><br />
	&nbsp;</div>
<div style="font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	<section class="yead_editor" id="1_488" label="Copyright ? 2015 Yead All Rights Reserved." style="color: rgb(153, 153, 153); line-height: 21.6px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; margin: 5px auto;"><section style="border: none; margin: 1em auto;"><section class="yead_bdbc" style="display: inline-block; padding-bottom: 3px; border-bottom: 1px solid rgb(255, 105, 31);"><section class="yead_bgc" style="font-size: 16px; line-height: 21.6px; width: 0.2em; height: 1.1em; vertical-align: bottom; display: inline-block; background-color: rgb(255, 105, 31);"></section><section style="font-size: 16px; line-height: 1.12em; height: 1.12em; vertical-align: bottom; padding: 0px 0.5em; display: inline-block;">
	<p style="margin: 0px; padding: 0px; word-wrap: break-word;">
		<span style="color: rgb(0, 0, 0);">软件特点</span></p>
	<div>
		&nbsp;</div>
	<div>
		&nbsp;</div>
	<div>
		&nbsp;</div>
	</section></section></section></section></div>
<span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">任务多</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">，</span><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">单价高</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">，</span><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">每单1.3元起</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">，</span><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">必做平台之一。</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">下午四点后任务超多，</span><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">加入立刻送1元现金奖励</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">。</span><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: 微软雅黑; line-height: 1.5;">只要10元就能提现</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">，试玩应用还能领取丰厚的现金</span>红包<span style="font-size: 14px; color: rgb(0, 0, 0); font-family: 微软雅黑; line-height: 1.5;">，还有挖矿赚钱、点赞赚钱、VIP等级系统等趣味玩法在您娱乐同时还能赚钱，赶快加入吧~</span><br style="font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;" />
<p class="in-info" style="margin: 0px; padding: 0px; word-wrap: break-word; line-height: 20px; color: rgb(73, 73, 73); font-family: &quot;Microsoft YaHei&quot;, Arial, 宋体, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	&nbsp;</p>
<section class="yead_editor" id="1_488" label="Copyright ? 2015 Yead All Rights Reserved." style="line-height: 21.6px; font-size: 14px; margin: 5px auto;"><section style="border: none; margin: 1em auto;"><section class="yead_bdbc" style="display: inline-block; padding-bottom: 3px; border-bottom: 1px solid rgb(255, 105, 31);"><section class="yead_bgc" style="color: rgb(153, 153, 153); font-size: 16px; line-height: 21.6px; width: 0.2em; height: 1.1em; vertical-align: bottom; display: inline-block; background-color: rgb(255, 105, 31);"></section><section style="font-size: 16px; line-height: 1.12em; height: 1.12em; vertical-align: bottom; padding: 0px 0.5em; display: inline-block;">
<p style="margin: 0px; padding: 0px; word-wrap: break-word;">
	<font color="#000000">任务更新</font></p>
<div style="color: rgb(153, 153, 153);">
	&nbsp;</div>
<div style="color: rgb(153, 153, 153);">
	&nbsp;</div>
<div style="color: rgb(153, 153, 153);">
	&nbsp;</div>
</section></section></section></section><span style="color:#ff0000;"><span style="font-family:微软雅黑;"><span style="font-size:14px;">每天下午 3 - 6 点任务会集中投放,大量任务陆续上线，任务最多平台。</span></span></span><br />
<br />
<br />
','','','爱盈利,imoney爱盈利,iMoney爱盈利','1571277064','10','10','1','admin','10000','10244','3466','9999','0','0','',' imoney爱盈利app下载_imoney爱盈利下载_imoney爱盈利赚钱软件怎么玩？附新手攻略','imoney,爱盈利,爱钱','爱盈利手机赚钱软件怎么玩?iMoney爱盈利是一家非常正规的苹果软件试用平台，可以说业内排名前三，非常专业，必做的平台，多种赚钱方式让您多一份零花钱，试玩赚钱，高额任务，挖矿赚钱，动动手指，轻松日入百元，新用户1元即可提现到微信。'),
('30','8','豆豆趣玩','豆豆趣玩','1.1.0','1570112779','4M','ios|android','','/upload/img/2019/05/27/5ceb7ef2306b6.png','<div>
	豆豆趣玩是一款可以试玩体验App的手机赚钱的软件，试玩APP获得高收益，赚钱的方式很简单，每试玩一个APP可获得1元现金奖励的收益。随时可提现，10元就能微信提现秒到账。不用出门，在家就可以手机兼职，利用碎片时间兼职赚钱。在获取生活资讯中，边看精彩内容边手机赚钱。 兼职赚钱新方式，动动手指一起来赚钱。</div>
<div>
	&nbsp;</div>
<div>
	豆豆趣玩，老平台，适合安卓和苹果系统，<span style="color:#ff0000;">任务多多，注册送5元，安装后送1元，没错，安装就有6元，每单0.8-1元左右，满10元即可微信提现。</span></div>
','','','豆豆趣玩','1570112779','10','10','1','admin','123','2249','1842','9990','0','0','','豆豆趣玩下载_豆豆趣玩app下载_豆豆趣玩手机赚钱软件是怎么样?','豆豆趣玩,豆豆趣玩手机赚钱软件','豆豆趣玩是一款可以试玩体验App的手机赚钱的软件，试玩APP获得高收益，赚钱的方式很简单，每试玩一个APP可获得1元现金奖励的收益。随时可提现，10元就能微信提现秒到账。不用出门，在家就可以手机兼职，利用碎片时间兼职赚钱。在获取生活资讯中，边看精彩内容边手机赚钱。 兼职赚钱新方式，动动手指一起来赚钱。'),
('31','8','蝉试客','蝉试客','2.1.5','1561131945','10M','ios','','/upload/img/2019/05/27/5ceb84d52e3b0.png','<div>
	蝉试客是最近新出的一款苹果试玩软件，受到了许多新用户的追捧，纷纷加入，利用碎片化时间，发现更多好玩应用，只要3分钟试玩体验，就能获得一次试玩奖励，轻轻松松赚钱，零散的时间可以获得最大收益。</div>
<div>
	&nbsp;</div>
<div>
	蝉试客是一款使用起来非常方便简单的苹果试玩软件，这款软件能够很好的帮助用户们去赚钱，<span style="color:#ff0000;">注册送一元，单价一元起，满10元可微信提现，和钱咖差不多的软件</span>。</div>
','','','蝉试客','1561131945','10','10','1','admin','122','1011','1633','9899','0','0','','蝉试客下载_蝉试客app下载 蝉试客手机赚钱软件是真的吗?','蝉试客,蝉试客app下载','蝉试客是最近新出的一款苹果试玩软件，受到了许多新用户的追捧，纷纷加入，利用碎片化时间，发现更多好玩应用，只要3分钟试玩体验，就能获得一次试玩奖励，轻轻松松赚钱，零散的时间可以获得最大收益。
'),
('32','8','巨宝朋','巨宝朋','2.3.1','1561131967','11M','ios','','/upload/img/2019/05/27/5cebc88295609.jpg','<div>
	巨宝朋，一款专业的苹果手机试玩APP赚钱平台，隶属上海聚鹏科技有限公司旗下。操作简单，用户只需通过下载巨宝朋打开APP后选择试玩APP，根据上面的提示完成应用安装试玩体验后可获得佣金收益，单次试玩单价1元起，满10元可申请提现。同时邀请好友试玩可获得好友做任务收益的任务提成。</div>
<div>
	&nbsp;</div>
<div>
	巨宝朋全新改版，比较给力，<span style="color:#ff0000;">任务多多，每个任务1元单价，10元可以提现</span>，巨宝朋是最专业的苹果手机应用赚钱平台，每天大量任务。</div>
','','','巨宝朋','1561131967','10','10','1','admin','1331','12232','1523','9898','0','0','','巨宝朋下载_巨宝朋app下载_巨宝朋手机试玩赚钱是真的吗?','巨宝朋,巨宝朋手机试玩赚钱是真的吗','巨宝朋，一款专业的苹果手机试玩APP赚钱平台，隶属上海聚鹏科技有限公司旗下。操作简单，用户只需通过下载巨宝朋打开APP后选择试玩APP，根据上面的提示完成应用安装试玩体验后可获得佣金收益，单次试玩单价1元起，满10元可申请提现。同时邀请好友试玩可获得好友做任务收益的任务提成。'),
('33','8','内涵红包','内涵红包','2.1.0','1561131986','3M','ios','','/upload/img/2019/05/27/5cebd1da99e88.png','<div>
	内涵红包是一个苹果手机试玩应用赚钱平台，每天动动手指做任务就可以赚零花钱，新用户注册系统即送2元现金红包，快来下载跟我一起赚钱吧。快速任务无需首次，能抢就能过，分分钟搞定。轻松赚钱无需投入，每日大量试玩任务上线，下载试玩后即可获得奖励。快来点击下载，点点你的手指，每天多赚零花钱。</div>
<div>
	&nbsp;</div>
<div>
	内涵红包APP是苹果手机兼职挣钱软件，<span style="color:#ff0000;">任务很多，每个任务1-3元</span>，完成任务即可结算，瞬间到账，体验真正的赚钱快感，任务多，种类丰富，不愁没任务，内涵红包最低<span style="color:#ff0000;">20元可提现</span>（微信、支付宝），提现24小时到账</div>
','','','内涵红包','1561131986','10','10','1','admin','232','3132','1511','9897','0','0','','内涵红包下载_内涵红包app下载_内涵红包最新赚钱攻略分享','内涵红包,内涵红包app下载','内涵红包是一个苹果手机试玩应用赚钱平台，每天动动手指做任务就可以赚零花钱，新用户注册系统即送2元现金红包，快来下载跟我一起赚钱吧。快速任务无需首次，能抢就能过，分分钟搞定。轻松赚钱无需投入，每日大量试玩任务上线，下载试玩后即可获得奖励。快来点击下载，点点你的手指，每天多赚零花钱。'),
('34','8','蜜蜂试玩','蜜蜂试玩','3.2.5','1558960936','5M','ios','','/upload/img/2019/05/27/5cebda33eab7b.png','<div>
	蜜蜂试玩是什么，是一款让你在玩手机的同时还能赚钱的App应用软件,可以直接通过微信/支付宝提现。只要试玩3分钟，就能获得一次任务奖励，在家收提成躺着赚钱。利用碎片化时间，体验更多好玩应用赚钱。每天下午任务更新，任务最多。</div>
<div>
	&nbsp;</div>
<div>
	蜜蜂试玩app，轻松试玩有趣的推荐应用，就能赚佣金，<span style="color:#ff0000;">任务不需要首次，试玩单价0.8元，10元提现微信/支付宝</span>，邀请好友上限奖励20元，利用碎片化时间，发现更多好玩应用，赚钱咖们,立即体验吧!</div>
','','','蜜蜂试玩','1558960902','10','10','1','admin','212','12341','1432','9896','0','0','','蜜蜂试玩下载_蜜蜂试玩app下载_怎么用蜜蜂试玩免费赚零发钱','蜜蜂试玩,免费赚零发钱','蜜蜂试玩是什么，是一款让你在玩手机的同时还能赚钱的App应用软件,可以直接通过微信/支付宝提现。只要试玩3分钟，就能获得一次任务奖励，在家收提成躺着赚钱。利用碎片化时间，体验更多好玩应用赚钱。每天下午任务更新，任务最多。'),
('35','8','武林外赚','武林外赚','2.0.3','1561132016','4M','ios','','/upload/img/2019/05/28/5cecf40a0f7a8.jpg','<div>
	武林外赚，一个用手机下载app就能赚钱的应用平台。武林外赚为你提供超多好玩的应用，试玩应用还能领取丰厚的现金红包，邀请身边的朋友加入成为你的徒弟，徒弟每试用一款软件，师傅就能得到一笔现金奖励，随时提现，快速到账，你可以在这里享受便捷的服务，还为你提供手机流量实时兑换服务，赶快加入武林外赚~</div>
<div>
	&nbsp;</div>
<div>
	武林外赚app是一款集下载试玩，红包派送，各种福利的赚钱平台，每天都能赚到钱，在规定的时间内完成试玩APP任务，快速获取收益，赚零花钱，就上武林外赚。<span style="color:#ff0000;">注册送1元</span>，每天大量佣金任务，<span style="color:#ff0000;">单价0.8~1.5元</span>，<span style="color:#ff0000;">满10元提现</span>到支付宝，每天16点大量更新任务。</div>
','','','武林外赚','1561132016','10','10','1','admin','212','1012','1000','9895','0','0','','武林外赚下载_武林外赚app下载_武林外赚手机软件是真的吗,怎么玩?','武林外赚,武林外赚app下载','武林外赚，一个用手机下载app就能赚钱的应用平台。武林外赚为你提供超多好玩的应用，试玩应用还能领取丰厚的现金红包，邀请身边的朋友加入成为你的徒弟，徒弟每试用一款软件，师傅就能得到一笔现金奖励，随时提现，快速到账，你可以在这里享受便捷的服务，还为你提供手机流量实时兑换服务，赶快加入武林外赚~'),
('36','15','搜狐资讯','搜狐资讯','5.2.1','1560169992','10M','anroid|ios','','/upload/img/2019/05/28/5ced2cbaa593b.png','搜狐新闻资讯版APP是目前最好的手机阅读赚钱App。搜狐应该没有人不知道吧，是互联网巨头搜狐网旗下的一款有偿看新闻软件，正所谓背靠大树好乘凉，我们只要下载搜狐新闻资讯版APP，那么从今往后就可以阅读文章赚钱了,单是阅读文章就行了，分享能赚的更多。这是所有看新闻赚钱软件中赚钱最快的一个软件，建议大家都做这个平台。最后，无论是自己阅读赚钱，还是推广好友来阅读新闻赚钱，都是需要坚持的，坚持下去，你会发现自己每天通过搜狐新闻赚的钱会越来越多，像我之前一天10元、20元、现在已经每天50元-60元了，所以坚持就是胜利，坚持就是金钱！<br />
<br />
<div>
	奖励规则：</div>
<div>
	【阅读资讯】认真阅读资讯或观看视频可获得每篇10狐币的奖励，为了防止恶意刷狐币，不是每次阅读均会获得狐币，所以一定要认真看哦。</div>
<div>
	【分享文章】成功分享资讯、视频、竞猜给好友，待分享的内容至少被查看过一次后就可以获得10狐币的奖励，同一内容多次分享不重复奖励，每天最多奖励5次。</div>
<div>
	【晒收入】分享收入给好友，待被好友查看后即可获得10狐币的奖励，每天只有首次有效分享才能获得狐币。</div>
<div>
	【邀请好友】每邀请一个好友成为徒弟，您将获得3元现金奖励（分7次）。徒弟登录App后，您将获得首次现金奖励，此后徒弟每获得1次阅读奖励您将得到20狐币，累计60狐币即可获得一次现金奖励（每天限1次）。</div>
','','','搜狐资讯','1560169992','10','10','1','admin','123','12343','123','8994','0','0','','搜狐资讯下载_搜狐资讯app下载_怎么用手机搜狐资讯赚零发钱?','搜狐资讯,阅读新闻赚钱','搜狐新闻资讯版APP是目前最好的手机阅读赚钱App。搜狐应该没有人不知道吧，是互联网巨头搜狐网旗下的一款有偿看新闻软件，正所谓背靠大树好乘凉，我们只要下载搜狐新闻资讯版APP，那么从今往后就可以阅读文章赚钱了,单是阅读文章就行了，分享能赚的更多。这是所有看新闻赚钱软件中赚钱最快的一个软件，建议大家都做这个平台。最后，无论是自己阅读赚钱，还是推广好友来阅读新闻赚钱，都是需要坚持的，坚持下去，你会发现自己每天通过搜狐新闻赚的钱会越来越多，像我之前一天10元、20元、现在已经每天50元-60元了，所以坚持就是胜利，坚持就是金钱！'),
('37','21','牛帮','牛帮','2.3.1','1560169265','5M','Android|IOS','','/upload/img/2019/06/09/5cfc69087174c.png','<span style="font-family: 楷体; font-size: 17px; letter-spacing: 0px; text-align: justify; color: rgb(255, 0, 0);">牛人帮忙就选牛帮，最近推出新活动，比较给力</span><span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px; text-align: justify;">。是重庆网赚科技有限公司旗下的一款手机悬赏任务赚钱平台，为商家提供项目推广任务分发的渠道，为用户提供赏金任务兼职中赚钱的平台。</span><span style="font-family: 楷体; font-size: 17px; letter-spacing: 0px; text-align: justify; color: rgb(255, 0, 0);">集悬赏，互助，兼职赚钱的平台</span><span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px; text-align: justify;">，可以做任务赚赏金，发任务、调查问卷等等。这里面的任务很多，各式各样，</span><span style="font-family: 楷体; font-size: 17px; text-align: justify; text-decoration-line: underline; color: rgb(192, 0, 0);">比如简单的关注微信公众号，微信点赞，发朋友圈，关注小程序等等</span><span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px; text-align: justify;">；复杂的有投票、注册、下载安装、实名绑卡等任务,奖励几分到几毛几块几十块不等，选择自己想做的任务即可。只要有需求都可以在平台里发出来，发布的时候平台会初步审核任务的类型，根据任务的复杂度分类，有基本的单价要求，任务发布的时候，必须先把佣金充值到平台，这样平台监管，</span><span style="font-family: 楷体; font-size: 17px; letter-spacing: 0px; text-align: justify; color: rgb(255, 0, 0);">保证做任务的人肯定能拿到赏金</span><span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px; text-align: justify;">。注册下载（牛帮APP）完成新手任务即可领取</span><span style="font-family: 楷体; font-size: 17px; letter-spacing: 0px; text-align: justify; color: rgb(255, 0, 0);">新人奖励6元左右，1元提现秒到账，直接到微信钱包有。</span><span style="font-family: 楷体; font-size: 17px; text-align: justify; text-decoration-line: underline; color: rgb(255, 0, 0);">牛帮是这种赚钱软件的后起之秀，自然有他的特点才能做的起来</span><span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px; text-align: justify;">，里面因为任务都是非常简单的任务，所以自然就有很多人来发布任务，也自然就有做不完的任务。</span>','','','牛帮','1560169265','10','10','1','admin','1000','1017','890','8997','0','0','','牛帮下载_牛帮app下载_牛帮做任务赚钱新手攻略秒提红包6元左右','牛帮,做任务赚钱,悬赏平台','牛人帮忙就选牛帮，原名赏金宝和赏多宝，最近推出新活动，比较给力。是重庆网赚科技有限公司旗下的一款手机悬赏任务赚钱平台，为商家提供项目推广任务分发的渠道，为用户提供赏金任务兼职中赚钱的平台。注册下载（牛帮APP）完成新手任务即可领取新人奖励6元左右，1元提现秒到账，还送微信红包，不需要提现，直接到微信钱包。牛帮是这种赚钱软件的后起之秀，自然有他的特点才能做的起来，里面因为任务都是非常简单的任务，所以自然就有很多人来发布任务，也自然就有做不完的任务。如果你是一个刚踏入网络的小赚客，那么你可以在里面做简单任务赚钱，比如注册个号码就可以赚2到10元，微信关注一个就赚0.5元左右。如果你已经是位资深的赚客老司机，那么你就可以在里面游刃有余，比如有个活动邀请10元，那么你就可以在里面发布任务赚钱，一个任务发布8元出去，你自己赚2元的差价，每天随便有100个人做，你就有200的收益。'),
('38','17','小啄赚钱','小啄赚钱','1.2.5','1561132060','14M','Android','','/upload/img/2019/06/09/5cfc779442d82.png','<div>
	小啄赚钱提供给大家丰富的任务类型和有趣的赚钱方式，让大家每天赚点零花钱。小啄赚钱主要以下载试玩为主，点击上面链接下载以后，不要急着领任务，先点击签到红包，然后再做任务，因为这样你做完三个任务以后，还会有额外的1元奖励。领取到任务以后，就按照任务要求去做任务，基本上就是下载app，然后试玩一会，也有的需要注册，如果感觉比较麻烦或者复杂的，可以放弃任务然后重新接取就可以了。完成三个任务以后，然后点击下面的领微信红包，就会提示签到成功，这时候返回签到页面点击签到，然后到微信领取签到的红包，开始是一元多，签到的时间越多，奖励也就越多。</div>
<div>
	&nbsp;</div>
<div>
	小啄赚钱是一款用手机做任务兼职赚零钱的APP，用户可以通过试玩应用获得现金奖励，由杭州小啄科技有限公司开发；如果你想赚点小外快的话，那么就来小啄赚钱，这里每天为你提供了大量的任务，完成任务后便可以获得对应的酬劳，可以很快的把钱提到微信钱包里，非常的便利，还等什么呢，赶紧来下载吧！</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	【赚钱特点】</div>
<div>
	1、众多任务，每日更新上线;</div>
<div>
	2、任务单价0.5元左右，每天任务丰富让你赚个不停;</div>
<div>
	3、小啄赚钱：啄一下开始赚钱，每次啄取不同任务，惊喜不断;</div>
<div>
	4、邀请好友可一起赚钱，邀请越多赚到越多哦。</div>
','','','小啄赚钱','1561132060','10','10','1','admin','1000','1014','865','8996','0','0','','小啄赚钱下载_小啄赚钱app下载_小啄赚钱是真的吗,如何赚钱?','小啄赚钱,小啄赚钱app下载','小啄赚钱是一款用手机做任务兼职赚零钱的APP，用户可以通过试玩应用获得现金奖励，由杭州小啄科技有限公司开发；如果你想赚点小外快的话，那么就来小啄赚钱，这里每天为你提供了大量的任务，完成任务后便可以获得对应的酬劳，可以很快的把钱提到微信钱包里，非常的便利，还等什么呢，赶紧来下载吧！'),
('39','17','爱盈利Android版','iMoney爱盈利Android版','2.3.6','1570449692','4M','Android','','/upload/img/2019/06/09/5cfc80f618427.png','<div>
	iMoney爱盈利Android版本是最近新推出来的，对于下载试玩，主要以苹果手机为主，因为苹果手机做这个价格高，这是由于操作系统决定的，所以下载试玩大家最好使用苹果手机。当然，现在安卓手机现在也有一些下载试玩的，试玩赚钱安卓平台就不多，iMoney爱盈利Android版是行业内做的非常不错的，小编看了下，单价0.3元左右，每日任务不限量，直接在本页面下载即可。</div>
<div>
	&nbsp;</div>
<div>
	iMoney爱盈利Android版，试玩app赚钱，手机赚钱新秀。新推出的平台总是很给力，包含常规任务、快赚任务、高额任务、游戏任务，每日签到还能赢现金奖励。邀请亲朋好友一起iMoney做任务，可以让您的收入暴涨！除了平台完成的任务奖励外，徒弟平时玩任务和收徒，也会为您带来大量的金钱收益。</div>
','','','iMoney,爱盈利,Android版','1570449692','10','10','1','admin','1000','1025','967','8998','0','0','','爱盈利Android版下载_iMoney安卓版app下载_最新Android手机试玩App平台新秀','iMoney,爱盈利Android版','iMoney爱盈利Android版，试玩app赚钱，手机赚钱新秀。新推出的平台总是很给力，包含常规任务、快赚任务、高额任务、游戏任务，每日签到还能赢现金奖励。邀请亲朋好友一起iMoney做任务，可以让您的收入暴涨！除了平台完成的任务奖励外，徒弟平时玩任务和收徒，也会为您带来大量的金钱收益。'),
('40','15','东方头条','东方头条','2.7','1560168090','12.6','Android','','/upload/img/2019/06/09/5cfcf85753faa.png','<div>
	东方头条是东方网推出的一款新闻资讯阅读聚合的移动端新媒体产品，加入了手机阅读新闻賺钱模式。在同类app中竞争力更大，福利也越来越好。签到奖励，签到奖励，收徒越多，奖励越多。填写<span style="color:#ff0000;">邀请码 057609644</span>可领取现金</div>
<div>
	&nbsp;</div>
<div>
	我们大多数人没事的时候都喜欢看看新闻，现在可好了，边看新闻边赚钱。类似趣头条、搜狐资讯、中青看点等，也是一款看新闻、资讯、视频、评论、签到等赚零花钱的智能阅读软件。东方头条涵盖热点头条新闻、社会、国内、国际、娱乐、科技、财经、体育、军事、汽车等不同类别新闻丰富你的掌上生活。还会根据您的浏览喜好，为您推荐你喜欢的新闻资讯内容，智能生活，让我们越来越懂你！</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	【软件特色】</div>
<div>
	&nbsp;★ 正规新闻网站</div>
<div>
	&nbsp;★ 用户量过百万级的新闻阅读客户端</div>
<div>
	&nbsp;★ 轻松做任务，阅读的同时可以领红包，阅读有奖，边看边赚</div>
<div>
	&nbsp;★ 实时推送热门资讯，覆盖全网最新鲜的资讯，足不出户尽知天下事</div>
<div>
	&nbsp;★ 多角度分析触动你的兴趣点</div>
','','','东方头条','1560168090','10','10','1','admin','1000','1015','604','8996','0','0','','东方头条下载_东方头条app下载_用东方头条看新闻资讯的同时还能赚零发钱','东方头条,阅读新闻赚钱.看新闻资讯赚钱','我们大多数人没事的时候都喜欢看看新闻，现在可好了，边看新闻边赚钱。类似趣头条、搜狐资讯、中青看点等，也是一款看新闻、资讯、视频、评论、签到等赚零花钱的智能阅读软件。东方头条涵盖热点头条新闻、社会、国内、国际、娱乐、科技、财经、体育、军事、汽车等不同类别新闻丰富你的掌上生活。还会根据您的浏览喜好，为您推荐你喜欢的新闻资讯内容，智能生活，让我们越来越懂你！'),
('41','15','淘新闻','淘新闻','2.7.0','1561132107','2M','Android','','/upload/img/2019/06/10/5cfe1f2dc2ff3.png','<div>
	淘新闻，看新闻，赚零花，边看有趣的新闻边赚钱。 新用户注册填写邀请码100775365送2元，1元即可提现，秒到。轻松赚钱 - 只需看新闻，现金轻松入账。最新师徒任务，现金收益无上限！赚的更多 - 师徒任务，现金收益无上限。提现方便 - 支付宝提现，方便快捷有保障。打发无聊 - 精选内容，时事热点一手掌握。兑换商城 - 实用商品，免费抽奖优惠多。</div>
<div>
	&nbsp;</div>
<div>
	1.海量新闻资讯，智能推荐，私人定制你的热点头条，红包时时有，抢到手软；</div>
<div>
	2.实时热搜，一键激活所有新闻内容，不再担心错过热点资讯；</div>
<div>
	3.师徒任务升级，成功邀请一个好友，立得2.5元，赚钱没有上限！更多新手任务等你开启；</div>
<div>
	4.闹铃功能，看新闻的同时，快速通知你红包来了，狂赚不止；</div>
<div>
	5.帐户积累金额，看新闻获得的收入，快捷提现或商城兑换，任你挑选。</div>
','','','淘新闻','1561132107','10','10','1','admin','1000','1018','532','8995','0','0','','淘新闻下载_淘新闻app下载_教你怎么用淘新闻看新闻赚钱','淘新闻,看新闻赚钱','淘新闻，看新闻，赚零花，边看有趣的新闻边赚钱。 新用户注册填写邀请码100775365送2元，1元即可提现，秒到。轻松赚钱 - 只需看新闻，现金轻松入账。最新师徒任务，现金收益无上限！赚的更多 - 师徒任务，现金收益无上限。提现方便 - 支付宝提现，方便快捷有保障。打发无聊 - 精选内容，时事热点一手掌握。兑换商城 - 实用商品，免费抽奖优惠多。'),
('42','8','糖果猫','糖果猫','2.2.0','1561182647','10M','IOS','','/upload/img/2019/06/22/5d0dc119ce226.png','<div>
	糖果猫是能让你利用碎片化时间进行手机兼职赚钱的App应用软件，免费体验新鲜有趣的APP还能赚钱，一举两得。每天下午都有大量任务更新，糖果猫app注册即送1元红包，只要3分钟试玩体验，就能获得一次试玩奖励， 邀请一个好友还可以获取额外奖励，利用碎片化时间，发现更多好玩应用还能赚钱。</div>
<div>
	&nbsp;</div>
<div>
	糖果猫是一个APP试玩的体验平台，试玩应用赚零花钱，它是厦门蝉声网络科技有限公司继蝉试客之后推出的又一款下载试玩苹果手机应用获得现金奖励的APP，注册送一元，单价1元左右，10元提现，任务不要求首次，新平台。任务暴多的平台，类似于爱盈利，赚钱爽到飞。</div>
<div>
	&nbsp;</div>
<div>
	【赚钱步骤】</div>
<div>
	①第一步：下载安装助手</div>
<div>
	②第二步：激活打开助手</div>
<div>
	③第三步：点击任务列表开始赚钱</div>
<div>
	④第四步：申请提现打款</div>
<div>
	&nbsp;</div>
<div>
	【赚钱特点】</div>
<div>
	①新手注册送1元，任务单价1元起；</div>
<div>
	②账户余额满10元提现到微信钱包；</div>
<div>
	③任务更新时间每天下午任务比较多。</div>
','','','糖果猫','1561182598','10','10','1','admin','10','1009','1200','9894','0','0','','糖果猫下载_糖果猫app下载_糖果猫真的能赚钱吗,靠谱吗？','糖果猫','糖果猫是一个APP试玩的体验平台，试玩应用赚零花钱，它是厦门蝉声网络科技有限公司继蝉试客之后推出的又一款下载试玩苹果手机应用获得现金奖励的APP，注册送一元，单价1元左右，10元提现，任务不要求首次，新平台。任务暴多的平台，类似于爱盈利，赚钱爽到飞。'),
('43','8','火箭试玩','火箭试玩','5.1.0','1561183304','10M','IOS','','/upload/img/2019/06/22/5d0dc2334d233.png','<div>
	火箭试玩是最新上线的苹果试玩平台，非常给力，试玩APP就能赚现金，任务多到爆，平台流畅不卡顿，很好抢任务，无论是学生还是上班族，只要能够上网就能试玩应用赚钱，5元就能提现。每天会更新大量应用试玩任务，用户只需要下载应用试玩任务3分钟，完成任务返回页面，即可领取现金奖励，奖励可以通过微信方式轻松提现，利用碎片化时间，每天赚出一顿午饭钱。</div>
<div>
	&nbsp;</div>
<div>
	火箭试玩app，不投一分钱，试玩应用，动动手指就能赚到零花钱，不仅如此，您还可以通过邀请好友成为徒弟一起来赚钱！火箭试玩在家就能体验精致的应用还能赚零花钱。火箭试玩带你赚嗨天，宝妈、学生党兼职首选，使用苹果设备做任务试玩海量应用，可以领取现金，让你越玩越有钱。</div>
','','','火箭试玩','1561183272','10','10','1','admin','10','1008','1134','9893','0','0','','火箭试玩下载_火箭试玩app下载_火箭试玩手机赚钱软件是真的吗,靠谱吗？','火箭试玩','火箭试玩app，不投一分钱，试玩应用，动动手指就能赚到零花钱，不仅如此，您还可以通过邀请好友成为徒弟一起来赚钱！火箭试玩在家就能体验精致的应用还能赚零花钱。火箭试玩带你赚嗨天，宝妈、学生党兼职首选，使用苹果设备做任务试玩海量应用，可以领取现金，让你越玩越有钱。'),
('44','8','试用宝','试用宝','5.2.4','1561184592','12M','IOS','','/upload/img/2019/06/22/5d0dc84162dda.jpg','<div>
	试用宝是一款用苹果手机下载app就能赚钱的试玩软件平台。试用宝为你提供超多好玩的应用，轻松在试用宝上赚到一笔零花钱，新用户下载送1元，10元就能提现，任务单价1元起。试玩应用还能领取丰厚的现金红包，赶快加入试用宝~时时都有新应用，刻刻都有收获，打开试用宝轻轻松松就能赚到零花钱。</div>
<div>
	&nbsp;</div>
<div>
	试用宝为你提供超多好玩的应用，海量APP下载，零投入，无需任何本金，下载APP试玩即可获得1-3元现金奖励，最靠谱的手机赚钱平台。不投一分钱，试玩就能赚钱，既简单又有趣。</div>
<div>
	安装任务奖励高，应用安全可靠，只要有网络就能赚。兑换起点低，随时提现，一日到账。邀请好友做任务，就能收获他任务收入的50%的提成！</div>
','','','试用宝','1561184592','10','10','1','admin','1000','1016','1345','9892','0','0','','试用宝下载_试用宝app下载_怎么用试用宝软件免费赚零发钱？','试用宝','试用宝为你提供超多好玩的应用，海量APP下载，零投入，无需任何本金，下载APP试玩即可获得1-3元现金奖励，最靠谱的手机赚钱平台。不投一分钱，试玩就能赚钱，既简单又有趣。
安装任务奖励高，应用安全可靠，只要有网络就能赚。兑换起点低，随时提现，一日到账。邀请好友做任务，就能收获他任务收入的50%的提成！'),
('45','8','鼠宝','鼠宝','10.3.6','1569324257','21M','IOS','','/upload/img/2019/06/23/5d0f0c913c705.png','<div>
	鼠宝试玩是一个苹果手机试玩赚钱平台，综合了好评和试玩任务，让用户体验各种不同的app产品的同时也能获取相应的报酬，鼠宝app苹果版任务单价高，快速试玩百分百返现，10元可提现，鼠宝app体验客任务单价0.8元，主要在下午大量更新任务，鼠宝app任务页面有任务发布时间预告，大家可以关注。此外，鼠宝还有一些特殊任务，需要手机注册截图审核，单价1-2元，这个数量不多，还是看运气，能不能碰到。</div>
<div>
	&nbsp;</div>
<div>
	鼠宝试玩app是玩赚钱平台的老大哥了，比较给力的 单价都在1&mdash;&mdash;2元，任务无需首次下载，单价高，满10元即可提现，任务种类比较多包括好评、试玩和抢钱等任务，对于新手用户是非常有利的，只要动动手指头轻轻松松就可赚取零花钱，感兴趣的快来下载吧！</div>
<div>
	&nbsp;</div>
','','','鼠宝','1569324257','10','10','1','admin','1000','1026','1123','9891','0','0','','鼠宝下载_鼠宝app下载_鼠宝手机赚钱软件是真的吗?','鼠宝','鼠宝试玩app是玩赚钱平台的老大哥了，比较给力的 单价都在1——2元，任务无需首次下载，单价高，满10元即可提现，任务种类比较多包括好评、试玩和抢钱等任务，对于新手用户是非常有利的，只要动动手指头轻轻松松就可赚取零花钱，感兴趣的快来下载吧！'),
('46','8','今日赚','今日赚','2.1.5','1570112855','10M','苹果IOS','','/upload/img/2019/06/23/5d0f0d8e4a440.png','<div>
	今日赚,是北京上榜科技科技有限公司推出的有偿体验APP试玩平台。不管您是学生，上班族，还是宝妈，利用空余的时间还有Wi-Fi就可通过今日赚App赚钱。不投一分钱，欢乐试玩就能赚钱，既简单又有趣。安装任务奖励高，应用安全可靠，只要有网络就能赚。</div>
<div>
	每天手指抖一抖，轻松赚到手！就是这么任性！</div>
<div>
	&nbsp;</div>
<div>
	今日赚是国内最大的ASO搜索流量分发渠道，新用户注册安装今日赚立送3元现金红包，你来我就送。单价1元起，10元起提现。有偿体验APP，平台海量任务等你来做，拿起你的手机刷刷几个任务，每个月的的零花钱又有了。</div>
','','','今日赚','1570112855','10','10','1','admin','1000','1016','1234','9890','0','0','','今日赚下载_今日赚app下载_今日赚手机赚钱软件是怎么样?','今日赚','今日赚是国内最大的ASO搜索流量分发渠道，新用户注册安装今日赚立送3元现金红包，你来我就送。单价1元起，10元起提现。有偿体验APP，平台海量任务等你来做，拿起你的手机刷刷几个任务，每个月的的零花钱又有了。'),
('47','8','头号试玩','头号试玩','3.6.1','1569490747','5M','苹果IOS','','/upload/img/2019/06/23/5d0f0e56199d1.png','<div>
	头号试玩APP是目前较为良心的手机赚钱平台，拥有丰富的赚钱任务，隶属于上海仁端网络科技有限公司旗下产品，旨在为广大用户提供多种多样的iOS端应用推荐。支持iPhone和ipad，是一个牛逼试玩赚钱平台，下载安装送1元，简单试玩3分钟就能收获1元现金，邀请好友最高可得20元奖励，类似小鱼赚钱，奖励较高。</div>
<div>
	&nbsp;</div>
<div>
	头号试玩是一款优秀的苹果手机试玩App免费赚钱的平台，该平台操作体验流畅，系统运行稳定，头号试玩的任务数比较多，试玩应用获得现金和实物奖励，您的赚钱推土机，快来下载体验每天赚零花钱吧。注册即送1元，苹果试玩单价0.8元以上，满10元可申请支付宝提现，1-2个工作日到账</div>
','','','头号试玩','1569490747','10','10','1','admin','1000','1011','1234','0','0','0','','头号试玩下载_头号试玩app下载_头号试玩最新赚钱攻略分享','头号试玩,头号试玩app','头号试玩是一款优秀的苹果手机试玩App免费赚钱的平台，该平台操作体验流畅，系统运行稳定，头号试玩的任务数比较多，试玩应用获得现金和实物奖励，您的赚钱推土机，快来下载体验每天赚零花钱吧。注册即送1元，苹果试玩单价0.8元以上，满10元可申请支付宝提现，1-2个工作日到账'),
('48','8','抖赚_来赚','抖赚_来赚','5.3.3','1569505609','12M','苹果IOS','','/upload/img/2019/06/29/5d16d803e6f96.jpg','<div>
	抖赚全新升级为来赚试玩平台，抖赚试玩是一款手机下载应用试玩App就能赚钱的软件，仅限于苹果手机。抖赚app为你提供超多好玩的应用，试玩应用还能领取丰厚的现金红包，平台任务丰富，用户只需在抖赚下载任务，体验几分钟就能得到相应的任务佣金。</div>
<div>
	&nbsp;</div>
<div>
	抖赚是IOS平台试玩App赚钱的手机赚钱平台，完成新手任务送2.5元，任务单价0.8元起，满10元起即可提现。用户通过抖赚去下载应用即可获得现金奖励，还可以通过邀请好友加入抖赚，获得丰厚的奖励和提成奖励！钱包中的现金可以轻松提现。</div>
','','','抖赚_来赚','1569505609','10','10','1','admin','1000','1019','977','0','0','0','','抖赚下载_来赚app下载_怎么用抖赚App手机赚钱软件？','抖赚','抖赚是IOS平台试玩App赚钱的手机赚钱平台，完成新手任务送2.5元，任务单价0.8元起，满10元起即可提现。用户通过抖赚去下载应用即可获得现金奖励，还可以通过邀请好友加入抖赚，获得丰厚的奖励和提成奖励！钱包中的现金可以轻松提现。'),
('49','8','蚂蚁小咖','蚂蚁小咖','2.6.0','1569490906','5M','苹果IOS','','/upload/img/2019/06/29/5d16d8de3582b.png','<div>
	蚂蚁小咖是一款苹果手机下载应用试玩App赚钱软件,也就是用户只能通过APPstore下载试玩，用户通过安装应用完成指定的任务就可以获得赚到钱，一个任务1-3元不等，下载后后台运行3分钟左右就能拿到任务佣金。赚到的佣金支持支付宝提现，方便又快捷。有兴趣的小伙伴们不妨来下载试试吧!</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	蚂蚁小咖试玩App赚钱平台，每天更新大量试玩赚钱任务，单价0.8-2元，满10元提现，有快速任务、好评任务。每单任务的佣金在1―10元之间不等，用户只需要点击应用，按照提示完成了任务就可以获得现金奖励，多劳多得。</div>
','','','蚂蚁小咖','1569490906','10','10','1','admin','1000','1007','964','0','0','0','','蚂蚁小咖下载_蚂蚁小咖app下载_蚂蚁小咖赚钱真的假的？','蚂蚁小咖','蚂蚁小咖试玩App赚钱平台，每天更新大量试玩赚钱任务，单价0.8-2元，满10元提现，有快速任务、好评任务。每单任务的佣金在1―10元之间不等，用户只需要点击应用，按照提示完成了任务就可以获得现金奖励，多劳多得。'),
('50','8','钱大师','钱大师','5.1.2','1569504312','23M','苹果IOS','','/upload/img/2019/06/29/5d16d938684dd.png','<div>
	钱大师APP是一个非常不错的手机app试用赚钱平台，您通过钱大师下载APP试玩体验，即可获得相应现金奖励。注册即送2元，完善个人资料送0.5元，共2.5元，10元就可提现。开启钱大师之旅，带你装逼带你飞，带你数钱到天黑!</div>
<div>
	&nbsp;</div>
<div>
	钱大师APP是一个试用App赚钱平台只要3分钟体验钱大师，就能获取一次现金奖励。利用碎片化时间，钱大师帮您轻松搞定生活费。每天下午4点左右大量更新任务,平时多多关注，做的平台越多赚得越多!收到的徒弟越多，钱大师的奖励也就越多。快来下载钱大师app进行使用吧</div>
','','','钱大师','1569504312','10','10','1','admin','1000','1009','933','0','0','0','','钱大师下载_钱大师app怎么下载_钱大师试玩怎么样？','钱大师','钱大师APP是一个试用App赚钱平台只要3分钟体验钱大师，就能获取一次现金奖励。利用碎片化时间，钱大师帮您轻松搞定生活费。每天下午4点左右大量更新任务,平时多多关注，做的平台越多赚得越多!收到的徒弟越多，钱大师的奖励也就越多。快来下载钱大师app进行使用吧'),
('51','8','花生米','花生米','3.2.0','1569502582','10M','苹果IOS','','/upload/img/2019/07/06/5d2045d4ee793.png','<div>
	花生米是一款苹果手机试玩App赚钱的软件平台，操作简单，玩法多样。下载花生米助手就送现金红包1元，加入花生米下载App体验试玩就能赚钱，单价1元左右，10元提现。&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	花生米是一款只要完成兼职任务就可以轻松赚钱的软件，兼职任务非常的丰富，它是一款最新苹果APP试玩赚钱平台，花生米试玩应用即可赚钱，简单几步，完成试玩任务，领取奖励，人人都可以在线使用，随时在线兼职赚钱。</div>
<div>
	每天使用自己的空闲时间，完成任务就可以轻松使用手机赚钱，赚取额外的零花钱。</div>
','','','花生米','1569502582','10','10','1','admin','1000','1012','913','0','0','0','','','花生米','花生米是一款只要完成兼职任务就可以轻松赚钱的软件，兼职任务非常的丰富，它是一款最新苹果APP试玩赚钱平台，花生米试玩应用即可赚钱，简单几步，完成试玩任务，领取奖励，人人都可以在线使用，随时在线兼职赚钱。
每天使用自己的空闲时间，完成任务就可以轻松使用手机赚钱，赚取额外的零花钱。'),
('52','8','顽狮试玩','顽狮试玩','5.4.7','1569498557','11M','苹果IOS','','/upload/img/2019/07/06/5d2047bdd0f89.jpg','<div>
	顽狮试玩是北京有为互动科技有限公司旗下应用体验平台，是一个苹果手机试玩App赚钱的平台，下载苹果手机APP试玩就能赚钱。注册送1元现金红包，下载试玩一个应用单价0.8元，6元就能提现，每天下午会有大量限时任务上线。</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	顽狮试玩，一款优秀的任务分发试玩应用平台，1人试玩，2人福利，随时随地只需拿起你的苹果手机点击顽狮试玩app就能赚零花钱，顽狮试玩app下载试玩应用，领取现金红包，开启赚钱收徒模式多劳多得，满6元可以选择提现到支付宝或微信钱包。更有高额任务，顽狮试玩小程序、办卡赚钱等更多功能等你来发掘，快来跟我一起赚钱吧！</div>
','','','顽狮试玩','1569498557','10','10','1','admin','1000','1012','340','0','0','0','','顽狮试玩下载_顽狮试玩app下载 _顽狮试玩手机赚钱软件是真的吗,怎么玩? ','顽狮试玩','顽狮试玩，一款优秀的任务分发试玩应用平台，1人试玩，2人福利，随时随地只需拿起你的苹果手机点击顽狮试玩app就能赚零花钱，顽狮试玩app下载试玩应用，领取现金红包，开启赚钱收徒模式多劳多得，满6元可以选择提现到支付宝或微信钱包。更有高额任务，顽狮试玩小程序、办卡赚钱等更多功能等你来发掘，快来跟我一起赚钱吧！'),
('53','8','聚优钱_聚有钱','聚优钱_聚有钱','2.1.0','1562396933','13M','苹果IOS','','/upload/img/2019/07/06/5d2047caab97b.png','<div>
	聚有钱又叫聚优钱，是一款非常优秀的苹果手机试玩App赚钱软件平台，注册送2元，任务单价1元起，满10元提现微信钱包。</div>
<div>
	&nbsp;</div>
<div>
	聚优钱_聚有钱是一个苹果手机试玩赚钱平台，下载聚优钱_聚有钱试玩应用就可以获得现金奖励，任务单价1元起，10元就能提现，注册就送2元。非常靠谱，单价高，任务多，好平台不要错过，体验新鲜有趣的APP还能赚零花钱，你还在犹豫什么呢? 随时随地边玩边赚钱,赶紧加入吧</div>
','','','聚优钱,聚有钱','1562396619','10','10','1','admin','1000','1007','123','0','0','0','','聚优钱下载_聚有钱app下载_怎么用聚优钱_聚有钱免费赚零发钱','聚优钱,聚有钱','聚优钱_聚有钱是一个苹果手机试玩赚钱平台，下载聚优钱_聚有钱试玩应用就可以获得现金奖励，任务单价1元起，10元就能提现，注册就送2元。非常靠谱，单价高，任务多，好平台不要错过，体验新鲜有趣的APP还能赚零花钱，你还在犹豫什么呢? 随时随地边玩边赚钱,赶紧加入吧'),
('54','8','小猪赚钱','小猪赚钱','8.3.1','1569490675','16M','苹果IOS','','/upload/img/2019/07/06/5d2047d2e2ff7.jpg','<div>
	小猪赚钱是全新上线的手机赚钱软件平台，安装就送1元，下载每个应用给1-2元左右的现金奖励，10元就可以微信提现。</div>
<div>
	&nbsp;</div>
<div>
	小猪赚钱是一个手机试玩应用赚钱平台，是由深圳市天睿臻游科技有限公司推出的。小猪赚钱通过试玩游戏、体验产品、做关注任务等来赚取现金奖励，软件任务多，单价高，提现快。下载后建议绑定手机和微信，避免帐号丢失。如果你是新赚友，那么按照页面提示，完成新手任务就可以获得你的第一桶金！</div>
','','','小猪赚钱','1569490675','10','10','1','admin','1000','1009','431','0','0','0','','','小猪赚钱','小猪赚钱是一个手机试玩应用赚钱平台，是由深圳市天睿臻游科技有限公司推出的。小猪赚钱通过试玩游戏、体验产品、做关注任务等来赚取现金奖励，软件任务多，单价高，提现快。下载后建议绑定手机和微信，避免帐号丢失。如果你是新赚友，那么按照页面提示，完成新手任务就可以获得你的第一桶金！'),
('55','8','熊猫赚钱','熊猫赚钱','5.3.2','1569490615','21M','苹果IOS','','/upload/img/2019/07/06/5d2047ec09212.png','<div>
	熊猫赚钱是一款手机试玩App兼职赚软件平台，下载试玩App就能赚钱，玩得越多赚得越多。现在加入，新用户立送2元，10元提现。</div>
<div>
	&nbsp;</div>
<div>
	试玩应用就能赚钱，加入熊猫试玩，开启网赚人生。精选简单任务，有手机动动手指即可赚钱，熊猫赚钱随时随地都能赚，上班也能赚第二份工资，任务多，不愁没得赚，无门槛，轻松做任务赚现金，结算简单，支持微信、支付宝提现，方便快捷。</div>
','','','熊猫赚钱','1569490615','10','10','1','admin','1000','1007','588','0','0','0','','','熊猫赚钱','试玩应用就能赚钱，加入熊猫试玩，开启网赚人生。精选简单任务，有手机动动手指即可赚钱，熊猫赚钱随时随地都能赚，上班也能赚第二份工资，任务多，不愁没得赚，无门槛，轻松做任务赚现金，结算简单，支持微信、支付宝提现，方便快捷。'),
('56','8','钱鹿试玩','钱鹿试玩','3.2.0','1569490591','22M','苹果IOS','','/upload/img/2019/07/06/5d2047f7bbd16.png','<div>
	钱鹿试玩是一款手机App试玩赚钱的兼职平台，您通过钱鹿下载APP试玩体验，即可获得相应现金奖励，注册就会送你2.1元，只要满10元即可兑换到支付宝。</div>
<div>
	&nbsp;</div>
<div>
	钱鹿试玩，通过下载钱鹿APP试玩应用体验，一个任务1元起，满10元即可提现，当天下载、当天提现、当天到账，让你能够进行一些外快的赚取，带你装逼带你飞，带你数钱到天黑！</div>
','','','钱鹿试玩','1569490591','10','10','1','admin','1000','1015','200','0','0','0','','钱鹿试玩下载_钱鹿试玩app下载 _钱鹿试玩手机赚钱软件是真的吗,怎么玩? ','钱鹿试玩','钱鹿试玩，通过下载钱鹿APP试玩应用体验，一个任务1元起，满10元即可提现，当天下载、当天提现、当天到账，让你能够进行一些外快的赚取，带你装逼带你飞，带你数钱到天黑！');
DROP TABLE IF EXISTS  `appcms_cate_relation`;
CREATE TABLE `appcms_cate_relation` (
  `relation_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '关系ID',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '类型 0=应用 1=资讯',
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '资讯ID，应用ID',
  `id_down` int(11) NOT NULL DEFAULT '0' COMMENT '下载量',
  `id_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `id_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `id_create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `id_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '访问量',
  PRIMARY KEY (`relation_id`),
  KEY `cate_id` (`cate_id`),
  KEY `id_update_time` (`cate_id`,`id_update_time`),
  KEY `id_down` (`cate_id`,`id_down`),
  KEY `id_order` (`cate_id`,`id_order`),
  KEY `order_id_update` (`cate_id`,`id_order`,`id_update_time`),
  KEY `order_id_down` (`cate_id`,`id_order`,`id_down`),
  KEY `id_visitors` (`cate_id`,`id_visitors`),
  KEY `id_create_time` (`cate_id`,`id_create_time`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COMMENT='分类关系表';

insert into `appcms_cate_relation`(`relation_id`,`cate_id`,`type`,`id`,`id_down`,`id_order`,`id_update_time`,`id_create_time`,`id_visitors`) values
('56','8','0','27','4','9993','1561131859','1558923333','1011'),
('55','1','0','27','4','9993','1561131859','1558923333','1011'),
('58','8','0','28','5','9992','1569077635','1558925494','10021'),
('57','1','0','28','5','9992','1569077635','1558925494','10021'),
('53','1','0','26','4','9994','1569077456','1558881562','1027'),
('52','8','0','25','1','9995','1558948658','1558880081','1021'),
('60','8','0','29','4','9991','1570112754','1558926892','21239'),
('59','1','0','29','4','9991','1570112754','1558926892','21239'),
('43','21','0','21','4','8999','1558787962','1555841261','10019'),
('42','2','0','21','4','8999','1558787962','1555841261','10019'),
('41','8','0','20','20','9999','1571277064','1555840324','10244'),
('40','1','0','20','20','9999','1571277064','1555840324','10244'),
('62','8','0','30','2','9990','1570112779','1558937543','2249'),
('61','1','0','30','2','9990','1570112779','1558937543','2249'),
('70','8','0','34','1','9896','1558960902','1558960902','9'),
('69','1','0','34','1','9896','1558960902','1558960902','9'),
('76','21','0','37','0','8997','1560169265','1560047136','1017'),
('75','2','0','37','0','8997','1560169265','1560047136','1017'),
('45','1','0','22','4','9998','1570106315','1558786264','1062'),
('44','20','1','2','0','0','1559482258','1555846157','49'),
('74','15','0','36','0','8994','1560169992','1559047460','12343'),
('73','2','0','36','0','8994','1560169992','1559047460','12343'),
('78','17','0','38','2','8996','1561132060','1560050131','1014'),
('77','2','0','38','2','8996','1561132060','1560050131','1014'),
('72','8','0','35','2','9895','1561132016','1559033037','1012'),
('71','1','0','35','2','9895','1561132016','1559033037','1012'),
('51','1','0','25','1','9995','1558948658','1558880081','1021'),
('50','8','0','24','4','9996','1569324404','1558840744','1034'),
('47','1','0','23','3','9997','1558948686','1558788866','1042'),
('46','8','0','22','4','9998','1570106315','1558786264','1062'),
('49','1','0','24','4','9996','1569324404','1558840744','1034'),
('48','8','0','23','3','9997','1558948686','1558788866','1042'),
('66','8','0','32','2','9898','1561131967','1558956985','12232'),
('65','1','0','32','2','9898','1561131967','1558956985','12232'),
('68','8','0','33','2','9897','1561131986','1558958534','3132'),
('67','1','0','33','2','9897','1561131986','1558958534','3132'),
('64','8','0','31','2','9899','1561131945','1558938955','1011'),
('63','1','0','31','2','9899','1561131945','1558938955','1011'),
('54','8','0','26','4','9994','1569077456','1558881562','1027'),
('79','2','0','39','4','8998','1570449692','1560054145','1025'),
('80','17','0','39','4','8998','1570449692','1560054145','1025'),
('81','2','0','40','0','8996','1560168090','1560082947','1015'),
('82','15','0','40','0','8996','1560168090','1560082947','1015'),
('83','2','0','41','1','8995','1561132107','1560087835','1018'),
('84','15','0','41','1','8995','1561132107','1560087835','1018'),
('85','1','0','42','1','9894','1561182598','1561182598','9'),
('86','8','0','42','1','9894','1561182598','1561182598','9'),
('87','1','0','43','1','9893','1561183272','1561183272','8'),
('88','8','0','43','1','9893','1561183272','1561183272','8'),
('89','1','0','44','1','9892','1561184592','1561184378','1016'),
('90','8','0','44','1','9892','1561184592','1561184378','1016'),
('91','1','0','45','1','9891','1569324257','1561267168','1026'),
('92','8','0','45','1','9891','1569324257','1561267168','1026'),
('93','1','0','46','3','9890','1570112855','1561267477','1016'),
('94','8','0','46','3','9890','1570112855','1561267477','1016'),
('95','1','0','47','2','0','1569490747','1561267695','1011'),
('96','8','0','47','2','0','1569490747','1561267695','1011'),
('97','1','0','48','7','0','1569505609','1561778183','1019'),
('98','8','0','48','7','0','1569505609','1561778183','1019'),
('99','1','0','49','3','0','1569490906','1561778434','1007'),
('100','8','0','49','3','0','1569490906','1561778434','1007'),
('101','1','0','50','6','0','1569504312','1561778516','1009'),
('102','8','0','50','6','0','1569504312','1561778516','1009'),
('103','19','1','3','0','9994','1570071532','1561778702','82'),
('104','1','0','51','4','0','1569502582','1562395472','1012'),
('105','8','0','51','4','0','1569502582','1562395472','1012'),
('106','1','0','52','4','0','1569498557','1562395522','1012'),
('107','8','0','52','4','0','1569498557','1562395522','1012'),
('108','1','0','53','4','0','1562396619','1562395607','1007'),
('109','8','0','53','4','0','1562396619','1562395607','1007'),
('110','1','0','54','2','0','1569490675','1562395652','1009'),
('111','8','0','54','2','0','1569490675','1562395652','1009'),
('112','1','0','55','4','0','1569490615','1562395964','1007'),
('113','8','0','55','4','0','1569490615','1562395964','1007'),
('114','1','0','56','2','0','1569490591','1562396023','1015'),
('115','8','0','56','2','0','1569490591','1562396023','1015'),
('116','19','1','4','0','9995','1571277167','1569590127','72'),
('117','19','1','5','0','9998','1569935888','1569666343','43'),
('118','19','1','0','0','0','0','0','0'),
('119','19','1','0','0','0','0','0','0'),
('120','19','1','0','0','0','0','0','0'),
('121','19','1','0','0','0','0','0','0'),
('122','19','1','0','0','0','0','0','0'),
('123','19','1','6','0','9997','1569987557','1569933459','34'),
('126','20','1','9','0','9992','1570097497','1569987836','38'),
('127','19','1','10','0','9991','1570099982','1569987915','39'),
('128','19','1','11','0','0','1570427023','1570008644','25'),
('129','19','1','12','0','0','1570426039','1570008738','21'),
('130','19','1','13','0','0','1570361435','1570008803','33'),
('131','19','1','14','0','0','1570331250','1570008890','55'),
('132','19','1','15','0','9996','1570070371','1570020229','46'),
('133','19','1','16','0','9993','1570288208','1570023120','50');
DROP TABLE IF EXISTS  `appcms_category`;
CREATE TABLE `appcms_category` (
  `cate_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父类id',
  `cname` varchar(100) NOT NULL DEFAULT '' COMMENT '分类名称',
  `cname_py` varchar(100) NOT NULL DEFAULT '' COMMENT '分类字母别名',
  `ctitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `ckey` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `cdesc` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `corder` int(11) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `cimg` varchar(100) NOT NULL DEFAULT '' COMMENT '分类图片',
  `cat_show` int(2) NOT NULL DEFAULT '1' COMMENT '是否显示分类',
  `tpl_index` varchar(500) NOT NULL DEFAULT '' COMMENT '封面模板',
  `tpl_listvar` varchar(500) NOT NULL DEFAULT '' COMMENT '列表变量模板',
  `tpl_content` varchar(500) NOT NULL DEFAULT '' COMMENT '内容页模板',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '分类类型：应用=0，资讯=1',
  `cdata` int(11) NOT NULL DEFAULT '0' COMMENT '分类下的数据',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='分类表';

insert into `appcms_category`(`cate_id`,`parent_id`,`cname`,`cname_py`,`ctitle`,`ckey`,`cdesc`,`corder`,`cimg`,`cat_show`,`tpl_index`,`tpl_listvar`,`tpl_content`,`type`,`cdata`) values
('1','0','苹果赚钱','ios','精选推荐最新靠谱的苹果手机试玩App赚钱平台汇总排行榜','苹果手机赚钱,app试玩赚钱,试玩app,iPhone试玩平台','苹果手机试玩app赚钱软件哪个单价高？这些都是我重点挑选出来的靠谱平台，里面有很多不错的试玩app赚钱软件和平台，让你轻松用手机日入50-100元以上。另外如果大家想学习更多试玩经验和技巧的话，也可以去看看。','1','','1','','','','0','30'),
('2','0','安卓赚钱','android','安卓手机有哪些靠谱的手赚项目？给力项目及平台推荐排行榜','Android手机赚钱,安卓试玩赚钱,阅读新闻赚钱,转发文章赚钱','分享安卓手机赚钱软件平台以及靠谱的排行榜，提供当前热门的app，以及兼职赚钱的攻略教程方法。','2','','1','','','','0','7'),
('21','2','做任务','task','手机做任务赚钱，让你充分利用自己的碎片时间，随时随地赚钱','','手机做任务赚钱可以做任务赚赏金，比如关注微信公众号，微信点赞，发朋友圈，关注小程序，问卷调查等等；让你充分利用自己的碎片时间，做简单悬赏任务，随时随地赚钱，让自己每月不缺零花钱。','7','','1','','','','0','2'),
('8','1','App试玩','AppShiWan','精选热门苹果赚钱软件,靠谱苹果试玩APP平台推荐下载 ','苹果手机,iphone,ipad,试玩App赚钱,网赚','用手机试玩App赚零发钱吧(仅限苹果设备)，一个任务1元起，3分钟左右一个，试玩(后台运行即可)之后可以删除。试玩几十个，收入几十（多个平台同时操作会更多），完全免费、简单、靠谱、自由，外面很多工作室都在做，每天稳定几十。','5','','1','','','','0','30'),
('13','2','转发文章','Article','','','','10','','1','','','','0','0'),
('15','2','阅读新闻','News','每天看新闻，居然能有红包领，还能有钱赚','','每天都看的新闻，居然能有红包领，还能有钱赚，这是真的吗？ 当然是真的了!阅读文章赚钱，就是阅读新闻资讯赚钱。阅读的过程中可以赚取金币，1000金币差不多可以兑换1元现金，每天凌晨系统自动给你兑换到账户，账户满20元可以申请微信红包结算，即可申请提现。','9','','1','','','','0','3'),
('17','2','试玩App','ShiWanApp','精选安卓手机试玩app赚钱平台,小编推荐,亲测靠谱','','','8','','1','','','','0','2'),
('19','0','新手教程','course','手把手教你用手机赚钱，分享最新手赚项目的新手教程和玩法攻略，','','','3','','1','','','','1','16'),
('20','0','赚钱资讯','info','手机赚钱网赚圈子各类线报收集,利用信息差第一时间拿到第一桶金','','','4','','1','','','','1','2');
DROP TABLE IF EXISTS  `appcms_comment`;
CREATE TABLE `appcms_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '应用id，资讯id',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '评论类型：应用=0，资讯=1',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '评论内容',
  `date_add` int(11) NOT NULL DEFAULT '0' COMMENT '发布时间',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `uname` varchar(500) NOT NULL DEFAULT '' COMMENT '昵称',
  `ip` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ip地址',
  `ip_addr` varchar(200) NOT NULL DEFAULT '' COMMENT '地理位置',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级id',
  `is_check` int(1) NOT NULL DEFAULT '1' COMMENT '是否审核',
  `son` int(11) NOT NULL DEFAULT '0' COMMENT '子评论数',
  `good` int(11) NOT NULL DEFAULT '0' COMMENT '赞',
  `bad` int(11) NOT NULL DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`comment_id`),
  KEY `id_type` (`id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

DROP TABLE IF EXISTS  `appcms_flink`;
CREATE TABLE `appcms_flink` (
  `flink_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情ID',
  `flink_name` varchar(100) NOT NULL DEFAULT '' COMMENT '链接文字',
  `flink_img` varchar(500) NOT NULL DEFAULT '' COMMENT '链接图片',
  `flink_url` varchar(500) NOT NULL DEFAULT '' COMMENT '链接地址',
  `flink_is_site` int(2) DEFAULT '0' COMMENT '0=首页，1代表全站',
  `flink_order` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`flink_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

insert into `appcms_flink`(`flink_id`,`flink_name`,`flink_img`,`flink_url`,`flink_is_site`,`flink_order`) values
('1','手赚喵','/upload/img/2019/05/26/5ceaae54368ce.png','http://www.shouzhuanmiao.com/','1','0'),
('2','苹果赚钱软件','','http://www.shouzhuanmiao.com/app/ios/','1','0'),
('3','安卓手机赚钱','','http://www.shouzhuanmiao.com/app/android/','1','0'),
('5','做任务赚钱','','http://www.shouzhuanmiao.com/app/task/','1','0');
DROP TABLE IF EXISTS  `appcms_info_list`;
CREATE TABLE `appcms_info_list` (
  `info_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '资讯id',
  `last_cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '终极分类ID',
  `info_title` varchar(500) NOT NULL DEFAULT '' COMMENT '标题',
  `info_stitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `info_img` varchar(500) NOT NULL DEFAULT '' COMMENT '缩略图',
  `info_desc` varchar(500) NOT NULL DEFAULT '' COMMENT '摘要',
  `info_body` text COMMENT '详情',
  `info_tags` varchar(1000) NOT NULL DEFAULT '' COMMENT '标签',
  `info_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `info_from` varchar(500) NOT NULL DEFAULT '' COMMENT '来源',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发布人ID',
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '发布人',
  `info_comments` int(11) NOT NULL DEFAULT '0' COMMENT '评论量',
  `info_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `info_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `info_url` varchar(500) NOT NULL DEFAULT '' COMMENT '外部URL',
  PRIMARY KEY (`info_id`),
  KEY `cate_update_time` (`last_cate_id`,`info_update_time`),
  KEY `cate_order` (`last_cate_id`,`info_order`),
  KEY `cate_visitor` (`last_cate_id`,`info_visitors`),
  KEY `cate_create_time` (`last_cate_id`,`create_time`),
  KEY `info_update_time` (`info_update_time`),
  KEY `info_order` (`info_order`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='资讯表';

insert into `appcms_info_list`(`info_id`,`last_cate_id`,`info_title`,`info_stitle`,`info_img`,`info_desc`,`info_body`,`info_tags`,`info_update_time`,`create_time`,`info_from`,`uid`,`uname`,`info_comments`,`info_visitors`,`info_order`,`info_url`) values
('1','19','苹果手机app试玩赚钱新手必备详细教程，FAQ解答所有常见问题','苹果手机app试玩赚钱新手必备详细教程，FAQ解答所有常见问题','/upload/img/2019/06/01/5cf2284a2a678.jpg','试玩APP赚钱是当下最流行的手机兼职方式，主要以苹果手机为主，入门门槛低，操作简单，动动手指就有不菲的收入。
这里提供App试玩新手必备详细教程，苹果手机赚钱FAQ解答所有常见问题','<div>
	<span style="color:#0080FF;"><strong><span style="font-size:16px;"><span style="font-family:微软雅黑;">【一】什么是试玩App赚钱？</span></span></strong></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">&nbsp; &nbsp; 试玩APP赚钱是当下最流行的手机兼职方式，主要以苹果手机为主，入门门槛低，操作简单，动动手指就有不菲的收入，</span></span></span><span style="color:#ff0000;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">无需交纳任何费用，简单、靠谱</span></span></span><span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">，所以深受用户喜爱！现在市面上至少有100多个任务渠道平台，每个平台都有不同的任务，全部平台一起试玩，</span></span></span><span style="color:#ff0000;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">每天可以稳定收入几十上百元，赚个生活费完全没问题</span></span></span><span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">！</span></span><span style="font-family: 微软雅黑; font-size: 14px;">所谓试玩app赚钱，就是利用手机下载相应的软件赚钱（都是从appstore里下载）而用户获得的是软件开发商给出的推广费用。试玩3分钟【</span></span><span style="color:#ff0000;"><span style="font-family: 微软雅黑; font-size: 14px;">不需要注册，打开后台挂三分钟即可</span></span><span style="color:#696969;"><span style="font-family: 微软雅黑; font-size: 14px;">】就能得到现金奖励，试玩之后就可以删除了，</span></span><span style="color:#ff0000;"><span style="font-family: 微软雅黑; font-size: 14px;">试玩一个任务1元左右</span></span><span style="color:#696969;"><span style="font-family: 微软雅黑; font-size: 14px;">，多劳多得，免费、简单、靠谱！上图</span></span></div>
<div>
	<span style="font-family:微软雅黑;"><span style="font-size:16px;">&nbsp;</span></span>&nbsp;<img alt="" src="/upload/img/aiyingli/imoney.jpg" style="font-family: 微软雅黑; font-size: 16px; width: 650px;" /><br />
	&nbsp;</div>
<div>
	<span style="color:#0080FF;"><span style="font-family:微软雅黑;"><strong><span style="font-size:16px;">【二</span><span style="font-size: 16px;">】为什么能赚钱？</span></strong></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">&nbsp; &nbsp; &nbsp;简单来说，就是</span></span></span><span style="color: rgb(105, 105, 105); font-family: 微软雅黑; font-size: 14px;">推广app公司</span><span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">投钱给兼职平台为其</span></span></span><span style="color:#ff0000;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">提升应用商店排名</span></span></span><span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">，而我们完成指定的试玩下载任务，获得相应的劳动报酬。（举个例子：携程APP想在应用商店搜索&ldquo;旅游&rdquo;时出现在第一位，前期就需要很多人搜索&ldquo;旅游&rdquo;之后下载携程APP，获得相应的关键词热度。）再</span></span><span style="font-family: 微软雅黑; font-size: 14px;">简单直白的说就是</span></span><span style="color:#ff0000;"><span style="font-family: 微软雅黑; font-size: 14px;">推广刷排名，</span></span><span style="font-family: 微软雅黑; font-size: 14px;"><span style="color:#ff0000;">类似淘宝刷单</span>，</span><span style="color: rgb(105, 105, 105); font-family: 微软雅黑; font-size: 14px;">聪明的人一说就明白的</span><span style="color: rgb(105, 105, 105);"><span style="font-family: 微软雅黑; font-size: 14px;">。如果一个公司的app想在苹果商店某个关键词排名靠前就需要来进行ASO优化。推广app公司掏钱购买积分墙任务，提升自己APP在App Store 排行榜的排名，可以让更多人看到自己家的app，达到推广app的目的。平台从广告主那边收取费用，比如下载一个app 3元，然后放到自己家的平台上让用户下载，每下载一个app给用户2元，他们赚取的就是这1元钱的差价。所以，app公司、积分墙平台、用户三方都获得了自己的利益，</span></span><span style="color: rgb(255, 0, 0);"><span style="font-family: 微软雅黑; font-size: 14px;">这种方式算是比较稳定靠谱了</span></span><span style="color: rgb(105, 105, 105);"><span style="font-family: 微软雅黑; font-size: 14px;">。</span></span></div>
<div>
	<span style="font-family:微软雅黑;"><span style="font-size:16px;">&nbsp;</span></span></div>
<div>
	<span style="color:#0080FF;"><strong><span style="font-family:微软雅黑;"><span style="font-size: 16px;">【三</span><span style="font-size: 16px;">】新手教程</span></span></strong></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">具体操作安装平台的时候都有详细说明，按照提示操作即可。如果是第一次玩的话，还是不太明白的地方，可以参考如下视频教学，以【钱咖】为例，大同小异</span></span></span></div>
<div style="font-family: KaiTi_GB2312; font-size: 11pt;">
	<p>
		<iframe allowfullscreen="" frameborder="0" height="498px" src="https://v.qq.com/iframe/player.html?vid=q0311ohyg9q&amp;tiny=0&amp;auto=0" width="100%"></iframe></p>
	<p style="font-family: KaiTi_GB2312; font-size: 11pt;line-height: 20px;">
		<span style="color: #666666;">&nbsp;<br />
		更多图文教程如下</span></p>
	<p style="font-family: KaiTi_GB2312; font-size: 11pt;line-height: 20px;">
		<span style="color: #666666;">1)</span> <a href="http://www.shouzhuanmiao.com/info/3.html" style="color: rgb(103, 149, 181);cursor: pointer;"> <span style=" color: #FF6600; text-decoration: underline;">试客小兵新手篇</span> </a></p>
	<p style="font-family: KaiTi_GB2312; font-size: 11pt;line-height: 20px;">
		<span style="color: #666666;">2)</span> <a href="http://www.shouzhuanmiao.com/info/4.html" style="color: rgb(103, 149, 181);cursor: pointer;"> <span style=" color: #FF6600; text-decoration: underline;">爱盈利新手使用详细教程</span> </a></p>
</div>
<div>
	<div>
		<br />
		<span style="color: rgb(0, 128, 255);"><span style="font-family: 微软雅黑;"><strong><span style="font-size: 16px;">【四</span><span style="font-size: 16px;">】</span></strong></span></span><strong style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px;"><span style="color: rgb(0, 0, 255);">【</span><span style="color: rgb(255, 0, 0);">平台推荐</span><span style="color: rgb(0, 0, 255);">】</span></strong></div>
	<div>
		<span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px;">这些都是从自己在做的平台中筛选出来的靠谱的平台，任务多，单价高，也是大家都在玩的，行业里做的时间长(一些烂的、体验不好的就不要做了｛卡顿、进去弹广告、都是要注册的任务甚至提现有问题等｝)。我把自己在做的过程中的一些总结也都归纳起来，供大家参考，后续有新的体会加进来，还在探索其他的平台以及钻研无限任务技术，自己做过之后，也会陆续更新、完善，大家有什么问题也可以留言给我，一起交流。</span><br />
		<br />
		<a href="http://www.shouzhuanmiao.com/app/ios/" rel="nofollow" style="margin-top:10px;"> <span style="margin-top:10px;font-family: 楷体; font-size: 18px; text-decoration-line: underline; color: #FF0000;"> ===&gt; 苹果试玩App赚钱平台推荐总排行榜 </span> </a>&nbsp;<br />
		&nbsp;</div>
	<span style="color:#0080FF;"><span style="display: none;">&nbsp;</span> <strong><span style="font-family:微软雅黑;"><span style="font-size:16px;">【五</span><span style="font-size: 16px;">】常见的问题解答</span></span></strong></span></div>
<div>
	<span style="color:#0000ff;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">①问：为什么能赚钱？</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">①答：因为一款软件在应用商店排名的高低取决于软件的关键词搜索量和软件的下载量，搜索排名提高了，获得的自然用户才会增多。所以软件开发商花大量的资金让广告商（试玩平台）帮他们做推广，而我们完成广告商（试玩平台）指定的任务，即完成了软件的推广行为，此奖励为劳动所得。</span></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">②问：能赚多少钱？</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">②答：收入因人而异，有的每月几千，有的甚至上万，当然这个跟你做的平台数量有关，苹果系统有多个不同的试玩平台，每个平台每天都会刷新任务，做的平台与任务多肯定赚的就多。每个平台每天做几个任务所有平台的钱加一起也不是小数目。</span></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">③问：如何提现？</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">③答：当我们完成任务之后，即可获得奖励，奖励是发到所做的相应平台上，我们可以提现至微信钱包或者支付宝，基本上都是10块提现的。有几个平台提现都是秒到账！其余大部分平台都是24小时内到账，其实用不了24小时的，基本上最晚也就是十几个小时到账。</span></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;">④<span style="font-family: 微软雅黑; font-size: 14px;">问：</span><span style="font-family: 微软雅黑; font-size: 14px;">APP试玩安全吗？</span><span style="font-family: 微软雅黑; font-size: 14px;">会对手机有损害吗？会泄露个人信息吗？</span></span></div>
<div>
	<span style="color:#008000;">④<span style="font-family: 微软雅黑; font-size: 14px;">答：</span><span style="font-family: 微软雅黑; font-size: 14px;">很多人没有接触过app试玩，所以不知道到底安全不安全，以及是否靠谱，其实这种app试玩绝大部分都是靠谱的，当然也有不靠谱的平台，做完任务之后不能提现的，不过这种平台现在基本上已经挂了，所以大家不用担心。本站的平台都是小编亲自试用筛选出来的，平台提现所需要的信息仅限于微信账号或者支付宝账号，不会涉及密码，所以请放心使用。其次我们所做的任务软件都是从苹果官方商店&ldquo;App Store&rdquo;中下载的，所以绝对安全。如果遇到任何问题可私信客服为你解决。</span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;">⑤<span style="font-family: 微软雅黑; font-size: 14px;">问：</span><span style="font-family: 微软雅黑; font-size: 14px;">手机会不会中毒？</span></span></div>
<div>
	<span style="color:#008000;">⑤<span style="font-family: 微软雅黑; font-size: 14px;">答：</span><span style="font-family: 微软雅黑; font-size: 14px;">首先，我们要求用户下载的所有软件都是官方商店下载的，也就是手机自带的软件商店里，比如苹果一律都是苹果官方商店下，您听说过在苹果官方商店下的软件有毒的么？还有最简单的问题，大家可以百度一下，苹果的安全级别非常高，没有越狱的苹果手机是根本不会中毒的。下载软件只是网络的数据传输，不会影响运行速度。</span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;">⑥<span style="font-family: 微软雅黑; font-size: 14px;">问：</span><span style="font-family: 微软雅黑; font-size: 14px;">手机会变卡吗？</span></span></div>
<div>
	<span style="color:#008000;">⑥<span style="font-family: 微软雅黑; font-size: 14px;">答：</span><span style="font-family: 微软雅黑; font-size: 14px;">内存方面，每个平台只有1到2兆，即使所有的平台加起来也不会超过一百兆，下载的任务给了钱就可以立即删除，完全不影响手机的使用。</span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;">⑦<span style="font-size:14px;"><span style="font-family:微软雅黑;">问：完成任务后，所下载的软件可以卸载吗？</span></span></span></div>
<div>
	<span style="color:#008000;">⑦<span style="font-size:14px;"><span style="font-family:微软雅黑;">答：当然可以！只要任务完成，就可卸载。但是要注意！做任务前每个平台都要让你下载一个任务助手（打开平台的钥匙），这个助手一定不能删并且做任务时要后台运行，否则无法获得佣金。要求试玩的软件在完成任务得到奖励后再卸载。</span></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0080FF;"><strong><span style="font-family:微软雅黑;"><span style="font-size:16px;">【六</span><span style="font-size: 16px;">】特别提醒</span></span></strong></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;"><span style="font-family: 微软雅黑;">①、</span><span style="font-family:微软雅黑;">为保障大家的利益，防止账号丢失，或者无法提现，请在做任务前绑定手机号和微信号！！</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;"><span style="font-family: 微软雅黑;">②、</span><span style="font-family:微软雅黑;">平台软件一般要下载助手，个别平台助手是随机生成的，名字有可能不一样。我们通过助手领取和做任务</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;"><span style="font-family: 微软雅黑;">③、</span><span style="font-family:微软雅黑;">如果发现平台进不去了，一般是助手有更新，卸载老的助手，重新安装即可重新进入</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">④<span style="font-family:微软雅黑;">、苹果ios9以上用户需要企业证书设置，可以在［设置］－［通用］－［描述文件与设备管理］－［企业级应用］－添加信任即可。这个是为了验证设备的唯一性，防止你刷单，不用担心安全问题，至少我做的都没出过问题</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">⑤<span style="font-family:微软雅黑;">、每天下午 3 - 6 点任务会集中投放，所以上午抢不到任务的小伙伴们不要着急。</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">⑥、<span style="font-family:微软雅黑;">有时候可能进入平台后发现没有任务，是没有到刷新的时间，可选择下一个平台试玩（每天下午15-19点大量刷新任务16点任务最多，其他时间中午11点，整点，半点也会刷，把握好下午4点这个时间可以短时间赚很多）做的平台多了大家就会总结出来规律。</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">⑦、<span style="font-family:微软雅黑;">推荐做限时，快速，极速任务（这些任务100%给钱），联盟任务不是100%返钱。</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">⑧<span style="font-family:微软雅黑;">有付费下载软件（利润3-5元，支付1元，在App Store中付费，而不是试玩平台收费）。对于您的资金是由苹果公司和支付宝两个强大的公司共同保障的，所以您大可放心，这个如果不放心也可以选择不做。</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">⑨<span style="font-family:微软雅黑;">、如果是用ipad做任务，记住在打开商店后将ipad下载改成仅iphone下载（打开商店软件界面后左上角）。</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">⑩、<span style="font-family:微软雅黑;">越狱苹果手机：升级到苹果官方最新版本或者在设置中选择还原设备并抹除&ldquo;我的iphone&rdquo;即可试玩所有平台。</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;"><span style="font-size:11px;"><span style="font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma;">11</span></span><span style="font-family:微软雅黑;">、多账号试玩赚钱，需要了解试玩平台用户规则：1个微信号 1个苹果商店账号只能绑定一台手机试玩，若用2台手机试玩，需要新的手机号、微信号和新的商店账号，不能混淆。很多平台还有IP地址限制，官方禁止任何刷机，共享App Store ID等行为，一经发现予以冻结账户，且永不解封！</span></span></span></div>
','试玩app,常见问题,APP问题解答,常见问题解答','1570029182','1373702513','','1','admin','0','295','9999',''),
('4','19','爱盈利乃试玩行业首推，新手教程图文详解','爱盈利乃试玩行业首推，新手教程图文详解','/upload/img/2019/10/03/5d955e8594711.png','','<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<span style="box-sizing: border-box; outline: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: KaiTi_GB2312; font-size: 18px;"><span style="box-sizing: border-box; outline: 0px; font-weight: 700; word-break: break-all;">爱盈利是什么？</span></span></p>
<p style="font-size: 16px; box-sizing: border-box; outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;">
	<span style="box-sizing: border-box; outline: 0px; word-break: break-all; font-family: KaiTi_GB2312; font-size: 18px;">iMoney是一家非常正规的苹果软件试用平台，可以说是<span style="color: rgb(255, 0, 0);">手赚平台的前三甲必玩平台，任务超多，加入立刻送1元现金奖励。单价高，每单1.3元起，试玩必做平台！每天大量试玩任务，零投入收益远超XX宝。</span>只要10元就能提现，试玩应用还能领取丰厚的现金红包，还有挖矿赚钱、点赞赚钱、VIP等级系统等趣味玩法在您娱乐同时还能赚钱，赶快加入吧~</span></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<span style="box-sizing: border-box; outline: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: KaiTi_GB2312; font-size: 18px;"><span style="box-sizing: border-box; outline: 0px; font-weight: 700; word-break: break-all;">一、如何加入爱盈利？</span><br style="box-sizing: border-box; outline: 0px; word-break: break-all;" />
	手机点二维码进入或者扫描二维码进入，马上赚取你的第一桶金！</span></p>
<p style="font-size: 16px; outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; word-break: break-all; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;">
	<a href="http://invite.nativefeednews.com/landing/share.html?promote=4748860" rel="nofollow" target="_blank"> <img src="/upload/img/aiyingli/aiyingli.png" style="vertical-align: top;" />&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="/upload/img/aiyingli/zhanji.jpg" style="vertical-align: top;" /></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<span style="box-sizing: border-box; outline: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: KaiTi_GB2312; font-size: 18px;"><span style="box-sizing: border-box; outline: 0px; font-weight: 700; word-break: break-all;">二、如何安装爱盈利</span><br style="box-sizing: border-box; outline: 0px; word-break: break-all;" />
	进入如下页面后，点击【立即加入】进入，根据引导安装即可。<br style="box-sizing: border-box; outline: 0px; word-break: break-all;" />
	<br />
	<img src="/upload/img/aiyingli/1_1.jpg" style="height: 533px; width: 300px;" />&nbsp;<img src="/upload/img/aiyingli/1_3.jpg" style="height: 533px; width: 300px;" />&nbsp;</span></p>
<p style="font-size: 16px; box-sizing: border-box; outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;">
	<span style="box-sizing: border-box; outline: 0px; word-break: break-all; font-family: KaiTi_GB2312; background-color: rgb(255, 255, 102);">提示：iOS9 以上的版本，安装后需要到 设置 &rarr; 通用 &rarr; 描述文件（设备管理）中找到爱盈利的描述文件选择 &ldquo;信任&rdquo; 即可。</span></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<span style="box-sizing: border-box; outline: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: KaiTi_GB2312; font-size: 18px;"><span style="box-sizing: border-box; outline: 0px; font-weight: 700; word-break: break-all;">三、如何试玩</span><br style="box-sizing: border-box; outline: 0px; word-break: break-all;" />
	进入首页后，点击【试玩赚钱】进入试玩列表页面，领取任务，即可开始试玩赚钱。<span style="color: rgb(255, 0, 0);">目前大部分任务都是1.3元左右</span>，具体如下：</span></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<img src="/upload/img/aiyingli/1.png" style="width: 300px;" />&nbsp;<img src="/upload/img/aiyingli/2.png" style="width: 300px;" /><img src="https://www.shiwan321.com/course/aiyingli/3.png" style="width: 300px;" />&nbsp;<img src="https://www.shiwan321.com/course/aiyingli/4.png" style="width: 300px;" /><img src="https://www.shiwan321.com/course/aiyingli/5.png" style="width: 300px;" />&nbsp;<img src="https://www.shiwan321.com/course/aiyingli/6.png" style="width: 300px;" /></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<span style="box-sizing: border-box; outline: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: KaiTi_GB2312; font-size: 18px;"><span style="box-sizing: border-box; outline: 0px; font-weight: 700; word-break: break-all;">四、如何提现</span><br style="box-sizing: border-box; outline: 0px; word-break: break-all;" />
	在顶部菜单栏，点击【立即提现】进入后，点击 &ldquo;申请提现&rdquo; 即可。<br style="box-sizing: border-box; outline: 0px; word-break: break-all;" />
	<img src="/upload/img/aiyingli/tixian.png" style="width: 300px;" />&nbsp;<img src="/upload/img/aiyingli/tixian2.png" style="width: 300px;" />&nbsp;</span></p>
<p style="font-size: 16px; box-sizing: border-box; outline: 0px; padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; word-break: break-all; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun;">
	<span style="box-sizing: border-box; outline: 0px; word-break: break-all; font-family: KaiTi_GB2312; background-color: rgb(255, 255, 102);">提示：目前支持微信和支付宝提现功能，目前大部分任务都是1元以上，满 10 元即可提现，容易兑现。</span></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<span style="box-sizing: border-box; outline: 0px; word-break: break-all; color: rgb(51, 51, 51); font-family: KaiTi_GB2312; font-size: 18px;"><span style="box-sizing: border-box; outline: 0px; font-weight: 700; word-break: break-all;">五、温馨提示</span><br style="box-sizing: border-box; outline: 0px; word-break: break-all;" />
	1、任务每天下午 3 - 6 点任务会集中投放。<br style="box-sizing: border-box; outline: 0px; word-break: break-all;" />
	2、领取任务后，进入详情页，认真阅读内容并在规定时间内复制 &ldquo;关键词&rdquo;，到 App Store 里找到与任务一致 App，下载并试玩。<br style="box-sizing: border-box; outline: 0px; word-break: break-all;" />
	3、iPad 用户需要在 App Store 中下载选择 &ldquo;仅 iPhone 下载&rdquo;。<br style="box-sizing: border-box; outline: 0px; word-break: break-all;" />
	4、每邀请一个好友试玩就有奖励，邀请的越多赚的越多哟。</span></p>
','爱盈利,爱盈利教程,详细使用教程','1571277167','1569590127','','1','admin','0','72','9995',''),
('2','20','现在怎么在网上赚钱兼职，哪些平台和方法比较正规和靠谱？','现在怎么在网上赚钱兼职，哪些平台和方法比较正规和靠谱？','/upload/img/2019/06/02/5cf3cca31f586.jpg','','<div>
	<span style="font-size:16px;">&nbsp; &nbsp; &nbsp; &nbsp;如何在网络赚钱，网上挣钱方法有哪些，正规可靠的网上兼职有哪些？由于生活压力的存在，随着互联网的渗透，很多人希望有一份副业利用业余时间网上赚钱兼职增加收入，现在我把目前网上挣钱一些常见的项目总结下，供大家参考。<span style="color:#ff0000;">【谨记】</span><span style="color:#0000ff;">兼职有行动才有钱赚，网上兼职赚钱均免费，需要交钱的都是骗子行为!</span></span><br />
	&nbsp;</div>
<div>
	<span style="font-size:16px;"><span style="background-color:#ffff00;">1、做自媒体</span></span></div>
<div>
	<span style="font-size:16px;">　　这几年自媒体炒的比较热，而且很多人都开始做自媒体了。像微博、博客，有些比较出名的一个月上万的不在少数，也挣好几万，还有靠付费阅读一个月挣几万也轻松。<span style="color:#0000ff;">做自媒体无非为了流量或收益，难就难在涨粉，要持续不断的输出优质内容。</span>你得会写，写你最擅长的。不只是个人博客，目前自媒体平台越来越多，简单分析四大主流自媒体平台的收益情况</span></div>
<div>
	<span style="font-size:16px;"><strong>头条号：</strong>目前各机制最完善的一个平台，单价收益相对于其他平台来说是比较低的，一万的阅读量非原创只有1块钱左右，原创是非原创的3-5倍。新手还是比较适合做头条的，虽然说单价低，但是流量大，一篇质量较好文章，阅读量将会达到几十万。</span></div>
<div>
	<span style="font-size:16px;"><strong>百家号：</strong>目前众多平台当中单价最高的，是自媒体人非常爱做的一个平台，但收益并不稳定，今天一万阅读量给你20块钱，但是明天一万阅读量就给你10块钱，百家号要想拿到收益一定要过了新手期，现在百家号过新手期越来越难，越来越严格，需要创作者创作优质的内容才有机会过百家的新手。</span></div>
<div>
	<span style="font-size:16px;"><strong>大鱼号：</strong>这个是马爸爸的内容创作平台，收益不高，有可能一篇10万 爆文也只有几十块，但是每个月会拿出不少奖金发放，只要你能创作出优质内容，要拿到这些奖励并不难。</span></div>
<div>
	<span style="font-size:16px;"><strong>微信公众号：</strong>平台争议挺大，但载体是微信手机客户端，有海量用户，对于个人运营的好的也可以月入几万。</span></div>
<div>
	<span style="font-size:16px;">总的来说，无论你到哪个平台都能获取一定的收益，现在四大主流平台已经不缺内容，缺的是优质内容。</span></div>
<div>
	<span style="font-size:16px;">&nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3cc33e53a6.jpg" /></span></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">2、网站挣钱</span></span></div>
<div>
	<span style="font-size:16px;">　　利用网站挣钱，也就是我们这些所谓的站长。网站有很多，挣钱的方法也很多。比如地方论坛可以<span style="color:#ff0000;">接广告挣钱</span>，资讯网站可以靠<span style="color:#ff0000;">广告联盟挣钱</span>，网赚论坛可以<span style="color:#ff0000;">收VIP会员挣钱</span>，也可以接广告挣钱。虽然不少站长收入很高，实际上大部分站长收入很低。不少站长反应，自己每天二三百IP，每年的网站收入才两三百元，相当于一天一元钱都没有实现。很多站长之所以收入低，原因在于流量低及流量质量低。用户少很少点击广告。如果希望依靠点击广告获得收入，必须要有大量的流量，否则永远只是个梦想！既然要踏进站长这行，就要做好几个月、半年甚至一年是0收入的准备，一个网站没有岁月的洗礼是很难成功的。</span></div>
<div>
	<span style="font-size:16px;">&nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3cce66b726.jpg" /></span></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">3、手机做任务赚钱</span></span></div>
<div>
	<span style="font-size:16px;">&nbsp; &nbsp; &nbsp; 这个适合兼职做，相对其他的没有什么技能要求，小白都可以做，小钱来的比较快，但是赚大钱也需要研究技术批量操作。就是利用手机下载相应的软件赚钱（都是从appstore里下载）而用户获得的是软件开发商给出的推广费用。每天闲暇时间，点点手机，当零发钱使用了。只需要一台设备（手机、ipad) wifi就可以，每天下载试玩app应用（不用注册），试玩3分钟就能得到现金奖励，试玩之后就可以删除了，<span style="color:#0000ff;">试玩一个任务1元起，试玩几十个，收入几十</span>（多个平台同时操作会更多），复杂点的10元几十一个(可能需要注册，不放心的可以不做)，<span style="color:#ff0000;">正常一天可以稳赚几十元，一个月五六百还是很轻松的</span>。 有些网站会把试玩平台总结起来，大家可以在手赚喵了解。而赚的多的都是专业的赚客，都是有资源能推荐很多徒弟或者通过一些专业的手法刷机或者用一些辅助软件抢任务等等，小白就不要尝试了容易判定作弊封号，官方禁止任何刷机，共享App Store ID等行为，一经发现予以冻结账户，且永不解封！对于下载试玩，主要以苹果手机为主，因为苹果手机做这个价格高。当然，安卓手机也有一些下载试玩的，不过价格比较少，还麻烦，所以下载试玩大家最好使用苹果手机，安卓的赚不了多少钱。这是由于操作系统决定的，苹果市场只有appStore一家，而安卓市场已经泛滥，且系统安全也不及苹果，市面很多破解和刷机方法。 所以价格比较低廉，而且很多带捆绑注册的垃圾平台，还容易中毒。，android手机适合做调查任务，不太建议做阅读类，麻烦收益还低。</span><br />
	&nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3cceabdd45.jpg" /><img alt="" src="/upload/img/2019/06/02/5cf3ceaac25de.png" /></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">4、淘宝开店</span></span></div>
<div>
	<span style="font-size:16px;">　　淘宝开店挣钱可以说是很多，很多，而且很多人做淘宝都发财了。不过，现在要是做淘宝的话却是非常的难。现在淘宝竞争太激烈，有的恶意差评，恶意举报都是常见的事，弄不了卖个假货店都被封的也有。</span><span style="font-size: 16px;">我有一个淘宝店铺是我开始网上挣钱时候开的，不过去年的时候被淘宝给永久封了。去年店被封后我又开了一个，现在也一钻了。不过，店铺还是放在那了，有客户买东西也不想卖的，有的直接送了，因为越来越反感淘宝了。</span><span style="font-size: 16px;">前段时间我也听一个网友说，她的店铺也因卖一些东西店铺被永久封了，现在都不喜欢淘宝了，现在的淘宝根本不顾中小卖家的死活。虽然淘宝不好做，但是如果你有好的产品的话还是开淘宝好一些，你也可以模仿别人的淘宝店铺挣钱。</span><br />
	&nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3ccfa6c2aa.jpg" /></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">5、淘宝客</span></span></div>
<div>
	<span style="font-size:16px;">　　淘宝联盟也叫淘宝客，阿里妈妈，也是马云话旗下的产品。淘宝联盟主要是帮助淘宝卖家推广商品的，然后有成交就可以赚取一定的提成，有几角，几元，几十，几百的都有。意思就是说，你没有产品，你可以推广别人的产品挣提成。</span><span style="font-size: 16px;">做淘宝客挣钱的方法有很多，利用论坛做淘宝客，利用QQ做淘宝客，利用网站做淘宝客。现在做淘宝客的非常多，一月几千，上万的人多的是。</span><br />
	&nbsp; &nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3cd7da796a.jpg" /></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">6、淘宝刷单赚钱</span></span></div>
<div>
	<span style="font-size:16px;">&nbsp; &nbsp; &nbsp; 说起淘宝刷单这个词，我想不知道的人应该没有几个，网上不是有这么一句话吗：&ldquo;十个淘宝九个刷，还有一个搞批发&rdquo;。通过这句话我们得知，淘宝刷单应该非常的泛滥。既然说到了淘宝刷单这个话题，那么很多人会想起网上比较出名的一个网赚项目。对，那就是淘宝刷单兼职这个工作，熟悉这个行业的朋友会觉得这是个赚钱的门路，不熟悉的会觉得这是一个网络上的骗局。但是有一点需要注意，如果要你垫付什么的，还有那些要你叫什么会有费才带你做的，不要相信！</span><br />
	&nbsp; &nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3ce7b9415b.jpg" /></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">7、微商赚钱</span></span></div>
<div>
	<span style="font-size:16px;">&nbsp; &nbsp; &nbsp; 这两年微商很火，挣钱和归本的都有。经常有网友来问我，怎么做微商呀？其实我也不知道该怎么和他们说，百度一下微商，就会很多介绍做微商的教程。不过，现在的微商还不够正规，许多都是骗人的，就拿微商圈面膜为例，假的多真的少。</span></div>
<div>
	<span style="font-size:16px;">我有一个同学是做微商的，她说，她看不惯现在的微商，一点良心的底线都没有。他说他自己的产品都必须亲自用过才行，如果产品质量好，才会卖这个产品。而且，他不招代理，不骗人，用心卖货，虽然我不知道他说的真假，但是我想大家也该明白了，如果你想做微商，但是你一定要做一名正规的微商，不坑人， 不骗人，真正的是在卖货，用心服务好你的客户，然后学习一些网络营销的方法，边做边学，你一定能赚到不少钱。</span><br />
	&nbsp; &nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3cdf6ae715.jpg" /></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">8、学习才是最赚钱的</span></span></div>
<div>
	<span style="font-size:16px;">　这一点好理解吗？也就是你有真才实学才是最赚钱，赚大钱的，要达到这一点就得不断丰富自己的知识，这样才能够永保你立于不败之地。<br />
	<img alt="" src="/upload/img/2019/06/02/5cf3cd0d94d2f.jpg" /></span></div>
','网上兼职,兼职赚钱,正规平台,靠谱方法','1559482258','1555846157','','1','admin','0','49','0',''),
('3','19','单价最高的试客小兵试玩赚钱新手攻略','单价最高的试客小兵试玩赚钱新手攻略','/upload/img/2019/10/03/5d955ca8cb4e0.jpg','','<div>
	<span style="font-size:16px;"><span style="color:#800080;"><strong><span style="font-family:微软雅黑;">【前言】</span></strong></span><span style="color:#696969;"><span style="font-family:微软雅黑;">手赚圈子里说起苹果手机试玩App兼职赚钱可谓无人不知，无人不晓，相信很多人对于试客小兵也不会陌生，大概很多小伙伴接触App试玩赚钱这一行当都是从试客小兵开始的吧，这归结于试客小兵有很多的优点，尤其是</span></span><span style="color:#ff0000;"><span style="font-family:微软雅黑;">任务单价非常高(1.5元起)、提现门槛和提现速度很快，8元即可微信提现，提现后秒到账</span></span><span style="color:#696969;"><span style="font-family:微软雅黑;">！小编我也算试玩界的老司机了，也是从接触试客小兵开始接入这一行列的，后来慢慢接触了越来越多的苹果试玩平台，当然也靠自己的努力赚到了越来越多的钱，现在还建了自己的网站，今天小编就来和大家分享一下试客小兵的赚钱攻略。</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;"><span style="background-color:#ffa500;">一、手机点二维码进入或者扫描二维码进入应用试客，马上开始你的赚钱之旅！</span></span></span></span></div>
<div>
	<a href="https://shike.com/i/yyeuEz" target="_blank"><img alt="" src="/upload/img/xiaobing/erweima.png" style="width: 160px; height: 160px;" /></a><br />
	&nbsp;</div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;"><span style="background-color:#ffa500;">二、怎么安装小兵，其实很简单，一般根据引导安装就行。</span></span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">提示：iOS9 以上的版本，安装小兵后需要到 设置 &rarr; 通用 &rarr; 描述文件（设备管理）中找到试客小兵的描述文件选择 &ldquo;信任&rdquo; 即可。</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span><br />
	&nbsp;</div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;"><span style="background-color:#ffa500;">三、如何试玩赚钱</span></span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">点击【开始试玩】进入试玩列表页面，领取任务(一般单价1.5元左右，下载试玩3分钟，佣金到手)，即可开始试玩赚钱。具体如下：</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;<img alt="" src="/upload/img/xiaobing.png" style="width: 650px;" /></span></span></span><br />
	&nbsp;</div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;"><span style="background-color:#ffa500;">四、赚了米米，怎么提现</span></span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">提示：做任务满8元即可提现、秒到微信红包</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;"><span style="background-color:#ffa500;">新手答疑：</span></span></span></span></div>
<div>
	<span style="color:#ff0000;"><span style="font-size:16px;"><span style="font-family:微软雅黑;">1.试客小兵真的靠谱吗？</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:16px;"><span style="font-family:微软雅黑;">答案是肯定的！在业内，应用试客是起步最早的现金奖励的试玩平台，任务单价高、即时提现一直是小兵最大的优势，目前注册用户1000万 。</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#ff0000;"><span style="font-size:16px;"><span style="font-family:微软雅黑;">2.试客小兵是免费的吗？</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:16px;"><span style="font-family:微软雅黑;">可以肯定的告诉你试客小兵是免费的，因为只要有手机和无线网就好了。当然有些应用是付费做的，但奖励也会更高，只要正常试玩都会和奖励一起返还到你的试客账户里面。安全问题，根本不需要担心！</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#ff0000;"><span style="font-size:16px;"><span style="font-family:微软雅黑;">3.试客小兵使用过程中出现问题，有人来给解决吗？</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:16px;"><span style="font-family:微软雅黑;">这个问题很多用户问过我，因为初次玩试客小兵害怕赚的钱无法提现等等一系列问题，这个不用担心，在试客小兵里周一到周五9:00-17:00是有专业客服在的，也可以关注&ldquo;应用试客&rdquo;官方微博，有任何问题都可以私聊呦！</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#ff0000;"><span style="font-size:16px;"><span style="font-family:微软雅黑;">4.如何在试客小兵里赚钱？</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:16px;"><span style="font-family:微软雅黑;">根据前面的步骤下载试客小兵，点击开始赚钱-试玩应用-选择试玩的应用按照提示步骤操作就可以了，登录试玩应用，试玩3分钟，就可以在试客小兵里面领取现金奖励了，绑定微信就可以实现提现秒到账呦！</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:微软雅黑;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#800080;"><span style="font-size:16px;"><span style="font-family:微软雅黑;">以上就是今天为大家分享的经验和知识。只能帮你到这了，请叫我雷锋。还等什么？赶快扫码下载吧，现金轻松到手！</span></span></span></div>
','试客小兵,应用试客','1570071532','1561778702','','1','admin','0','82','9994',''),
('15','19','苹果手机app试玩赚钱之钱咖官方教学视频','苹果手机app试玩赚钱之钱咖官方教学视频','/upload/img/2019/10/03/5d955f61d8aef.jpg','','<p pingfang="" style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; white-space: normal; margin: 10px auto;">
	<span style="font-family: KaiTi_GB2312; line-height: 1.5; box-sizing: border-box; color: #4F4F4F; font-size: 18px;"><span style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; box-sizing: border-box; font-weight: bold;">钱咖是什么？</span></span></p>
<p pingfang="" style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; white-space: normal; box-sizing: border-box; font-size: 16px; color: rgb(79, 79, 79); line-height: 26px; min-height: 26px; margin-top: 0px; margin-bottom: 16px; text-align: justify; padding: 0px;">
	<span style="font-family: KaiTi_GB2312; line-height: 1.5; box-sizing: border-box; font-size: 18px;">钱咖是网赚、手赚<span style="line-height: 1.5; color: #FF0000;">必做的试玩平台，业界第一手机赚钱平台，全网最高单价</span>。它是上海报业（上市代码600825）旗下投资项目之一，用户可以通过试玩应用获得现金奖励，截止到2016年5月止，累计超过3000万的苹果手机用户已安装使用。用户每成功体验一个软件只需要3-5分钟左右，<span style="line-height: 1.5; color: #FF0000;">单价奖励1.5~3.5元</span>不等。成功加入就送1元现金奖励。<span style="font-family: KaiTi_GB2312; line-height: 1.5;">10元就可提现</span>到微信或者支付宝。提现24小时内到账，每天下午3点刷新任务，其他时间不定时刷新！</span></p>
<p style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; white-space: normal; text-align: justify;">
	<span style="color:#4F4F4F;font-family:KaiTi_GB2312"><span style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; font-size: 18px;"><span style="color: #4F4F4F; font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;"><span style="color: #4F4F4F; font-size: 18px; text-align: justify; font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; box-sizing: border-box; font-weight: bold;">一、如何玩转钱咖？</span><br style="color: rgb(79, 79, 79); font-size: 18px; text-align: justify; white-space: normal; font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; box-sizing: border-box;" />
	<span style="color: #4F4F4F; font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;">一起来看视频吧，简单清晰明了</span></span></span></span></p>
<iframe allowfullscreen="" frameborder="0" height="498" src="https://v.qq.com/iframe/player.html?vid=q0311ohyg9q&amp;tiny=0&amp;auto=0" width="100%"></iframe>
<p>
	&nbsp;</p>
<br />
<span style="color: rgb(79, 79, 79); font-size: 18px; text-align: justify; font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; box-sizing: border-box; font-weight: bold;">二、如何加入钱咖？</span><br style="color: rgb(79, 79, 79); font-size: 18px; text-align: justify; font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; box-sizing: border-box;" />
<span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;">点如下链接进入，马上赚取你的第一桶金吧！</span><br style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;" />
<div style="font-size: 1.5em;color: red;text-align:left;padding:10px;border:2px dashed #9900CC;border-radius:25px;">
	<a href="http://www.shouzhuanmiao.com/app/23.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;">http://www.shouzhuanmiao.com/app/23.html</span></a></div>
<br />
<br />
<span style="font-family: KaiTi_GB2312; line-height: 1.5; color: #4F4F4F; font-size: 18px; font-weight: bold;">三、</span><span style="color:#4F4F4F;font-family:KaiTi_GB2312;"><span style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; font-size: 18px;"><strong>温馨提示</strong></span></span>
<p>
	&nbsp;</p>
<div style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; white-space: normal; text-align: justify;">
	<span style="color:#4F4F4F;font-family:KaiTi_GB2312"><span style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; font-size: 18px;"><span style="color: #4F4F4F; font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;">1、平台软件一般要下载助手，助手的名字可能不一样，具体操作安装平台的时候都有详细说明，不用担心安全问题，至少我做的都没出过问题。</span></span></span></div>
<div style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; white-space: normal; text-align: justify;">
	<span style="color:#4F4F4F;font-family:KaiTi_GB2312"><span style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; font-size: 18px;"><span style="color: #4F4F4F; font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;">2、ios9以上用户需要企业证书设置，可以在［设置］－［通用］－［描述文件与设备管理］－［企业级应用］－添加信任即可。</span></span></span></div>
<div style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; white-space: normal; text-align: justify;">
	<span style="color:#4F4F4F;font-family:KaiTi_GB2312"><span style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; font-size: 18px;"><span style="color: #4F4F4F; font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;">3、每天下午 3 - 6 点任务会集中投放，所以上午抢不到任务的小伙伴们不要着急</span><span style="color: #4F4F4F; font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;">。</span></span></span></div>
<div style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; white-space: normal; text-align: justify;">
	<span style="color:#4F4F4F;font-family:KaiTi_GB2312"><span style="font-family: &quot;Microsoft YaHei&quot;, SimSun, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; font-size: 18px;"><span style="color: #4F4F4F; font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;">4、iPad 用户需要在 App Store 中下载选择 &ldquo;仅 iPhone 下载&rdquo;</span><span style="color: #4F4F4F; font-family: KaiTi_GB2312; font-size: 18px; text-align: justify;">。</span></span></span></div>
','','1570070371','1570020229','','1','admin','0','46','9996',''),
('5','19','苹果手机试玩App赚钱是真的吗，靠谱吗，有没有风险？','苹果手机试玩App赚钱是真的吗，靠谱吗，有没有风险？','/upload/img/2019/09/28/5d8f35756b5ce.jpg','','<div>
	<div>
		<span style="font-size:14px;"><strong>梦想总是要有的，万一实现了呢？</strong><br />
		<span style="color:#333333;">生活不只是眼前的枸杞，还有诗和远方。总有一些人不甘平凡、不安于现状，在不害他人和损失自己现有利益的前提下，去做一些尝试和改变，网上寻找赚钱的机会。网上赚钱从来不缺少奇迹，很多网赚大牛都在默默的赚钱，但如果你不是一个日赚上千的牛人，那么你的身边所认识的人日入上千的也很少。网上也从来不缺少项目，更不要看不起那些不起眼的项目，而正是这些不起眼的网赚，让大伽们一天就能赚几百上千，他们从来不炫耀，默默的做着这一切。我也是千万赚客中的一枚屌丝，所以一起共勉。</span></span></div>
	<div>
		<br />
		<span style="font-size:14px;"><strong>苹果手机app试玩兼职赚钱</strong></span></div>
	<div>
		<span style="color:#333333;"><span style="font-size:14px;">笔者是一名屌丝程序员，一次偶然的机会发现身边有人在玩这个推广APP赚钱，就玩了起来，其实这个行业已经很久了，所以做了一下梳理。个人认为这个是不需要太多资源，靠谱、最容易变现的一个项目，全程不需要任何费用。通过它我得到了网上赚钱第一桶金，没做过的，可以先做这个，很不错的一个网赚项目。 所谓下载试玩赚钱，就是利用手机下载相应的软件赚钱，下载试玩app应用，试玩3分钟就能得到现金奖励，试玩之后就可以删除了，每天试玩一个任务1元起，试玩几十个，收入几十，操作比较简单。</span></span></div>
	<div>
		<span style="font-size:14px;">&nbsp;</span></div>
	<div>
		<span style="font-size:14px;"><strong>首先，这个东西靠不靠谱？</strong></span></div>
	<div>
		<span style="color:#333333;"><span style="font-size:14px;">答案是靠谱，你赚的钱都是要推广自家app公司掏的钱，他们通过购买积分墙任务，提升自己APP在App Store 排行榜的排名，可以让更多人看到自己家的app，达到推广app的目的。积分墙平台从广告主那边收取费用，比如下载一个app 3元，然后放到自己家的积分墙平台上让用户下载，每下载一个app给用户2元，他们赚取的就是这1元钱的差价。所以，app公司、积分墙平台、用户三方都获得了自己的利益，这种方式就比较稳定靠谱了。</span></span></div>
	<div>
		<span style="font-size:14px;">&nbsp;</span></div>
	<div>
		<span style="font-size:14px;"><strong>其次，一天能赚到多少钱？</strong></span></div>
	<div>
		<span style="color:#333333;"><span style="font-size:14px;">一般来说，新用户任务特别多，前几天光做任务就能赚几百，时间多的可以长期兼职做。多个平台做，提高收入。正常一天在一个积分墙平台可以抢到3-5个任务，每个任务平均收益是1-2元之间，折算下来平均一天收益在3-10元之间。但是，现在市面上至少有50-100家积分墙平台，如果你一天专门做这个任务的话，大约一天收入在几十元左右。是的，并没有你想象的那么多，这是因为现在积分墙行业不太景气，愿意花钱用这种方式推广app的公司逐渐在减少，所以任务就相应变少了。大部分是满10元左右提现，支持微信、支付宝，也有5元，8元提现，还是比较容易变现的。我当初玩的时候还特地加了一个交流群，居然有人全职搞这个，他有好几个苹果设备，一个设备做好十几个平台，一台手机一个月赚一千多，后来自己做的过程中发现一个平台刚开始任务多，慢慢的任务少，上班的时候不去关注的话任务就被抢完了，所以只能利用空闲时间玩玩，不能当做全职的，因为收入不固定的，这种并不像网上说的日入几百或者上千那么夸张，一天玩的好的额外增加几十块收入没问题的。而赚的多的都是专业的赚客，都是有资源能推荐很多徒弟或者通过一些专业的手法刷机或者用一些辅助软件抢任务等等，小白就不要尝试了容易判定作弊封号，就正规试玩一个月500-600还是比较轻松的。</span></span></div>
	<div>
		<span style="font-size:14px;">&nbsp;</span></div>
	<div>
		<span style="font-size:14px;"><strong>再次，试玩安全吗，有没有风险，手机会卡吗？</strong></span></div>
	<div>
		<span style="color:#333333;"><span style="font-size:14px;">很多人没有接触过app试玩，所以不知道到底安全不安全，以及是否靠谱，其实这种app试玩绝大部分都是靠谱的，当然也有不靠谱的平台，做完任务之后不能提现的，不过这种平台现在基本上已经挂了，所以大家不用担心。本站的平台都是小编亲自做过之后筛选出来的，平台提现所需要的信息仅限于微信账号或者支付宝账号，不会涉及密码，所以请放心使用。我们所做的任务软件都是从苹果官方商店&ldquo;App Store&rdquo;中下载的，所以绝对安全。您听说过在苹果官方商店下的软件有毒的么？还有最简单的问题，大家可以百度一下，苹果的安全级别非常高，没有越狱的苹果手机是根本不会中毒的。下载软件只是网络的数据传输，不会影响运行速度。内存方面，每个平台只有1到2兆，即使所有的平台加起来也不会超过一百兆，下载的任务给了钱就可以立即删除，完全不影响手机的使用。</span></span></div>
	<div>
		<span style="color:#333333;"><span style="font-size:14px;">&nbsp;</span></span></div>
	<div>
		<span style="color:#333333;"><span style="font-size:14px;">以上就是我的原创整理，希望能帮到大家。PS：网上很多软文推广都在抄袭本站，好吧，试玩不倒，推广到老，各位赚友且行且珍惜。</span></span></div>
</div>
<br />
','试玩app,手机app,app试玩,可靠吗,?有风险,赚钱吗?,靠谱吗,,苹果手机,手机试玩,试玩app的,是真的吗,,不是真的?,苹果手机试玩','1569935888','1569666343','','1','admin','0','43','9998',''),
('6','19','苹果试玩App为什么能赚钱，能赚多少钱？','苹果试玩App为什么能赚钱，能赚多少钱？','/upload/img/2019/10/01/5d9348539fea3.jpg','','<section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">&nbsp;<span style="margin: 0px; padding: 0px; letter-spacing: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">试玩简介</span></strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	欢迎大家加入手赚喵手机试玩平台，在这里通过在平台内领取试玩任务，在手机应用商店下载指定软件，不要注册，后台挂机运行即可。试玩3-5分钟完成任务即可获得薪酬，苹果用户每个任务奖励1-3元，安卓用户1元左右，<span style="letter-spacing: 0.54px;">完成任务后即可删除，不影响手机使用的</span><span style="letter-spacing: 0.54px;">。以下是一些新手注意事项，请大家认真研读（尤其是苹果用户），以便您能更好更快的学会如何赚钱。</span></p>
</section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">什么是App试玩</strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	今天的应用市场每天都有新的应用异军突起，开发者最大的困扰就是APP下载激活少，&ldquo;渠道少&rdquo;、&ldquo;没钱推广&rdquo;是常态。在App store超过63%的下载量来源于&ldquo;关键词&rdquo;的搜索，20%来源于排行榜，剩下约17%来源于社交网络和编辑的推荐。通过搜索引入的都是最优质的目标客户，在应用商店里增加各自APP关键词搜索及下载量的排名，进而可以获得更优质的搜索排名，更可以节省高额的推广费用。</p>
<section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">为什么能赚钱？</strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	因为一款软件在应用商店排名的高低取决于软件的关键词搜索量和软件的下载量，搜索排名提高了，获得的自然用户才会增多。所以软件开发商花大量的资金让广告商（试玩平台）帮他们做推广，而我们完成广告商（试玩平台）指定的任务，即完成了软件的推广行为，此奖励为劳动所得。&nbsp;<span style="letter-spacing: 0.54px;">手赚喵</span>里的每一款平台都是正规工商注册公司所开发的ASO流量分发平台，我们所做的任务软件都是从苹果官方商店&ldquo;App Store&rdquo;中下载的，所以绝对安全。</p>
</section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">能赚多少钱？</strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	收入因人而异，有的每月几千，有的甚至上万，当然这个跟你做的平台数量有关，苹果系统有几十个不同的试玩平台，每个平台每天都会刷新任务，做的平台与任务多肯定赚的多。每个平台每天做几个任务所有平台的钱加一起也不是小数目哦，一般正常一月赚500-600是比较轻松的，赚个生活费完全没有问题！</p>
</section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">APP试玩安全吗？</strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	会对手机有损害吗？会泄露个人信息吗？很多人没有接触过app试玩，所以不知道到底安全不安全，以及是否靠谱，其实这种app试玩绝大部分都是靠谱的，首先本公众号里的平台都是小编亲自试用筛选出来的，平台提现所需要的信息仅限于微信账号或者支付宝账号，不会涉及密码，所以请放心使用。其次我们所做的任务软件都是从苹果官方商店&ldquo;App Store&rdquo;中下载的，所以绝对安全。如果遇到任何问题可私信客服为你解决。</p>
</section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">手机会不会中毒？</strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	首先，我们要求用户下载的所有软件都是官方商店下载的，也就是手机自带的软件商店里，比如苹果一律都是苹果官方商店下，您听说过在苹果官方商店下的软件有毒的么？还有最简单的问题，大家可以百度一下，苹果的安全级别非常高，没有越狱的苹果手机是根本不会中毒的。</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	下载软件只是网络的数据传输，不会影响运行速度。</p>
</section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"> </section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">下载的软件可以卸载吗？</strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	当然可以！但是要注意，做任务前每个平台都要让你下载一个任务助手（打开平台的钥匙），这个助手一定不能删并且做任务时要后台运行，否则无法获得佣金。要求试玩的软件在完成任务得到佣金后可以卸载。</p>
</section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">ipad与越狱苹果用户怎么办？</strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	用平板做任务的小伙伴，在下载软件的时候，输入完关键字后不要急着去点搜索，先按左上角切换为&ldquo;仅iphone模式&rdquo;再点击搜索，这样才能找到正确的任务软件。 越狱用户请升级到苹果官方最新版本或者在设置中选择还原设备并抹除&ldquo;我的iphone&rdquo;即可试玩所有平台。</p>
</section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">收入与提现？</strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	当我们完成任务之后，即可获得奖励，奖励是发到所做的相应平台上，我们可以提现至微信钱包或者支付宝，冲话费QB都可以。大部分平台10元即可提现。到账时间为工作日内0-2天(个别平台秒到账）。部分平台支持1元起提，实时到账微信钱包。安卓平台提现的地方一般是进去助手后，下面有个&ldquo;兑换&rdquo;，点那里提现。</p>
</section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">如何赚更多？</strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	下载好全部平台到手机上，新手最忌讳只做一两个平台，这样把鸡蛋全放在一个篮子是没有前景的，原因有三：</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	第一，单个平台任务数量有限，你不可能只通过做少量平台获得最高收益；</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	第二，只做少量平台，你不能把时间充分利用起来，体验app的三分钟你全部浪费掉了，如果能把这个体验时间利用在做其它平台任务上，则又是一笔收入；</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	第三，做的平台多，任务量就多，有些平台任务不限制首次下载，因此你同一个任务可以在不同平台领取多次奖励。</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	所以要多做几个平台，这样才能赚的更多呦！</p>
<section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 10px 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(-2px, 0px, 0px);"><section style="margin: 0px; padding: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 202, 0);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 5px 0px -5px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; transform: translate3d(5px, 0px, 0px);"><section style="border-width: 8px 1px 1px; border-style: solid; border-color: rgb(62, 62, 62); margin: 0px; padding: 0px 8px; border-radius: 0px; vertical-align: top; display: inline-block; -ms-word-wrap: break-word !important; min-width: 10%; max-width: 100%; box-sizing: border-box; background-color: rgb(255, 255, 255);"><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 8px; text-align: left; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	<em style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><strong style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">苹果试玩规则总结</strong></em></p>
</section></section></section></section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;">
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	1、建议小伙伴们按照试玩平台的顺序一个一个做，例如第一个平台的任务做完了就接着做下一个平台, 等熟练操作之后可以多个平台同时试玩（做的平台越多赚的越多哦）试玩之前请先认真观看每个试玩平台的操作教程和注意事项，这样才能事半功倍哦。</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	2、每个平台都有与之对应的任务助手（有一些平台的助手第一次打开的时候是一款小游戏或者音乐软件，小伙伴们需要先返回下载助手的sifari页面激活助手才能正常进入试玩平台哦），做任务时一定要确保助手软件后台运行，否则无法获得任务奖励哦。（平台助手软件一定不能卸载，否则下次做任务时将无法进入平台哦）</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	3、苹果ios9以上系统（部分企业级试玩平台）需要先受信任才能打开试玩APP.授信步骤：设置&rarr;通用&rarr;描述文件或设备管理&rarr;选择受信任即可。</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	4、如果小伙伴进入平台后发现没有任务，通常是没有到任务发布刷新的时间，可选择下一个平台试玩（每天下午15-18点之间会有大量任务发布，一般情况下16点任务最多，其他时间段如中午11点，12点，半点，整点也会有任务发布，小伙伴们如果把握好下午4点这个时间段的话，就可以短时间内赚取大量任务奖励）做的平台多了大家就会总结出来规律。</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	5、建议只做限时，快速，极速，试玩赚钱，官方任务等等（这些任务100%返现金），高额任务不是100%返钱。</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	6、小伙伴下载好平台助手后，在登陆的时候苹果手机通常会提示是否允许发送通知，请选择允许发送，这样小伙伴们就可以收到试玩平台助手发送的任务发布通知，这样有利于小伙伴们及时掌握每个平台任务发布情况，便于小伙伴们提高奖励收入。</p>
<p style="margin: 0px; padding: 0px; text-align: justify; color: rgb(42, 42, 42); line-height: 28.9px; clear: both; -ms-word-wrap: break-word !important; min-height: 1em; max-width: 100%; box-sizing: border-box;">
	7、官方禁止任何刷机或共享AppStore ID等行为，一经发现予以冻结账户，且永不解封！1个微信 1个苹果商店账号只能绑定一台手机试玩，若用2台手机试玩，需要新的微信号和新的商店账号。</p>
</section></section></section></section></section></section><section powered-by="xiumi.us" style="margin: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); line-height: 30.6px; letter-spacing: 0.54px; font-family: -apple-system-font, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei UI&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 17px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box; widows: 1; font-variant-numeric: normal; font-variant-east-asian: normal;"><section style="margin: 0px; padding: 0px; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"><section style="margin: 0px; padding: 0px 10px; text-align: left; color: rgb(95, 156, 239); line-height: 2; -ms-word-wrap: break-word !important; max-width: 100%; box-sizing: border-box;"> </section></section></section> ','','1569987557','1569933459','','1','admin','0','34','9997',''),
('9','19','众人帮手机赚钱软件，一款可以做悬赏任务赚赏金/发任务/调查问卷的兼职赚钱平台','','/upload/img/2019/10/03/5d95c8f6e6515.jpg','','<p style="margin: 0px; padding: 10px 0px; line-height: 28.9px; text-align: justify; color: rgb(42, 42, 42); font-family: &quot;Microsoft YaHei&quot;, Verdana, small, Arial, Helvetica, sans-serif; font-size: 17px;">
	<span style="margin: 0px; font-family: 楷体;">众人帮是一款，悬赏，互助，兼职赚钱平台，可以做</span><span style="margin: 0px; font-family: 楷体; letter-spacing: 0px; color: rgb(255, 0, 0);">任务赚赏金，发任务，调查问卷</span><span style="margin: 0px; font-family: 楷体;">等等。让你充分利用自己的碎片时间，做简单悬赏任务，随时随地赚钱，让自己每月不缺零花钱。</span><span style="margin: 0px; font-family: 楷体; letter-spacing: 0px; color: rgb(255, 0, 0);">悬赏多</span><span style="margin: 0px; font-family: 楷体;">：每天一万多个悬赏让你赚个够，每个悬赏都已将赏金托管到平台。</span><span style="margin: 0px; font-family: 楷体; letter-spacing: 0px; color: rgb(255, 0, 0);">提现快：满1元即可提现，秒到微信、支付宝，</span><span style="margin: 0px; font-family: 楷体;">轻松实现&rdquo;每天半小时，月赚1000元&rdquo;的小目标。当然，你也可以发布悬赏、用众人帮的千万用户帮你完成调查问卷、数据采集、营销推广等工作。</span></p>
<p style="margin: 0px; padding: 10px 0px; line-height: 28.9px; text-align: justify; color: rgb(42, 42, 42); font-family: &quot;Microsoft YaHei&quot;, Verdana, small, Arial, Helvetica, sans-serif; font-size: 17px;">
	<span style="margin: 0px; font-family: 楷体; color: rgb(0, 176, 240);">扫描二维码或者点击二维码即可加入</span><br style="margin: 0px;" />
	<span style="margin: 0px; font-family: 楷体;"><a href="http://my.zrb.life/e-6433489" rel="nofollow"><img alt="" border="0" data-bd-imgshare-binded="1" height="160" src="/upload/img/2019/10/02/zhongrenbang.jpg" style="margin: 0px; padding: 4px; border: 1px solid rgb(233, 233, 233); max-width: 97%; height: 160px; width: 153px;" title="" vspace="0" width="153" /></a></span></p>
<p style="margin: 0px; padding: 10px 0px; line-height: 28.9px; text-align: justify; color: rgb(42, 42, 42); font-family: &quot;Microsoft YaHei&quot;, Verdana, small, Arial, Helvetica, sans-serif; font-size: 17px;">
	<span style="margin: 0px; color: rgb(255, 0, 0);"><span style="margin: 0px; font-family: 楷体;">1、启动App，开始赚钱之旅</span>&nbsp;,</span><span style="color: rgb(255, 0, 0); font-family: 楷体;">不知道怎么操作，就&quot;Bang一下&quot; 【其实很简单】</span><br style="margin: 0px;" />
	<img src="/upload/img/2019/10/03/5d95c5c931e27.jpg" style="height: 533px; width: 300px;" />&nbsp; &nbsp;&nbsp;<img src="/upload/img/2019/10/03/5d95c5f712756.jpg" style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; height: 533px; width: 300px;" /></p>
<p style="margin: 0px; padding: 10px 0px; line-height: 28.9px; text-align: justify; color: rgb(42, 42, 42); font-family: &quot;Microsoft YaHei&quot;, Verdana, small, Arial, Helvetica, sans-serif; font-size: 17px;">
	<span style="color: rgb(255, 0, 0); font-family: 楷体;">2、做任务调查，赚赏金,</span><span style="color: rgb(255, 0, 0); font-family: 楷体;">简单任务，关注公众号等，就有米米入账</span><br />
	<img src="/upload/img/2019/10/03/5d95c65990c52.jpg" style="height: 533px; width: 300px;" />&nbsp; &nbsp;<img src="/upload/img/2019/10/03/5d95c66b7fd60.jpg" style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; height: 533px; width: 300px;" /></p>
<p style="margin: 0px; padding: 10px 0px; line-height: 28.9px; text-align: justify; color: rgb(42, 42, 42); font-family: &quot;Microsoft YaHei&quot;, Verdana, small, Arial, Helvetica, sans-serif; font-size: 17px;">
	<span style="margin: 0px; font-family: 楷体; color: rgb(255, 0, 0);">3、下载注册，可以赚高价赏金，不想做的可以不做，自己甄别，哈；</span><span style="color: rgb(255, 0, 0); font-family: 楷体;">更多任务，任务多多</span><br style="margin: 0px;" />
	<img src="/upload/img/2019/10/03/5d95c6f59a5f8.jpg" style="height: 533px; width: 300px;" />&nbsp; &nbsp;&nbsp;<img src="/upload/img/2019/10/03/5d95c706e7938.jpg" style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px; height: 533px; width: 300px;" /></p>
<p style="margin: 0px; padding: 10px 0px; line-height: 28.9px; text-align: justify; color: rgb(42, 42, 42); font-family: &quot;Microsoft YaHei&quot;, Verdana, small, Arial, Helvetica, sans-serif; font-size: 17px;">
	<span style="color: rgb(255, 0, 0); font-family: 楷体;">4、赚了米米，开始提现，哈哈</span></p>
<p style="margin: 0px; padding: 10px 0px; line-height: 28.9px; text-align: justify; color: rgb(42, 42, 42); font-family: &quot;Microsoft YaHei&quot;, Verdana, small, Arial, Helvetica, sans-serif; font-size: 17px;">
	<img src="/upload/img/2019/10/03/5d95c72201f85.jpg" style="height: 1067px; width: 600px;" /></p>
','','1570097497','1569987836','','1','admin','0','38','9992',''),
('10','19','牛帮手机做任务赚钱新手攻略，随机红包+1元+赏金，6元左右','牛帮手机做任务赚钱新手攻略，随机红包+1元+赏金，6元左右','/upload/img/2019/10/03/5d95caba3694b.jpg','','<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<span style="font-family: 楷体; font-size: 17px; text-align: justify; background-color: rgb(255, 192, 0);">牛人帮忙就选牛帮，</span><span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px; text-align: justify;">原名赏金宝和赏多宝，<span style="color: rgb(255, 0, 0);">最近推出新活动，比较给力</span>。是重庆网赚科技有限公司旗下的一款手机悬赏任务赚钱平台，为商家提供项目推广任务分发的渠道，为用户提供赏金任务兼职中赚钱的平台。注册下载（牛帮APP）<span style="color: rgb(255, 0, 0);">完成新手任务即可领取新人奖励6元左右，1元提现秒到账</span>，还送微信红包，不需要提现，<span style="color: rgb(255, 0, 0);">直接到微信钱包</span>。</span><span style="font-family: 楷体; font-size: 17px; text-align: justify; text-decoration-line: underline; color: rgb(255, 0, 0);">牛帮是这种赚钱软件的后起之秀，自然有他的特点才能做的起来</span><span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px; text-align: justify;">，里面因为任务都是非常简单的任务，所以自然就有很多人来发布任务，也自然就有做不完的任务。如果你是一个刚踏入网络的小赚客，那么你可以在里面做简单任务赚钱，比如注册个号码就可以赚2到10元，微信关注一个就赚0.5元左右。如果你已经是位资深的赚客老司机，那么你就可以在里面游刃有余，比如有个活动邀请10元，那么你就可以在里面发布任务赚钱，一个任务发布8元出去，你自己赚2元的差价，每天随便有100个人做，你就有200的收益。</span><br style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px; text-align: justify;" />
	&nbsp;</p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	&nbsp;</p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<span style="color: rgb(255, 0, 0);"><span style="font-family: 楷体; font-size: 17px; text-align: justify;">1、<span style="color: rgb(0, 176, 240);">手机点二维码进入或者扫描二维码进入</span>，开始赚钱之旅</span>&nbsp;&nbsp;</span><br />
	<a href="http://task.yuzhuan.com/reg.php?code=616017" rel="nofollow"><img src="/upload/img/2019/10/03/5d95cd02ba87a.jpg" /></a><br />
	&nbsp;</p>
<p>
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="font-family: 楷体; font-size: 17px; text-align: justify; color: rgb(255, 0, 0);">2、启动App，进入首页，点击新人专区，跟着提示走，先完成新手任务，领取红包。最简单的到悬赏大厅去做几个简单任务(几秒钟一个的那种，比如关注微信公众号、关注小程序、砍价、点赞之类的)。我是领了6元，提现秒到，关键是秒到！</span></a></p>
<p>
	<img src="/upload/img/2019/10/03/5d95cd1a35851.jpg" />&nbsp; &nbsp;&nbsp;<img src="/upload/img/2019/10/03/5d95cd263afd7.jpg" /><br />
	<br />
	<img src="/upload/img/2019/10/03/5d95cd95e7ba8.jpg" style="height: 533px; width: 300px;" />&nbsp; &nbsp;<img src="/upload/img/2019/10/03/5d95cdb6be913.jpg" style="height: 533px; width: 300px;" /><br />
	<img src="/upload/img/2019/10/03/5d95cddd5027e.jpg" style="height: 182px; width: 300px;" /><br />
	&nbsp;</p>
<p>
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="font-family: 楷体; font-size: 17px; text-align: justify; color: rgb(255, 0, 0);">3、简单任务，操作简单，几秒钟一个，就有米米</span></a></p>
<p>
	<img src="/upload/img/2019/10/03/5d95cf5aa94f3.jpg" style="height: 533px; width: 300px;" />&nbsp; &nbsp;<img src="/upload/img/2019/10/03/5d95cf6e2560b.jpg" style="height: 533px; width: 300px;" /><br />
	&nbsp;<br />
	&nbsp; &nbsp;</p>
<p>
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="font-family: 楷体; font-size: 17px; text-align: justify; color: rgb(255, 0, 0);">4、下载注册，可以赚高价赏金，不想做的可以不做，自己甄别，哈；信誉任务，貌似单价更高；光浏览任务，也有广告收入，这个可以</span></a></p>
<p>
	<img src="/upload/img/2019/10/03/5d95cfa684b3c.jpg" style="height: 533px; width: 300px;" />&nbsp; &nbsp;<img src="/upload/img/2019/10/03/5d95cfcbc6556.jpg" style="height: 533px; width: 300px;" /><br />
	<br />
	<img src="/upload/img/2019/10/03/5d95cfea942fe.jpg" style="height: 533px; width: 300px;" /><br />
	&nbsp;</p>
<p>
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="font-family: 楷体; font-size: 17px; text-align: justify; color: rgb(255, 0, 0);">5、赚了米米，开始提现，哈哈</span><br />
	<img alt="" border="0" height="640" src="https://www.shiwan123.cn/ios/course/android/niubang/7.jpg" style="width: 360px; height: 640px;" title="" vspace="0" width="360" /></a></p>
','','1570099982','1569987915','','1','admin','0','39','9991',''),
('11','19','苹果App试玩赚钱单价高的平台有哪些？小编强力推荐，开启躺赚人生','苹果App试玩赚钱单价高的平台有哪些？小编强力推荐，开启躺赚人生','/upload/img/2019/10/07/5d9acc504fce1.jpg','','<div>
	<span style="color:#333333;"><span style="font-family:楷体;"><span style="font-size:17px;">现在生活压力越来越大,人们都想要通过手机赚钱或者网赚项目获得第二份收入，试玩赚钱是个不错的选择。时间多的可以长期兼职做，每天赚点生活费，当零发钱使用。该项目</span></span></span><span style="color:#ff0000;"><span style="font-family:楷体;"><span style="font-size:17px;">一直火爆</span></span></span><span style="color:#333333;"><span style="font-family:楷体;"><span style="font-size:17px;">了好多年，</span></span></span><span style="color:#ff0000;"><span style="font-family:楷体;"><span style="font-size:17px;">经久不衰</span></span></span><span style="color:#333333;"><span style="font-family:楷体;"><span style="font-size:17px;">，一直受到赚客朋友的追捧，肯定是有一定原因的。现在市面上试玩平台非常多，那么，哪个试玩平台</span></span></span><span style="color:#ff0000;"><span style="font-family:楷体;"><span style="font-size:17px;"><u>任务单价最高，赚钱最快</u></span></span></span><span style="color:#333333;"><span style="font-family:楷体;"><span style="font-size:17px;">呢? 今日，小编就为大家重点介绍</span></span></span><span style="color:#ff0000;"><span style="font-family:楷体;"><span style="font-size:17px;">为数不多的单个任务在1.5元以上的试玩平台</span></span></span><span style="color:#333333;"><span style="font-family:楷体;"><span style="font-size:17px;">，感兴趣的可以认真阅读本文介绍。</span></span></span><br />
	&nbsp;</div>
<div>
	<img alt="" src="/upload/img/2019/10/07/5d9acc504fce1.jpg" /></div>
<div>
	&nbsp;</div>
<div>
	<span style="color:#333333;"><span style="font-size:17px;font-family:楷体;">单价最高的当属</span></span><span style="color:#ff0000;"><span style="font-size:17px;font-family:楷体;"><strong>试客小兵</strong></span></span><span style="color:#333333;"><span style="font-size:17px;font-family:楷体;">和</span></span><span style="color:#ff0000;"><span style="font-size:17px;font-family:楷体;"><strong>钱咖</strong></span></span><span style="color:#333333;"><span style="font-size:17px;font-family:楷体;">了，单价都是1.5元以上，这与他们在业内的实力是分不开的，钱咖已经上市，<u>除此之外大部分是0.8-1元左右</u>。&nbsp;</span></span></div>
<div>
	<span style="font-size:17px;">&nbsp;</span><br />
	<span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px;">1、</span><strong style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px;"><span style="color: rgb(0, 0, 255);">试客小兵</span></strong><span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px;">&nbsp;【推荐指数</span><span style="font-family: 楷体; font-size: 17px; color: rgb(255, 0, 255);">★★★★★</span><span style="color: rgb(42, 42, 42); font-family: 楷体; font-size: 17px;">】&nbsp;</span>
	<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
		<span style="color: rgb(255, 0, 0);">单价最高</span>，基本都是<span style="color: rgb(255, 0, 0);">1.5元以上，必做平台</span>，目前就<span style="color: rgb(255, 0, 0);">试客和钱咖</span>这2个平台有这么高的单价加入应用试客验证成功就<span style="color: rgb(255, 0, 0);">送1元</span>现金红包，<span style="color: rgb(255, 0, 0);">8元提现，5分钟秒到账</span>。试客小兵手把手教你秒变赚钱高手！。需要IOS9.0（包括IOS9.0）以上系统。</p>
	<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
		<a href="http://www.shouzhuanmiao.com/app/22.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/22.html</span></a></div>
</div>
<div>
	<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
		<br />
		2、<strong><span style="color: rgb(0, 0, 255);">钱咖</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
	<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
		<span style="color: rgb(255, 0, 0);">必做的试玩平台，业界第一手机赚钱平台，全网最高单价。</span>用户每成功体验一个软件只需要3-5分钟左右，<span style="color: rgb(255, 0, 0);">单价奖励1.5~3.5元</span>不等。成功加入就送1元现金奖励。<span style="color: rgb(255, 0, 0);">10元就可提现</span>到微信或者支付宝。提现24小时内到账，每天下午3点刷新任务，其他时间不定时刷新！该平台3元的任务要付费（这种任务下载的时候要付费1元，所以单价也特别高。）不想做的朋友可以不要做。3元以下的都是免费的也不需要验证。</p>
	<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
		<a href="http://www.shouzhuanmiao.com/app/23.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/23.html</span></a></div>
</div>
<div>
	<br />
	<span style="font-family:楷体;"><span style="font-size:17px;"><span style="color:#333333;">以上就是小编推荐的单价高的试玩平台，感兴趣的朋友不妨试试，不会令你失望的。</span></span></span></div>
','','1570427023','1570008644','','1','admin','0','25','0',''),
('12','19','苹果手机试玩App赚钱哪些平台任务多？任务多的试玩平台推荐排行榜','苹果手机试玩App赚钱哪些平台任务多？任务多的试玩平台推荐排行榜','/upload/img/2019/10/06/5d99f2c8f3edd.jpg','','<span style="font-size:16px;">试玩App兼职赚钱自推广开来，就一直在网赚圈子很火热，经久不衰，甚至有人打出试玩不倒推广到老的旗号，因为确实能赚到钱，而且相对其他项目<span style="color:#ff0000;">价格高，操作简单，不需要任何投入，容易兑现</span>，是一个非常不错的兼职项目。现在平台也越来越多，新平台不断涌出，还有不少老平台由于实力不够，慢慢没了任务，只能&ldquo;躺尸&rdquo;了。在这里，要向大家推荐<span style="color:#ff0000;"><u>任务最多最稳定赚钱最快</u></span>的平台，需要注意的是一般下午二点到四点是试玩平台更新发布任务的时候，这个时候任务很多，合理安排时间计划，多个平台轮流做，才能撸到更多的任务，将收入不断扩大。<br />
<img alt="" src="/upload/img/2019/10/06/5d99f2c8f3edd.jpg" style="width: 647px; height: 456px;" /><br />
好了，下面把小编亲测帅选后，任务最多，赚钱快的排行榜前十的平台分享给大家，供大家参考。</span><br />
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	1、<strong><span style="color: rgb(0, 0, 255);">爱盈利</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	<span style="color: rgb(255, 0, 0);">任务最多，单价高，必做平台，下午四点后任务超多，行业首推。</span>iMoney是一家非常正规的苹果软件试用平台，<span style="color: rgb(255, 0, 0);">加入立刻送1元现金奖励。只要10元就能提现，</span>试玩应用还能领取丰厚的现金红包，还有挖矿赚钱、点赞赚钱、VIP等级系统等趣味玩法在您娱乐同时还能赚钱，赶快加入吧</p>
<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
	<a href="http://www.shouzhuanmiao.com/app/20.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/20.html</span></a></div>
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	2、<strong><span style="color: rgb(0, 0, 255);">试客小兵</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	<span style="color: rgb(255, 0, 0);">单价最高</span>，基本都是<span style="color: rgb(255, 0, 0);">1.5元以上，必做平台</span>，目前就<span style="color: rgb(255, 0, 0);">试客和钱咖</span>这2个平台有这么高的单价加入应用试客验证成功就<span style="color: rgb(255, 0, 0);">送1元</span>现金红包，<span style="color: rgb(255, 0, 0);">8元提现，5分钟秒到账</span>。试客小兵手把手教你秒变赚钱高手！。需要IOS9.0（包括IOS9.0）以上系统。</p>
<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
	<a href="http://www.shouzhuanmiao.com/app/22.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/22.html</span></a></div>
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	3、<strong><span style="color: rgb(0, 0, 255);">小鱼赚钱</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	<span style="color: rgb(255, 0, 0);">任务多，单价每单1-3元，10元可提现</span>，这个平台有时间提醒，下载完成后<span style="color: rgb(255, 0, 0);">自动打开软件试玩，自动提交</span>，不好的一点是下载完成打开软件后，如果你打开其他软件，还是会跳到试玩的这个软件。总体来说非常不错。</p>
<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
	<a href="http://www.shouzhuanmiao.com/app/24.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/24.html</span></a></div>
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	4、<strong><span style="color: rgb(0, 0, 255);">钱咖</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	<span style="color: rgb(255, 0, 0);">必做的试玩平台，业界第一手机赚钱平台，全网最高单价。</span>用户每成功体验一个软件只需要3-5分钟左右，<span style="color: rgb(255, 0, 0);">单价奖励1.5~3.5元</span>不等。成功加入就送1元现金奖励。<span style="color: rgb(255, 0, 0);">10元就可提现</span>到微信或者支付宝。提现24小时内到账，每天下午3点刷新任务，其他时间不定时刷新！该平台3元的任务要付费（这种任务下载的时候要付费1元，所以单价也特别高。）不想做的朋友可以不要做。3元以下的都是免费的也不需要验证。</p>
<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
	<a href="http://www.shouzhuanmiao.com/app/23.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/23.html</span></a></div>
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	5、<strong><span style="color: rgb(0, 0, 255);">钱脉</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	<span style="color: rgb(255, 0, 0);">任务多多，要赚钱，找钱脉</span>，钱脉APP是一款能把人脉变成钱脉的APP，试玩一个应用<span style="color: rgb(255, 0, 0);">单价1元，5元就能提现，很快的，提现秒到</span>。</p>
<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
	<a href="http://www.shouzhuanmiao.com/app/25.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/25.html</span></a></div>
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	6、<strong><span style="color: rgb(0, 0, 255);">多多红包/PP红包</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	有任务预告，<span style="color: rgb(255, 0, 0);">单价每单1-3元，安装助手送2元</span>，一般下载后回页面，点打开应用打开后一两分钟就能提交审核；<span style="color: rgb(255, 0, 0);">提现快，10块就能体现，十分钟内到帐</span>。</p>
<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
	<a href="http://www.shouzhuanmiao.com/app/26.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/26.html</span></a></div>
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	7、<strong><span style="color: rgb(0, 0, 255);">秒赚</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	<span style="color: rgb(255, 0, 0);">任务多，10元起提现</span>，试玩一个应用<span style="color: rgb(255, 0, 0);">单价1元起，新用户送2元。</span></p>
<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
	<a href="http://www.shouzhuanmiao.com/app/27.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/27.html</span></a></div>
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	8、<strong><span style="color: rgb(0, 0, 255);">掉钱眼儿</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	<span style="color: rgb(255, 0, 0);">任务多的平台&nbsp;</span>，相比其他软件，<span style="color: rgb(255, 0, 0);">最大的优势在于不需首次</span>，只要你抢到，就算以前下过这个软件，还是可以继续做。<span style="color: rgb(255, 0, 0);">首次成功送2元现金红包</span>。试玩一款应用单价1元左右，任务一般晚上9点更新。满16元可提现。</p>
<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
	<a href="http://www.shouzhuanmiao.com/app/29.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/29.html</span></a></div>
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	9、<strong><span style="color: rgb(0, 0, 255);">蝉试客</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	注册送一元，单价一元起，满10元可微信提现，和钱咖差不多的软件</p>
<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
	<a href="http://www.shouzhuanmiao.com/app/31.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/31.html</span></a></div>
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	10、<strong><span style="color: rgb(0, 0, 255);">天天钱庄</span></strong>&nbsp;【推荐指数<span style="color: rgb(255, 0, 255);">★★★★★</span>】&nbsp;</p>
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	<span style="color: rgb(255, 0, 0);">推荐做，单价0.8-2元，满5元就可以提现</span>，按要求的话赚的很快哦</p>
<div style="font-size: 1.5em; color: red; padding: 10px; border: 2px dashed rgb(153, 0, 204); border-radius: 25px;">
	<a href="http://www.shouzhuanmiao.com/app/28.html"><span style="color: rgb(79, 79, 79); font-family: KaiTi_GB2312; text-align: justify;">http://www.shouzhuanmiao.com/app/28.html</span></a></div>
<br />
<p style="font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px; margin: 5px 0px;">
	&nbsp;</p>
','','1570426039','1570008738','','1','admin','0','21','0',''),
('13','19','爱盈利系统检测账号异常，需要上传身份证进行实名认证','爱盈利系统检测账号异常，需要上传身份证进行实名认证','/upload/img/2019/10/06/5d99cb73e5d10.jpg','','<span style="font-size:16px;">爱盈利作为试玩界<span style="color:#ff0000;">任务最多、单价高</span>的试玩平台，<span style="color:#ff0000;">风控力度也是最严</span>的。一般正常情况是不需要你上传身份证进行实名认证的。除非爱盈利<span style="color:#ff0000;"><u>系统检测账号异常或者有作弊的嫌疑</u></span>，才需要上传身份证进行实名认证，因为随着试玩行业的火爆，刷子越来越多，很多工作室专门研究无限刷任务，靠这个捞钱，这个是才是要实名认证的<span style="color:#ff0000;">根本原因</span>。不过，这样一来，有些人会<span style="color:#ff0000;">担心上传信息会导致个人信息泄露，不安全之类的</span>。其实没有问题，可以验证的，大部分人都会选择验证，小编早就认证了，目前也是VIP用户，他们如果泄露用户信息的话，是犯罪的行为，<span style="color:#ff0000;">可以完全放心</span>，而且这个行业和平台这么久了也爆出过什么负面消息。现在金融行业机制也越来越完善，光一个身份证起不了什么作用。一个身份证只可以验证一个账号，实名认证后账号会解除解冻，试玩所得的任务奖励也会补回，可以正常使用。</span><br />
<img alt="" src="/upload/img/2019/10/06/5d99cb73e5d10.jpg" style="width: 401px; height: 308px;" /><br />
<div>
	<span style="color:#333333;"><span style="font-size:18px;"><span style="background-color:#ffd700;">以下是爱盈利官方就实名认证的常见问题的回答，摘抄给位赚友参考</span></span></span><br />
	&nbsp;</div>
<div>
	<span style="color:#333333;"><strong><span style="font-size:16px;">1、为何需要实名认证</span></strong></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#006400;">&nbsp;系统检测您所使用的设备存在资金风险，需要绑定身份信息</span></span><br />
	&nbsp;</div>
<div>
	<span style="color:#333333;"><strong><span style="font-size:16px;">2、实名认证为何失败</span></strong></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#006400;">&nbsp;认证信息被遮挡或者有阴影，重新现拍更清楚的照片再次识别</span></span><br />
	&nbsp;</div>
<div>
	<span style="color:#333333;"><strong><span style="font-size:16px;">3、认证信息为何不一致</span></strong></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#006400;">&nbsp;必须是本人身份证注册的手机号码，信息实名必须一致</span></span><br />
	&nbsp;</div>
<div>
	<span style="color:#333333;"><strong><span style="font-size:16px;">4、新办理的手机号为何显示信息不一致</span></strong></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#006400;">&nbsp;入网时间至少一周以上(有疑问请联系在线客服)</span></span><br />
	&nbsp;</div>
<div>
	<span style="color:#333333;"><strong><span style="font-size:16px;">5、身份证为何不能重复使用</span></strong></span></div>
<div>
	<span style="color:#006400;"><span style="font-size:16px;">&nbsp;一个身份信息只能对应一个手机号，无法多次验证&nbsp;</span></span></div>
','','1570361435','1570008803','','1','admin','0','33','0',''),
('14','19','安卓手机试玩app赚钱平台软件有哪些？','安卓手机试玩app赚钱平台软件有哪些？','/upload/img/2019/10/05/5d98b0ae0c7b0.jpg','','<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<a><span style="color: rgb(51, 51, 51); font-family: KaiTi_GB2312; font-size: 18px;"><span style="font-weight: 700; word-break: break-all;">一、深度解析安卓手机试玩为什么比苹果手机赚钱少</span></span></a></p>
<p style="padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px;">
	<span style="font-size:16px;"><a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="color:#333333;"><span style="font-family: KaiTi_GB2312;">现在网赚圈子手机试玩App赚钱相当的火爆，各大兼职论坛经常看到，当然，这是一个非常正规的手赚项目，肯定是可以赚钱的，且不会带来任何损失。试玩行业已经流行很多年了，试玩平台非常多，尤其苹果的试玩平台比较丰富，安卓手机试玩平台也有一些，但是不多，这是由于手机系统的机制决定的。苹果手机App的下载应用软件市场只有AppStroe一家，换句话说要下载某个App有且之前到这里下载，而且只有苹果公司有发布应用的权限。而Android就不一样了，首先，Android系统本身就是谷歌开源，不像苹果公司是封闭的，所有Android手机厂商都会对系统本身就行二次开发修改。再次应用市场也非常多，除了官方的google市场，国内还有应用宝，百度助手，豌豆荚，手机助手等等非常非常的多，哪怕随便一个网站都可以组建一个市场，随便放上几个Apk上去就可以了。以上就是本质的原因，由于安卓市场已经泛滥，且系统安全也不及苹果，市面很多破解和刷机方法。所以价格相对低。</span></span></a></span></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<a><span style="color: rgb(51, 51, 51); font-family: KaiTi_GB2312; font-size: 18px;"><span style="font-weight: 700; word-break: break-all;">二、安卓试玩赚钱的兴起</span></span></a></p>
<p style="padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="color:#333333;"><span style="font-size:16px;"><span style="font-family: KaiTi_GB2312;">尽管安卓手机做试玩一直没那么火爆，不像那些经典的苹果手赚平台那样，动辄几万人同时在线抢任务。随着App试玩的机制原来越完善，部分有经验的苹果试玩平台也开始推出安卓版，任务开始变的好做，单价也可以接受。今天介绍三款适合安卓手机做App试玩的平台，这里的每一款软件都经过小编测试，能够保障大家的利益，而且在使用过程中，有疑问都可以咨询小编。单价虽说没有苹果手机高，但是任务没有套路，很好完成，在流量不花钱的情况下，做这些小任务也是不错的选择。</span></span></span></a></p>
<p style="margin: 5px 0px; font-family: 楷体; font-size: 17px; line-height: 21px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="color: rgb(42, 42, 42);">1、</span><strong><span style="color: rgb(0, 0, 255);">爱盈利(Andorid版)</span></strong>&nbsp;<span style="color: rgb(42, 42, 42);">【推荐指数</span>&nbsp;<span style="color: rgb(255, 0, 255);">★★★★★</span>&nbsp;<span style="color: rgb(42, 42, 42);">】</span>&nbsp;</a></p>
<p style="margin: 5px 0px; font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">iMoney是一家<span style="color: rgb(255, 0, 0);">非常正规</span>的苹果软件试用平台，也是<span style="color: rgb(255, 0, 0);">行业目前最火的平台，最近新推出Android平台。单价1元左右，每日签到，领1元提现卡；3元无门槛提现到微信、支付宝</span></a></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; margin: 5px 0px; line-height: 21px;">
	<a href="http://ima.nevoid.com/land.html?promote=android7zxq8gs" rel="nofollow"><img src="http://www.shouzhuanmiao.com/upload/img/2019/10/03/5d9597d0d6ec7.png" /></a></p>
<p>
	&nbsp;</p>
<p style="margin: 5px 0px; font-family: 楷体; font-size: 17px; line-height: 21px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="color: rgb(42, 42, 42);">2、</span><strong><span style="color: rgb(0, 0, 255);">聚宝朋(Andorid版)</span></strong>&nbsp;<span style="color: rgb(42, 42, 42);">【推荐指数</span>&nbsp;<span style="color: rgb(255, 0, 255);">★★★★★</span>&nbsp;<span style="color: rgb(42, 42, 42);">】</span>&nbsp;</a></p>
<p style="margin: 5px 0px; font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">聚宝朋是一家<span style="color: rgb(255, 0, 0);">老牌</span>App试玩平台<span style="color: rgb(255, 0, 0);">注册送1元红包，有快速任务、高价任务、答题任务，5元就可以提现</span></a></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; margin: 5px 0px; line-height: 21px;">
	<a href="http://im.jubaopeng8888.com/jbph5/api/sharePage/12445998" rel="nofollow"><img src="http://www.shouzhuanmiao.com/upload/img/2019/10/03/5d9597c6443ac.png" /></a><br />
	&nbsp;</p>
<p style="margin: 5px 0px; font-family: 楷体; font-size: 17px; line-height: 21px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="color: rgb(42, 42, 42);">3、</span><strong><span style="color: rgb(0, 0, 255);">掉钱眼儿(Andorid版)</span></strong>&nbsp;<span style="color: rgb(42, 42, 42);">【推荐指数</span>&nbsp;<span style="color: rgb(255, 0, 255);">★★★★★</span>&nbsp;<span style="color: rgb(42, 42, 42);">】</span>&nbsp;</a></p>
<p style="margin: 5px 0px; font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px;">
	<span style="font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; line-height: 21px;">掉钱眼儿也是一家</span><span style="font-size: medium; color: rgb(255, 0, 0); font-family: &quot;Microsoft YaHei&quot;; line-height: 21px;">老牌</span><span style="font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; line-height: 21px;">软件试用赚钱平台，2019年新推出Android版本，</span><span style="font-size: medium; color: rgb(255, 0, 0); font-family: &quot;Microsoft YaHei&quot;; line-height: 21px;">注册送4.5元，10元提现</span></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; margin: 5px 0px; line-height: 21px;">
	<a href="http://invite.chuangqish.top/invition/?userId=7931981&e=951&source=6" rel="nofollow"><img src="/upload/img/2019/10/06/5d995a1eae0ca.png" /></a></p>
<p style="padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><br />
	<span style="color:#333333;">好了，以上就是小编为大家推荐的靠谱的安卓试玩平台，有兴趣的话大家玩玩看，后续肯定会推出更多靠谱的安卓试玩赚钱平台，请多多关注手赚喵，一个非常专业靠谱的手赚博客，只谈真实项目，不娇柔做作！</span></a></p>
','','1570331250','1570008890','','1','admin','0','55','0',''),
('16','19','安卓(Android)手机赚钱说明及平台推荐','安卓(Android)手机赚钱说明及平台推荐','/upload/img/2019/10/03/5d9559f3ca0ab.jpg','','<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<a><span style="color: rgb(51, 51, 51); font-family: KaiTi_GB2312; font-size: 18px;"><span style="font-weight: 700; word-break: break-all;">一、安卓手机试玩app赚钱说明</span></span></a></p>
<p style="padding: 0px; margin-top: 0px; margin-bottom: 16px; color: rgb(79, 79, 79); line-height: 26px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="font-family: KaiTi_GB2312; font-size: 18px;">安卓手机也有一些下载试玩的，不过价格比较少，还麻烦。 这是由于操作系统决定的，苹果市场只有appStore一家，而安卓市场已经泛滥，且系统安全也不及苹果，市面很多破解和刷机方法。 所以价格比较低，而且很多带捆绑注册的垃圾平台，还容易中毒。鉴于这些，安卓平台我这里<span style="color: rgb(255, 0, 0);">只推荐几个靠谱的项目平台，相对来说可行性较高，</span>供大家参考、研究。</span><strong><span style="color: rgb(255, 0, 0); font-size: 17px;">手机点二维码进入或者扫描二维码进入。</span></strong></a></p>
<p style="margin: 5px 0px; font-family: 楷体; font-size: 17px; line-height: 21px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="color: rgb(42, 42, 42);">1、</span><strong><span style="color: rgb(0, 0, 255);">爱盈利(Andorid版)</span></strong>&nbsp;<span style="color: rgb(42, 42, 42);">【推荐指数</span>&nbsp;<span style="color: rgb(255, 0, 255);">★★★★★</span>&nbsp;<span style="color: rgb(42, 42, 42);">】</span>&nbsp;</a></p>
<p style="margin: 5px 0px; font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">iMoney是一家<span style="color: rgb(255, 0, 0);">非常正规</span>的苹果软件试用平台，也是<span style="color: rgb(255, 0, 0);">行业目前最火的平台，最近新推出Android平台。单价1元左右，每日签到，领1元提现卡；3元无门槛提现到微信、支付宝</span></a></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; margin: 5px 0px; line-height: 21px;">
	<a href="http://ima.nevoid.com/land.html?promote=android7zxq8gs" rel="nofollow"><img src="/upload/img/2019/10/03/5d9597d0d6ec7.png" /></a></p>
<p>
	&nbsp;</p>
<p style="margin: 5px 0px; font-family: 楷体; font-size: 17px; line-height: 21px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="color: rgb(42, 42, 42);">2、</span><strong><span style="color: rgb(0, 0, 255);">聚宝朋(Andorid版)</span></strong>&nbsp;<span style="color: rgb(42, 42, 42);">【推荐指数</span>&nbsp;<span style="color: rgb(255, 0, 255);">★★★★★</span>&nbsp;<span style="color: rgb(42, 42, 42);">】</span>&nbsp;</a></p>
<p style="margin: 5px 0px; font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42); line-height: 21px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">聚宝朋是一家<span style="color: rgb(255, 0, 0);">老牌</span>App试玩平台<span style="color: rgb(255, 0, 0);">注册送1元红包，有快速任务、高价任务、答题任务，5元就可以提现</span></a></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; margin: 5px 0px; line-height: 21px;">
	<a href="http://im.jubaopeng8888.com/jbph5/api/sharePage/12445998" rel="nofollow"><img src="/upload/img/2019/10/03/5d9597c6443ac.png" /></a><br />
	&nbsp;</p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	<span style="color: rgb(51, 51, 51); font-family: KaiTi_GB2312; font-size: 18px;"><span style="font-weight: 700; word-break: break-all;">二、综合任务平台推荐<span style="color: rgb(255, 0, 0);">（必玩）</span></span></span></p>
<p style="margin: 5px 0px; line-height: 21px; font-family: 楷体; color: rgb(42, 42, 42); font-size: 17px;">
	1、<strong><span style="color: rgb(0, 0, 255);">众人帮</span></strong>&nbsp;【推荐指数&nbsp;<span style="color: rgb(255, 0, 255);">★★★★★</span>&nbsp;】</p>
<p style="margin: 5px 0px; line-height: 21px; font-family: 楷体; color: rgb(42, 42, 42); font-size: 17px;">
	众人帮是一款，悬赏，互助，兼职赚钱平台，可以做<span style="color: rgb(255, 0, 0);">任务赚赏金，发任务，调查问卷</span>等等。<span style="text-decoration-line: underline; color: rgb(192, 0, 0);">比如关注微信公众号，微信点赞，发朋友圈，关注小程序等等</span>；让你充分利用自己的碎片时间，做简单悬赏任务，随时随地赚钱，让自己每月不缺零花钱。<span style="color: rgb(255, 0, 0);">悬赏多</span>：每天一万多个悬赏让你赚个够，每个悬赏都已将赏金托管到平台。<span style="color: rgb(255, 0, 0);">提现快：满1元即可提现，秒到微信、支付宝，</span>轻松实现&rdquo;每天半小时，月赚1000元&rdquo;的小目标。当然，你也可以发布悬赏、用众人帮的千万用户帮你完成调查问卷、数据采集、营销推广等工作。</p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; margin: 5px 0px; line-height: 21px;">
	<a href="http://my.zrb.life/e-6433489" rel="nofollow"><img src="/upload/img/2019/10/03/5d9597b7bffd2.jpg" /></a><br />
	&nbsp;</p>
<p style="color: rgb(0, 0, 0); margin: 5px 0px; line-height: 21px; font-family: 楷体; font-size: 17px;">
	<span style="color: rgb(42, 42, 42);">2、</span><strong><span style="color: rgb(0, 0, 255);">牛帮</span></strong>&nbsp;<span style="color: rgb(42, 42, 42);">【推荐指数</span>&nbsp;<span style="color: rgb(255, 0, 255);">★★★★★</span>&nbsp;<span style="color: rgb(42, 42, 42);">】</span></p>
<p style="margin: 5px 0px; line-height: 21px; font-family: 楷体; font-size: 17px; color: rgb(42, 42, 42);">
	<span style="color: rgb(255, 0, 0);">牛人帮忙就选牛帮，最近推出新活动，比较给力</span>。是重庆网赚科技有限公司旗下的一款手机悬赏任务赚钱平台，为商家提供项目推广任务分发的渠道，为用户提供赏金任务兼职中赚钱的平台。&nbsp;<span style="color: rgb(255, 0, 0);">集悬赏，互助，兼职赚钱的平台</span>&nbsp;，可以做任务赚赏金，发任务、调查问卷等等。这里面的任务很多，各式各样，有微信点赞、关注微信号、发朋友圈、投票、注册、下载安装、实名绑卡等任务,奖励几分到几毛几块几十块不等，选择自己想做的任务即可。只要有需求都可以在平台里发出来，发布的时候平台会初步审核任务的类型，根据任务的复杂度分类，有基本的单价要求，任务发布的时候，必须先把佣金充值到平台，这样平台监管，&nbsp;<span style="color: rgb(255, 0, 0);">保证做任务的人肯定能拿到赏金</span>&nbsp;。注册下载（牛帮APP）完成新手任务即可领取&nbsp;<span style="color: rgb(255, 0, 0);">新人奖励6元左右，1元提现秒到账，直接到微信钱包有。</span>&nbsp;<span style="text-decoration-line: underline; color: rgb(255, 0, 0);">牛帮是这种赚钱软件的后起之秀，自然有他的特点才能做的起来</span>，里面因为任务都是非常简单的任务，所以自然就有很多人来发布任务，也自然就有做不完的任务。</p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; margin: 5px 0px; line-height: 21px;">
	<a href="http://task.yuzhuan.com/reg.php?code=616017" rel="nofollow"><img src="/upload/img/2019/10/03/5d95978d19957.jpg" style="color: rgb(34, 34, 34); font-family: Arial, Verdana, sans-serif; font-size: 12px;" /></a><br />
	<br />
	<a href="http://www.shouzhuanmiao.com/info/10.html" rel="nofollow"><span style="font-family: 楷体; font-size: 17px; color: rgb(255, 0, 0);">===&gt; 牛帮做任务赚钱新手攻略，随机红包 1元 赏金，6元左右</span></a></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">
	&nbsp;</p>
<p style="margin: 5px 0px; line-height: 21px; font-family: 楷体; color: rgb(42, 42, 42); font-size: 17px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;">3、<strong><span style="color: rgb(0, 0, 255);">豆豆趣玩</span></strong>&nbsp;【推荐指数&nbsp;<span style="color: rgb(255, 0, 255);">★★★★★</span>&nbsp;】</a></p>
<p style="margin: 5px 0px; line-height: 21px; font-family: 楷体; color: rgb(42, 42, 42); font-size: 17px;">
	<a style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;"><span style="color: rgb(255, 0, 0);">任务多多，注册送5元，没错，安装就有5元</span>，有答题、截图、手机锁屏（左滑进入任务，右滑开锁）等任务。<span style="color: rgb(255, 0, 0);">单价0.6元</span>左右，<span style="color: rgb(255, 0, 0);">1元</span>即可微信提现。</a></p>
<p style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; margin: 5px 0px; line-height: 21px;">
	<a href="http://newer10867496.xddkj.com/share.html?id=10867496&amp;sf=ios&amp;sfrom=ios" rel="nofollow" target="_blank"><img src="/upload/img/2019/10/03/5d95974d6e3a1.png" style="width: 160px; height: 160px;" /></a></p>
','','1570288208','1570023120','','1','admin','0','50','9993','');
DROP TABLE IF EXISTS  `appcms_nlink`;
CREATE TABLE `appcms_nlink` (
  `nlink_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '内链ID',
  `nlink_txt` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `nlink_url` varchar(500) NOT NULL DEFAULT '' COMMENT '网址',
  PRIMARY KEY (`nlink_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='正文內链词表';

DROP TABLE IF EXISTS  `appcms_recommend_area`;
CREATE TABLE `appcms_recommend_area` (
  `area_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '位置标题',
  `area_type` int(2) NOT NULL DEFAULT '0' COMMENT '位置类型：推荐位（应用）=0，推荐位（资讯）=1，广告=2，专题（应用）=3，专题（资讯）=4',
  `area_html` text COMMENT '广告HTML或者描述文本',
  `area_remarks` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `area_logo` varchar(200) NOT NULL DEFAULT '' COMMENT '位置LOGO图',
  `area_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `id_list` varchar(2000) NOT NULL DEFAULT '' COMMENT '应用或者资讯ID列表，用逗号分割',
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='推荐位置（广告，推荐位，专题）';

insert into `appcms_recommend_area`(`area_id`,`title`,`area_type`,`area_html`,`area_remarks`,`area_logo`,`area_order`,`id_list`) values
('1','每日推荐','0','每日推荐','首页右边推荐位，每天一个推荐','','0','20,21,22,23'),
('2','苹果试玩App平台精品推荐','0','','首页左边的精品推荐位，一般15条数据','','98','20,22,23,24,25,26,27,28,29,30,31,32,33,34,35'),
('3','安卓赚钱软件排行榜','0','','首页的游戏排行推荐位，一般10条数据','','99','21,37,39,32,30,41,40,38,36'),
('4','热门苹果赚钱排行榜','0','','首页的应用排行推荐位，一般10条数据','','100','20,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40'),
('5','下载排行','0','','首页的下载排行推荐位，一般10条数据','','0','22,20,23,24,25,26,27,28,29,30'),
('6','上升最快','0','','首页靠近右边的推荐位，一般10条数据','','0','25,28,29,27,24,20,22,23,26,30'),
('10','做任务赚钱推荐','3','做任务赚钱是指通过完成别人的任务来获得收入的方式，小编推荐的平台支持苹果和安卓双APP，1元起提秒到账！说到手机上做任务赚钱的软件，几年前还是挺多的，特别是2015年的时候，而现在大浪涛沙，昔日传统的很多优秀做任务赚钱的软件都开始套路化，所以在手机赚钱方面，看新闻赚钱这种项目得以大力发展，但其实优秀的做任务赚钱的项目还是有的，现在就为大家分享一个我个人觉得比较好的做任务赚钱的软件，里面任务多，佣金高，亲测提现有保证，一天可以赚个70-90元的样子。','','/upload/img/2019/05/04/5ccd85e32b2dc.png','9993','37,21'),
('11','阅读新闻，看资讯赚钱','3','每天都看的新闻，居然能有红包领，还能有钱赚，这是真的吗？ 当然是真的了!阅读文章赚钱，就是阅读新闻资讯赚钱。阅读的过程中可以赚取金币，1000金币差不多可以兑换1元现金，每天凌晨系统自动给你兑换到账户，账户满20元可以申请微信红包结算，即可申请提现。当然，平台还支持收徒功能，通过邀请链接，邀请粉丝加入，还可以享受粉丝收益提成，享受躺赚生活。','','/upload/img/2019/05/04/5ccd85c623b0f.jpg','9992','36,40,41'),
('12','精选1-5元秒提现','3','<div>
	很多赚客朋友在找手机赚钱软件提现飞快，秒到账的。下面小编就精选了几款软件供大家下载，提现秒到账的赚钱软件都在这里，这几款软件都支持微信提现，提现秒到微信钱包，不用再等待，小编亲测已验证。</div>
<div>
	做试玩最重要的是提现到账，可能你玩一个手赚，几天不到账，我想你是没有兴趣玩下去的，但如果做任务赚钱账户里的钱提现能秒到，那是多么美好的事情，快速提现，一秒到账，亲，快来体验吧！</div>
','','/upload/img/2019/05/30/5cef3fc135e97.jpg','9995','22,24,25,28'),
('13','安卓手机赚钱精选推荐','3','尽管安卓手机做试玩一直没那么火爆，不像那些经典的苹果手赚平台那样，动辄几万人同时在线抢任务。但是任务平台却发展的不错，这里面的任务很多，各式各样，比如关注微信公众号，微信点赞，发朋友圈，关注小程序等等。可以做任务赚赏金，还可以发任务、调查问卷等等。另外随着App试玩的机制原来越完善，部分有经验的苹果试玩平台也开始推出安卓版，任务开始变的好做，单价也可以接受。这里也介绍几款适合安卓手机做App试玩的平台，这里的每一款软件都经过小编测试，能够保障大家的利益，而且在使用过程中，有疑问都可以咨询小编。单价虽说没有苹果手机高，但是任务没有套路，很好完成，在流量不花钱的情况下，做这些小任务也是不错的选择。','','/upload/img/2019/05/04/5ccd85ef1d546.jpg','9994','37,39,21,30,36'),
('14','苹果手机赚钱精选推荐','3','这些都是从自己在做的平台中筛选出来的靠谱的平台，任务多，单价高，也是大家都在玩的，行业里做的时间长。我把自己在做的过程中的一些总结也都归纳起来，供大家参考，后续有新的体会加进来，还在探索其他的平台，自己做过之后，也会陆续更新、完善，大家有什么问题也可以留言给我，一起交流。','','/upload/img/2019/05/04/5ccd85ad954bb.jpg','9998','22,20,23,24,25,30,31,32,33,34'),
('15','最新苹果手机试玩app赚钱排行榜前十(必做)','3','关于试玩平台，可以说现在有一大批，那么问题来了，哪些平台比较靠谱？我看一些网上所谓的app应用赚钱软件排行榜，我不知道他们怎么做的排名，但是就我推荐的而言，他们所说的第一名我并不看好。这里是我认为的排行做一下罗列，仅供参考。','','/upload/img/2019/05/04/5ccd85a0399a1.jpg','9999','20,22,23,24,25,26,27,28,29,30'),
('16','首页第一屏幻灯广告','2','a:2:{s:4:"type";s:1:"2";s:9:"area_html";a:7:{i:0;a:4:{s:5:"title";s:9:"爱盈利";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/app/20.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebf3120673.jpg";}i:1;a:4:{s:5:"title";s:6:"钱咖";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/app/23.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebf48d0455.jpg";}i:2;a:4:{s:5:"title";s:6:"试客";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/app/22.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebf7f9a5a7.jpg";}i:3;a:4:{s:5:"title";s:8:"PP红包";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/app/26.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebf8e24915.jpg";}i:4;a:4:{s:5:"title";s:9:"蝉试客";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/app/31.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebfa32ddf5.jpg";}i:5;a:4:{s:5:"title";s:12:"新手攻略";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/info/1.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebfac99b88.jpg";}i:6;a:4:{s:5:"title";s:2:"QA";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/info/1.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebfba1990f.jpg";}}}','宽高720*200','','0',''),
('17','右侧二维码','2','a:2:{s:4:"type";s:1:"2";s:9:"area_html";a:1:{i:0;a:4:{s:5:"title";s:24:"手机扫码加入本站";s:4:"desc";s:24:"手机扫码加入本站";s:3:"url";s:0:"";s:12:"resource_url";s:40:"/upload/img/2019/10/06/5d99ddef0227f.png";}}}','宽高230*200','','0',''),
('18','资讯推荐位','1','','','','0','1,2'),
('19','苹果赚钱排行榜(右侧模版)','0','','','','0','20,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36'),
('20','安卓赚钱排行榜(右侧模板)','0','','','','0','21,39,37,32,30,41,40,38,36'),
('23','新手必备单价最高','3','单价最高的当属试客小兵和钱咖了，单价都是1.5元以上，这与他们在业内的实力是分不开的，钱咖已经上市。','','/upload/img/2019/09/30/5d921487b7b00.jpg','9996','22,23,26'),
('21','站长推荐','0','手机','','','0','30,31,32,33'),
('22','苹果试玩App赚钱排行榜前20(必玩)','0','','','','0','20,22,23,24,25,26,27,28,29,30,31,32,33,34,35,42,43,44,45,46'),
('24','精选推荐任务最多','3','现在试玩平台越来越多，新平台不断涌出，还有不少老平台由于实力不够，慢慢没了任务，只能&ldquo;躺尸&rdquo;了。在这里，要向大家推荐任务最多最稳定的平台，一般下午二点到四点是试玩平台更新发布任务的时候，这个时候任务很多，合理安排时间计划，多个平台轮流做，才能撸到更多的任务，将收入不断扩大。','','/upload/img/2019/09/30/5d92147a3ec2c.jpg','9997','20,31,24,25,26,27');
DROP TABLE IF EXISTS  `appcms_resource_list`;
CREATE TABLE `appcms_resource_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '资源',
  `info_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '应用 或资讯ID',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '关联的类型，应用=0，资讯=1',
  `resource_url` varchar(300) NOT NULL DEFAULT '' COMMENT '资源地址',
  `width` int(11) NOT NULL DEFAULT '0' COMMENT '资源宽度',
  `height` int(11) NOT NULL DEFAULT '0' COMMENT '资源高度',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '资源大小',
  PRIMARY KEY (`id`),
  KEY `id_type` (`info_app_id`,`type`),
  KEY `resource_url` (`resource_url`)
) ENGINE=MyISAM AUTO_INCREMENT=430 DEFAULT CHARSET=utf8 COMMENT='资源表';

insert into `appcms_resource_list`(`id`,`info_app_id`,`type`,`resource_url`,`width`,`height`,`size`) values
('189','34','0','/upload/img/2019/05/27/5cebdaf89d4e6.png','300','533','53420'),
('188','34','0','/upload/img/2019/05/27/5cebdaf59785b.png','300','533','119727'),
('187','34','0','/upload/img/2019/05/27/5cebdaf368187.png','300','533','71205'),
('181','0','0','/upload/img/2019/05/27/5cebd1da99e88.png','80','80','13089'),
('182','33','0','/upload/img/2019/05/27/5cebd6548fced.png','300','533','126851'),
('183','33','0','/upload/img/2019/05/27/5cebd65749fb3.png','300','533','59021'),
('184','33','0','/upload/img/2019/05/27/5cebd65a641f9.png','300','533','70030'),
('185','33','0','/upload/img/2019/05/27/5cebd65c69bfc.png','300','533','72153'),
('186','0','0','/upload/img/2019/05/27/5cebda33eab7b.png','200','200','47784'),
('180','32','0','/upload/img/2019/05/27/5cebcbb1560ef.jpg','300','532','33047'),
('179','32','0','/upload/img/2019/05/27/5cebcbae698a3.png','300','533','73633'),
('178','32','0','/upload/img/2019/05/27/5cebcbaa1a280.png','300','533','81390'),
('177','32','0','/upload/img/2019/05/27/5cebcba631f0c.png','300','533','139066'),
('172','31','0','/upload/img/2019/05/27/5ceb853e03a93.png','300','533','76608'),
('173','31','0','/upload/img/2019/05/27/5ceb854395541.png','300','533','65264'),
('174','31','0','/upload/img/2019/05/27/5ceb8547d8e2c.png','300','533','104712'),
('175','31','0','/upload/img/2019/05/27/5ceb8549ee415.jpg','300','533','29072'),
('176','0','0','/upload/img/2019/05/27/5cebc88295609.jpg','122','122','4329'),
('101','0','0','/upload/img/2019/04/23/5cbebfba1990f.jpg','700','200','41398'),
('100','0','0','/upload/img/2019/04/23/5cbebfac99b88.jpg','700','200','84982'),
('99','0','0','/upload/img/2019/04/23/5cbebfa32ddf5.jpg','640','275','37080'),
('98','0','0','/upload/img/2019/04/23/5cbebf8e24915.jpg','700','220','40844'),
('93','0','0','/upload/img/2019/04/21/5cbc4141a6b3b.jpg','235','235','19048'),
('94','0','0','/upload/img/2019/04/21/5cbc6081bb04f.png','461','68','13748'),
('95','0','0','/upload/img/2019/04/23/5cbebf3120673.jpg','750','300','47787'),
('96','0','0','/upload/img/2019/04/23/5cbebf48d0455.jpg','700','200','67874'),
('97','0','0','/upload/img/2019/04/23/5cbebf7f9a5a7.jpg','705','193','89347'),
('89','0','0','/upload/img/2019/04/21/5cbc3d19da5f1.png','96','96','6523'),
('171','31','0','/upload/img/2019/05/27/5ceb8535d9d7d.png','300','533','63664'),
('137','20','0','/upload/img/2019/05/26/5cea9cf84f099.jpg','300','533','44384'),
('323','24','0','/upload/img/2019/09/24/5d89fd682dcad.jpg','320','480','38100'),
('324','24','0','/upload/img/2019/09/24/5d89fd6e969ef.jpg','300','533','30348'),
('414','22','0','/upload/img/2019/10/03/5d95eb9aa4186.png','600','504','171001'),
('415','22','0','/upload/img/2019/10/03/5d95eb9cac55a.png','300','533','132723'),
('416','22','0','/upload/img/2019/10/03/5d95eb9eef6ee.png','300','400','45868'),
('126','0','0','/upload/img/2019/05/25/5ce93a85bff3d.jpg','640','640','20885'),
('122','0','0','/upload/img/2019/05/25/5ce9316642ce1.jpg','100','100','12553'),
('127','23','0','/upload/img/2019/05/26/5cea03e59768a.jpg','320','568','36585'),
('128','23','0','/upload/img/2019/05/26/5cea03e8d4f03.png','320','426','105421'),
('129','23','0','/upload/img/2019/05/26/5cea03eb7d3ee.jpg','320','568','47599'),
('130','23','0','/upload/img/2019/05/26/5cea03ee8d24e.png','320','426','51876'),
('131','23','0','/upload/img/2019/05/26/5cea03f1e62c9.jpg','320','480','29606'),
('132','23','0','/upload/img/2019/05/26/5cea03f4bc3e4.png','320','426','26964'),
('133','0','0','/upload/img/2019/05/26/5cea04adb683b.jpg','185','183','4865'),
('325','24','0','/upload/img/2019/09/24/5d89fd72b96c8.png','320','569','65849'),
('102','0','0','/upload/img/2019/04/23/5cbec0eac34fd.png','230','200','52304'),
('103','0','0','/upload/img/2019/05/04/5ccd85a0399a1.jpg','533','300','19890'),
('104','0','0','/upload/img/2019/05/04/5ccd85ad954bb.jpg','375','220','14012'),
('105','0','0','/upload/img/2019/05/04/5ccd85c623b0f.jpg','557','245','37955'),
('106','0','0','/upload/img/2019/05/04/5ccd85d6955cf.jpg','620','310','28509'),
('107','0','0','/upload/img/2019/05/04/5ccd85e32b2dc.png','338','220','109878'),
('108','0','0','/upload/img/2019/05/04/5ccd85ef1d546.jpg','493','287','26778'),
('109','21','0','/upload/img/2019/05/04/5ccd86fb2dffd.jpg','720','1280','160551'),
('110','21','0','/upload/img/2019/05/04/5ccd870ab12be.png','300','533','23284'),
('111','0','0','/upload/img/2019/05/24/5ce795948a7d5.png','270','270','71905'),
('112','0','0','/upload/img/2019/05/24/5ce795e31c04c.png','230','200','61971'),
('138','20','0','/upload/img/2019/05/26/5cea9cfd2dd45.jpg','300','499','60762'),
('139','20','0','/upload/img/2019/05/26/5cea9d038f6f8.png','300','533','79643'),
('140','20','0','/upload/img/2019/05/26/5cea9d0b5cbcf.png','300','533','86504'),
('141','0','0','/upload/img/2019/05/26/5cea9d91ca790.JPG','1600','1600','83075'),
('142','25','0','/upload/img/2019/05/26/5ceaa2d8bd720.png','300','533','80067'),
('143','25','0','/upload/img/2019/05/26/5ceaa2dbb068e.png','300','533','65875'),
('144','25','0','/upload/img/2019/05/26/5ceaa2de2a2ea.png','300','533','39408'),
('145','25','0','/upload/img/2019/05/26/5ceaa2e095db3.png','300','533','58545'),
('146','0','0','/upload/img/2019/05/26/5ceaa34a45615.png','72','72','3696'),
('147','26','0','/upload/img/2019/05/26/5ceaa6b9285ce.jpg','300','533','59316'),
('148','26','0','/upload/img/2019/05/26/5ceaa6bc28a1c.png','300','533','56823'),
('149','26','0','/upload/img/2019/05/26/5ceaa6bf2c77a.png','600','800','113670'),
('150','0','0','/upload/img/2019/05/26/5ceaae54368ce.png','48','48','4657'),
('151','0','0','/upload/img/2019/05/27/5ceb46d4d4a60.png','170','170','11133'),
('152','27','0','/upload/img/2019/05/27/5ceb49084c65a.png','300','400','78241'),
('153','27','0','/upload/img/2019/05/27/5ceb490b37bca.png','300','400','50279'),
('154','27','0','/upload/img/2019/05/27/5ceb490d37bf6.png','768','1024','99060'),
('155','0','0','/upload/img/2019/05/27/5ceb4fc52f21d.png','75','75','9985'),
('156','28','0','/upload/img/2019/05/27/5ceb51b67abfa.png','300','400','45315'),
('157','28','0','/upload/img/2019/05/27/5ceb51b95d9df.png','300','400','40402'),
('158','28','0','/upload/img/2019/05/27/5ceb51bb68776.png','300','400','103832'),
('160','28','0','/upload/img/2019/05/27/5ceb51e315cde.png','300','400','25558'),
('161','0','0','/upload/img/2019/05/27/5ceb55fe519df.png','120','120','4930'),
('162','29','0','/upload/img/2019/05/27/5ceb5c41e9358.png','300','533','75666'),
('163','29','0','/upload/img/2019/05/27/5ceb5c462041e.png','300','533','108746'),
('164','29','0','/upload/img/2019/05/27/5ceb5c4961be9.png','750','1334','98464'),
('165','0','0','/upload/img/2019/05/27/5ceb7ef2306b6.png','512','512','10882'),
('166','30','0','/upload/img/2019/05/27/5ceb80a43d4fe.png','300','533','75349'),
('169','30','0','/upload/img/2019/05/27/5ceb813f2e4ed.png','300','533','53826'),
('168','30','0','/upload/img/2019/05/27/5ceb80a8bd39a.png','300','533','71291'),
('170','0','0','/upload/img/2019/05/27/5ceb84d52e3b0.png','345','345','13767'),
('88','0','0','/upload/img/2019/04/14/5cb31f4586ae4.png','461','68','15396'),
('190','34','0','/upload/img/2019/05/27/5cebdafb34be6.png','300','533','184405'),
('191','34','0','/upload/img/2019/05/27/5cebdafe953f8.png','750','1334','156518'),
('192','0','0','/upload/img/2019/05/28/5cecf40a0f7a8.jpg','200','200','14735'),
('193','35','0','/upload/img/2019/05/28/5cecf7d9ea259.png','300','533','75177'),
('194','35','0','/upload/img/2019/05/28/5cecf7dbbf16f.png','300','533','125871'),
('195','35','0','/upload/img/2019/05/28/5cecf7ddcce42.png','300','533','68055'),
('196','35','0','/upload/img/2019/05/28/5cecf7e04aa67.png','300','533','33650'),
('197','0','0','/upload/img/2019/05/28/5ced2cbaa593b.png','96','96','8543'),
('198','36','0','/upload/img/2019/05/29/5cede2525d2c5.png','300','500','32162'),
('199','36','0','/upload/img/2019/05/29/5cede254304c5.png','300','500','110156'),
('200','36','0','/upload/img/2019/05/29/5cede255d5edd.png','300','500','89083'),
('201','36','0','/upload/img/2019/05/29/5cede2581867e.png','300','500','115444'),
('202','0','0','/upload/img/2019/05/29/5cee3958bce9b.png','461','68','13748'),
('203','0','0','/upload/img/2019/05/29/5cee44b3ea8f6.png','300','44','11763'),
('204','0','0','/upload/img/2019/05/30/5cef3db7c2cf5.png','461','68','12852'),
('205','0','0','/upload/img/2019/05/30/5cef3ec1ed64c.jpg','288','145','10055'),
('206','0','0','/upload/img/2019/05/30/5cef3f8f1e67f.jpg','540','300','19882'),
('207','0','0','/upload/img/2019/05/30/5cef3fa7eeaba.jpg','256','256','12865'),
('208','0','0','/upload/img/2019/05/30/5cef3fc135e97.jpg','288','145','10055'),
('209','0','0','/upload/img/2019/06/01/5cf2284a2a678.jpg','600','450','24060'),
('210','2','1','/upload/img/2019/06/02/5cf3cc33e53a6.jpg','600','426','20155'),
('211','0','0','/upload/img/2019/06/02/5cf3cca31f586.jpg','450','300','31875'),
('212','2','1','/upload/img/2019/06/02/5cf3cce66b726.jpg','629','385','34599'),
('213','2','1','/upload/img/2019/06/02/5cf3cceabdd45.jpg','300','498','61140'),
('214','2','1','/upload/img/2019/06/02/5cf3ccfa6c2aa.jpg','840','220','31842'),
('215','2','1','/upload/img/2019/06/02/5cf3cd0d94d2f.jpg','620','430','21992'),
('216','2','1','/upload/img/2019/06/02/5cf3cd7da796a.jpg','497','296','36741'),
('218','2','1','/upload/img/2019/06/02/5cf3cdf6ae715.jpg','591','443','75480'),
('219','2','1','/upload/img/2019/06/02/5cf3ce7b9415b.jpg','524','300','23583'),
('220','2','1','/upload/img/2019/06/02/5cf3ceaac25de.png','374','541','91429'),
('221','0','0','/upload/img/2019/06/09/5cfc69087174c.png','192','192','39598'),
('222','37','0','/upload/img/2019/06/09/5cfc6df9a3e69.jpg','300','533','31992'),
('223','37','0','/upload/img/2019/06/09/5cfc6dfd305ab.jpg','300','533','60261'),
('224','37','0','/upload/img/2019/06/09/5cfc6e05ad485.jpg','300','533','53413'),
('225','37','0','/upload/img/2019/06/09/5cfc6e0aa1d13.jpg','300','533','56464'),
('226','37','0','/upload/img/2019/06/09/5cfc6e127b869.jpg','300','533','40302'),
('227','37','0','/upload/img/2019/06/09/5cfc6e1aa056c.jpg','300','533','46230'),
('228','0','0','/upload/img/2019/06/09/5cfc779442d82.png','102','102','4331'),
('234','0','0','/upload/img/2019/06/09/5cfc80f618427.png','96','96','6523'),
('231','38','0','/upload/img/2019/06/09/5cfc7db2ca00f.png','438','581','296683'),
('232','38','0','/upload/img/2019/06/09/5cfc7dcc45f77.png','440','578','279393'),
('233','38','0','/upload/img/2019/06/09/5cfc7e10c6ae0.png','956','815','42369'),
('235','39','0','/upload/img/2019/06/09/5cfcb2dba907f.jpg','300','533','45523'),
('236','39','0','/upload/img/2019/06/09/5cfcb2de4b9e9.jpg','300','533','49374'),
('237','39','0','/upload/img/2019/06/09/5cfcb2e15add8.jpg','300','533','24611'),
('238','39','0','/upload/img/2019/06/09/5cfcb2e4213c5.jpg','300','533','52734'),
('239','39','0','/upload/img/2019/06/09/5cfcb2e71716c.jpg','300','533','53987'),
('240','39','0','/upload/img/2019/06/09/5cfcb2e9d678a.jpg','300','533','40468'),
('241','0','0','/upload/img/2019/06/09/5cfcf85753faa.png','96','96','6720'),
('242','40','0','/upload/img/2019/06/09/5cfcf9eae88ab.jpg','300','533','64589'),
('243','40','0','/upload/img/2019/06/09/5cfcf9f117ece.jpg','300','533','42805'),
('244','40','0','/upload/img/2019/06/09/5cfcf9f5ada61.jpg','300','533','68019'),
('245','40','0','/upload/img/2019/06/09/5cfcf9fbc9feb.jpg','300','533','45099'),
('246','40','0','/upload/img/2019/06/09/5cfcfa00da04b.jpg','300','533','49661'),
('247','0','0','/upload/img/2019/06/09/5cfd0ca344883.png','512','512','18525'),
('248','0','0','/upload/img/2019/06/10/5cfe1f2dc2ff3.png','72','72','3292'),
('249','41','0','/upload/img/2019/06/10/5cfe24305bba0.jpg','300','533','31038'),
('250','41','0','/upload/img/2019/06/10/5cfe24341d9b8.jpg','300','533','82983'),
('251','41','0','/upload/img/2019/06/10/5cfe24380e026.jpg','300','533','67529'),
('252','41','0','/upload/img/2019/06/10/5cfe243a0467c.jpg','300','533','24211'),
('253','41','0','/upload/img/2019/06/10/5cfe243c13fdb.jpg','300','533','28538'),
('254','41','0','/upload/img/2019/06/10/5cfe243e034a5.jpg','300','533','54929'),
('255','36','0','/upload/img/2019/06/10/5cfe4e04aab45.jpg','300','533','55791'),
('256','36','0','/upload/img/2019/06/10/5cfe4e0700916.jpg','300','533','51235'),
('257','0','0','/upload/img/2019/06/22/5d0dc119ce226.png','100','100','7628'),
('258','42','0','/upload/img/2019/06/22/5d0dc17954f7b.png','300','533','106648'),
('259','42','0','/upload/img/2019/06/22/5d0dc17b5ba1b.png','300','533','79291'),
('260','42','0','/upload/img/2019/06/22/5d0dc17db16d0.png','300','533','56739'),
('261','42','0','/upload/img/2019/06/22/5d0dc17fb8782.png','300','533','54248'),
('262','0','0','/upload/img/2019/06/22/5d0dc2334d233.png','108','108','5589'),
('263','43','0','/upload/img/2019/06/22/5d0dc40feb2e0.png','300','533','120312'),
('264','0','0','/upload/img/2019/06/22/5d0dc4129f7f8.png','300','533','120312'),
('265','43','0','/upload/img/2019/06/22/5d0dc416e9978.png','300','533','180366'),
('266','43','0','/upload/img/2019/06/22/5d0dc419b86c2.png','300','533','68320'),
('267','43','0','/upload/img/2019/06/22/5d0dc41d98811.png','300','533','37873'),
('268','0','0','/upload/img/2019/06/22/5d0dc84162dda.jpg','102','102','2854'),
('276','44','0','/upload/img/2019/06/22/5d0dc94fbc427.png','300','533','44218'),
('277','0','0','/upload/img/2019/06/23/5d0f0c913c705.png','180','180','62285'),
('275','44','0','/upload/img/2019/06/22/5d0dc94e257a4.png','300','533','45847'),
('274','44','0','/upload/img/2019/06/22/5d0dc94bd8229.png','300','533','69922'),
('273','44','0','/upload/img/2019/06/22/5d0dc9440fe1e.png','300','533','128544'),
('278','0','0','/upload/img/2019/06/23/5d0f0d8e4a440.png','180','180','37628'),
('279','0','0','/upload/img/2019/06/23/5d0f0e56199d1.png','120','120','4896'),
('280','0','0','/upload/img/2019/06/29/5d16d803e6f96.jpg','120','120','3687'),
('281','0','0','/upload/img/2019/06/29/5d16d8de3582b.png','180','180','11544'),
('282','0','0','/upload/img/2019/06/29/5d16d938684dd.png','120','120','5571'),
('283','0','0','/upload/img/2019/06/29/5d16db520be2e.jpg','512','512','19223'),
('284','0','0','/upload/img/2019/06/29/5d16db828ed5e.jpg','450','279','11235'),
('285','3','1','/upload/img/2019/06/29/5d16e35f7d21e.png','524','427','144068'),
('286','3','1','/upload/img/2019/06/29/5d16e3d530c2c.png','615','365','154063'),
('287','3','1','/upload/img/2019/06/29/5d16e3dd8b9cf.png','615','365','138301'),
('288','3','1','/upload/img/2019/06/29/5d16e578c36c5.png','160','160','2384'),
('289','0','0','/upload/img/2019/07/06/5d2045d4ee793.png','144','144','8490'),
('290','0','0','/upload/img/2019/07/06/5d2047bdd0f89.jpg','112','112','2528'),
('291','0','0','/upload/img/2019/07/06/5d2047caab97b.png','180','180','14944'),
('292','0','0','/upload/img/2019/07/06/5d2047d2e2ff7.jpg','120','120','16321'),
('293','0','0','/upload/img/2019/07/06/5d2047db9707c.png','168','168','8001'),
('294','0','0','/upload/img/2019/07/06/5d2047ec09212.png','168','168','8001'),
('295','0','0','/upload/img/2019/07/06/5d2047f7bbd16.png','72','72','5643'),
('296','0','0','/upload/img/2019/09/22/5d86d4740f27e.png','384','512','142614'),
('297','0','0','/upload/img/2019/09/22/5d86d49a4bf5e.png','384','512','142614'),
('298','0','0','/upload/img/2019/09/22/5d86d49ec36ca.png','384','512','96955'),
('299','0','0','/upload/img/2019/09/22/5d86d4c1da612.png','384','512','142614'),
('300','0','0','/upload/img/2019/09/22/5d86d512ce25c.png','384','512','142614'),
('301','0','0','/upload/img/2019/09/22/5d86d6db19afc.png','100','100','9311'),
('302','0','0','/upload/img/2019/09/22/5d86da0660d07.png','100','100','9311'),
('303','0','0','/shouzhuanmiao/upload/img/2019/09/22/5d86de8bcf8d0.png','100','100','9311'),
('304','0','0','/shouzhuanmiao/upload/img/2019/09/22/5d86df078b25e.png','100','100','9311'),
('305','0','0','/shouzhuanmiao/upload/img/2019/09/22/5d86df105a7bd.png','120','120','4896'),
('306','0','0','/upload/img/2019/09/22/5d86e26759598.png','100','100','9311'),
('326','46','0','/upload/img/2019/09/26/5d8c85cbb4ed8.png','300','533','102224'),
('322','45','0','/upload/img/2019/09/24/5d89fcd239f23.png','300','400','63517'),
('319','45','0','/upload/img/2019/09/24/5d89fca0c3074.png','300','400','103594'),
('320','45','0','/upload/img/2019/09/24/5d89fcb20dd00.png','300','400','77336'),
('321','45','0','/upload/img/2019/09/24/5d89fccb3c3cf.png','300','400','47896'),
('327','46','0','/upload/img/2019/09/26/5d8c85ce79f1d.png','300','533','90617'),
('328','56','0','/upload/img/2019/09/26/5d8c86967e03d.png','300','533','72625'),
('329','56','0','/upload/img/2019/09/26/5d8c869de0dcd.png','300','533','55929'),
('330','55','0','/upload/img/2019/09/26/5d8c86b407b89.png','300','533','73184'),
('331','55','0','/upload/img/2019/09/26/5d8c86b604e43.png','300','533','49584'),
('332','54','0','/upload/img/2019/09/26/5d8c86f05c8b7.png','300','533','112885'),
('333','54','0','/upload/img/2019/09/26/5d8c86f27ddbf.png','300','533','52621'),
('334','47','0','/upload/img/2019/09/26/5d8c8738a9d3f.png','300','533','139451'),
('335','47','0','/upload/img/2019/09/26/5d8c873a9ec6a.png','300','533','74503'),
('336','49','0','/upload/img/2019/09/26/5d8c87d7b46fd.png','300','533','52221'),
('337','49','0','/upload/img/2019/09/26/5d8c87d96255e.png','300','533','65991'),
('338','52','0','/upload/img/2019/09/26/5d8ca575b7081.png','300','533','113287'),
('339','52','0','/upload/img/2019/09/26/5d8ca578ccd9d.png','300','533','118536'),
('340','52','0','/upload/img/2019/09/26/5d8ca57cd8ce0.png','300','533','72952'),
('341','52','0','/upload/img/2019/09/26/5d8ca57e3f77f.png','300','533','102036'),
('342','51','0','/upload/img/2019/09/26/5d8cb567c8116.png','300','533','99428'),
('343','51','0','/upload/img/2019/09/26/5d8cb569930ad.png','300','533','74601'),
('344','51','0','/upload/img/2019/09/26/5d8cb56bdbaa9.png','300','533','143888'),
('345','51','0','/upload/img/2019/09/26/5d8cb570c0b50.png','300','533','67653'),
('346','51','0','/upload/img/2019/09/26/5d8cb572a61d4.png','300','533','96417'),
('347','51','0','/upload/img/2019/09/26/5d8cb5747f4ec.png','300','533','67362'),
('348','50','0','/upload/img/2019/09/26/5d8cbc1d57228.png','300','533','89115'),
('349','50','0','/upload/img/2019/09/26/5d8cbc2086bcb.png','300','533','121937'),
('350','50','0','/upload/img/2019/09/26/5d8cbc2535638.png','300','533','68420'),
('351','50','0','/upload/img/2019/09/26/5d8cbc27a927c.png','300','533','72425'),
('352','50','0','/upload/img/2019/09/26/5d8cbc299faf4.png','300','533','106505'),
('353','50','0','/upload/img/2019/09/26/5d8cbc2e241c1.png','300','533','64485'),
('354','50','0','/upload/img/2019/09/26/5d8cbc3241eac.png','300','533','57020'),
('355','50','0','/upload/img/2019/09/26/5d8cbc379cca4.jpg','300','533','39436'),
('356','48','0','/upload/img/2019/09/26/5d8cc13c94744.png','300','533','135543'),
('357','48','0','/upload/img/2019/09/26/5d8cc140e5446.png','300','533','75869'),
('358','48','0','/upload/img/2019/09/26/5d8cc1429d2e0.png','300','533','55112'),
('359','48','0','/upload/img/2019/09/26/5d8cc14535e5a.png','300','533','43030'),
('360','48','0','/upload/img/2019/09/26/5d8cc148e01de.jpg','300','533','20636'),
('361','0','0','/upload/img/2019/09/27/5d8e0c06af981.jpg','600','218','15339'),
('362','0','0','/upload/img/2019/09/27/5d8e0c7713b11.jpg','351','218','23573'),
('363','0','0','/upload/img/2019/09/28/5d8f35756b5ce.jpg','426','240','13021'),
('364','0','0','/upload/img/2019/09/30/5d92147a3ec2c.jpg','436','294','19733'),
('365','0','0','/upload/img/2019/09/30/5d921487b7b00.jpg','535','300','13385'),
('366','0','0','/upload/img/2019/10/01/5d9348539fea3.jpg','370','268','10378'),
('428','0','0','/upload/img/2019/10/06/5d99f2c8f3edd.jpg','647','456','70763'),
('429','0','0','/upload/img/2019/10/07/5d9acc504fce1.jpg','480','360','18962'),
('369','0','0','/upload/img/2019/10/02/5d949c8907c4b.jpg','500','271','15216'),
('370','0','0','/upload/img/2019/10/02/5d94a10daa851.jpg','1024','1024','24457'),
('371','0','0','/upload/img/2019/10/03/5d9559f3ca0ab.jpg','636','420','48183'),
('372','0','0','/upload/img/2019/10/03/5d955ca8cb4e0.jpg','811','412','82410'),
('373','0','0','/upload/img/2019/10/03/5d955e8594711.png','497','386','31205'),
('374','0','0','/upload/img/2019/10/03/5d955f61d8aef.jpg','500','313','18695'),
('375','0','0','/upload/img/2019/10/03/5d9560d0470f1.jpg','569','318','26372'),
('376','0','0','/upload/img/2019/10/03/5d9560e91a751.jpg','430','169','14465'),
('377','0','0','/upload/img/2019/10/03/5d9560fe10623.jpg','1024','683','160050'),
('378','0','0','/upload/img/2019/10/03/5d95974d6e3a1.png','160','160','8149'),
('379','0','0','/upload/img/2019/10/03/5d95978d19957.jpg','160','160','20137'),
('380','0','0','/upload/img/2019/10/03/5d9597b7bffd2.jpg','153','160','14913'),
('381','0','0','/upload/img/2019/10/03/5d9597c6443ac.png','160','160','16466'),
('382','0','0','/upload/img/2019/10/03/5d9597d0d6ec7.png','160','160','22208'),
('383','0','0','/upload/img/2019/10/03/5d95c517ddcd4.jpg','153','160','14913'),
('384','0','0','/upload/img/2019/10/03/5d95c5c931e27.jpg','1440','2560','339503'),
('385','0','0','/upload/img/2019/10/03/5d95c5f712756.jpg','1440','2560','614523'),
('386','0','0','/upload/img/2019/10/03/5d95c65990c52.jpg','1440','2560','935753'),
('387','0','0','/upload/img/2019/10/03/5d95c66b7fd60.jpg','1440','2560','643223'),
('388','0','0','/upload/img/2019/10/03/5d95c6f59a5f8.jpg','1440','2560','657804'),
('389','0','0','/upload/img/2019/10/03/5d95c706e7938.jpg','1440','2560','664412'),
('390','0','0','/upload/img/2019/10/03/5d95c72201f85.jpg','1440','2560','414249'),
('391','0','0','/upload/img/2019/10/03/5d95c8f6e6515.jpg','720','405','40919'),
('392','0','0','/upload/img/2019/10/03/5d95ca2a1ec83.jpg','310','336','45284'),
('393','0','0','/upload/img/2019/10/03/5d95caba3694b.jpg','719','716','68588'),
('394','0','0','/upload/img/2019/10/03/5d95cd02ba87a.jpg','160','160','20137'),
('395','0','0','/upload/img/2019/10/03/5d95cd1a35851.jpg','300','533','31992'),
('396','0','0','/upload/img/2019/10/03/5d95cd263afd7.jpg','300','533','60261'),
('397','0','0','/upload/img/2019/10/03/5d95cd3e302fc.jpg','1440','2560','1216338'),
('398','0','0','/upload/img/2019/10/03/5d95cd95e7ba8.jpg','1440','2560','610418'),
('399','0','0','/upload/img/2019/10/03/5d95cdb6be913.jpg','1440','2560','261139'),
('400','0','0','/upload/img/2019/10/03/5d95cddd5027e.jpg','719','435','25472'),
('401','0','0','/upload/img/2019/10/03/5d95cf5aa94f3.jpg','300','533','53413'),
('402','0','0','/upload/img/2019/10/03/5d95cf6e2560b.jpg','300','533','40302'),
('403','0','0','/upload/img/2019/10/03/5d95cfa684b3c.jpg','300','533','56464'),
('404','0','0','/upload/img/2019/10/03/5d95cfcbc6556.jpg','1440','2560','909018'),
('405','0','0','/upload/img/2019/10/03/5d95cfea942fe.jpg','1440','2560','732103'),
('417','22','0','/upload/img/2019/10/03/5d95eba16964d.png','300','400','37677'),
('418','0','0','/upload/img/2019/10/03/5d95ed982e0eb.jpg','403','251','31228'),
('419','0','0','/upload/img/2019/10/03/5d95ee097347f.jpg','480','262','31383'),
('420','0','0','/upload/img/2019/10/03/5d95ee16ada00.jpg','280','287','12525'),
('421','0','0','/upload/img/2019/10/03/5d95ee75dd7e0.jpg','280','287','12525'),
('422','0','0','/upload/img/2019/10/05/5d98b0ae0c7b0.jpg','452','286','9560'),
('423','0','0','/upload/img/2019/10/06/5d995a1eae0ca.png','160','161','12098'),
('424','0','0','/upload/img/2019/10/06/5d99cb73e5d10.jpg','401','308','10748'),
('425','0','0','/upload/img/2019/10/06/5d99dbe495cf6.png','270','270','73711'),
('426','0','0','/upload/img/2019/10/06/5d99dc4ccf497.png','200','200','53424'),
('427','0','0','/upload/img/2019/10/06/5d99ddef0227f.png','230','230','70338');
DROP TABLE IF EXISTS  `appcms_search_keyword`;
CREATE TABLE `appcms_search_keyword` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `q` varchar(200) NOT NULL DEFAULT '' COMMENT '搜索关键字',
  `qnum` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '搜索次数',
  `qorder` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关键字排序',
  PRIMARY KEY (`id`),
  KEY `qorder` (`qorder`),
  KEY `q` (`q`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='搜索关键字记录表';

insert into `appcms_search_keyword`(`id`,`q`,`qnum`,`qorder`) values
('1','爱盈利','97','0'),
('2','钱咖','87','0'),
('3','试客小兵','90','0'),
('4','小鱼赚钱','59','0'),
('5','秒赚大钱','39','0'),
('6','试客小兵','5','0');
DROP TABLE IF EXISTS  `appcms_url_rewrite`;
CREATE TABLE `appcms_url_rewrite` (
  `url_id` int(11) NOT NULL AUTO_INCREMENT,
  `url_title` varchar(400) NOT NULL DEFAULT '' COMMENT '地址名称',
  `url_true` varchar(400) NOT NULL DEFAULT '' COMMENT '真实地址',
  `url_rule` varchar(400) NOT NULL DEFAULT '' COMMENT '伪静态规则',
  PRIMARY KEY (`url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='伪静态规则表';

insert into `appcms_url_rewrite`(`url_id`,`url_title`,`url_true`,`url_rule`) values
('1','list_app','index.php?tpl=list_app&cid={cid}&p={p}','app/list_{cid}_{p}.html'),
('2','list_app_index','index.php?tpl=list_app&cid={cid}&p=1','app/list_{cid}.html'),
('3','cpy_list_app','index.php?tpl=list_app&cpy={cpy}&p={p}','app/{cpy}/{p}.html'),
('4','cpy_list_app_index','index.php?tpl=list_app&cpy={cpy}&p=1','app/{cpy}/'),
('5','search','index.php?tpl=search&q={q}&p={p}','index.php?tpl=search&q={q}&p={p}'),
('6','special_list','index.php?tpl=special_list&p={p}','sepcial/list_{p}.html'),
('7','special_list_index','index.php?tpl=special_list&p=1','sepcial/'),
('8','special_content','index.php?tpl=special_content&id={id}','special/{id}.html'),
('9','list_info','index.php?tpl=list_info&cid={cid}&p={p}','info/list_{cid}_{p}.html'),
('10','list_info_index','index.php?tpl=list_info&cid={cid}&p=1','info/list_{cid}.html'),
('11','cpy_list_info','index.php?tpl=list_info&cpy={cpy}&p={p}','info/{cpy}/{p}.html'),
('12','cpy_list_info_index','index.php?tpl=list_info&cpy={cpy}&p=1','info/{cpy}/'),
('13','content_info','index.php?tpl=content_info&id={id}','info/{id}.html'),
('14','content_app','index.php?tpl=content_app&id={id}','app/{id}.html'),
('15','content_app_history','index.php?tpl=content_app_history&id={id}&hid={hid}','app/{id}_{hid}.html'),
('16','search_index','index.php?tpl=search&q={q}','index.php?tpl=search&q={q}'),
('17','lastupdate','index.php?tpl=lastupdate&p={p}','lastupdate/{p}.html'),
('18','lastupdate_index','index.php?tpl=lastupdate&p=1','lastupdate/'),
('19','img','pic.php?url={url}&type={type}','image/{url}.{type}'),
('20','content_info_list','index.php?tpl=content_info&id={id}&p={p}','info/{id}_{p}.html');
SET FOREIGN_KEY_CHECKS = 1;

