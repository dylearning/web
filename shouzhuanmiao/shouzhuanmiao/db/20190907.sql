SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS  `appcms_admin_list`;
CREATE TABLE `appcms_admin_list` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '�˺�',
  `upass` varchar(100) NOT NULL DEFAULT '' COMMENT '����',
  `ustate` int(2) NOT NULL DEFAULT '0' COMMENT '�û�״̬������=0��ͣ��=1��',
  `reg_date` int(11) NOT NULL DEFAULT '0' COMMENT '��ͨʱ��',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='��̨�����';

insert into `appcms_admin_list`(`uid`,`uname`,`upass`,`ustate`,`reg_date`) values
('1','admin','77e2edcc9b40441200e31dc57dbb8829','0','0');
DROP TABLE IF EXISTS  `appcms_app_history`;
CREATE TABLE `appcms_app_history` (
  `history_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'app����id',
  `app_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Ӧ��ID',
  `app_version` varchar(500) NOT NULL DEFAULT '' COMMENT '�汾��',
  `app_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '����ʱ��',
  `app_size` varchar(500) NOT NULL DEFAULT '' COMMENT '�����С',
  `app_system` varchar(500) NOT NULL DEFAULT '' COMMENT 'ϵͳҪ��',
  `appcms_history_id` int(11) NOT NULL DEFAULT '0' COMMENT 'APPCMS������������ID',
  `down_url` varchar(500) NOT NULL DEFAULT '' COMMENT '���ص�ַ',
  PRIMARY KEY (`history_id`),
  KEY `app_id` (`app_id`),
  KEY `appcms_history_id` (`appcms_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='Ӧ����ʷ�汾��';

insert into `appcms_app_history`(`history_id`,`app_id`,`app_version`,`app_update_time`,`app_size`,`app_system`,`appcms_history_id`,`down_url`) values
('34','32','2.3.1','1558957029','11M','ios','0','http://im.jubaopeng8888.com/jbph5/api/sharePage/12445998'),
('31','29','1.0.0','1558928146','3M','ios','0','http://promote.cqcoin.top/invition/?num=28731&userId=7931981&e=306'),
('20','20','1.0.0','1557667017','10M','ios','0','http://t.cn/Ebk838n'),
('32','30','1.1.0','1558937815','4M','ios|android','0','http://s.hao3536.com/share.html?id=10867496&sf=ios&sfrom=ios'),
('33','31','2.1.5','1558938990','10M','ios','0','http://uee.me/aShd4'),
('23','21','1.1.0','1557670764','10M','Android IOS','0','http://my.zrb.life/e-6433489'),
('24','22','1.1.0','1558787487','5M','ios|android','0','http://t.cn/EbkR3Pl'),
('25','23','1.0.0','1558839929','5M','ios','0','http://t.cn/EbkR3P0'),
('26','24','1.0.0','1558840847','5M','ios','0','http://wx.xy599.com/share.php?id=18296049'),
('27','25','1.0.0','1558880116','3M','ios','0','http://m.qianmaiap.com/?u=234991'),
('28','26','1.1.0','1558881601','2M','ios','0','http://pp.ppsuoping.com/?random=1122&r=825477274'),
('29','27','5.1.2','1558923374','5M','ios','0','http://m.apptry100.cn/?u=72473447'),
('30','28','1.2.0','1558925567','2M','ios','0','http://uee.me/aShcN'),
('35','33','2.1.0','1558959202','3M','ios','0','http://uee.me/aShdJ'),
('36','34','3.2.5','1558960936','5M','ios','0','http://www.beeplay01.com/wxguide.html?id=92290742881'),
('37','35','2.0.3','1559033068','4M','ios','0','http://www.wulinzhuan.com/invite/5388940'),
('38','36','5.2.1','1559094316','10M','anroid|ios','0','http://uee.me/aVE7C'),
('39','37','2.3.1','1560047262','5M','Android|IOS','0','http://task.yuzhuan.com/reg.php?code=616017'),
('40','38','1.2.5','1560050673','14M','Android','0','http://uee.me/aVQgf'),
('41','39','2.3.6','1560065000','4M','Android','0','http://uee.me/aVQuU'),
('42','40','2.7.3','1560088063','12M','Android','0','http://uo.sqylwx.cn/g0w2y6r6/1h/vffjr0l5/je.html?o874VFs=aj'),
('43','41','2.7.0','1560088014','2M','Android','0','http://player.cryptofootball.online/newsJump.html?env=p&coo=100775365&ch=aa'),
('44','42','2.2.0','1561182647','10M','IOS','0','http://share.jinchanzhuanqian.com/?uid=154238'),
('45','43','5.1.0','1561183304','10M','IOS','0','http://huojianshiwan.com/#/link/UzZrUDIyMitBVFJWb0hEYzc4TDE0dz09'),
('46','44','5.2.4','1561184406','12M','IOS','0','http://www.shiyongapp.com/guide/14299490'),
('47','45','10.3.6','1561267235','21M','IOS','0','http://www.mapzqq-com.com/test/jump/535914'),
('48','46','2.1.5','1566139491','10M','ƻ��IOS','0','http://uee.me/aXBtt'),
('49','47','3.6.1','1561267736','5M','ƻ��IOS','0','http://wx.th233.cn/?id=18439181'),
('50','48','5.3.3','1561778229','12M','ƻ��IOS','0','http://www.aidouzhuan.com/dz1/g/index.html?uid=zetm2bom9e'),
('51','49','2.6.0','1561778461','5M','ƻ��IOS','0','http://v2.mayixiaoka.com/rec/283209'),
('52','50','5.1.2','1561778542','23M','ƻ��IOS','0','http://m.moneyds.com/user/inviteu/81314070.html'),
('53','51','3.2.0','1562396312','10M','ƻ��IOS','0','http://zs.hua2mi.com/#/?parentid=201678'),
('54','52','5.4.7','1562396902','11M','ƻ��IOS','0','http://liontry.youweihd.com/p/i/NniqIn'),
('55','53','2.1.0','1562396933','13M','ƻ��IOS','0','http://jyouqian.com/weixin/friendJoin?re=TX7q9GgwaYE%23&bm=2.00'),
('56','54','8.3.1','1562396963','16M','ƻ��IOS','0','http://integral.xckoo.com/invite?uid=230703'),
('57','55','5.3.2','1562396994','21M','ƻ��IOS','0','http://m.jinrizuijia.net/invite/?inviter=rTJEEGCZ8aewTK4LQPFUURYkoy-yEwADV1tLmY2MitkvPga2UIe6EQGB5-wSZnpXmDbzW_5wf0E1&from=link'),
('58','56','3.2.0','1562397022','22M','ƻ��IOS','0','http://unsafe.duobaoman.cn/p/s.html?t=2&id=110137858&c=0&s=XS2TI');
DROP TABLE IF EXISTS  `appcms_app_list`;
CREATE TABLE `appcms_app_list` (
  `app_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Ӧ��id',
  `last_cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '�ռ�����ID',
  `app_title` varchar(500) NOT NULL DEFAULT '' COMMENT 'Ӧ������',
  `app_stitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO����',
  `app_version` varchar(500) NOT NULL DEFAULT '' COMMENT '�汾�ţ����£�',
  `app_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '����ʱ�䣨���£�',
  `app_size` varchar(50) NOT NULL DEFAULT '' COMMENT '�����С�����£�',
  `app_system` varchar(100) NOT NULL DEFAULT '' COMMENT 'ϵͳҪ�����£�',
  `app_type` varchar(20) NOT NULL DEFAULT '' COMMENT '������ͣ����/�շ�',
  `app_logo` varchar(500) NOT NULL DEFAULT '' COMMENT '����ͼ',
  `app_desc` text COMMENT 'Ӧ������',
  `app_company` varchar(500) NOT NULL DEFAULT '' COMMENT '������',
  `app_company_url` varchar(500) NOT NULL DEFAULT '' COMMENT '��������ַ',
  `app_tags` varchar(1000) NOT NULL DEFAULT '' COMMENT '��ǩ',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '���ʱ��',
  `app_grade` float NOT NULL DEFAULT '0' COMMENT '�û�����',
  `app_recomment` float NOT NULL DEFAULT '0' COMMENT 'ϵͳ����',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '������ID',
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '������',
  `app_comments` int(11) NOT NULL DEFAULT '0' COMMENT '������',
  `app_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '�����',
  `app_down` int(11) NOT NULL DEFAULT '0' COMMENT '������',
  `app_order` int(11) NOT NULL DEFAULT '0' COMMENT '����',
  `data_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '��������Ӧ��ID',
  `charge_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '�����ƷѰ�ID',
  `rewrite_tag` varchar(100) NOT NULL DEFAULT '' COMMENT 'appҳ��α��̬��ǩ',
  `seo_title` text COMMENT 'Ӧ��SEO����',
  `seo_keywords` text COMMENT 'Ӧ��SEO�ؼ���',
  `seo_desc` text COMMENT 'Ӧ��SEO����',
  PRIMARY KEY (`app_id`),
  KEY `cate_update_time` (`last_cate_id`,`app_update_time`),
  KEY `cate_order` (`last_cate_id`,`app_order`),
  KEY `cate_visitor` (`last_cate_id`,`app_visitors`),
  KEY `cate_create_time` (`last_cate_id`,`create_time`),
  KEY `cate_down` (`last_cate_id`,`app_down`),
  KEY `app_update_time` (`app_update_time`),
  KEY `app_order` (`app_order`),
  KEY `app_down` (`app_down`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='Ӧ�ñ�';

insert into `appcms_app_list`(`app_id`,`last_cate_id`,`app_title`,`app_stitle`,`app_version`,`app_update_time`,`app_size`,`app_system`,`app_type`,`app_logo`,`app_desc`,`app_company`,`app_company_url`,`app_tags`,`create_time`,`app_grade`,`app_recomment`,`uid`,`uname`,`app_comments`,`app_visitors`,`app_down`,`app_order`,`data_app_id`,`charge_app_id`,`rewrite_tag`,`seo_title`,`seo_keywords`,`seo_desc`) values
('29','8','��Ǯ�۶�','��Ǯ�۶�','1.0.1','1561131908','3M','ios','','/upload/img/2019/05/27/5ceb55fe519df.png','<div>
	��Ǯ�۶���һ�����׬Ǯ��APP��������ƽ̨��ÿ����´�������Ӧ�ù�������飬�û���Ҫͨ������APP׬Ǯ���ﵽ������ֶ�ȾͿ����������ֵ�֧��������΢�š����ز����һ������Ϳ��Ի����Ӧ�������������񡢸߶����������ַ��ȶ��ֺ���ģʽ��Ч���ȶ����ۼ�Ͷ �Ź���ǧ�������֪��APP��</div>
<div>
	&nbsp;</div>
<div>
	��Ǯ�۶�app��һ��APP�����ƹ�ƽ̨������ƻ��iOSƽ̨ʹ�á�������������<span style="color:#ff0000;">�����������ڲ����״�</span>��ֻҪ�����������񣬾�����ǰ�¹������������ǿ��Լ�������<span style="color:#ff0000;">�״γɹ���2Ԫ�ֽ���</span>��<span style="color:#ff0000;">����һ��Ӧ��1-3Ԫ</span>������һ������9����¡��û�����APP�������飬���ɻ�ý��������˶���&ldquo;Ӧ������ʦ&rdquo;��</div>
','','','��Ǯ�۶�','1561131908','10','10','1','admin','2122','21228','1','0','0','0','','��Ǯ�۶�����_��Ǯ�۶�app����_��Ǯ�۶��ֻ�׬Ǯ�����ô�棿�����ֹ���','��Ǯ�۶�,��Ǯ�۶�app','��Ǯ�۶���һ�����׬Ǯ��APP��������ƽ̨��ÿ����´�������Ӧ�ù�������飬�û���Ҫͨ������APP׬Ǯ���ﵽ������ֶ�ȾͿ����������ֵ�֧��������΢�š����ز����һ������Ϳ��Ի����Ӧ�������������񡢸߶����������ַ��ȶ��ֺ���ģʽ��Ч���ȶ����ۼ�Ͷ �Ź���ǧ�������֪��APP��'),
('25','8','Ǯ��','Ǯ��','1.0.0','1558948658','3M','ios','','/upload/img/2019/05/26/5cea9d91ca790.JPG','<div>
	Ǯ��app��һ����������ƻ���ֻ�����׬Ǯƽ̨��<span style="color:#ff0000;">������</span>��Ҫ׬Ǯ����Ǯ����Ǯ��APP��һ���ܰ��������Ǯ����APP������һ��Ӧ��<span style="color:#ff0000;">����1Ԫ</span>��<span style="color:#ff0000;">5Ԫ�������֣��ǳ����ױ���</span>��</div>
<div>
	&nbsp;</div>
<div>
	Ǯ��APP��һ���ܰ��������Ǯ����APP������һ��Ӧ�õ���1Ԫ��5Ԫ�������֡����ô���ios׬ǮӶ������Ǯ��������Ȥ�ֺ����Ӧ�û���׬Ǯ��Ǯ��Ϊ���ṩ��������Ӧ�ã���һ�� Ӧ�þ����ֽ������Ͽ����Ǯ���콱����</div>
','','','Ǯ��','1558948658','10','10','1','admin','1000','1012','1','0','0','0','','Ǯ������_�ٷ�Ǯ��app�������_Ǯ���ֻ�׬Ǯ�������ô��?','Ǯ��,�ٷ�����','Ǯ��APP��һ���ܰ��������Ǯ����APP������һ��Ӧ�õ���1Ԫ��5Ԫ�������֡����ô���ios׬ǮӶ������Ǯ��������Ȥ�ֺ����Ӧ�û���׬Ǯ��Ǯ��Ϊ���ṩ��������Ӧ�ã���һ�� Ӧ�þ����ֽ������Ͽ����Ǯ���콱����'),
('26','8','PP���','PP���','1.1.0','1558948626','2M','ios','','/upload/img/2019/05/26/5ceaa34a45615.png','<div>
	pp�����2017���Ƴ���һ������ʱ��ذ���׬Ǯ���������,Ŀǰ��֧��ƻ��iosϵͳ����׬Ǯ,С����ǿ�����pp�����ͨ�����app����涨������������ֽ����ͽ�������ֻ��Ҫÿ�컨һ���ʱ��ȥ�����������app���񣬾��ܵõ��ֽ���������ֱ�����ֻ��ֵ����Ŷ��<span style="color:#ff0000;">10Ԫ�������֣��뵽��</span>��</div>
<div>
	&nbsp;</div>
<div>
	pp�����������ƽ̨����<span style="color:#ff0000;">��������</span>����װ�������<span style="color:#ff0000;">��3Ԫ</span>,����<span style="color:#ff0000;">ÿ������1-3.5Ԫ</span>����������������Ԥ�棬�����뵽΢��Ǯ������֧������ ƻ���û��ڴ�ƽ̨����һ��APPӦ�ÿɻ�ý������㻹����ԥʲô��?���С����Ǹ���Ȥ�����Կ���һ���������app�������һ����</div>
','','','PP���','1558948626','10','10','1','admin','1000','1011','1','0','0','0','','pp�������_pp���app��������_��ô��pp������׬�㷢Ǯ?','pp���,pp�������','pp�����2017���Ƴ���һ������ʱ��ذ���׬Ǯ���������,Ŀǰ��֧��ƻ��iosϵͳ����׬Ǯ,С����ǿ�����pp�����ͨ�����app����涨������������ֽ����ͽ�������ֻ��Ҫÿ�컨һ���ʱ��ȥ�����������app���񣬾��ܵõ��ֽ���������ֱ�����ֻ��ֵ����Ŷ��10Ԫ�������֣��뵽�ˣ�'),
('27','8','��׬��Ǯ','��׬��Ǯ','5.1.2','1561131859','5M','ios','','/upload/img/2019/05/27/5ceb46d4d4a60.png','<div>
	��׬��Ǯ��������Ȥ�ֺ����ƻ��app������׬�㻨Ǯ����һ���ֻ�׬ǮӦ�ã��û�ͨ�������׬��Ǯapp���������ܻ�����棬��������׬ȡ�㻨Ǯ������ǳ��򵥣��û�ֻ�趯����ָ�������ַ�������Ȧ����׬Ǯ���ǲ��Ǻܼ򵥡�</div>
<div>
	&nbsp;</div>
<div>
	��׬��Ǯapp������һ��Ӧ��<span style="color:#ff0000;">����1Ԫ��</span>��<span style="color:#ff0000;">���û���2Ԫ</span>��<span style="color:#ff0000;">10Ԫ������</span>����������׬Ǯ��������Ŷ���׬Ǯ��ƽ̨���������龫Ʒapp����׬Ǯ�����ܽ����Ķ�������������׬Ǯ���������׬�ĸ��࣬��ͽ�ܰ���׬Ǯ������������11Ԫ��</div>
','','','��׬��Ǯ','1561131859','10','10','1','admin','1000','1005','1','0','0','0','','��׬��Ǯ����_��׬��Ǯapp����_��׬��Ǯ�ֻ�׬Ǯ������ֹ���','��׬��Ǯ,��׬','��׬��Ǯ��������Ȥ�ֺ����ƻ��app������׬�㻨Ǯ����һ���ֻ�׬ǮӦ�ã��û�ͨ�������׬��Ǯapp���������ܻ�����棬��������׬ȡ�㻨Ǯ������ǳ��򵥣��û�ֻ�趯����ָ�������ַ�������Ȧ����׬Ǯ���ǲ��Ǻܼ򵥡�'),
('28','8','����Ǯׯ','����Ǯׯ','1.2.0','1558948597','2M','ios','','/upload/img/2019/05/27/5ceb4fc52f21d.png','<div>
	����Ǯׯapp������APP����׬Ǯ��������,׬Ǯ���ף�С�����ͨ�����ָ����������������,������ֽ���������Խ��Խ��Ǯ��APP����������,�������,����׬���㻨Ǯ��ƽ̨�����ֱ��,���쵽��,�ȫ���׵�׬Ǯƽ̨��</div>
<div>
	&nbsp;</div>
<div>
	����Ǯׯ��<span style="color:#ff0000;">��ƽ̨</span>��<span style="color:#ff0000;">����ܶ��ƽ̨֮һ</span>��<span style="color:#ff0000;">�Ƽ���</span>��<span style="color:#ff0000;">���û�ע����1Ԫ������0.8-2Ԫ����5Ԫ�Ϳ�������</span>����Ҫ��Ļ�׬�ĺܿ�Ŷ����ʵ��Ч�������㲻��������Ӧ�ã��ڼ�����׬Ǯ��</div>
','','','����Ǯׯ','1558948597','10','10','1','admin','10000','10004','0','0','0','0','','����Ǯׯ����_����Ǯׯapp����_����Ǯׯ�ֻ�׬Ǯ����������?','����Ǯׯ,�ֻ�׬Ǯ','����Ǯׯapp������APP����׬Ǯ��������,׬Ǯ���ף�С�����ͨ�����ָ����������������,������ֽ���������Խ��Խ��Ǯ��APP����������,�������,����׬���㻨Ǯ��ƽ̨�����ֱ��,���쵽��,�ȫ���׵�׬Ǯƽ̨��'),
('21','21','���˰�','','1.1.0','1558787962','10M','Android IOS','','/upload/img/2019/04/21/5cbc4141a6b3b.jpg','<h3 style="margin: 20px 0px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	<span style="font-weight: normal;">Ӧ�ý���</span></h3>
<br style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;" />
<p class="in-info" style="margin: 0px; padding: 0px; word-wrap: break-word; line-height: 20px; color: rgb(73, 73, 73); font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	&nbsp;</p>
<div style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	<span style="font-size: 14px;">���˰�����������Լ�����Ƭʱ�䣬��������������ʱ���׬Ǯ�����Լ�ÿ�²�ȱ�㻨Ǯ���ͻ�Ҳ���Է������͡������˰��ǧ���û�������ɵ����ʾ����ݲɼ���Ӫ���ƹ�ȹ�����</span><br />
	<br />
	<div>
		<p style="margin: 0px 0px 5px; padding: 0px; word-wrap: normal; max-width: 100%; clear: both; min-height: 1em; font-size: 14px; border: 0px; list-style: none; word-break: normal; line-height: 21px; color: rgb(70, 70, 70); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; background-color: rgb(248, 248, 248); box-sizing: border-box !important;">
			<span style="margin: 0px; padding: 0px 2px 2px; max-width: 100%; word-break: normal; line-height: 1.8em; border-color: rgb(255, 175, 205); border-bottom-width: 2px; border-bottom-style: solid; display: block; float: left; color: rgb(0, 112, 192); box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; line-height: 25px; background-color: rgb(255, 255, 255); box-sizing: border-box !important; word-wrap: break-word !important;">1�������ɫ</span></span></p>
		<p style="margin: 0px; padding: 0px; word-wrap: break-word !important; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 14px; line-height: 25px; box-sizing: border-box !important;">
			&nbsp;</p>
	</div>
	<div>
		<div>
			<span style="font-size: 14px;">�������ְ׬Ǯƽ̨���Ķ������ء�����ȣ���������10%Ӷ���������</span></div>
		<div>
			&nbsp;</div>
		<div>
			<p style="margin: 0px 0px 5px; padding: 0px; word-wrap: normal; max-width: 100%; clear: both; min-height: 1em; font-size: 14px; border: 0px; list-style: none; word-break: normal; line-height: 21px; color: rgb(70, 70, 70); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; background-color: rgb(248, 248, 248); box-sizing: border-box !important;">
				<span style="margin: 0px; padding: 0px 2px 2px; max-width: 100%; word-break: normal; line-height: 1.8em; border-color: rgb(255, 175, 205); border-bottom-width: 2px; border-bottom-style: solid; display: block; float: left; color: rgb(0, 112, 192); box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; line-height: 25px; background-color: rgb(255, 255, 255); box-sizing: border-box !important; word-wrap: break-word !important;">2�����ֹ���</span></span></p>
			<p style="margin: 0px; padding: 0px; word-wrap: break-word !important; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 14px; line-height: 25px; box-sizing: border-box !important;">
				&nbsp;</p>
		</div>
		<div>
			<span style="font-size: 14px;">�����������1Ԫ������΢�ţ�֮��30Ԫ��</span></div>
		<div>
			&nbsp;</div>
		<div>
			<p style="margin: 0px 0px 5px; padding: 0px; word-wrap: normal; max-width: 100%; clear: both; min-height: 1em; font-size: 14px; border: 0px; list-style: none; word-break: normal; line-height: 21px; color: rgb(70, 70, 70); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; background-color: rgb(248, 248, 248); box-sizing: border-box !important;">
				<span style="margin: 0px; padding: 0px 2px 2px; max-width: 100%; word-break: normal; line-height: 1.8em; border-color: rgb(255, 175, 205); border-bottom-width: 2px; border-bottom-style: solid; display: block; float: left; color: rgb(0, 112, 192); box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; line-height: 25px; background-color: rgb(255, 255, 255); box-sizing: border-box !important; word-wrap: break-word !important;">3��С��ʿ</span></span></p>
			<p style="margin: 0px; padding: 0px; word-wrap: break-word !important; max-width: 100%; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 14px; line-height: 25px; box-sizing: border-box !important;">
				&nbsp;</p>
			<div>
				<div>
					<span style="font-size: 14px;">����Ϊ��ԱҲ������������������</span></div>
				<div>
					&nbsp;</div>
				<div>
					<span style="font-size: 14px;">���˰�ٷ�QQȺ��286384518</span></div>
			</div>
		</div>
	</div>
	<div>
		<span style="font-size: 14px;">&nbsp;</span></div>
	<div>
		<u style="color: rgb(255, 0, 0);"><span style="font-size: 14px;">ע���������ף��̼ҹ����䡢�����淨����������</span></u></div>
</div>
<p style="margin: 0px; padding: 0px; word-wrap: break-word; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	&nbsp;</p>
<br />
','','','','1558787962','0','10','1','admin','0','10014','4','0','0','0','','','',''),
('22','8','�Կ�С��','�Կ�С��','1.1.0','1558948700','5M','ios|android','','/upload/img/2019/05/25/5ce9316642ce1.jpg','<span style="font-family:΢���ź�;"><span style="font-size:14px;"><span style="color: rgb(79, 79, 79); text-align: justify;">Ӧ���Կͣ����ֻ�׬Ǯ����</span><span style="text-align: justify; box-sizing: border-box; outline: 0px; word-break: break-all; color: rgb(255, 0, 0);">������ƽ̨</span><span style="color: rgb(79, 79, 79); text-align: justify;">��ͨ��ʹ���ֻ�����ָ����Ӧ�þͿ��Ի�� 2 Ԫ- 3.5 Ԫ���ȵ��ֽ�����</span><span style="text-align: justify; box-sizing: border-box; outline: 0px; word-break: break-all; color: rgb(255, 0, 0);">�������</span><span style="color: rgb(79, 79, 79); text-align: justify;">��Ŀǰ��֧��ƻ���豸���棬�ֽ�����ͨ��֧���� / ΢���������ֻ�һ��������������</span></span></span><br />
<br />
<span style="color:#ff0000;"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 21px;">�����</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 21px;">��</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 21px;">���۸�</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 21px;">��</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 21px;">��������1.5Ԫ����</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 21px;">��</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 21px;">����ƽ̨</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 21px;">��Ŀǰ���Կͺ�Ǯ����2��ƽ̨����ô�ߵĵ��ۼ���Ӧ���Կ���֤�ɹ�����</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 21px;">1Ԫ�ֽ���</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 21px;">��</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 21px;">8Ԫ�����뵽��</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 21px;">���Կ�С���ְ��ֽ������׬Ǯ���֣�����ҪIOS9.0������IOS9.0������ϵͳ��sɨ���ά����롣</span>','','','�Կ�С��,Ӧ���Կ�','1558948700','10','10','1','admin','1000','1028','3','0','0','0','','�Կ�С������_�Կ�С��app����_Ӧ���Կ��ֻ�׬Ǯ����������,��ô��?','�Կ�С��,Ӧ���Կ�','Ӧ���Կ�(�Կ�С��)��ʲô��Ӧ���Կͣ����ֻ�׬Ǯ���������ƽ̨��ͨ��ʹ���ֻ�����ָ����Ӧ�þͿ��Ի�� 2 Ԫ- 3.5 Ԫ���ȵ��ֽ�����������ߡ�Ŀǰ��֧��ƻ���豸���棬�ֽ�����ͨ��֧���� / ΢���������ֻ�һ��������������'),
('23','8','Ǯ��','Ǯ��','1.0.0','1558948686','5M','ios','','/upload/img/2019/05/25/5ce93a85bff3d.jpg','Ǯ������׬����׬����������ƽ̨��<span style="color:#ff0000;">ҵ���һ�ֻ�׬Ǯƽ̨</span>��<span style="color:#ff0000;">ȫ����ߵ���</span>���û�ÿ�ɹ�����һ�����ֻ��Ҫ3-5�������ң�<span style="color:#ff0000;">���۽���1.5~3.5Ԫ����</span>��<span style="color:#ff0000;">�ɹ��������1Ԫ�ֽ���</span>��<span style="color:#ff0000;">10Ԫ�Ϳ����ֵ�΢�Ż���֧����</span>������24Сʱ�ڵ��ˣ�ÿ������3��ˢ����������ʱ�䲻��ʱˢ�£���ƽ̨3Ԫ������Ҫ���ѣ������������ص�ʱ��Ҫ����1Ԫ�����Ե���Ҳ�ر�ߡ��������������ѿ��Բ�Ҫ����3Ԫ���µĶ�����ѵ�Ҳ����Ҫ��֤��<br />
<br />
�����תǮ����<span style="color:#ff0000;">Ǯ���ٷ���ѧ������Ƶ</span>��һ��������Ƶ�ɣ�����������<br />
<br />
<iframe allowfullscreen="" frameborder="0" height="498" src="https://v.qq.com/iframe/player.html?vid=e0681w1awma&amp;tiny=0&amp;auto=0" width="640"></iframe>','','','Ǯ��','1558948686','10','10','1','admin','1000','1016','2','0','0','0','','Ǯ������_Ǯ��app����_Ǯ���ٷ����ֽ�ѧ��Ƶ���Խ̳�','Ǯ��,app����','Ǯ������׬����׬����������ƽ̨��ҵ���һ�ֻ�׬Ǯƽ̨��ȫ����ߵ��ۡ��û�ÿ�ɹ�����һ�����ֻ��Ҫ3-5�������ң����۽���1.5~3.5Ԫ���ȡ��ɹ��������1Ԫ�ֽ�����10Ԫ�Ϳ����ֵ�΢�Ż���֧����������24Сʱ�ڵ��ˣ�ÿ������3��ˢ����������ʱ�䲻��ʱˢ�£���ƽ̨3Ԫ������Ҫ���ѣ������������ص�ʱ��Ҫ����1Ԫ�����Ե���Ҳ�ر�ߡ��������������ѿ��Բ�Ҫ����3Ԫ���µĶ�����ѵ�Ҳ����Ҫ��֤��'),
('24','8','С��׬Ǯ','С��׬Ǯ','1.0.0','1561131830','5M','ios','','/upload/img/2019/05/26/5cea04adb683b.jpg','<div>
	<span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">С��׬Ǯ��ʲô��</span></div>
<div>
	<span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">������ָ������Ӧ�õ�׬Ǯ�����һ����׬Ǯ��APP���û�ͨ�����ָ����С����������ֽ�����Ҳ���û����϶ࡢ�û����ζȽϸߡ���ģ�ϴ�ļ�������ƽ̨��</span><br />
	&nbsp;</div>
<span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">�û�����ͨ������Ӧ�õȶ��ַ�ʽ����׬Ǯ�������㻹�����������Ѽ���С��׬Ǯ��Ϊͽ�ܣ��������ֳܷɣ�����Ȥ�����ѸϽ��������԰ɡ�</span><br />
<br />
<span style="color:#ff0000;"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">������࣬����ÿ��1-3Ԫ��1Ԫ</span><span style="font-size: 14px;"><span style="font-family: ΢���ź�; line-height: 1.5;">��</span></span><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">������</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">�����ƽ̨</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">��ʱ������</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">��</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">������ɺ��Զ����������</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">��</span><span style="color:#ff0000;"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">�Զ��ύ</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">�����õ�һ����������ɴ������������������������ǻ������������������������˵�ǳ�����</span>','','','С��׬Ǯ','1561131830','10','10','1','admin','1000','1013','1','0','0','0','','С��׬Ǯ����_С��׬Ǯapp����_С��׬Ǯ�ֻ�����������,��ô��?','С��׬Ǯ,����app','С��׬Ǯ��ʲô��������ָ������Ӧ�õ�׬Ǯ�����һ����׬Ǯ��APP���û�ͨ�����ָ����С����������ֽ�����Ҳ���û����϶ࡢ�û����ζȽϸߡ���ģ�ϴ�ļ�������ƽ̨��'),
('20','8','iMoney��ӯ��','iMoney��ӯ��','1.0.0','1559184464','10M','ios','','/upload/img/2019/04/21/5cbc3d19da5f1.png','<p style="margin: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	<span style="color: rgb(0, 0, 0); font-family: ΢���ź�; font-size: 14px;"><strong>iMoney��ӯ��</strong>��һ�ҷǳ������ƻ���������ƽ̨������˵</span><span style="color:#ff0000;"><span style="font-family: ΢���ź�; font-size: 14px;">ҵ������ǰ��</span></span><span style="color: rgb(0, 0, 0); font-family: ΢���ź�; font-size: 14px;">���ǳ�רҵ��</span><span style="color:#ff0000;"><span style="font-family: ΢���ź�; font-size: 14px;">������ƽ̨</span></span><span style="font-size:14px;">������׬Ǯ��ʽ������һ���㻨Ǯ������׬Ǯ���߶������ڿ�׬Ǯ��������ָ�����������Ԫ�����û�1Ԫ�������ֵ�΢�š�</span></p>
<div style="font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	&nbsp;</div>
<div style="font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	<span style="font-size:14px;"><span style="font-family: Arial, Verdana, sans-serif;">iMoneyΪ���ṩ��������Ӧ�ã�����Ӧ�û�����ȡ�����ֽ�����ÿ���������������Ͷ������Զ��XX����</span></span></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-size:14px;">֧�� ΢��/֧���� ���֣��ۼƽ������û����ֵ�֧������΢�š�</span></div>
<div>
	&nbsp;</div>
<div>
	<span style="font-size:14px;">��������������һ��׬Ǯ����ô��������Լ�������ɣ�����֮��ĵڶ��ݿɹ����롣</span><br />
	&nbsp;</div>
<div style="font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	<section class="yead_editor" id="1_488" label="Copyright ? 2015 Yead All Rights Reserved." style="color: rgb(153, 153, 153); line-height: 21.6px; font-size: 14px; font-family: &quot;Microsoft YaHei&quot;; margin: 5px auto;"><section style="border: none; margin: 1em auto;"><section class="yead_bdbc" style="display: inline-block; padding-bottom: 3px; border-bottom: 1px solid rgb(255, 105, 31);"><section class="yead_bgc" style="font-size: 16px; line-height: 21.6px; width: 0.2em; height: 1.1em; vertical-align: bottom; display: inline-block; background-color: rgb(255, 105, 31);"></section><section style="font-size: 16px; line-height: 1.12em; height: 1.12em; vertical-align: bottom; padding: 0px 0.5em; display: inline-block;">
	<p style="margin: 0px; padding: 0px; word-wrap: break-word;">
		<span style="color: rgb(0, 0, 0);">����ص�</span></p>
	<div>
		&nbsp;</div>
	<div>
		&nbsp;</div>
	<div>
		&nbsp;</div>
	</section></section></section></section></div>
<span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">�����</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">��</span><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">���۸�</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">��</span><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">ÿ��1.3Ԫ��</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">��</span><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">����ƽ̨֮һ��</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">�����ĵ�����񳬶࣬</span><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">����������1Ԫ�ֽ���</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">��</span><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px; font-family: ΢���ź�; line-height: 1.5;">ֻҪ10Ԫ��������</span></span><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">������Ӧ�û�����ȡ�����ֽ�</span>���<span style="font-size: 14px; color: rgb(0, 0, 0); font-family: ΢���ź�; line-height: 1.5;">�������ڿ�׬Ǯ������׬Ǯ��VIP�ȼ�ϵͳ��Ȥζ�淨��������ͬʱ����׬Ǯ���Ͽ�����~</span><br style="font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;" />
<p class="in-info" style="margin: 0px; padding: 0px; word-wrap: break-word; line-height: 20px; color: rgb(73, 73, 73); font-family: &quot;Microsoft YaHei&quot;, Arial, ����, Helvetica, sans-serif, &quot;Arial Narrow&quot;, HELVETICA;">
	&nbsp;</p>
<section class="yead_editor" id="1_488" label="Copyright ? 2015 Yead All Rights Reserved." style="line-height: 21.6px; font-size: 14px; margin: 5px auto;"><section style="border: none; margin: 1em auto;"><section class="yead_bdbc" style="display: inline-block; padding-bottom: 3px; border-bottom: 1px solid rgb(255, 105, 31);"><section class="yead_bgc" style="color: rgb(153, 153, 153); font-size: 16px; line-height: 21.6px; width: 0.2em; height: 1.1em; vertical-align: bottom; display: inline-block; background-color: rgb(255, 105, 31);"></section><section style="font-size: 16px; line-height: 1.12em; height: 1.12em; vertical-align: bottom; padding: 0px 0.5em; display: inline-block;">
<p style="margin: 0px; padding: 0px; word-wrap: break-word;">
	<font color="#000000">�������</font></p>
<div style="color: rgb(153, 153, 153);">
	&nbsp;</div>
<div style="color: rgb(153, 153, 153);">
	&nbsp;</div>
<div style="color: rgb(153, 153, 153);">
	&nbsp;</div>
</section></section></section></section><span style="color:#ff0000;"><span style="font-family:΢���ź�;"><span style="font-size:14px;">ÿ������ 3 - 6 ������Ἧ��Ͷ��,��������½�����ߣ��������ƽ̨��</span></span></span><br />
<br />
<br />
','','','��ӯ��,imoney��ӯ��,iMoney��ӯ��','1559184464','10','10','1','admin','10000','10153','102','0','0','0','',' imoney��ӯ��app����_imoney��ӯ������_imoney��ӯ��׬Ǯ�����ô�棿�����ֹ���','imoney,��ӯ��,��Ǯ','��ӯ���ֻ�׬Ǯ�����ô��?iMoney��ӯ����һ�ҷǳ������ƻ���������ƽ̨������˵ҵ������ǰ�����ǳ�רҵ��������ƽ̨������׬Ǯ��ʽ������һ���㻨Ǯ������׬Ǯ���߶������ڿ�׬Ǯ��������ָ�����������Ԫ�����û�1Ԫ�������ֵ�΢�š�'),
('30','8','����Ȥ��','����Ȥ��','1.1.0','1561131929','4M','ios|android','','/upload/img/2019/05/27/5ceb7ef2306b6.png','<div>
	����Ȥ����һ�������������App���ֻ�׬Ǯ�����������APP��ø����棬׬Ǯ�ķ�ʽ�ܼ򵥣�ÿ����һ��APP�ɻ��1Ԫ�ֽ��������档��ʱ�����֣�10Ԫ����΢�������뵽�ˡ����ó��ţ��ڼҾͿ����ֻ���ְ��������Ƭʱ���ְ׬Ǯ���ڻ�ȡ������Ѷ�У��߿��������ݱ��ֻ�׬Ǯ�� ��ְ׬Ǯ�·�ʽ��������ָһ����׬Ǯ��</div>
<div>
	&nbsp;</div>
<div>
	����Ȥ�棬��ƽ̨���ʺϰ�׿��ƻ��ϵͳ��<span style="color:#ff0000;">�����࣬ע����5Ԫ����װ����1Ԫ��û����װ����6Ԫ��ÿ��0.8-1Ԫ���ң���10Ԫ����΢�����֡�</span></div>
','','','����Ȥ��','1561131929','10','10','1','admin','123','2238','0','0','0','0','','����Ȥ������_����Ȥ��app����_����Ȥ���ֻ�׬Ǯ�������ô��?','����Ȥ��,����Ȥ���ֻ�׬Ǯ���','����Ȥ����һ�������������App���ֻ�׬Ǯ�����������APP��ø����棬׬Ǯ�ķ�ʽ�ܼ򵥣�ÿ����һ��APP�ɻ��1Ԫ�ֽ��������档��ʱ�����֣�10Ԫ����΢�������뵽�ˡ����ó��ţ��ڼҾͿ����ֻ���ְ��������Ƭʱ���ְ׬Ǯ���ڻ�ȡ������Ѷ�У��߿��������ݱ��ֻ�׬Ǯ�� ��ְ׬Ǯ�·�ʽ��������ָһ����׬Ǯ��'),
('31','8','���Կ�','���Կ�','2.1.5','1561131945','10M','ios','','/upload/img/2019/05/27/5ceb84d52e3b0.png','<div>
	���Կ�������³���һ��ƻ������������ܵ���������û���׷�����׷׼��룬������Ƭ��ʱ�䣬���ָ������Ӧ�ã�ֻҪ3�����������飬���ܻ��һ�����潱������������׬Ǯ����ɢ��ʱ����Ի��������档</div>
<div>
	&nbsp;</div>
<div>
	���Կ���һ��ʹ�������ǳ�����򵥵�ƻ������������������ܹ��ܺõİ����û���ȥ׬Ǯ��<span style="color:#ff0000;">ע����һԪ������һԪ����10Ԫ��΢�����֣���Ǯ���������</span>��</div>
','','','���Կ�','1561131945','10','10','1','admin','122','1003','0','0','0','0','','���Կ�����_���Կ�app���� ���Կ��ֻ�׬Ǯ����������?','���Կ�,���Կ�app����','���Կ�������³���һ��ƻ������������ܵ���������û���׷�����׷׼��룬������Ƭ��ʱ�䣬���ָ������Ӧ�ã�ֻҪ3�����������飬���ܻ��һ�����潱������������׬Ǯ����ɢ��ʱ����Ի��������档
'),
('32','8','�ޱ���','�ޱ���','2.3.1','1561131967','11M','ios','','/upload/img/2019/05/27/5cebc88295609.jpg','<div>
	�ޱ���һ��רҵ��ƻ���ֻ�����APP׬Ǯƽ̨�������Ϻ������Ƽ����޹�˾���¡������򵥣��û�ֻ��ͨ�����ؾޱ����APP��ѡ������APP�������������ʾ���Ӧ�ð�װ���������ɻ��Ӷ�����棬�������浥��1Ԫ����10Ԫ���������֡�ͬʱ�����������ɻ�ú��������������������ɡ�</div>
<div>
	&nbsp;</div>
<div>
	�ޱ���ȫ�¸İ棬�Ƚϸ�����<span style="color:#ff0000;">�����࣬ÿ������1Ԫ���ۣ�10Ԫ��������</span>���ޱ�������רҵ��ƻ���ֻ�Ӧ��׬Ǯƽ̨��ÿ���������</div>
','','','�ޱ���','1561131967','10','10','1','admin','1331','12226','0','0','0','0','','�ޱ�������_�ޱ���app����_�ޱ����ֻ�����׬Ǯ�������?','�ޱ���,�ޱ����ֻ�����׬Ǯ�������','�ޱ���һ��רҵ��ƻ���ֻ�����APP׬Ǯƽ̨�������Ϻ������Ƽ����޹�˾���¡������򵥣��û�ֻ��ͨ�����ؾޱ����APP��ѡ������APP�������������ʾ���Ӧ�ð�װ���������ɻ��Ӷ�����棬�������浥��1Ԫ����10Ԫ���������֡�ͬʱ�����������ɻ�ú��������������������ɡ�'),
('33','8','�ں����','�ں����','2.1.0','1561131986','3M','ios','','/upload/img/2019/05/27/5cebd1da99e88.png','<div>
	�ں������һ��ƻ���ֻ�����Ӧ��׬Ǯƽ̨��ÿ�춯����ָ������Ϳ���׬�㻨Ǯ�����û�ע��ϵͳ����2Ԫ�ֽ������������ظ���һ��׬Ǯ�ɡ��������������״Σ��������ܹ����ַ��Ӹ㶨������׬Ǯ����Ͷ�룬ÿ�մ��������������ߣ���������󼴿ɻ�ý���������������أ���������ָ��ÿ���׬�㻨Ǯ��</div>
<div>
	&nbsp;</div>
<div>
	�ں����APP��ƻ���ֻ���ְ��Ǯ�����<span style="color:#ff0000;">����ܶ࣬ÿ������1-3Ԫ</span>��������񼴿ɽ��㣬˲�䵽�ˣ�����������׬Ǯ��У�����࣬����ḻ������û�����ں�������<span style="color:#ff0000;">20Ԫ������</span>��΢�š�֧������������24Сʱ����</div>
','','','�ں����','1561131986','10','10','1','admin','232','3125','0','0','0','0','','�ں��������_�ں����app����_�ں��������׬Ǯ���Է���','�ں����,�ں����app����','�ں������һ��ƻ���ֻ�����Ӧ��׬Ǯƽ̨��ÿ�춯����ָ������Ϳ���׬�㻨Ǯ�����û�ע��ϵͳ����2Ԫ�ֽ������������ظ���һ��׬Ǯ�ɡ��������������״Σ��������ܹ����ַ��Ӹ㶨������׬Ǯ����Ͷ�룬ÿ�մ��������������ߣ���������󼴿ɻ�ý���������������أ���������ָ��ÿ���׬�㻨Ǯ��'),
('34','8','�۷�����','�۷�����','3.2.5','1558960936','5M','ios','','/upload/img/2019/05/27/5cebda33eab7b.png','<div>
	�۷�������ʲô����һ�����������ֻ���ͬʱ����׬Ǯ��AppӦ�����,����ֱ��ͨ��΢��/֧�������֡�ֻҪ����3���ӣ����ܻ��һ�����������ڼ����������׬Ǯ��������Ƭ��ʱ�䣬����������Ӧ��׬Ǯ��ÿ������������£�������ࡣ</div>
<div>
	&nbsp;</div>
<div>
	�۷�����app������������Ȥ���Ƽ�Ӧ�ã�����׬Ӷ��<span style="color:#ff0000;">������Ҫ�״Σ����浥��0.8Ԫ��10Ԫ����΢��/֧����</span>������������޽���20Ԫ��������Ƭ��ʱ�䣬���ָ������Ӧ�ã�׬Ǯ����,���������!</div>
','','','�۷�����','1558960902','10','10','1','admin','212','12335','0','0','0','0','','�۷���������_�۷�����app����_��ô���۷��������׬�㷢Ǯ','�۷�����,���׬�㷢Ǯ','�۷�������ʲô����һ�����������ֻ���ͬʱ����׬Ǯ��AppӦ�����,����ֱ��ͨ��΢��/֧�������֡�ֻҪ����3���ӣ����ܻ��һ�����������ڼ����������׬Ǯ��������Ƭ��ʱ�䣬����������Ӧ��׬Ǯ��ÿ������������£�������ࡣ'),
('35','8','������׬','������׬','2.0.3','1561132016','4M','ios','','/upload/img/2019/05/28/5cecf40a0f7a8.jpg','<div>
	������׬��һ�����ֻ�����app����׬Ǯ��Ӧ��ƽ̨��������׬Ϊ���ṩ��������Ӧ�ã�����Ӧ�û�����ȡ�����ֽ�����������ߵ����Ѽ����Ϊ���ͽ�ܣ�ͽ��ÿ����һ�������ʦ�����ܵõ�һ���ֽ�������ʱ���֣����ٵ��ˣ���������������ܱ�ݵķ��񣬻�Ϊ���ṩ�ֻ�����ʵʱ�һ����񣬸Ͽ����������׬~</div>
<div>
	&nbsp;</div>
<div>
	������׬app��һ��������棬������ͣ����ָ�����׬Ǯƽ̨��ÿ�춼��׬��Ǯ���ڹ涨��ʱ�����������APP���񣬿��ٻ�ȡ���棬׬�㻨Ǯ������������׬��<span style="color:#ff0000;">ע����1Ԫ</span>��ÿ�����Ӷ������<span style="color:#ff0000;">����0.8~1.5Ԫ</span>��<span style="color:#ff0000;">��10Ԫ����</span>��֧������ÿ��16�������������</div>
','','','������׬','1561132016','10','10','1','admin','212','1003','0','0','0','0','','������׬����_������׬app����_������׬�ֻ�����������,��ô��?','������׬,������׬app����','������׬��һ�����ֻ�����app����׬Ǯ��Ӧ��ƽ̨��������׬Ϊ���ṩ��������Ӧ�ã�����Ӧ�û�����ȡ�����ֽ�����������ߵ����Ѽ����Ϊ���ͽ�ܣ�ͽ��ÿ����һ�������ʦ�����ܵõ�һ���ֽ�������ʱ���֣����ٵ��ˣ���������������ܱ�ݵķ��񣬻�Ϊ���ṩ�ֻ�����ʵʱ�һ����񣬸Ͽ����������׬~'),
('36','15','�Ѻ���Ѷ','�Ѻ���Ѷ','5.2.1','1560169992','10M','anroid|ios','','/upload/img/2019/05/28/5ced2cbaa593b.png','�Ѻ�������Ѷ��APP��Ŀǰ��õ��ֻ��Ķ�׬ǮApp���Ѻ�Ӧ��û���˲�֪���ɣ��ǻ�������ͷ�Ѻ������µ�һ���г����������������ν���������ó���������ֻҪ�����Ѻ�������Ѷ��APP����ô�ӽ�����Ϳ����Ķ�����׬Ǯ��,�����Ķ����¾����ˣ�������׬�ĸ��ࡣ�������п�����׬Ǯ�����׬Ǯ����һ������������Ҷ������ƽ̨������������Լ��Ķ�׬Ǯ�������ƹ�������Ķ�����׬Ǯ��������Ҫ��ֵģ������ȥ����ᷢ���Լ�ÿ��ͨ���Ѻ�����׬��Ǯ��Խ��Խ�࣬����֮ǰһ��10Ԫ��20Ԫ�������Ѿ�ÿ��50Ԫ-60Ԫ�ˣ����Լ�־���ʤ������־��ǽ�Ǯ��<br />
<br />
<div>
	��������</div>
<div>
	���Ķ���Ѷ�������Ķ���Ѷ��ۿ���Ƶ�ɻ��ÿƪ10���ҵĽ�����Ϊ�˷�ֹ����ˢ���ң�����ÿ���Ķ������ú��ң�����һ��Ҫ���濴Ŷ��</div>
<div>
	���������¡��ɹ�������Ѷ����Ƶ�����¸����ѣ���������������ٱ��鿴��һ�κ�Ϳ��Ի��10���ҵĽ�����ͬһ���ݶ�η����ظ�������ÿ����ཱ��5�Ρ�</div>
<div>
	��ɹ���롿������������ѣ��������Ѳ鿴�󼴿ɻ��10���ҵĽ�����ÿ��ֻ���״���Ч������ܻ�ú��ҡ�</div>
<div>
	��������ѡ�ÿ����һ�����ѳ�Ϊͽ�ܣ��������3Ԫ�ֽ�������7�Σ���ͽ�ܵ�¼App����������״��ֽ������˺�ͽ��ÿ���1���Ķ����������õ�20���ң��ۼ�60���Ҽ��ɻ��һ���ֽ�����ÿ����1�Σ���</div>
','','','�Ѻ���Ѷ','1560169992','10','10','1','admin','123','12339','0','0','0','0','','�Ѻ���Ѷ����_�Ѻ���Ѷapp����_��ô���ֻ��Ѻ���Ѷ׬�㷢Ǯ?','�Ѻ���Ѷ,�Ķ�����׬Ǯ','�Ѻ�������Ѷ��APP��Ŀǰ��õ��ֻ��Ķ�׬ǮApp���Ѻ�Ӧ��û���˲�֪���ɣ��ǻ�������ͷ�Ѻ������µ�һ���г����������������ν���������ó���������ֻҪ�����Ѻ�������Ѷ��APP����ô�ӽ�����Ϳ����Ķ�����׬Ǯ��,�����Ķ����¾����ˣ�������׬�ĸ��ࡣ�������п�����׬Ǯ�����׬Ǯ����һ������������Ҷ������ƽ̨������������Լ��Ķ�׬Ǯ�������ƹ�������Ķ�����׬Ǯ��������Ҫ��ֵģ������ȥ����ᷢ���Լ�ÿ��ͨ���Ѻ�����׬��Ǯ��Խ��Խ�࣬����֮ǰһ��10Ԫ��20Ԫ�������Ѿ�ÿ��50Ԫ-60Ԫ�ˣ����Լ�־���ʤ������־��ǽ�Ǯ��'),
('37','21','ţ��','ţ��','2.3.1','1560169265','5M','Android|IOS','','/upload/img/2019/06/09/5cfc69087174c.png','<span style="font-family: ����; font-size: 17px; letter-spacing: 0px; text-align: justify; color: rgb(255, 0, 0);">ţ�˰�æ��ѡţ�����Ƴ��»���Ƚϸ���</span><span style="color: rgb(42, 42, 42); font-family: ����; font-size: 17px; text-align: justify;">����������׬�Ƽ����޹�˾���µ�һ���ֻ���������׬Ǯƽ̨��Ϊ�̼��ṩ��Ŀ�ƹ�����ַ���������Ϊ�û��ṩ�ͽ������ְ��׬Ǯ��ƽ̨��</span><span style="font-family: ����; font-size: 17px; letter-spacing: 0px; text-align: justify; color: rgb(255, 0, 0);">�����ͣ���������ְ׬Ǯ��ƽ̨</span><span style="color: rgb(42, 42, 42); font-family: ����; font-size: 17px; text-align: justify;">������������׬�ͽ𣬷����񡢵����ʾ�ȵȡ������������ܶ࣬��ʽ������</span><span style="font-family: ����; font-size: 17px; text-align: justify; text-decoration-line: underline; color: rgb(192, 0, 0);">����򵥵Ĺ�ע΢�Ź��ںţ�΢�ŵ��ޣ�������Ȧ����עС����ȵ�</span><span style="color: rgb(42, 42, 42); font-family: ����; font-size: 17px; text-align: justify;">�����ӵ���ͶƱ��ע�ᡢ���ذ�װ��ʵ���󿨵�����,�������ֵ���ë���鼸ʮ�鲻�ȣ�ѡ���Լ����������񼴿ɡ�ֻҪ�����󶼿�����ƽ̨�﷢������������ʱ��ƽ̨����������������ͣ���������ĸ��Ӷȷ��࣬�л����ĵ���Ҫ�����񷢲���ʱ�򣬱����Ȱ�Ӷ���ֵ��ƽ̨������ƽ̨��ܣ�</span><span style="font-family: ����; font-size: 17px; letter-spacing: 0px; text-align: justify; color: rgb(255, 0, 0);">��֤��������˿϶����õ��ͽ�</span><span style="color: rgb(42, 42, 42); font-family: ����; font-size: 17px; text-align: justify;">��ע�����أ�ţ��APP������������񼴿���ȡ</span><span style="font-family: ����; font-size: 17px; letter-spacing: 0px; text-align: justify; color: rgb(255, 0, 0);">���˽���6Ԫ���ң�1Ԫ�����뵽�ˣ�ֱ�ӵ�΢��Ǯ���С�</span><span style="font-family: ����; font-size: 17px; text-align: justify; text-decoration-line: underline; color: rgb(255, 0, 0);">ţ��������׬Ǯ����ĺ���֮�㣬��Ȼ�������ص������������</span><span style="color: rgb(42, 42, 42); font-family: ����; font-size: 17px; text-align: justify;">��������Ϊ�����Ƿǳ��򵥵�����������Ȼ���кܶ�������������Ҳ��Ȼ���������������</span>','','','ţ��','1560169265','10','10','1','admin','1000','1008','0','0','0','0','','ţ������_ţ��app����_ţ��������׬Ǯ���ֹ���������6Ԫ����','ţ��,������׬Ǯ,����ƽ̨','ţ�˰�æ��ѡţ�ԭ���ͽ𱦺��Ͷ౦������Ƴ��»���Ƚϸ�������������׬�Ƽ����޹�˾���µ�һ���ֻ���������׬Ǯƽ̨��Ϊ�̼��ṩ��Ŀ�ƹ�����ַ���������Ϊ�û��ṩ�ͽ������ְ��׬Ǯ��ƽ̨��ע�����أ�ţ��APP������������񼴿���ȡ���˽���6Ԫ���ң�1Ԫ�����뵽�ˣ�����΢�ź��������Ҫ���֣�ֱ�ӵ�΢��Ǯ����ţ��������׬Ǯ����ĺ���֮�㣬��Ȼ�������ص��������������������Ϊ�����Ƿǳ��򵥵�����������Ȼ���кܶ�������������Ҳ��Ȼ����������������������һ����̤�������С׬�ͣ���ô�������������������׬Ǯ������ע�������Ϳ���׬2��10Ԫ��΢�Ź�עһ����׬0.5Ԫ���ҡ�������Ѿ���λ�����׬����˾������ô��Ϳ����������������࣬�����и������10Ԫ����ô��Ϳ��������淢������׬Ǯ��һ�����񷢲�8Ԫ��ȥ�����Լ�׬2Ԫ�Ĳ�ۣ�ÿ�������100�������������200�����档'),
('38','17','С��׬Ǯ','С��׬Ǯ','1.2.5','1561132060','14M','Android','','/upload/img/2019/06/09/5cfc779442d82.png','<div>
	С��׬Ǯ�ṩ����ҷḻ���������ͺ���Ȥ��׬Ǯ��ʽ���ô��ÿ��׬���㻨Ǯ��С��׬Ǯ��Ҫ����������Ϊ��������������������Ժ󣬲�Ҫ�����������ȵ��ǩ�������Ȼ������������Ϊ�������������������Ժ󣬻����ж����1Ԫ��������ȡ�������Ժ󣬾Ͱ�������Ҫ��ȥ�����񣬻����Ͼ�������app��Ȼ������һ�ᣬҲ�е���Ҫע�ᣬ����о��Ƚ��鷳���߸��ӵģ����Է�������Ȼ�����½�ȡ�Ϳ����ˡ�������������Ժ�Ȼ�����������΢�ź�����ͻ���ʾǩ���ɹ�����ʱ�򷵻�ǩ��ҳ����ǩ����Ȼ��΢����ȡǩ���ĺ������ʼ��һԪ�࣬ǩ����ʱ��Խ�࣬����Ҳ��Խ�ࡣ</div>
<div>
	&nbsp;</div>
<div>
	С��׬Ǯ��һ�����ֻ��������ְ׬��Ǯ��APP���û�����ͨ������Ӧ�û���ֽ������ɺ���С�ĿƼ����޹�˾�������������׬��С���Ļ�����ô����С��׬Ǯ������ÿ��Ϊ���ṩ�˴��������������������Ի�ö�Ӧ�ĳ��ͣ����Ժܿ�İ�Ǯ�ᵽ΢��Ǯ����ǳ��ı���������ʲô�أ��Ͻ������ذɣ�</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	��׬Ǯ�ص㡿</div>
<div>
	1���ڶ�����ÿ�ո�������;</div>
<div>
	2�����񵥼�0.5Ԫ���ң�ÿ������ḻ����׬����ͣ;</div>
<div>
	3��С��׬Ǯ����һ�¿�ʼ׬Ǯ��ÿ����ȡ��ͬ���񣬾�ϲ����;</div>
<div>
	4��������ѿ�һ��׬Ǯ������Խ��׬��Խ��Ŷ��</div>
','','','С��׬Ǯ','1561132060','10','10','1','admin','1000','1010','2','0','0','0','','С��׬Ǯ����_С��׬Ǯapp����_С��׬Ǯ�������,���׬Ǯ?','С��׬Ǯ,С��׬Ǯapp����','С��׬Ǯ��һ�����ֻ��������ְ׬��Ǯ��APP���û�����ͨ������Ӧ�û���ֽ������ɺ���С�ĿƼ����޹�˾�������������׬��С���Ļ�����ô����С��׬Ǯ������ÿ��Ϊ���ṩ�˴��������������������Ի�ö�Ӧ�ĳ��ͣ����Ժܿ�İ�Ǯ�ᵽ΢��Ǯ����ǳ��ı���������ʲô�أ��Ͻ������ذɣ�'),
('39','17','��ӯ��Android��','iMoney��ӯ��Android��','2.3.6','1561132078','4M','Android','','/upload/img/2019/06/09/5cfc80f618427.png','<div>
	iMoney��ӯ��Android�汾��������Ƴ����ģ������������棬��Ҫ��ƻ���ֻ�Ϊ������Ϊƻ���ֻ�������۸�ߣ��������ڲ���ϵͳ�����ģ������������������ʹ��ƻ���ֻ�����Ȼ�����ڰ�׿�ֻ�����Ҳ��һЩ��������ģ�����׬Ǯ��׿ƽ̨�Ͳ��࣬iMoney��ӯ��Android������ҵ�����ķǳ�����ģ�С�࿴���£�����0.3Ԫ���ң�ÿ������������ֱ���ڱ�ҳ�����ؼ��ɡ�</div>
<div>
	&nbsp;</div>
<div>
	iMoney��ӯ��Android�棬����app׬Ǯ���ֻ�׬Ǯ���㡣���Ƴ���ƽ̨���Ǻܸ����������������񡢿�׬���񡢸߶�������Ϸ����ÿ��ǩ������Ӯ�ֽ����������������һ��iMoney�����񣬿������������뱩�ǣ�����ƽ̨��ɵ��������⣬ͽ��ƽʱ���������ͽ��Ҳ��Ϊ�����������Ľ�Ǯ���档</div>
','','','iMoney,��ӯ��,Android��','1561132078','10','10','1','admin','1000','1007','1','0','0','0','','��ӯ��Android������_iMoney��׿��app����_����Android�ֻ�����Appƽ̨����','iMoney,��ӯ��Android��','iMoney��ӯ��Android�棬����app׬Ǯ���ֻ�׬Ǯ���㡣���Ƴ���ƽ̨���Ǻܸ����������������񡢿�׬���񡢸߶�������Ϸ����ÿ��ǩ������Ӯ�ֽ����������������һ��iMoney�����񣬿������������뱩�ǣ�����ƽ̨��ɵ��������⣬ͽ��ƽʱ���������ͽ��Ҳ��Ϊ�����������Ľ�Ǯ���档'),
('40','15','����ͷ��','����ͷ��','2.7','1560168090','12.6','Android','','/upload/img/2019/06/09/5cfcf85753faa.png','<div>
	����ͷ���Ƕ������Ƴ���һ��������Ѷ�Ķ��ۺϵ��ƶ�����ý���Ʒ���������ֻ��Ķ�����ٍǮģʽ����ͬ��app�о��������󣬸���ҲԽ��Խ�á�ǩ��������ǩ����������ͽԽ�࣬����Խ�ࡣ��д<span style="color:#ff0000;">������ 057609644</span>����ȡ�ֽ�</div>
<div>
	&nbsp;</div>
<div>
	���Ǵ������û�µ�ʱ��ϲ���������ţ����ڿɺ��ˣ��߿����ű�׬Ǯ������Ȥͷ�����Ѻ���Ѷ�����࿴��ȣ�Ҳ��һ����š���Ѷ����Ƶ�����ۡ�ǩ����׬�㻨Ǯ�������Ķ����������ͷ�������ȵ�ͷ�����š���ᡢ���ڡ����ʡ����֡��Ƽ����ƾ������������¡������Ȳ�ͬ������ŷḻ������������������������ϲ�ã�Ϊ���Ƽ���ϲ����������Ѷ���ݣ��������������Խ��Խ���㣡</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	�������ɫ��</div>
<div>
	&nbsp;�� ����������վ</div>
<div>
	&nbsp;�� �û��������򼶵������Ķ��ͻ���</div>
<div>
	&nbsp;�� �����������Ķ���ͬʱ�����������Ķ��н����߿���׬</div>
<div>
	&nbsp;�� ʵʱ����������Ѷ������ȫ�������ʵ���Ѷ���㲻������֪������</div>
<div>
	&nbsp;�� ��Ƕȷ������������Ȥ��</div>
','','','����ͷ��','1560168090','10','10','1','admin','1000','1007','0','0','0','0','','����ͷ������_����ͷ��app����_�ö���ͷ����������Ѷ��ͬʱ����׬�㷢Ǯ','����ͷ��,�Ķ�����׬Ǯ.��������Ѷ׬Ǯ','���Ǵ������û�µ�ʱ��ϲ���������ţ����ڿɺ��ˣ��߿����ű�׬Ǯ������Ȥͷ�����Ѻ���Ѷ�����࿴��ȣ�Ҳ��һ����š���Ѷ����Ƶ�����ۡ�ǩ����׬�㻨Ǯ�������Ķ����������ͷ�������ȵ�ͷ�����š���ᡢ���ڡ����ʡ����֡��Ƽ����ƾ������������¡������Ȳ�ͬ������ŷḻ������������������������ϲ�ã�Ϊ���Ƽ���ϲ����������Ѷ���ݣ��������������Խ��Խ���㣡'),
('41','15','������','������','2.7.0','1561132107','2M','Android','','/upload/img/2019/06/10/5cfe1f2dc2ff3.png','<div>
	�����ţ������ţ�׬�㻨���߿���Ȥ�����ű�׬Ǯ�� ���û�ע����д������100775365��2Ԫ��1Ԫ�������֣��뵽������׬Ǯ - ֻ�迴���ţ��ֽ��������ˡ�����ʦͽ�����ֽ����������ޣ�׬�ĸ��� - ʦͽ�����ֽ����������ޡ����ַ��� - ֧�������֣��������б��ϡ������� - ��ѡ���ݣ�ʱ���ȵ�һ�����ա��һ��̳� - ʵ����Ʒ����ѳ齱�Żݶࡣ</div>
<div>
	&nbsp;</div>
<div>
	1.����������Ѷ�������Ƽ���˽�˶�������ȵ�ͷ�������ʱʱ�У���������</div>
<div>
	2.ʵʱ���ѣ�һ�����������������ݣ����ٵ��Ĵ���ȵ���Ѷ��</div>
<div>
	3.ʦͽ�����������ɹ�����һ�����ѣ�����2.5Ԫ��׬Ǯû�����ޣ���������������㿪����</div>
<div>
	4.���幦�ܣ������ŵ�ͬʱ������֪ͨ�������ˣ���׬��ֹ��</div>
<div>
	5.�ʻ����۽������Ż�õ����룬������ֻ��̳Ƕһ���������ѡ��</div>
','','','������','1561132107','10','10','1','admin','1000','1011','1','0','0','0','','����������_������app����_������ô�������ſ�����׬Ǯ','������,������׬Ǯ','�����ţ������ţ�׬�㻨���߿���Ȥ�����ű�׬Ǯ�� ���û�ע����д������100775365��2Ԫ��1Ԫ�������֣��뵽������׬Ǯ - ֻ�迴���ţ��ֽ��������ˡ�����ʦͽ�����ֽ����������ޣ�׬�ĸ��� - ʦͽ�����ֽ����������ޡ����ַ��� - ֧�������֣��������б��ϡ������� - ��ѡ���ݣ�ʱ���ȵ�һ�����ա��һ��̳� - ʵ����Ʒ����ѳ齱�Żݶࡣ'),
('42','8','�ǹ�è','�ǹ�è','2.2.0','1561182647','10M','IOS','','/upload/img/2019/06/22/5d0dc119ce226.png','<div>
	�ǹ�è��������������Ƭ��ʱ������ֻ���ְ׬Ǯ��AppӦ��������������������Ȥ��APP����׬Ǯ��һ�����á�ÿ�����綼�д���������£��ǹ�èappע�ἴ��1Ԫ�����ֻҪ3�����������飬���ܻ��һ�����潱���� ����һ�����ѻ����Ի�ȡ���⽱����������Ƭ��ʱ�䣬���ָ������Ӧ�û���׬Ǯ��</div>
<div>
	&nbsp;</div>
<div>
	�ǹ�è��һ��APP���������ƽ̨������Ӧ��׬�㻨Ǯ���������Ų�������Ƽ����޹�˾�̲��Կ�֮���Ƴ�����һ����������ƻ���ֻ�Ӧ�û���ֽ�����APP��ע����һԪ������1Ԫ���ң�10Ԫ���֣�����Ҫ���״Σ���ƽ̨�����񱩶��ƽ̨�������ڰ�ӯ����׬Ǯˬ���ɡ�</div>
<div>
	&nbsp;</div>
<div>
	��׬Ǯ���衿</div>
<div>
	�ٵ�һ�������ذ�װ����</div>
<div>
	�ڵڶ��������������</div>
<div>
	�۵���������������б�ʼ׬Ǯ</div>
<div>
	�ܵ��Ĳ����������ִ��</div>
<div>
	&nbsp;</div>
<div>
	��׬Ǯ�ص㡿</div>
<div>
	������ע����1Ԫ�����񵥼�1Ԫ��</div>
<div>
	���˻������10Ԫ���ֵ�΢��Ǯ����</div>
<div>
	���������ʱ��ÿ����������Ƚ϶ࡣ</div>
','','','�ǹ�è','1561182598','10','10','1','admin','10','1002','0','0','0','0','','�ǹ�è����_�ǹ�èapp����_�ǹ�è�����׬Ǯ��,������','�ǹ�è','�ǹ�è��һ��APP���������ƽ̨������Ӧ��׬�㻨Ǯ���������Ų�������Ƽ����޹�˾�̲��Կ�֮���Ƴ�����һ����������ƻ���ֻ�Ӧ�û���ֽ�����APP��ע����һԪ������1Ԫ���ң�10Ԫ���֣�����Ҫ���״Σ���ƽ̨�����񱩶��ƽ̨�������ڰ�ӯ����׬Ǯˬ���ɡ�'),
('43','8','�������','�������','5.1.0','1561183304','10M','IOS','','/upload/img/2019/06/22/5d0dc2334d233.png','<div>
	����������������ߵ�ƻ������ƽ̨���ǳ�����������APP����׬�ֽ�����ൽ����ƽ̨���������٣��ܺ�������������ѧ�������ϰ��壬ֻҪ�ܹ�������������Ӧ��׬Ǯ��5Ԫ�������֡�ÿ�����´���Ӧ�����������û�ֻ��Ҫ����Ӧ����������3���ӣ�������񷵻�ҳ�棬������ȡ�ֽ�������������ͨ��΢�ŷ�ʽ�������֣�������Ƭ��ʱ�䣬ÿ��׬��һ���緹Ǯ��</div>
<div>
	&nbsp;</div>
<div>
	�������app����Ͷһ��Ǯ������Ӧ�ã�������ָ����׬���㻨Ǯ��������ˣ���������ͨ��������ѳ�Ϊͽ��һ����׬Ǯ����������ڼҾ������龫�µ�Ӧ�û���׬�㻨Ǯ������������׬���죬���衢ѧ������ְ��ѡ��ʹ��ƻ���豸���������溣��Ӧ�ã�������ȡ�ֽ�����Խ��Խ��Ǯ��</div>
','','','�������','1561183272','10','10','1','admin','10','1002','0','0','0','0','','�����������_�������app����_��������ֻ�׬Ǯ����������,������','�������','�������app����Ͷһ��Ǯ������Ӧ�ã�������ָ����׬���㻨Ǯ��������ˣ���������ͨ��������ѳ�Ϊͽ��һ����׬Ǯ����������ڼҾ������龫�µ�Ӧ�û���׬�㻨Ǯ������������׬���죬���衢ѧ������ְ��ѡ��ʹ��ƻ���豸���������溣��Ӧ�ã�������ȡ�ֽ�����Խ��Խ��Ǯ��'),
('44','8','���ñ�','���ñ�','5.2.4','1561184592','12M','IOS','','/upload/img/2019/06/22/5d0dc84162dda.jpg','<div>
	���ñ���һ����ƻ���ֻ�����app����׬Ǯ���������ƽ̨�����ñ�Ϊ���ṩ��������Ӧ�ã����������ñ���׬��һ���㻨Ǯ�����û�������1Ԫ��10Ԫ�������֣����񵥼�1Ԫ������Ӧ�û�����ȡ�����ֽ������Ͽ�������ñ�~ʱʱ������Ӧ�ã��̶̿����ջ񣬴����ñ��������ɾ���׬���㻨Ǯ��</div>
<div>
	&nbsp;</div>
<div>
	���ñ�Ϊ���ṩ��������Ӧ�ã�����APP���أ���Ͷ�룬�����κα�������APP���漴�ɻ��1-3Ԫ�ֽ�������׵��ֻ�׬Ǯƽ̨����Ͷһ��Ǯ���������׬Ǯ���ȼ�����Ȥ��</div>
<div>
	��װ�������ߣ�Ӧ�ð�ȫ�ɿ���ֻҪ���������׬���һ����ͣ���ʱ���֣�һ�յ��ˡ�������������񣬾����ջ������������50%����ɣ�</div>
','','','���ñ�','1561184592','10','10','1','admin','1000','1009','1','0','0','0','','���ñ�����_���ñ�app����_��ô�����ñ�������׬�㷢Ǯ��','���ñ�','���ñ�Ϊ���ṩ��������Ӧ�ã�����APP���أ���Ͷ�룬�����κα�������APP���漴�ɻ��1-3Ԫ�ֽ�������׵��ֻ�׬Ǯƽ̨����Ͷһ��Ǯ���������׬Ǯ���ȼ�����Ȥ��
��װ�������ߣ�Ӧ�ð�ȫ�ɿ���ֻҪ���������׬���һ����ͣ���ʱ���֣�һ�յ��ˡ�������������񣬾����ջ������������50%����ɣ�'),
('45','8','��','��','10.3.6','1561267349','21M','IOS','','/upload/img/2019/06/23/5d0f0c913c705.png','<div>
	��������һ��ƻ���ֻ�����׬Ǯƽ̨���ۺ��˺����������������û�������ֲ�ͬ��app��Ʒ��ͬʱҲ�ܻ�ȡ��Ӧ�ı��꣬��appƻ�������񵥼۸ߣ���������ٷְٷ��֣�10Ԫ�����֣���app��������񵥼�0.8Ԫ����Ҫ�������������������app����ҳ�������񷢲�ʱ��Ԥ�棬��ҿ��Թ�ע�����⣬�󱦻���һЩ����������Ҫ�ֻ�ע���ͼ��ˣ�����1-2Ԫ������������࣬���ǿ��������ܲ���������</div>
<div>
	&nbsp;</div>
<div>
	������app����׬Ǯƽ̨���ϴ���ˣ��Ƚϸ����� ���۶���1&mdash;&mdash;2Ԫ�����������״����أ����۸ߣ���10Ԫ�������֣���������Ƚ϶�����������������Ǯ�����񣬶��������û��Ƿǳ������ģ�ֻҪ������ָͷ�������ɾͿ�׬ȡ�㻨Ǯ������Ȥ�Ŀ������ذɣ�</div>
<div>
	&nbsp;</div>
','','','��','1561267349','10','10','1','admin','1000','1004','0','0','0','0','','������_��app����_���ֻ�׬Ǯ����������?','��','������app����׬Ǯƽ̨���ϴ���ˣ��Ƚϸ����� ���۶���1����2Ԫ�����������״����أ����۸ߣ���10Ԫ�������֣���������Ƚ϶�����������������Ǯ�����񣬶��������û��Ƿǳ������ģ�ֻҪ������ָͷ�������ɾͿ�׬ȡ�㻨Ǯ������Ȥ�Ŀ������ذɣ�'),
('46','8','����׬','����׬','2.1.5','1566139495','10M','ƻ��IOS','','/upload/img/2019/06/23/5d0f0d8e4a440.png','<div>
	����׬,�Ǳ����ϰ�Ƽ��Ƽ����޹�˾�Ƴ����г�����APP����ƽ̨����������ѧ�����ϰ��壬���Ǳ��裬���ÿ����ʱ�仹��Wi-Fi�Ϳ�ͨ������׬App׬Ǯ����Ͷһ��Ǯ�������������׬Ǯ���ȼ�����Ȥ����װ�������ߣ�Ӧ�ð�ȫ�ɿ���ֻҪ���������׬��</div>
<div>
	ÿ����ָ��һ��������׬���֣�������ô���ԣ�</div>
<div>
	&nbsp;</div>
<div>
	����׬�ǹ�������ASO���������ַ����������û�ע�ᰲװ����׬����3Ԫ�ֽ����������Ҿ��͡�����1Ԫ��10Ԫ�����֡��г�����APP��ƽ̨�������������������������ֻ�ˢˢ��������ÿ���µĵ��㻨Ǯ�����ˡ�</div>
','','','����׬','1566139495','10','10','1','admin','1000','1003','2','0','0','0','','����׬����_����׬app����_����׬�ֻ�׬Ǯ�������ô��?','����׬','����׬�ǹ�������ASO���������ַ����������û�ע�ᰲװ����׬����3Ԫ�ֽ����������Ҿ��͡�����1Ԫ��10Ԫ�����֡��г�����APP��ƽ̨�������������������������ֻ�ˢˢ��������ÿ���µĵ��㻨Ǯ�����ˡ�'),
('47','8','ͷ������','ͷ������','3.6.1','1561267799','5M','ƻ��IOS','','/upload/img/2019/06/23/5d0f0e56199d1.png','<div>
	ͷ������APP��Ŀǰ��Ϊ���ĵ��ֻ�׬Ǯƽ̨��ӵ�зḻ��׬Ǯ�����������Ϻ��ʶ�����Ƽ����޹�˾���²�Ʒ��ּ��Ϊ����û��ṩ���ֶ�����iOS��Ӧ���Ƽ���֧��iPhone��ipad����һ��ţ������׬Ǯƽ̨�����ذ�װ��1Ԫ��������3���Ӿ����ջ�1Ԫ�ֽ����������߿ɵ�20Ԫ����������С��׬Ǯ�������ϸߡ�</div>
<div>
	&nbsp;</div>
<div>
	ͷ��������һ�������ƻ���ֻ�����App���׬Ǯ��ƽ̨����ƽ̨��������������ϵͳ�����ȶ���ͷ��������������Ƚ϶࣬����Ӧ�û���ֽ��ʵ�ｱ��������׬Ǯ��������������������ÿ��׬�㻨Ǯ�ɡ�ע�ἴ��1Ԫ��ƻ�����浥��0.8Ԫ���ϣ���10Ԫ������֧�������֣�1-2�������յ���</div>
','','','ͷ������','1561267799','10','10','1','admin','1000','1005','1','0','0','0','','ͷ����������_ͷ������app����_ͷ����������׬Ǯ���Է���','ͷ������,ͷ������app','ͷ��������һ�������ƻ���ֻ�����App���׬Ǯ��ƽ̨����ƽ̨��������������ϵͳ�����ȶ���ͷ��������������Ƚ϶࣬����Ӧ�û���ֽ��ʵ�ｱ��������׬Ǯ��������������������ÿ��׬�㻨Ǯ�ɡ�ע�ἴ��1Ԫ��ƻ�����浥��0.8Ԫ���ϣ���10Ԫ������֧�������֣�1-2�������յ���'),
('48','8','��׬','��׬','5.3.3','1561778229','12M','ƻ��IOS','','/upload/img/2019/06/29/5d16d803e6f96.jpg','<div>
	��׬������һ���ֻ�����Ӧ������App����׬Ǯ�������������ƻ���ֻ�����׬appΪ���ṩ��������Ӧ�ã�����Ӧ�û�����ȡ�����ֽ�����ƽ̨����ḻ���û�ֻ���ڶ�׬�����������鼸���Ӿ��ܵõ���Ӧ������Ӷ��</div>
<div>
	&nbsp;</div>
<div>
	��׬��IOSƽ̨����App׬Ǯ���ֻ�׬Ǯƽ̨���������������2.5Ԫ�����񵥼�0.8Ԫ����10Ԫ�𼴿����֡��û�ͨ����׬ȥ����Ӧ�ü��ɻ���ֽ�����������ͨ��������Ѽ��붶׬����÷��Ľ�������ɽ�����Ǯ���е��ֽ�����������֡�</div>
','','','��׬','1561778183','10','10','1','admin','1000','1002','1','0','0','0','','��׬����_��׬app����_��ô�ö�׬App�ֻ�׬Ǯ�����','��׬','��׬��IOSƽ̨����App׬Ǯ���ֻ�׬Ǯƽ̨���������������2.5Ԫ�����񵥼�0.8Ԫ����10Ԫ�𼴿����֡��û�ͨ����׬ȥ����Ӧ�ü��ɻ���ֽ�����������ͨ��������Ѽ��붶׬����÷��Ľ�������ɽ�����Ǯ���е��ֽ�����������֡�'),
('49','8','����С��','����С��','2.6.0','1561778461','5M','ƻ��IOS','','/upload/img/2019/06/29/5d16d8de3582b.png','<div>
	����С����һ��ƻ���ֻ�����Ӧ������App׬Ǯ���,Ҳ�����û�ֻ��ͨ��APPstore�������棬�û�ͨ����װӦ�����ָ��������Ϳ��Ի��׬��Ǯ��һ������1-3Ԫ���ȣ����غ��̨����3�������Ҿ����õ�����Ӷ��׬����Ӷ��֧��֧�������֣������ֿ�ݡ�����Ȥ��С����ǲ������������԰�!</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	����С������App׬Ǯƽ̨��ÿ����´�������׬Ǯ���񣬵���0.8-2Ԫ����10Ԫ���֣��п������񡢺�������ÿ�������Ӷ����1�D10Ԫ֮�䲻�ȣ��û�ֻ��Ҫ���Ӧ�ã�������ʾ���������Ϳ��Ի���ֽ��������Ͷ�á�</div>
','','','����С��','1561778434','10','10','1','admin','1000','1001','1','0','0','0','','����С������_����С��app����_����С��׬Ǯ��ļٵģ�','����С��','����С������App׬Ǯƽ̨��ÿ����´�������׬Ǯ���񣬵���0.8-2Ԫ����10Ԫ���֣��п������񡢺�������ÿ�������Ӷ����1�D10Ԫ֮�䲻�ȣ��û�ֻ��Ҫ���Ӧ�ã�������ʾ���������Ϳ��Ի���ֽ��������Ͷ�á�'),
('50','8','Ǯ��ʦ','Ǯ��ʦ','5.1.2','1561778542','23M','ƻ��IOS','','/upload/img/2019/06/29/5d16d938684dd.png','<div>
	Ǯ��ʦAPP��һ���ǳ�������ֻ�app����׬Ǯƽ̨����ͨ��Ǯ��ʦ����APP�������飬���ɻ����Ӧ�ֽ�����ע�ἴ��2Ԫ�����Ƹ���������0.5Ԫ����2.5Ԫ��10Ԫ�Ϳ����֡�����Ǯ��ʦ֮�ã�����װ�ƴ���ɣ�������Ǯ�����!</div>
<div>
	&nbsp;</div>
<div>
	Ǯ��ʦAPP��һ������App׬Ǯƽֻ̨Ҫ3��������Ǯ��ʦ�����ܻ�ȡһ���ֽ�����������Ƭ��ʱ�䣬Ǯ��ʦ�������ɸ㶨����ѡ�ÿ������4�����Ҵ�����������,ƽʱ����ע������ƽ̨Խ��׬��Խ��!�յ���ͽ��Խ�࣬Ǯ��ʦ�Ľ���Ҳ��Խ�ࡣ��������Ǯ��ʦapp����ʹ�ð�</div>
','','','Ǯ��ʦ','1561778516','10','10','1','admin','1000','1002','2','0','0','0','','Ǯ��ʦ����_Ǯ��ʦapp��ô����_Ǯ��ʦ������ô����','Ǯ��ʦ','Ǯ��ʦAPP��һ������App׬Ǯƽֻ̨Ҫ3��������Ǯ��ʦ�����ܻ�ȡһ���ֽ�����������Ƭ��ʱ�䣬Ǯ��ʦ�������ɸ㶨����ѡ�ÿ������4�����Ҵ�����������,ƽʱ����ע������ƽ̨Խ��׬��Խ��!�յ���ͽ��Խ�࣬Ǯ��ʦ�Ľ���Ҳ��Խ�ࡣ��������Ǯ��ʦapp����ʹ�ð�'),
('51','8','������','������','3.2.0','1562396312','10M','ƻ��IOS','','/upload/img/2019/07/06/5d2045d4ee793.png','<div>
	��������һ��ƻ���ֻ�����App׬Ǯ�����ƽ̨�������򵥣��淨���������ػ��������־����ֽ���1Ԫ�����뻨��������App�����������׬Ǯ������1Ԫ���ң�10Ԫ���֡�&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	��������һ��ֻҪ��ɼ�ְ����Ϳ�������׬Ǯ���������ְ����ǳ��ķḻ������һ������ƻ��APP����׬Ǯƽ̨������������Ӧ�ü���׬Ǯ���򵥼������������������ȡ���������˶���������ʹ�ã���ʱ���߼�ְ׬Ǯ��</div>
<div>
	ÿ��ʹ���Լ��Ŀ���ʱ�䣬�������Ϳ�������ʹ���ֻ�׬Ǯ��׬ȡ������㻨Ǯ��</div>
','','','������','1562396140','10','10','1','admin','1000','1005','1','0','0','0','','','������','��������һ��ֻҪ��ɼ�ְ����Ϳ�������׬Ǯ���������ְ����ǳ��ķḻ������һ������ƻ��APP����׬Ǯƽ̨������������Ӧ�ü���׬Ǯ���򵥼������������������ȡ���������˶���������ʹ�ã���ʱ���߼�ְ׬Ǯ��
ÿ��ʹ���Լ��Ŀ���ʱ�䣬�������Ϳ�������ʹ���ֻ�׬Ǯ��׬ȡ������㻨Ǯ��'),
('52','8','��ʨ����','��ʨ����','5.4.7','1562397208','11M','ƻ��IOS','','/upload/img/2019/07/06/5d2047bdd0f89.jpg','<div>
	��ʨ�����Ǳ�����Ϊ�����Ƽ����޹�˾����Ӧ������ƽ̨����һ��ƻ���ֻ�����App׬Ǯ��ƽ̨������ƻ���ֻ�APP�������׬Ǯ��ע����1Ԫ�ֽ�������������һ��Ӧ�õ���0.8Ԫ��6Ԫ�������֣�ÿ��������д�����ʱ�������ߡ�</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	��ʨ���棬һ�����������ַ�����Ӧ��ƽ̨��1�����棬2�˸�������ʱ���ֻ���������ƻ���ֻ������ʨ����app����׬�㻨Ǯ����ʨ����app��������Ӧ�ã���ȡ�ֽ���������׬Ǯ��ͽģʽ���Ͷ�ã���6Ԫ����ѡ�����ֵ�֧������΢��Ǯ�������и߶�������ʨ����С���򡢰쿨׬Ǯ�ȸ��๦�ܵ��������򣬿�������һ��׬Ǯ�ɣ�</div>
','','','��ʨ����','1562397208','10','10','1','admin','1000','1003','1','0','0','0','','Ǯ¹��������_Ǯ¹����app���� _Ǯ¹�����ֻ�׬Ǯ����������,��ô��? ','��ʨ����','��ʨ���棬һ�����������ַ�����Ӧ��ƽ̨��1�����棬2�˸�������ʱ���ֻ���������ƻ���ֻ������ʨ����app����׬�㻨Ǯ����ʨ����app��������Ӧ�ã���ȡ�ֽ���������׬Ǯ��ͽģʽ���Ͷ�ã���6Ԫ����ѡ�����ֵ�֧������΢��Ǯ�������и߶�������ʨ����С���򡢰쿨׬Ǯ�ȸ��๦�ܵ��������򣬿�������һ��׬Ǯ�ɣ�'),
('53','8','����Ǯ_����Ǯ','����Ǯ_����Ǯ','2.1.0','1562396933','13M','ƻ��IOS','','/upload/img/2019/07/06/5d2047caab97b.png','<div>
	����Ǯ�ֽо���Ǯ����һ��ǳ������ƻ���ֻ�����App׬Ǯ���ƽ̨��ע����2Ԫ�����񵥼�1Ԫ����10Ԫ����΢��Ǯ����</div>
<div>
	&nbsp;</div>
<div>
	����Ǯ_����Ǯ��һ��ƻ���ֻ�����׬Ǯƽ̨�����ؾ���Ǯ_����Ǯ����Ӧ�þͿ��Ի���ֽ��������񵥼�1Ԫ��10Ԫ�������֣�ע�����2Ԫ���ǳ����ף����۸ߣ�����࣬��ƽ̨��Ҫ���������������Ȥ��APP����׬�㻨Ǯ���㻹����ԥʲô��? ��ʱ��ر����׬Ǯ,�Ͻ������</div>
','','','����Ǯ,����Ǯ','1562396619','10','10','1','admin','1000','1001','1','0','0','0','','����Ǯ����_����Ǯapp����_��ô�þ���Ǯ_����Ǯ���׬�㷢Ǯ','����Ǯ,����Ǯ','����Ǯ_����Ǯ��һ��ƻ���ֻ�����׬Ǯƽ̨�����ؾ���Ǯ_����Ǯ����Ӧ�þͿ��Ի���ֽ��������񵥼�1Ԫ��10Ԫ�������֣�ע�����2Ԫ���ǳ����ף����۸ߣ�����࣬��ƽ̨��Ҫ���������������Ȥ��APP����׬�㻨Ǯ���㻹����ԥʲô��? ��ʱ��ر����׬Ǯ,�Ͻ������'),
('54','8','С��׬Ǯ','С��׬Ǯ','8.3.1','1562396963','16M','ƻ��IOS','','/upload/img/2019/07/06/5d2047d2e2ff7.jpg','<div>
	С��׬Ǯ��ȫ�����ߵ��ֻ�׬Ǯ���ƽ̨����װ����1Ԫ������ÿ��Ӧ�ø�1-2Ԫ���ҵ��ֽ�����10Ԫ�Ϳ���΢�����֡�</div>
<div>
	&nbsp;</div>
<div>
	С��׬Ǯ��һ���ֻ�����Ӧ��׬Ǯƽ̨������������������οƼ����޹�˾�Ƴ��ġ�С��׬Ǯͨ��������Ϸ�������Ʒ������ע�������׬ȡ�ֽ������������࣬���۸ߣ����ֿ졣���غ�����ֻ���΢�ţ������ʺŶ�ʧ�����������׬�ѣ���ô����ҳ����ʾ�������������Ϳ��Ի����ĵ�һͰ��</div>
','','','С��׬Ǯ','1562396628','10','10','1','admin','1000','1001','1','0','0','0','','','С��׬Ǯ','С��׬Ǯ��һ���ֻ�����Ӧ��׬Ǯƽ̨������������������οƼ����޹�˾�Ƴ��ġ�С��׬Ǯͨ��������Ϸ�������Ʒ������ע�������׬ȡ�ֽ������������࣬���۸ߣ����ֿ졣���غ�����ֻ���΢�ţ������ʺŶ�ʧ�����������׬�ѣ���ô����ҳ����ʾ�������������Ϳ��Ի����ĵ�һͰ��'),
('55','8','��è׬Ǯ','��è׬Ǯ','5.3.2','1562396994','21M','ƻ��IOS','','/upload/img/2019/07/06/5d2047ec09212.png','<div>
	��è׬Ǯ��һ���ֻ�����App��ְ׬���ƽ̨����������App����׬Ǯ�����Խ��׬��Խ�ࡣ���ڼ��룬���û�����2Ԫ��10Ԫ���֡�</div>
<div>
	&nbsp;</div>
<div>
	����Ӧ�þ���׬Ǯ��������è���棬������׬��������ѡ���������ֻ�������ָ����׬Ǯ����è׬Ǯ��ʱ��ض���׬���ϰ�Ҳ��׬�ڶ��ݹ��ʣ�����࣬����û��׬�����ż�������������׬�ֽ𣬽���򵥣�֧��΢�š�֧�������֣������ݡ�</div>
','','','��è׬Ǯ','1562396654','10','10','1','admin','1000','1002','1','0','0','0','','','��è׬Ǯ','����Ӧ�þ���׬Ǯ��������è���棬������׬��������ѡ���������ֻ�������ָ����׬Ǯ����è׬Ǯ��ʱ��ض���׬���ϰ�Ҳ��׬�ڶ��ݹ��ʣ�����࣬����û��׬�����ż�������������׬�ֽ𣬽���򵥣�֧��΢�š�֧�������֣������ݡ�'),
('56','8','Ǯ¹����','Ǯ¹����','3.2.0','1562397167','22M','ƻ��IOS','','/upload/img/2019/07/06/5d2047f7bbd16.png','<div>
	Ǯ¹������һ���ֻ�App����׬Ǯ�ļ�ְƽ̨����ͨ��Ǯ¹����APP�������飬���ɻ����Ӧ�ֽ�����ע��ͻ�����2.1Ԫ��ֻҪ��10Ԫ���ɶһ���֧������</div>
<div>
	&nbsp;</div>
<div>
	Ǯ¹���棬ͨ������Ǯ¹APP����Ӧ�����飬һ������1Ԫ����10Ԫ�������֣��������ء��������֡����쵽�ˣ������ܹ�����һЩ����׬ȡ������װ�ƴ���ɣ�������Ǯ����ڣ�</div>
','','','Ǯ¹����','1562397167','10','10','1','admin','1000','1004','1','0','0','0','','Ǯ¹��������_Ǯ¹����app���� _Ǯ¹�����ֻ�׬Ǯ����������,��ô��? ','Ǯ¹����','Ǯ¹���棬ͨ������Ǯ¹APP����Ӧ�����飬һ������1Ԫ����10Ԫ�������֣��������ء��������֡����쵽�ˣ������ܹ�����һЩ����׬ȡ������װ�ƴ���ɣ�������Ǯ����ڣ�');
DROP TABLE IF EXISTS  `appcms_cate_relation`;
CREATE TABLE `appcms_cate_relation` (
  `relation_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '��ϵID',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '����ID',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '���� 0=Ӧ�� 1=��Ѷ',
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '��ѶID��Ӧ��ID',
  `id_down` int(11) NOT NULL DEFAULT '0' COMMENT '������',
  `id_order` int(11) NOT NULL DEFAULT '0' COMMENT '����',
  `id_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '����ʱ��',
  `id_create_time` int(11) NOT NULL DEFAULT '0' COMMENT '����ʱ��',
  `id_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '������',
  PRIMARY KEY (`relation_id`),
  KEY `cate_id` (`cate_id`),
  KEY `id_update_time` (`cate_id`,`id_update_time`),
  KEY `id_down` (`cate_id`,`id_down`),
  KEY `id_order` (`cate_id`,`id_order`),
  KEY `order_id_update` (`cate_id`,`id_order`,`id_update_time`),
  KEY `order_id_down` (`cate_id`,`id_order`,`id_down`),
  KEY `id_visitors` (`cate_id`,`id_visitors`),
  KEY `id_create_time` (`cate_id`,`id_create_time`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='�����ϵ��';

insert into `appcms_cate_relation`(`relation_id`,`cate_id`,`type`,`id`,`id_down`,`id_order`,`id_update_time`,`id_create_time`,`id_visitors`) values
('56','8','0','27','1','0','1561131859','1558923333','1005'),
('55','1','0','27','1','0','1561131859','1558923333','1005'),
('58','8','0','28','0','0','1558948597','1558925494','10004'),
('57','1','0','28','0','0','1558948597','1558925494','10004'),
('53','1','0','26','1','0','1558948626','1558881562','1011'),
('52','8','0','25','1','0','1558948658','1558880081','1012'),
('60','8','0','29','1','0','1561131908','1558926892','21228'),
('59','1','0','29','1','0','1561131908','1558926892','21228'),
('43','21','0','21','4','0','1558787962','1555841261','10014'),
('42','2','0','21','4','0','1558787962','1555841261','10014'),
('41','8','0','20','10','0','1559184464','1555840324','10153'),
('40','1','0','20','10','0','1559184464','1555840324','10153'),
('62','8','0','30','0','0','1561131929','1558937543','2238'),
('61','1','0','30','0','0','1561131929','1558937543','2238'),
('70','8','0','34','0','0','1558960902','1558960902','3'),
('69','1','0','34','0','0','1558960902','1558960902','3'),
('76','21','0','37','0','0','1560169265','1560047136','1008'),
('75','2','0','37','0','0','1560169265','1560047136','1008'),
('45','1','0','22','3','0','1558948700','1558786264','1028'),
('44','20','1','2','0','0','1559482258','1555846157','32'),
('74','15','0','36','0','0','1560169992','1559047460','12339'),
('73','2','0','36','0','0','1560169992','1559047460','12339'),
('78','17','0','38','2','0','1561132060','1560050131','1010'),
('77','2','0','38','2','0','1561132060','1560050131','1010'),
('72','8','0','35','0','0','1561132016','1559033037','1003'),
('71','1','0','35','0','0','1561132016','1559033037','1003'),
('51','1','0','25','1','0','1558948658','1558880081','1012'),
('50','8','0','24','1','0','1561131830','1558840744','1013'),
('47','1','0','23','2','0','1558948686','1558788866','1016'),
('46','8','0','22','3','0','1558948700','1558786264','1028'),
('49','1','0','24','1','0','1561131830','1558840744','1013'),
('48','8','0','23','2','0','1558948686','1558788866','1016'),
('66','8','0','32','0','0','1561131967','1558956985','12226'),
('65','1','0','32','0','0','1561131967','1558956985','12226'),
('68','8','0','33','0','0','1561131986','1558958534','3125'),
('67','1','0','33','0','0','1561131986','1558958534','3125'),
('64','8','0','31','0','0','1561131945','1558938955','1003'),
('63','1','0','31','0','0','1561131945','1558938955','1003'),
('54','8','0','26','1','0','1558948626','1558881562','1011'),
('79','2','0','39','1','0','1561132078','1560054145','1007'),
('80','17','0','39','1','0','1561132078','1560054145','1007'),
('81','2','0','40','0','0','1560168090','1560082947','1007'),
('82','15','0','40','0','0','1560168090','1560082947','1007'),
('83','2','0','41','1','0','1561132107','1560087835','1011'),
('84','15','0','41','1','0','1561132107','1560087835','1011'),
('85','1','0','42','0','0','1561182598','1561182598','2'),
('86','8','0','42','0','0','1561182598','1561182598','2'),
('87','1','0','43','0','0','1561183272','1561183272','2'),
('88','8','0','43','0','0','1561183272','1561183272','2'),
('89','1','0','44','1','0','1561184592','1561184378','1009'),
('90','8','0','44','1','0','1561184592','1561184378','1009'),
('91','1','0','45','0','0','1561267349','1561267168','1004'),
('92','8','0','45','0','0','1561267349','1561267168','1004'),
('93','1','0','46','2','0','1566139495','1561267477','1003'),
('94','8','0','46','2','0','1566139495','1561267477','1003'),
('95','1','0','47','1','0','1561267799','1561267695','1005'),
('96','8','0','47','1','0','1561267799','1561267695','1005'),
('97','1','0','48','1','0','1561778183','1561778183','2'),
('98','8','0','48','1','0','1561778183','1561778183','2'),
('99','1','0','49','1','0','1561778434','1561778434','1'),
('100','8','0','49','1','0','1561778434','1561778434','1'),
('101','1','0','50','2','0','1561778516','1561778516','2'),
('102','8','0','50','2','0','1561778516','1561778516','2'),
('103','19','1','3','0','0','1561782024','1561778702','25'),
('104','1','0','51','1','0','1562396140','1562395472','1005'),
('105','8','0','51','1','0','1562396140','1562395472','1005'),
('106','1','0','52','1','0','1562397208','1562395522','1003'),
('107','8','0','52','1','0','1562397208','1562395522','1003'),
('108','1','0','53','1','0','1562396619','1562395607','1001'),
('109','8','0','53','1','0','1562396619','1562395607','1001'),
('110','1','0','54','1','0','1562396628','1562395652','1001'),
('111','8','0','54','1','0','1562396628','1562395652','1001'),
('112','1','0','55','1','0','1562396654','1562395964','1002'),
('113','8','0','55','1','0','1562396654','1562395964','1002'),
('114','1','0','56','1','0','1562397167','1562396023','1004'),
('115','8','0','56','1','0','1562397167','1562396023','1004');
DROP TABLE IF EXISTS  `appcms_category`;
CREATE TABLE `appcms_category` (
  `cate_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '���id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '����id',
  `cname` varchar(100) NOT NULL DEFAULT '' COMMENT '��������',
  `cname_py` varchar(100) NOT NULL DEFAULT '' COMMENT '������ĸ����',
  `ctitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO����',
  `ckey` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO�ؼ���',
  `cdesc` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO����',
  `corder` int(11) NOT NULL DEFAULT '0' COMMENT '��������',
  `cimg` varchar(100) NOT NULL DEFAULT '' COMMENT '����ͼƬ',
  `cat_show` int(2) NOT NULL DEFAULT '1' COMMENT '�Ƿ���ʾ����',
  `tpl_index` varchar(500) NOT NULL DEFAULT '' COMMENT '����ģ��',
  `tpl_listvar` varchar(500) NOT NULL DEFAULT '' COMMENT '�б����ģ��',
  `tpl_content` varchar(500) NOT NULL DEFAULT '' COMMENT '����ҳģ��',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '�������ͣ�Ӧ��=0����Ѷ=1',
  `cdata` int(11) NOT NULL DEFAULT '0' COMMENT '�����µ�����',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='�����';

insert into `appcms_category`(`cate_id`,`parent_id`,`cname`,`cname_py`,`ctitle`,`ckey`,`cdesc`,`corder`,`cimg`,`cat_show`,`tpl_index`,`tpl_listvar`,`tpl_content`,`type`,`cdata`) values
('1','0','ƻ��׬Ǯ','ios','����ƻ���ֻ�App����׬Ǯƽ̨����,����ƻ������app׬Ǯ������а�,ǰʮ�ǳ������ص��Ƽ�','ƻ���ֻ�׬Ǯ,app����׬Ǯ,����app,iPhone����ƽ̨','ƻ���ֻ�����app׬Ǯ����ĸ����۸ߣ���Щ�������ص���ѡ�����Ŀ���ƽ̨�������кܶ಻�������app׬Ǯ�����ƽ̨�������������ֻ�����50-100Ԫ���ϡ�������������ѧϰ�������澭��ͼ��ɵĻ���Ҳ����ȥ������','1','','1','','','','0','30'),
('2','0','��׿׬Ǯ','android','����׿�ֻ�׬Ǯ������Ŀ����ƽ̨_app����_�Ķ�����ת������','Android�ֻ�׬Ǯ,��׿����׬Ǯ,�Ķ�����׬Ǯ,ת������׬Ǯ','����׿�ֻ�׬Ǯ���ƽ̨�Լ����׵����а��ṩ��ǰ���ŵ�app���Լ���ְ׬Ǯ�Ĺ��Խ̷̳�����','2','','1','','','','0','7'),
('21','2','������','ZuoRenWu','','','','7','','1','','','','0','2'),
('7','1','��ֹͣ��Ӫ','stop','ƻ������app׬Ǯ�ѵ���,ֹͣ��Ӫ��ƽ̨,������ڣ�','ƻ���ֻ�,����app׬Ǯ,�ѵ���,ֹͣ��Ӫ,����','���������ѷ���,С�������ƻ������app׬Ǯ�ѵ�����·��ƽ̨,�������,�������Ҵ�����ʧ,����Ҳ�ǰ�ש׬��������Ǯ��','6','','1','','','','0','0'),
('8','1','App����','AppShiWan','��ѡ����ƻ��׬Ǯ���,����ƻ������APPƽ̨�Ƽ����� ','ƻ���ֻ�,iphone,ipad,����App׬Ǯ,��׬','���ֻ�����App׬�㷢Ǯ��(����ƻ���豸)��һ������1Ԫ��3��������һ��������(��̨���м���)֮�����ɾ�������漸ʮ�������뼸ʮ�����ƽ̨ͬʱ��������ࣩ����ȫ��ѡ��򵥡����ס����ɣ�����ܶ๤���Ҷ�������ÿ���ȶ���ʮ��','5','','1','','','','0','30'),
('13','2','ת������','Article','','','','10','','1','','','','0','0'),
('15','2','�Ķ�����','News','','','','9','','1','','','','0','3'),
('17','2','����App','ShiWanApp','��ѡ��׿�ֻ�����app׬Ǯƽ̨,С���Ƽ�,�ײ⿿��','','','8','','1','','','','0','2'),
('19','0','���ֽ̳�','newcourse','������׬��׬��Ŀ�淨�������̷ֽ̳���','','','3','','1','','','','1','1'),
('20','0','׬Ǯ��Ѷ','zixun','�ռ���׬Ȧ�Ӹ����߱�,������Ϣ���һʱ���õ���һͰ��','','','4','','1','','','','1','1');
DROP TABLE IF EXISTS  `appcms_comment`;
CREATE TABLE `appcms_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '����id',
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Ӧ��id����Ѷid',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '�������ͣ�Ӧ��=0����Ѷ=1',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '��������',
  `date_add` int(11) NOT NULL DEFAULT '0' COMMENT '����ʱ��',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '�û�id',
  `uname` varchar(500) NOT NULL DEFAULT '' COMMENT '�ǳ�',
  `ip` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ip��ַ',
  `ip_addr` varchar(200) NOT NULL DEFAULT '' COMMENT '����λ��',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '�ϼ�id',
  `is_check` int(1) NOT NULL DEFAULT '1' COMMENT '�Ƿ����',
  `son` int(11) NOT NULL DEFAULT '0' COMMENT '��������',
  `good` int(11) NOT NULL DEFAULT '0' COMMENT '��',
  `bad` int(11) NOT NULL DEFAULT '0' COMMENT '��',
  PRIMARY KEY (`comment_id`),
  KEY `id_type` (`id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='���۱�';

DROP TABLE IF EXISTS  `appcms_flink`;
CREATE TABLE `appcms_flink` (
  `flink_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `flink_name` varchar(100) NOT NULL DEFAULT '' COMMENT '��������',
  `flink_img` varchar(500) NOT NULL DEFAULT '' COMMENT '����ͼƬ',
  `flink_url` varchar(500) NOT NULL DEFAULT '' COMMENT '���ӵ�ַ',
  `flink_is_site` int(2) DEFAULT '0' COMMENT '0=��ҳ��1����ȫվ',
  `flink_order` int(11) DEFAULT '0' COMMENT '����',
  PRIMARY KEY (`flink_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='�������ӱ�';

insert into `appcms_flink`(`flink_id`,`flink_name`,`flink_img`,`flink_url`,`flink_is_site`,`flink_order`) values
('1','��׬��','/upload/img/2019/05/26/5ceaae54368ce.png','http://www.shouzhuanmiao.com/','1','0'),
('2','ƻ��׬Ǯ���','','http://www.shouzhuanmiao.com/app/ios/','1','0'),
('3','��׿׬Ǯ','','http://www.shouzhuanmiao.com/app/android/','1','0'),
('4','�Ķ�׬Ǯ','','http://www.shouzhuanmiao.com/app/News/','1','0'),
('5','������׬Ǯ','','http://www.shouzhuanmiao.com/app/ZuoRenWu/','1','0'),
('6','����app׬Ǯ','','http://www.shouzhuanmiao.com/app/AppShiWan/','0','0'),
('7','iMoney(��ӯ��)','','http://www.shouzhuanmiao.com/app/20.html','0','0'),
('8','�Կ�С��','','http://www.shouzhuanmiao.com/app/22.html','0','0'),
('9','���ϼ�ְ','','http://www.shouzhuanmiao.com','0','0'),
('10','������׬','','http://www.shouzhuanmiao.com','0','0');
DROP TABLE IF EXISTS  `appcms_info_list`;
CREATE TABLE `appcms_info_list` (
  `info_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '��Ѷid',
  `last_cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '�ռ�����ID',
  `info_title` varchar(500) NOT NULL DEFAULT '' COMMENT '����',
  `info_stitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO����',
  `info_img` varchar(500) NOT NULL DEFAULT '' COMMENT '����ͼ',
  `info_desc` varchar(500) NOT NULL DEFAULT '' COMMENT 'ժҪ',
  `info_body` text COMMENT '����',
  `info_tags` varchar(1000) NOT NULL DEFAULT '' COMMENT '��ǩ',
  `info_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '����ʱ��',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '����ʱ��',
  `info_from` varchar(500) NOT NULL DEFAULT '' COMMENT '��Դ',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '������ID',
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '������',
  `info_comments` int(11) NOT NULL DEFAULT '0' COMMENT '������',
  `info_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '�����',
  `info_order` int(11) NOT NULL DEFAULT '0' COMMENT '����',
  `info_url` varchar(500) NOT NULL DEFAULT '' COMMENT '�ⲿURL',
  PRIMARY KEY (`info_id`),
  KEY `cate_update_time` (`last_cate_id`,`info_update_time`),
  KEY `cate_order` (`last_cate_id`,`info_order`),
  KEY `cate_visitor` (`last_cate_id`,`info_visitors`),
  KEY `cate_create_time` (`last_cate_id`,`create_time`),
  KEY `info_update_time` (`info_update_time`),
  KEY `info_order` (`info_order`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='��Ѷ��';

insert into `appcms_info_list`(`info_id`,`last_cate_id`,`info_title`,`info_stitle`,`info_img`,`info_desc`,`info_body`,`info_tags`,`info_update_time`,`create_time`,`info_from`,`uid`,`uname`,`info_comments`,`info_visitors`,`info_order`,`info_url`) values
('1','19','��ȫƻ���ֻ�app����׬Ǯ���ԣ����ֱر���ϸ�̳̣�FAQ������г�������','��ȫƻ���ֻ�app����׬Ǯ���ԣ����ֱر���ϸ�̳̣�FAQ������г�������','/upload/img/2019/06/01/5cf2284a2a678.jpg','����APP׬Ǯ�ǵ��������е��ֻ���ְ��ʽ����Ҫ��ƻ���ֻ�Ϊ���������ż��ͣ������򵥣�������ָ���в��Ƶ����롣
�����ṩApp�������ֱر���ϸ�̳̣�ƻ���ֻ�׬ǮFAQ������г�������','<div>
	<span style="color:#0080FF;"><strong><span style="font-size:16px;"><span style="font-family:΢���ź�;">��һ���򵥽���</span></span></strong></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">&nbsp; &nbsp; ����APP׬Ǯ�ǵ��������е��ֻ���ְ��ʽ����Ҫ��ƻ���ֻ�Ϊ���������ż��ͣ������򵥣�������ָ���в��Ƶ����룬</span></span></span><span style="color:#ff0000;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">���轻���κη��ã��򵥡�����</span></span></span><span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">�����������û�ϲ��������������������100�����������ƽ̨��ÿ��ƽ̨���в�ͬ������ȫ��ƽ̨һ�����棬</span></span></span><span style="color:#ff0000;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">ÿ������ȶ����뼸ʮ�ϰ�Ԫ��׬���������ȫû����</span></span></span><span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">��</span></span><span style="font-family: ΢���ź�; font-size: 14px;">��ν����app׬Ǯ�����������ֻ�������Ӧ�����׬Ǯ�����Ǵ�appstore�����أ����û���õ�����������̸������ƹ���á�ֻ��Ҫһ��ƻ���豸���ֻ���ipad) wifi�Ϳ��ԣ�����appӦ�ã�����</span></span><span style="color:#ff0000;"><span style="font-family: ΢���ź�; font-size: 14px;">3��������</span></span><span style="color:#696969;"><span style="font-family: ΢���ź�; font-size: 14px;">���ܵõ��ֽ�����</span></span><span style="color:#ff0000;"><span style="font-family: ΢���ź�; font-size: 14px;">һ������1Ԫ��</span></span><span style="color:#696969;"><span style="font-family: ΢���ź�; font-size: 14px;">�����漸ʮ�������뼸ʮ�����ƽ̨ͬʱ��������ࣩ��ÿ����Ͼʱ�䣬����ֻ������㷢Ǯʹ���ˡ�����������ȫ��ѣ�ȫ�̲���ȡ�κη��ã��򵥡����ס�</span></span></div>
<div>
	<span style="font-family:΢���ź�;"><span style="font-size:16px;">&nbsp;</span></span></div>
<div>
	<span style="color:#0080FF;"><span style="font-family:΢���ź�;"><strong><span style="font-size:16px;">����</span><span style="font-size: 16px;">��׬Ǯԭ��</span></strong></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">&nbsp; &nbsp; &nbsp;����˵������������ͶǮ������ְƽ̨��Ϊ��</span></span></span><span style="color:#ff0000;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">����Ӧ���̵�����</span></span></span><span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">����������ɣ���ְƽ̨��ָ���������������񣬻����Ӧ���Ͷ����ꡣ���ٸ����ӣ�Я��APP����Ӧ���̵�����&ldquo;����&rdquo;ʱ�����ڵ�һλ��ǰ�ھ���Ҫ�ܶ�������&ldquo;����&rdquo;֮������Я��APP�������Ӧ�Ĺؼ����ȶȡ���</span></span><span style="font-family: ΢���ź�; font-size: 14px;">������ҵģʽ��ʲô����ʵ����ASO=ƻ���̵��Ż�����ֱ�׵�˵�����ƹ�ˢ���������һ����˾��app����ƻ���̵�ĳ���ؼ���������ǰ����Ҫ������ASO�Ż����ƹ�app��˾��Ǯ�������ǽ���������Լ�APP��App Store ���а�������������ø����˿����Լ��ҵ�app���ﵽ�ƹ�app��Ŀ�ġ�ƽ̨�ӹ�����Ǳ���ȡ���ã���������һ��app 3Ԫ��Ȼ��ŵ��Լ��ҵ�ƽ̨�����û����أ�ÿ����һ��app���û�2Ԫ������׬ȡ�ľ�����1ԪǮ�Ĳ�ۡ����ԣ�app��˾������ǽƽ̨���û�������������Լ������棬</span></span><span style="color:#ff0000;"><span style="font-family: ΢���ź�; font-size: 14px;">���ַ�ʽ���ǱȽ��ȶ�������</span></span><span style="color:#696969;"><span style="font-family: ΢���ź�; font-size: 14px;">��</span></span></div>
<div>
	<span style="font-family:΢���ź�;"><span style="font-size:16px;">&nbsp;</span></span></div>
<div>
	<span style="color:#0080FF;"><span style="font-family:΢���ź�;"><strong><span style="font-size:16px;">����</span><span style="font-size: 16px;">����ҵ����ƽ̨����</span></strong></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">ƻ��ios9�����û���Ҫ��ҵ֤�����ã������ڣ����ãݣ���ͨ�ãݣ��������ļ����豸����ݣ�����ҵ��Ӧ�ãݣ�������μ��ɡ������Ϊ����֤�豸��Ψһ�ԣ���ֹ��ˢ�������õ��İ�ȫ����</span></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">����ƽ̨��Ҫ��װƽ̨��ڣ�����֤�飬���ǹٷ���ɫ��֤��Ҳ�Ƿ�ֹ������ˢ��������İ�װ��</span></span></span></div>
<div>
	<span style="font-family:΢���ź�;"><span style="font-size:16px;">&nbsp;</span></span></div>
<div>
	<span style="color:#0080FF;"><strong><span style="font-family:΢���ź�;"><span style="font-size: 16px;">��</span><span style="font-size:16px;">��</span><span style="font-size: 16px;">�����ֽ̳�</span></span></strong></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">���������װƽ̨��ʱ������ϸ˵����������ʾ�������ɡ�����ǵ�һ����Ļ������ǲ�̫���׵ĵط������Բο����¼�ʵ����ѧ����ͬС��</span></span></span></div>
<div>
	<span style="font-family:΢���ź�;"><span style="font-size:16px;">&nbsp;<img alt="" src="/upload/img/xiaobing.png" style="width: 650px;" /></span></span></div>
<div>
	<span style="color:#ee82ee;"><span style="font-family:΢���ź�;"><span style="font-size:16px;">&nbsp;<span style="display: none;">&nbsp;</span></span></span></span></div>
<div>
	<span style="color:#0080FF;"><span style="display: none;">&nbsp;</span> <strong><span style="font-family:΢���ź�;"><span style="font-size:16px;">����</span><span style="font-size: 16px;">��������������</span></span></strong></span></div>
<div>
	<span style="color:#0000ff;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">���ʣ�Ϊʲô��׬Ǯ��</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">�ٴ���Ϊһ�������Ӧ���̵������ĸߵ�ȡ��������Ĺؼ������������������������������������ˣ���õ���Ȼ�û��Ż����ࡣ������������̻��������ʽ��ù���̣�����ƽ̨�����������ƹ㣬��������ɹ���̣�����ƽ̨��ָ�������񣬼������������ƹ���Ϊ���˽���Ϊ�Ͷ����á�</span></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">���ʣ���׬����Ǯ��</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">�ڴ��������˶��죬�е�ÿ�¼�ǧ���е��������򣬵�Ȼ�����������ƽ̨�����йأ�ƻ��ϵͳ�ж����ͬ������ƽ̨��ÿ��ƽ̨ÿ�춼��ˢ����������ƽ̨�������϶�׬�ľͶࡣÿ��ƽ̨ÿ����������������ƽ̨��Ǯ��һ��Ҳ����С��Ŀ��</span></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">���ʣ�������֣�</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">�۴𣺵������������֮�󣬼��ɻ�ý����������Ƿ�����������Ӧƽ̨�ϣ����ǿ���������΢��Ǯ������֧�����������϶���10�����ֵġ��м���ƽ̨���ֶ����뵽�ˣ�����󲿷�ƽ̨����24Сʱ�ڵ��ˣ���ʵ�ò���24Сʱ�ģ�����������Ҳ����ʮ����Сʱ���ˡ�</span></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;">��<span style="font-family: ΢���ź�; font-size: 14px;">�ʣ�</span><span style="font-family: ΢���ź�; font-size: 14px;">APP���氲ȫ��</span><span style="font-family: ΢���ź�; font-size: 14px;">����ֻ������𣿻�й¶������Ϣ��</span></span></div>
<div>
	<span style="color:#008000;">��<span style="font-family: ΢���ź�; font-size: 14px;">��</span><span style="font-family: ΢���ź�; font-size: 14px;">�ܶ���û�нӴ���app���棬���Բ�֪�����װ�ȫ����ȫ���Լ��Ƿ��ף���ʵ����app������󲿷ֶ��ǿ��׵ģ���ȻҲ�в����׵�ƽ̨����������֮�������ֵģ���������ƽ̨���ڻ������Ѿ����ˣ����Դ�Ҳ��õ��ġ���վ��ƽ̨����С����������ɸѡ�����ģ�ƽ̨��������Ҫ����Ϣ������΢���˺Ż���֧�����˺ţ������漰���룬���������ʹ�á������������������������Ǵ�ƻ���ٷ��̵�&ldquo;App Store&rdquo;�����صģ����Ծ��԰�ȫ����������κ������˽�ſͷ�Ϊ������</span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;">��<span style="font-family: ΢���ź�; font-size: 14px;">�ʣ�</span><span style="font-family: ΢���ź�; font-size: 14px;">�ֻ��᲻���ж���</span></span></div>
<div>
	<span style="color:#008000;">��<span style="font-family: ΢���ź�; font-size: 14px;">��</span><span style="font-family: ΢���ź�; font-size: 14px;">���ȣ�����Ҫ���û����ص�����������ǹٷ��̵����صģ�Ҳ�����ֻ��Դ�������̵������ƻ��һ�ɶ���ƻ���ٷ��̵��£�����˵����ƻ���ٷ��̵��µ�����ж���ô��������򵥵����⣬��ҿ��԰ٶ�һ�£�ƻ���İ�ȫ����ǳ��ߣ�û��Խ����ƻ���ֻ��Ǹ��������ж��ġ��������ֻ����������ݴ��䣬����Ӱ�������ٶȡ�</span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;">��<span style="font-family: ΢���ź�; font-size: 14px;">�ʣ�</span><span style="font-family: ΢���ź�; font-size: 14px;">�ֻ���俨��</span></span></div>
<div>
	<span style="color:#008000;">��<span style="font-family: ΢���ź�; font-size: 14px;">��</span><span style="font-family: ΢���ź�; font-size: 14px;">�ڴ淽�棬ÿ��ƽֻ̨��1��2�ף���ʹ���е�ƽ̨������Ҳ���ᳬ��һ���ף����ص��������Ǯ�Ϳ�������ɾ������ȫ��Ӱ���ֻ���ʹ�á�</span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0000ff;">��<span style="font-size:14px;"><span style="font-family:΢���ź�;">�ʣ��������������ص��������ж����</span></span></span></div>
<div>
	<span style="color:#008000;">��<span style="font-size:14px;"><span style="font-family:΢���ź�;">�𣺵�Ȼ���ԣ�ֻҪ������ɣ��Ϳ�ж�ء�����Ҫע�⣡������ǰÿ��ƽ̨��Ҫ��������һ���������֣���ƽ̨��Կ�ף����������һ������ɾ����������ʱҪ��̨���У������޷����Ӷ��Ҫ�������������������õ���������ж�ء�</span></span></span></div>
<div>
	<span style="color:#696969;"><span style="font-size:14px;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#0080FF;"><strong><span style="font-family:΢���ź�;"><span style="font-size:16px;">����</span><span style="font-size: 16px;">���ر�����</span></span></strong></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;"><span style="font-family: ΢���ź�;">�١�</span><span style="font-family:΢���ź�;">Ϊ���ϴ�ҵ����棬��ֹ�˺Ŷ�ʧ�������޷����֣�����������ǰ���ֻ��ź�΢�źţ���</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;"><span style="font-family: ΢���ź�;">�ڡ�</span><span style="font-family:΢���ź�;">ƽ̨���һ��Ҫ�������֣�����ƽ̨������������ɵģ������п��ܲ�һ��������ͨ��������ȡ��������</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;"><span style="font-family: ΢���ź�;">�ۡ�</span><span style="font-family:΢���ź�;">�������ƽ̨����ȥ�ˣ�һ���������и��£�ж���ϵ����֣����°�װ�������½���</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">��<span style="font-family:΢���ź�;">��ƻ��ios9�����û���Ҫ��ҵ֤�����ã������ڣ����ãݣ���ͨ�ãݣ��������ļ����豸����ݣ�����ҵ��Ӧ�ãݣ�������μ��ɡ������Ϊ����֤�豸��Ψһ�ԣ���ֹ��ˢ�������õ��İ�ȫ���⣬���������Ķ�û��������</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">��<span style="font-family:΢���ź�;">��ÿ������ 3 - 6 ������Ἧ��Ͷ�ţ��������������������С����ǲ�Ҫ�ż���</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">�ޡ�<span style="font-family:΢���ź�;">��ʱ����ܽ���ƽ̨����û��������û�е�ˢ�µ�ʱ�䣬��ѡ����һ��ƽ̨���棨ÿ������15-19�����ˢ������16��������࣬����ʱ������11�㣬���㣬���Ҳ��ˢ�����պ�����4�����ʱ����Զ�ʱ��׬�ࣩܶ����ƽ̨���˴�Ҿͻ��ܽ�������ɡ�</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">�ߡ�<span style="font-family:΢���ź�;">�Ƽ�����ʱ�����٣�����������Щ����100%��Ǯ��������������100%��Ǯ��</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">��<span style="font-family:΢���ź�;">�и����������������3-5Ԫ��֧��1Ԫ����App Store�и��ѣ�����������ƽ̨�շѣ������������ʽ�����ƻ����˾��֧��������ǿ��Ĺ�˾��ͬ���ϵģ���������ɷ��ģ�������������Ҳ����ѡ������</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">��<span style="font-family:΢���ź�;">���������ipad�����񣬼�ס�ڴ��̵��ipad���ظĳɽ�iphone���أ����̵������������Ͻǣ���</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;">�⡢<span style="font-family:΢���ź�;">Խ��ƻ���ֻ���������ƻ���ٷ����°汾������������ѡ��ԭ�豸��Ĩ��&ldquo;�ҵ�iphone&rdquo;������������ƽ̨��</span></span></span></div>
<div>
	<span style="font-size:14px;"><span style="color:#696969;"><span style="font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, ����, sans-serif, tahoma;">?</span><span style="font-family:΢���ź�;">�����˺�����׬Ǯ����Ҫ�˽�����ƽ̨�û�����1��΢�ź� 1��ƻ���̵��˺�ֻ�ܰ�һ̨�ֻ����棬����2̨�ֻ����棬��Ҫ�µ��ֻ��š�΢�źź��µ��̵��˺ţ����ܻ������ܶ�ƽ̨����IP��ַ���ƣ��ٷ���ֹ�κ�ˢ��������App Store ID����Ϊ��һ���������Զ����˻�����������⣡</span></span></span></div>
','����app,app����,ƻ��app,����FAQ,���ֽ̳�,��������,ƻ���ֻ�,���ֱر�,����׬Ǯ,iPhone�ֻ�,��ȫ����ϸ,ƻ������app,��������FAQ,���ֽ̳�FAQ,����������','1561778852','1373702513','','1','admin','0','69','0',''),
('2','20','������ô������׬Ǯ��ְ����Щƽ̨�ͷ����Ƚ�����Ϳ��ף�','������ô������׬Ǯ��ְ����Щƽ̨�ͷ����Ƚ�����Ϳ��ף�','/upload/img/2019/06/02/5cf3cca31f586.jpg','','<div>
	<span style="font-size:16px;">&nbsp; &nbsp; &nbsp; &nbsp;���������׬Ǯ��������Ǯ��������Щ������ɿ������ϼ�ְ����Щ����������ѹ���Ĵ��ڣ����Ż���������͸���ܶ���ϣ����һ�ݸ�ҵ����ҵ��ʱ������׬Ǯ��ְ�������룬�����Ұ�Ŀǰ������ǮһЩ��������Ŀ�ܽ��£�����Ҳο���<span style="color:#ff0000;">�����ǡ�</span><span style="color:#0000ff;">��ְ���ж�����Ǯ׬�����ϼ�ְ׬Ǯ����ѣ���Ҫ��Ǯ�Ķ���ƭ����Ϊ!</span></span><br />
	&nbsp;</div>
<div>
	<span style="font-size:16px;"><span style="background-color:#ffff00;">1������ý��</span></span></div>
<div>
	<span style="font-size:16px;">�����⼸����ý�峴�ıȽ��ȣ����Һܶ��˶���ʼ����ý���ˡ���΢�������ͣ���Щ�Ƚϳ�����һ��������Ĳ���������Ҳ���ü��򣬻��п������Ķ�һ����������Ҳ���ɡ�<span style="color:#0000ff;">����ý���޷�Ϊ�����������棬�Ѿ������Ƿۣ�Ҫ�������ϵ�����������ݡ�</span>��û�д��д�����ó��ġ���ֻ�Ǹ��˲��ͣ�Ŀǰ��ý��ƽ̨Խ��Խ�࣬�򵥷����Ĵ�������ý��ƽ̨���������</span></div>
<div>
	<span style="font-size:16px;"><strong>ͷ���ţ�</strong>Ŀǰ�����������Ƶ�һ��ƽ̨�������������������ƽ̨��˵�ǱȽϵ͵ģ�һ����Ķ�����ԭ��ֻ��1��Ǯ���ң�ԭ���Ƿ�ԭ����3-5�������ֻ��ǱȽ��ʺ���ͷ���ģ���Ȼ˵���۵ͣ�����������һƪ�����Ϻ����£��Ķ�������ﵽ��ʮ��</span></div>
<div>
	<span style="font-size:16px;"><strong>�ټҺţ�</strong>Ŀǰ�ڶ�ƽ̨���е�����ߵģ�����ý���˷ǳ�������һ��ƽ̨�������沢���ȶ�������һ���Ķ�������20��Ǯ����������һ���Ķ����͸���10��Ǯ���ټҺ�Ҫ���õ�����һ��Ҫ���������ڣ����ڰټҺŹ�������Խ��Խ�ѣ�Խ��Խ�ϸ���Ҫ�����ߴ������ʵ����ݲ��л�����ټҵ����֡�</span></div>
<div>
	<span style="font-size:16px;"><strong>����ţ�</strong>�������ְֵ����ݴ���ƽ̨�����治�ߣ��п���һƪ10�� ����Ҳֻ�м�ʮ�飬����ÿ���»��ó����ٽ��𷢷ţ�ֻҪ���ܴ������������ݣ�Ҫ�õ���Щ���������ѡ�</span></div>
<div>
	<span style="font-size:16px;"><strong>΢�Ź��ںţ�</strong>ƽ̨����ͦ�󣬵�������΢���ֻ��ͻ��ˣ��к����û������ڸ�����Ӫ�ĺõ�Ҳ�������뼸��</span></div>
<div>
	<span style="font-size:16px;">�ܵ���˵�������㵽�ĸ�ƽ̨���ܻ�ȡһ�������棬�����Ĵ�����ƽ̨�Ѿ���ȱ���ݣ�ȱ�����������ݡ�</span></div>
<div>
	<span style="font-size:16px;">&nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3cc33e53a6.jpg" /></span></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">2����վ��Ǯ</span></span></div>
<div>
	<span style="font-size:16px;">����������վ��Ǯ��Ҳ����������Щ��ν��վ������վ�кܶ࣬��Ǯ�ķ���Ҳ�ܶࡣ����ط���̳����<span style="color:#ff0000;">�ӹ����Ǯ</span>����Ѷ��վ���Կ�<span style="color:#ff0000;">���������Ǯ</span>����׬��̳����<span style="color:#ff0000;">��VIP��Ա��Ǯ</span>��Ҳ���Խӹ����Ǯ����Ȼ����վ������ܸߣ�ʵ���ϴ󲿷�վ������ܵ͡�����վ����Ӧ���Լ�ÿ�������IP��ÿ�����վ�����������Ԫ���൱��һ��һԪǮ��û��ʵ�֡��ܶ�վ��֮��������ͣ�ԭ�����������ͼ����������͡��û��ٺ��ٵ����档���ϣ�����������������룬����Ҫ�д�����������������Զֻ�Ǹ����룡��ȻҪ̤��վ�����У���Ҫ���ü����¡���������һ����0�����׼����һ����վû�����µ�ϴ���Ǻ��ѳɹ��ġ�</span></div>
<div>
	<span style="font-size:16px;">&nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3cce66b726.jpg" /></span></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">3���ֻ�������׬Ǯ</span></span></div>
<div>
	<span style="font-size:16px;">&nbsp; &nbsp; &nbsp; ����ʺϼ�ְ�������������û��ʲô����Ҫ��С�׶���������СǮ���ıȽϿ죬����׬��ǮҲ��Ҫ�о������������������������ֻ�������Ӧ�����׬Ǯ�����Ǵ�appstore�����أ����û���õ�����������̸������ƹ���á�ÿ����Ͼʱ�䣬����ֻ������㷢Ǯʹ���ˡ�ֻ��Ҫһ̨�豸���ֻ���ipad) wifi�Ϳ��ԣ�ÿ����������appӦ�ã�����ע�ᣩ������3���Ӿ��ܵõ��ֽ���������֮��Ϳ���ɾ���ˣ�<span style="color:#0000ff;">����һ������1Ԫ�����漸ʮ�������뼸ʮ</span>�����ƽ̨ͬʱ��������ࣩ�����ӵ��10Ԫ��ʮһ��(������Ҫע�ᣬ�����ĵĿ��Բ���)��<span style="color:#ff0000;">����һ�������׬��ʮԪ��һ���������ٻ��Ǻ����ɵ�</span>�� ��Щ��վ�������ƽ̨�ܽ���������ҿ�������׬���˽⡣��׬�Ķ�Ķ���רҵ��׬�ͣ���������Դ���Ƽ��ܶ�ͽ�ܻ���ͨ��һЩרҵ���ַ�ˢ��������һЩ�������������ȵȣ�С�׾Ͳ�Ҫ�����������ж����׷�ţ��ٷ���ֹ�κ�ˢ��������App Store ID����Ϊ��һ���������Զ����˻�����������⣡�����������棬��Ҫ��ƻ���ֻ�Ϊ������Ϊƻ���ֻ�������۸�ߡ���Ȼ����׿�ֻ�Ҳ��һЩ��������ģ������۸�Ƚ��٣����鷳�������������������ʹ��ƻ���ֻ�����׿��׬���˶���Ǯ���������ڲ���ϵͳ�����ģ�ƻ���г�ֻ��appStoreһ�ң�����׿�г��Ѿ����ģ���ϵͳ��ȫҲ����ƻ��������ܶ��ƽ��ˢ�������� ���Լ۸�Ƚϵ��������Һܶ������ע�������ƽ̨���������ж�����android�ֻ��ʺ����������񣬲�̫�������Ķ��࣬�鷳���滹�͡�</span><br />
	&nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3cceabdd45.jpg" /><img alt="" src="/upload/img/2019/06/02/5cf3ceaac25de.png" /></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">4���Ա�����</span></span></div>
<div>
	<span style="font-size:16px;">�����Ա�������Ǯ����˵�Ǻܶ࣬�ܶ࣬���Һܶ������Ա��������ˡ�����������Ҫ�����Ա��Ļ�ȴ�Ƿǳ����ѡ������Ա�����̫���ң��еĶ������������ٱ����ǳ������£�Ū���������ٻ��궼�����Ҳ�С�</span><span style="font-size: 16px;">����һ���Ա��������ҿ�ʼ������Ǯʱ�򿪵ģ�����ȥ���ʱ���Ա������÷��ˡ�ȥ��걻������ֿ���һ��������Ҳһ���ˡ����������̻��Ƿ������ˣ��пͻ�����Ҳ�������ģ��е�ֱ�����ˣ���ΪԽ��Խ�����Ա��ˡ�</span><span style="font-size: 16px;">ǰ��ʱ����Ҳ��һ������˵�����ĵ���Ҳ����һЩ�������̱����÷��ˣ����ڶ���ϲ���Ա��ˣ����ڵ��Ա�����������С���ҵ������Ȼ�Ա�������������������кõĲ�Ʒ�Ļ����ǿ��Ա���һЩ����Ҳ����ģ�±��˵��Ա�������Ǯ��</span><br />
	&nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3ccfa6c2aa.jpg" /></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">5���Ա���</span></span></div>
<div>
	<span style="font-size:16px;">�����Ա�����Ҳ���Ա��ͣ��������裬Ҳ�����ƻ����µĲ�Ʒ���Ա�������Ҫ�ǰ����Ա������ƹ���Ʒ�ģ�Ȼ���гɽ��Ϳ���׬ȡһ������ɣ��м��ǣ���Ԫ����ʮ�����ٵĶ��С���˼����˵����û�в�Ʒ��������ƹ���˵Ĳ�Ʒ����ɡ�</span><span style="font-size: 16px;">���Ա�����Ǯ�ķ����кܶ࣬������̳���Ա��ͣ�����QQ���Ա��ͣ�������վ���Ա��͡��������Ա��͵ķǳ��࣬һ�¼�ǧ��������˶���ǡ�</span><br />
	&nbsp; &nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3cd7da796a.jpg" /></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">6���Ա�ˢ��׬Ǯ</span></span></div>
<div>
	<span style="font-size:16px;">&nbsp; &nbsp; &nbsp; ˵���Ա�ˢ������ʣ����벻֪������Ӧ��û�м��������ϲ�������ôһ�仰��&ldquo;ʮ���Ա��Ÿ�ˢ������һ��������&rdquo;��ͨ����仰���ǵ�֪���Ա�ˢ��Ӧ�÷ǳ��ķ��ġ���Ȼ˵�����Ա�ˢ��������⣬��ô�ܶ��˻��������ϱȽϳ�����һ����׬��Ŀ���ԣ��Ǿ����Ա�ˢ����ְ�����������Ϥ�����ҵ�����ѻ�������Ǹ�׬Ǯ����·������Ϥ�Ļ��������һ�������ϵ�ƭ�֡�������һ����Ҫע�⣬���Ҫ��渶ʲô�ģ�������ЩҪ���ʲô���зѲŴ������ģ���Ҫ���ţ�</span><br />
	&nbsp; &nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3ce7b9415b.jpg" /></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">7��΢��׬Ǯ</span></span></div>
<div>
	<span style="font-size:16px;">&nbsp; &nbsp; &nbsp; ������΢�̺ܻ���Ǯ�͹鱾�Ķ��С����������������ң���ô��΢��ѽ����ʵ��Ҳ��֪������ô������˵���ٶ�һ��΢�̣��ͻ�ܶ������΢�̵Ľ̡̳����������ڵ�΢�̻��������棬��඼��ƭ�˵ģ�����΢��Ȧ��ĤΪ�����ٵĶ�����١�</span></div>
<div>
	<span style="font-size:16px;">����һ��ͬѧ����΢�̵ģ���˵�������������ڵ�΢�̣�һ�����ĵĵ��߶�û�С���˵���Լ��Ĳ�Ʒ�����������ù����У������Ʒ�����ã��Ż��������Ʒ�����ң������д�����ƭ�ˣ�������������Ȼ�Ҳ�֪����˵����٣�����������Ҳ�������ˣ����������΢�̣�������һ��Ҫ��һ�������΢�̣������ˣ� ��ƭ�ˣ��������������������ķ������Ŀͻ���Ȼ��ѧϰһЩ����Ӫ���ķ�����������ѧ����һ����׬������Ǯ��</span><br />
	&nbsp; &nbsp;<img alt="" src="/upload/img/2019/06/02/5cf3cdf6ae715.jpg" /></div>
<div>
	<br />
	<span style="font-size:16px;"><span style="background-color:#ffff00;">8��ѧϰ������׬Ǯ��</span></span></div>
<div>
	<span style="font-size:16px;">����һ��������Ҳ�����������ʵѧ������׬Ǯ��׬��Ǯ�ģ�Ҫ�ﵽ��һ��͵ò��Ϸḻ�Լ���֪ʶ���������ܹ����������ڲ���֮�ء�<br />
	<img alt="" src="/upload/img/2019/06/02/5cf3cd0d94d2f.jpg" /></span></div>
','���ϼ�ְ,��ְ׬Ǯ,����ƽ̨,���׷���','1559482258','1555846157','','1','admin','0','32','0',''),
('3','19','�Կ�С���������,��ô׬Ǯ�ࣿ������ߵ��Կ�С�����ֹ��Խ̷̳���','�Կ�С���������,��ô׬Ǯ�ࣿ������ߵ��Կ�С�����ֹ��Խ̷̳���','/upload/img/2019/06/29/5d16db828ed5e.jpg','','<div>
	<span style="font-size:16px;"><span style="color:#800080;"><strong><span style="font-family:΢���ź�;">��ǰ�ԡ�</span></strong></span><span style="color:#696969;"><span style="font-family:΢���ź�;">��׬Ȧ����˵��ƻ���ֻ�����App��ְ׬Ǯ��ν���˲�֪�����˲��������źܶ��˶����Կ�С��Ҳ����İ������źܶ�С���Ӵ�App����׬Ǯ��һ�е����Ǵ��Կ�С����ʼ�İɣ��������Կ�С���кܶ���ŵ㣬������</span></span><span style="color:#ff0000;"><span style="font-family:΢���ź�;">���񵥼۷ǳ���(1.5Ԫ��)�������ż��������ٶȺܿ죬8Ԫ����΢�����֣����ֺ��뵽��</span></span><span style="color:#696969;"><span style="font-family:΢���ź�;">��С����Ҳ����������˾���ˣ�Ҳ�ǴӽӴ��Կ�С����ʼ������һ���еģ����������Ӵ���Խ��Խ���ƻ������ƽ̨����ȻҲ���Լ���Ŭ��׬����Խ��Խ���Ǯ�����ڻ������Լ�����վ������С������ʹ�ҷ���һ���Կ�С����׬Ǯ���ԡ�</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;"><span style="background-color:#ffa500;">һ���ֻ����ά��������ɨ���ά�����Ӧ���Կͣ����Ͽ�ʼ���׬Ǯ֮�ã�</span></span></span></span></div>
<div>
	<a href="https://shike.com/i/yyeuEz" target="_blank"><img alt="" src="/upload/img/2019/06/29/5d16e578c36c5.png" /></a><br />
	&nbsp;</div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;"><span style="background-color:#ffa500;">������ô��װС������ʵ�ܼ򵥣�һ�����������װ���С�</span></span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">��ʾ��iOS9 ���ϵİ汾����װС������Ҫ�� ���� &rarr; ͨ�� &rarr; �����ļ����豸�������ҵ��Կ�С���������ļ�ѡ�� &ldquo;����&rdquo; ���ɡ�</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;<img alt="" src="/upload/img/2019/06/29/5d16e35f7d21e.png" /></span></span></span><br />
	&nbsp;</div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;"><span style="background-color:#ffa500;">�����������׬Ǯ</span></span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">�������ʼ���桿���������б�ҳ�棬��ȡ����(һ�㵥��1.5Ԫ���ң���������3���ӣ�Ӷ����)�����ɿ�ʼ����׬Ǯ���������£�</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;<img alt="" src="/upload/img/2019/06/29/5d16e3d530c2c.png" /></span></span></span><br />
	&nbsp;</div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;"><span style="background-color:#ffa500;">�ġ�׬�����ף���ô����</span></span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">��ʾ����������8Ԫ�������֡��뵽΢�ź��</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;<img alt="" src="/upload/img/2019/06/29/5d16e3dd8b9cf.png" /></span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;"><span style="background-color:#ffa500;">���ִ��ɣ�</span></span></span></span></div>
<div>
	<span style="color:#ff0000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">1.�Կ�С����Ŀ�����</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">���ǿ϶��ģ���ҵ�ڣ�Ӧ���Կ�����������ֽ���������ƽ̨�����񵥼۸ߡ���ʱ����һֱ��С���������ƣ�Ŀǰע���û�1000�� ��</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#ff0000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">2.�Կ�С������ѵ���</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">���Կ϶��ĸ������Կ�С������ѵģ���ΪֻҪ���ֻ����������ͺ��ˡ���Ȼ��ЩӦ���Ǹ������ģ�������Ҳ����ߣ�ֻҪ�������涼��ͽ���һ�𷵻�������Կ��˻����档��ȫ���⣬��������Ҫ���ģ�</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#ff0000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">3.�Կ�С��ʹ�ù����г������⣬�������������</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">�������ܶ��û��ʹ��ң���Ϊ�������Կ�С������׬��Ǯ�޷����ֵȵ�һϵ�����⣬������õ��ģ����Կ�С������һ������9:00-17:00����רҵ�ͷ��ڵģ�Ҳ���Թ�ע&ldquo;Ӧ���Կ�&rdquo;�ٷ�΢�������κ����ⶼ����˽���ϣ�</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#ff0000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">4.�Կ�С����׿��������</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">��׿Ҳ�ǿ������Ŷ~</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">���ڰ�׿�û�Ҳ������ƻ���û�һ����С���ĳ�����������������������Ҳ����ϵģ�</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#ff0000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">5.������Կ�С����׬Ǯ��</span></span></span></div>
<div>
	<span style="color:#008000;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">����ǰ��Ĳ��������Կ�С���������ʼ׬Ǯ-����Ӧ��-ѡ�������Ӧ�ð�����ʾ��������Ϳ����ˣ���¼����Ӧ�ã�����3���ӣ��Ϳ������Կ�С��������ȡ�ֽ����ˣ���΢�žͿ���ʵ�������뵽���ϣ�</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="font-size:16px;"><span style="color:#696969;"><span style="font-family:΢���ź�;">&nbsp;</span></span></span></div>
<div>
	<span style="color:#800080;"><span style="font-size:16px;"><span style="font-family:΢���ź�;">���Ͼ��ǽ���Ϊ��ҷ���ľ����֪ʶ��ֻ�ܰ��㵽���ˣ�������׷档����ʲô���Ͽ�ɨ�����ذɣ��ֽ����ɵ��֣�</span></span></span></div>
','�Կ�С��,Ӧ���Կ�','1561782024','1561778702','','1','admin','0','25','0','');
DROP TABLE IF EXISTS  `appcms_nlink`;
CREATE TABLE `appcms_nlink` (
  `nlink_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `nlink_txt` varchar(100) NOT NULL DEFAULT '' COMMENT '����',
  `nlink_url` varchar(500) NOT NULL DEFAULT '' COMMENT '��ַ',
  PRIMARY KEY (`nlink_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='���ă����ʱ�';

DROP TABLE IF EXISTS  `appcms_recommend_area`;
CREATE TABLE `appcms_recommend_area` (
  `area_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT 'λ�ñ���',
  `area_type` int(2) NOT NULL DEFAULT '0' COMMENT 'λ�����ͣ��Ƽ�λ��Ӧ�ã�=0���Ƽ�λ����Ѷ��=1�����=2��ר�⣨Ӧ�ã�=3��ר�⣨��Ѷ��=4',
  `area_html` text COMMENT '���HTML���������ı�',
  `area_remarks` varchar(1000) NOT NULL DEFAULT '' COMMENT '��ע',
  `area_logo` varchar(200) NOT NULL DEFAULT '' COMMENT 'λ��LOGOͼ',
  `area_order` int(11) NOT NULL DEFAULT '0' COMMENT '����',
  `id_list` varchar(2000) NOT NULL DEFAULT '' COMMENT 'Ӧ�û�����ѶID�б��ö��ŷָ�',
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='�Ƽ�λ�ã���棬�Ƽ�λ��ר�⣩';

insert into `appcms_recommend_area`(`area_id`,`title`,`area_type`,`area_html`,`area_remarks`,`area_logo`,`area_order`,`id_list`) values
('1','ÿ���Ƽ�','0','','��ҳ�ұ��Ƽ�λ��ÿ��һ���Ƽ�','','0','20'),
('2','��Ʒ�Ƽ�','0','','��ҳ��ߵľ�Ʒ�Ƽ�λ��һ��15������','','98','20,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36'),
('3','��׿׬Ǯ������а�','0','','��ҳ����Ϸ�����Ƽ�λ��һ��10������','','99','37,39,32,21,30,41,40,38,36'),
('4','����ƻ��׬Ǯ���а�','0','','��ҳ��Ӧ�������Ƽ�λ��һ��10������','','100','20,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36'),
('5','��������','0','','��ҳ�����������Ƽ�λ��һ��10������','','0','22,20,23,24,25,26,27,28,29,30'),
('6','�������','0','','��ҳ�����ұߵ��Ƽ�λ��һ��10������','','0','25,28,29,27,24,20,22,23,26,30'),
('10','������׬Ǯ�Ƽ�','3','������׬Ǯ��ָͨ����ɱ��˵��������������ķ�ʽ��С���Ƽ���ƽ̨֧��ƻ���Ͱ�׿˫APP��1Ԫ�����뵽�ˣ�˵���ֻ���������׬Ǯ�����������ǰ����ͦ��ģ��ر���2015���ʱ�򣬶����ڴ�����ɳ�����մ�ͳ�ĺܶ�����������׬Ǯ���������ʼ��·�����������ֻ�׬Ǯ���棬������׬Ǯ������Ŀ���Դ�����չ������ʵ�����������׬Ǯ����Ŀ�����еģ����ھ�Ϊ��ҷ���һ���Ҹ��˾��ñȽϺõ�������׬Ǯ���������������࣬Ӷ��ߣ��ײ������б�֤��һ�����׬��70-90Ԫ�����ӡ�','','/upload/img/2019/05/04/5ccd85e32b2dc.png','0','37,21'),
('11','�Ķ����ţ�����Ѷ׬Ǯ','3','ÿ�춼�������ţ���Ȼ���к���죬������Ǯ׬����������� ��Ȼ�������!�Ķ�����׬Ǯ�������Ķ�������Ѷ׬Ǯ���Ķ��Ĺ����п���׬ȡ��ң�1000��Ҳ����Զһ�1Ԫ�ֽ�ÿ���賿ϵͳ�Զ�����һ����˻����˻���20Ԫ��������΢�ź�����㣬�����������֡���Ȼ��ƽ̨��֧����ͽ���ܣ�ͨ���������ӣ������˿���룬���������ܷ�˿������ɣ�������׬���','','/upload/img/2019/05/04/5ccd85c623b0f.jpg','0','36,40,41'),
('12','���ֱر�1-5Ԫ�����־�ѡ','3','<div>
	�ܶ�׬�����������ֻ�׬Ǯ������ַɿ죬�뵽�˵ġ�����С��;�ѡ�˼��������������أ������뵽�˵�׬Ǯ�����������⼸�������֧��΢�����֣������뵽΢��Ǯ���������ٵȴ���С���ײ�����֤��</div>
<div>
	����������Ҫ�������ֵ��ˣ���������һ����׬�����첻���ˣ���������û����Ȥ����ȥ�ģ������������׬Ǯ�˻����Ǯ�������뵽�����Ƕ�ô���õ����飬�������֣�һ�뵽�ˣ��ף���������ɣ�</div>
','','/upload/img/2019/05/30/5cef3fc135e97.jpg','0','25,24,22,28'),
('13','��׿�ֻ�׬Ǯ��ѡ�Ƽ�','3','��׿(Android)�ֻ�׬Ǯ˵����ƽ̨�Ƽ���������֪����׬��ҵ����app׬Ǯ��Ӷ��Ƚϸߣ�Ҳ�����ױ�����Ŀ�����Ƕ����������棬��Ҫ��ƻ���ֻ�Ϊ������Ϊƻ���ֻ�������۸�ߡ���Ȼ����׿�ֻ�Ҳ��һЩ��������ģ������۸�Ƚ��٣����鷳�������������������ʹ��ƻ���ֻ�����׿��׬���˶���Ǯ���������ڲ���ϵͳ�����ģ�ƻ���г�ֻ��appStoreһ�ң�����׿�г��Ѿ����ģ���ϵͳ��ȫҲ����ƻ��������ܶ��ƽ��ˢ�����������Լ۸�Ƚϵ��������Һܶ������ע�������ƽ̨���������ж���������Щ����׿ƽ̨������ֻ�Ƽ�2-3�����׵���Ŀƽ̨�������˵�����Խϸߣ�����Ҳο����о���','','/upload/img/2019/05/04/5ccd85ef1d546.jpg','0','37,39,21,30,36'),
('14','ƻ���ֻ�׬Ǯ��ѡ�Ƽ�','3','��Щ���Ǵ��Լ�������ƽ̨��ɸѡ�����Ŀ��׵�ƽ̨������࣬���۸ߣ�Ҳ�Ǵ�Ҷ�����ģ���ҵ������ʱ�䳤���Ұ��Լ������Ĺ����е�һЩ�ܽ�Ҳ����������������Ҳο����������µ����ӽ���������̽��������ƽ̨���Լ�����֮��Ҳ��½�����¡����ƣ������ʲô����Ҳ�������Ը��ң�һ������','','/upload/img/2019/05/04/5ccd85ad954bb.jpg','0','22,20,23,24,25,30,31,32,33,34'),
('15','����ƻ���ֻ�����app׬Ǯ���а�ǰʮ(����)','3','��������ƽ̨������˵������һ��������ô�������ˣ���Щƽ̨�ȽϿ��ף��ҿ�һЩ������ν��appӦ��׬Ǯ������а��Ҳ�֪��������ô�������������Ǿ����Ƽ��Ķ��ԣ�������˵�ĵ�һ���Ҳ������á�����������Ϊ��������һ�����У������ο���','','/upload/img/2019/05/04/5ccd85a0399a1.jpg','0','20,22,23,24,25,26,27,28,29,30'),
('16','��ҳ��һ���õƹ��','2','a:2:{s:4:"type";s:1:"2";s:9:"area_html";a:7:{i:0;a:4:{s:5:"title";s:9:"��ӯ��";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/app/20.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebf3120673.jpg";}i:1;a:4:{s:5:"title";s:6:"Ǯ��";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/app/23.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebf48d0455.jpg";}i:2;a:4:{s:5:"title";s:6:"�Կ�";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/app/22.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebf7f9a5a7.jpg";}i:3;a:4:{s:5:"title";s:8:"PP���";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/app/26.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebf8e24915.jpg";}i:4;a:4:{s:5:"title";s:9:"���Կ�";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/app/31.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebfa32ddf5.jpg";}i:5;a:4:{s:5:"title";s:12:"���ֹ���";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/info/1.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebfac99b88.jpg";}i:6;a:4:{s:5:"title";s:2:"QA";s:4:"desc";s:0:"";s:3:"url";s:40:"http://www.shouzhuanmiao.com/info/1.html";s:12:"resource_url";s:40:"/upload/img/2019/04/23/5cbebfba1990f.jpg";}}}','���720*200','','0',''),
('17','�Ҳ��ά��','2','a:2:{s:4:"type";s:1:"2";s:9:"area_html";a:1:{i:0;a:4:{s:5:"title";s:24:"�ֻ�ɨ����뱾վ";s:4:"desc";s:24:"�ֻ�ɨ����뱾վ";s:3:"url";s:0:"";s:12:"resource_url";s:40:"/upload/img/2019/05/24/5ce795e31c04c.png";}}}','���230*200','','0',''),
('18','��Ѷ�Ƽ�λ','1','','','','0','1,2'),
('19','ƻ��׬Ǯ���а�(�Ҳ�ģ��)','0','','','','0','20,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36'),
('20','��׿׬Ǯ���а�(�Ҳ�ģ��)','0','','','','0','37,39,32,21,30,41,40,38,36');
DROP TABLE IF EXISTS  `appcms_resource_list`;
CREATE TABLE `appcms_resource_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '��Դ',
  `info_app_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Ӧ�� ����ѶID',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '���������ͣ�Ӧ��=0����Ѷ=1',
  `resource_url` varchar(300) NOT NULL DEFAULT '' COMMENT '��Դ��ַ',
  `width` int(11) NOT NULL DEFAULT '0' COMMENT '��Դ���',
  `height` int(11) NOT NULL DEFAULT '0' COMMENT '��Դ�߶�',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '��Դ��С',
  PRIMARY KEY (`id`),
  KEY `id_type` (`info_app_id`,`type`),
  KEY `resource_url` (`resource_url`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=utf8 COMMENT='��Դ��';

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
('135','24','0','/upload/img/2019/05/26/5cea08c9b5f48.png','320','569','65849'),
('136','24','0','/upload/img/2019/05/26/5cea0962402bb.jpg','300','533','30348'),
('123','22','0','/upload/img/2019/05/25/5ce9331c9a019.png','524','427','144068'),
('124','22','0','/upload/img/2019/05/25/5ce933237adcc.png','615','365','154063'),
('125','22','0','/upload/img/2019/05/25/5ce9332a201c3.png','615','365','138301'),
('126','0','0','/upload/img/2019/05/25/5ce93a85bff3d.jpg','640','640','20885'),
('122','0','0','/upload/img/2019/05/25/5ce9316642ce1.jpg','100','100','12553'),
('127','23','0','/upload/img/2019/05/26/5cea03e59768a.jpg','320','568','36585'),
('128','23','0','/upload/img/2019/05/26/5cea03e8d4f03.png','320','426','105421'),
('129','23','0','/upload/img/2019/05/26/5cea03eb7d3ee.jpg','320','568','47599'),
('130','23','0','/upload/img/2019/05/26/5cea03ee8d24e.png','320','426','51876'),
('131','23','0','/upload/img/2019/05/26/5cea03f1e62c9.jpg','320','480','29606'),
('132','23','0','/upload/img/2019/05/26/5cea03f4bc3e4.png','320','426','26964'),
('133','0','0','/upload/img/2019/05/26/5cea04adb683b.jpg','185','183','4865'),
('134','24','0','/upload/img/2019/05/26/5cea08c70922d.jpg','320','480','38100'),
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
('295','0','0','/upload/img/2019/07/06/5d2047f7bbd16.png','72','72','5643');
DROP TABLE IF EXISTS  `appcms_search_keyword`;
CREATE TABLE `appcms_search_keyword` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `q` varchar(200) NOT NULL DEFAULT '' COMMENT '�����ؼ���',
  `qnum` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '��������',
  `qorder` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '�ؼ�������',
  PRIMARY KEY (`id`),
  KEY `qorder` (`qorder`),
  KEY `q` (`q`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='�����ؼ��ּ�¼��';

insert into `appcms_search_keyword`(`id`,`q`,`qnum`,`qorder`) values
('1','��ӯ��','1','0'),
('2','Ǯ��','1','0'),
('3','�Ҳ��','1','0'),
('4','С��','3','0'),
('5','��è','2','0');
DROP TABLE IF EXISTS  `appcms_url_rewrite`;
CREATE TABLE `appcms_url_rewrite` (
  `url_id` int(11) NOT NULL AUTO_INCREMENT,
  `url_title` varchar(400) NOT NULL DEFAULT '' COMMENT '��ַ����',
  `url_true` varchar(400) NOT NULL DEFAULT '' COMMENT '��ʵ��ַ',
  `url_rule` varchar(400) NOT NULL DEFAULT '' COMMENT 'α��̬����',
  PRIMARY KEY (`url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='α��̬�����';

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

