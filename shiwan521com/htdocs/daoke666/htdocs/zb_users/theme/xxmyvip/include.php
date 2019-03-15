<?php

RegisterPlugin("xxmyvip","ActivePlugin_xxmyvip");

function ActivePlugin_xxmyvip(){
	Add_Filter_Plugin('Filter_Plugin_Admin_TopMenu','xxmyvip_AddMenu');
	Add_Filter_Plugin('Filter_Plugin_Edit_Response5','xxmyvip_Custommeta');
	Add_Filter_Plugin('Filter_Plugin_ViewList_Template','xxmyvip_ChangeTemplate');
	Add_Filter_Plugin('Filter_Plugin_ViewPost_Template','xxmyvip_tags_set');
}

function xxmyvip_AddMenu(&$m){
	global $zbp;
	array_unshift($m, MakeTopMenu("root",'小小蚂蚁主题配置',$zbp->host . "zb_users/theme/xxmyvip/main.php?act=xxmyvip1","","topmenu_xxmyvip"));
}

function xxmyvip_SubMenu($id){
	$arySubMenu = array(		
		0 => array('基本配置', 'xxmyvip1', 'left', false),
	    1 => array('首页配置', 'xxmyvip2', 'left', false),
		2 => array('内页配置', 'xxmyvip3', 'left', false),
        3 => array('其他配置', 'xxmyvip4', 'left', false),
		4 => array('PC版广告', 'xxmyvip5', 'left', false),
		5 => array('移动广告', 'xxmyvip6', 'left', false),
		6 => array('设置说明', 'xxmyvip7', 'left', false),
		
	);
	foreach($arySubMenu as $k => $v){
		echo '<a href="?act='.$v[1].'" '.($v[3]==true?'target="_blank"':'').'><span class="m-'.$v[2].' '.($id==$v[1]?'m-now':'').'">'.$v[0].'</span></a>';
	}
}

function xxmyvip_ChangeTemplate(&$template){
	if( ($template->GetTags('type')=='index') && ($template->GetTags('page'))!='1' ){
		$template->SetTemplate('catalog');
	}
	if( ($template->GetTags('type')=='tag') ){
		$template->SetTemplate('catalog');
	}
}

function xxmyvip_tags_set(&$template){
	global $zbp;
	$template->SetTags('xxmyvip_ztys',$zbp->Config('xxmyvip')->Postztys);
	$template->SetTags('xxmyvip_ljys',$zbp->Config('xxmyvip')->Postljys);
	$template->SetTags('xxmyvip_ljfd',$zbp->Config('xxmyvip')->Postljfd);
	$template->SetTags('xxmyvip_ZYSLTKG',$zbp->Config('xxmyvip')->PostZYSLTKG);
	$template->SetTags('xxmyvip_WTSLTKG',$zbp->Config('xxmyvip')->PostWTSLTKG);
	$template->SetTags('xxmyvip_LBRZKG',$zbp->Config('xxmyvip')->PostLBRZKG);
	$template->SetTags('xxmyvip_BQDZKG',$zbp->Config('xxmyvip')->PostBQDZKG);
	$template->SetTags('xxmyvip_PCDHZ',$zbp->Config('xxmyvip')->PostPCDHZ);
	$template->SetTags('xxmyvip_PCDHY2',$zbp->Config('xxmyvip')->PostPCDHY2);
	$template->SetTags('xxmyvip_YDDH',$zbp->Config('xxmyvip')->PostYDDH);
	$template->SetTags('xxmyvip_YDMC',$zbp->Config('xxmyvip')->PostYDMC);
	$template->SetTags('xxmyvip_BDTJ',$zbp->Config('xxmyvip')->PostBDTJ);
	$template->SetTags('xxmyvip_GJC',$zbp->Config('xxmyvip')->PostGJC);
	$template->SetTags('xxmyvip_MS',$zbp->Config('xxmyvip')->PostMS);
	$template->SetTags('xxmyvip_SYGG',$zbp->Config('xxmyvip')->PostSYGG);
	$template->SetTags('xxmyvip_DBLY',$zbp->Config('xxmyvip')->PostDBLY);
	$template->SetTags('xxmyvip_DBDS',$zbp->Config('xxmyvip')->PostDBDS);
	$template->SetTags('xxmyvip_DBBQ',$zbp->Config('xxmyvip')->PostDBBQ);
	$template->SetTags('xxmyvip_WZFX',$zbp->Config('xxmyvip')->PostWZFX);
	$template->SetTags('xxmyvip_TJYD',$zbp->Config('xxmyvip')->PostTJYD);
	$template->SetTags('xxmyvip_SPFX',$zbp->Config('xxmyvip')->PostSPFX);
	$template->SetTags('xxmyvip_BQSF',$zbp->Config('xxmyvip')->PostBQSF);
	$template->SetTags('xxmyvip_CLBT',$zbp->Config('xxmyvip')->PostCLBT);
	$template->SetTags('xxmyvip_CLNR',$zbp->Config('xxmyvip')->PostCLNR);
    $template->SetTags('xxmyvip_AD',$zbp->Config('xxmyvip')->PostAD);
	$template->SetTags('xxmyvip_AD3',$zbp->Config('xxmyvip')->PostAD3);
	$template->SetTags('xxmyvip_AD4',$zbp->Config('xxmyvip')->PostAD4);
	$template->SetTags('xxmyvip_AD5',$zbp->Config('xxmyvip')->PostAD5);
	$template->SetTags('xxmyvip_AD6',$zbp->Config('xxmyvip')->PostAD6);
	$template->SetTags('xxmyvip_AD7',$zbp->Config('xxmyvip')->PostAD7);
	$template->SetTags('xxmyvip_AD8',$zbp->Config('xxmyvip')->PostAD8);
	$template->SetTags('xxmyvip_AD9',$zbp->Config('xxmyvip')->PostAD9);
}

function xxmyvip_Custommeta(){
    global $zbp,$article;
    $s = <<<js
        <script type="text/javascript">
            var EditorIntroOption2 = {
	            toolbars:[['insertimage']],
	            initialFrameWidth:600,
	            autoHeightEnabled:false,
	            initialFrameHeight:800
            }
            UE.getEditor('meta_tesetu',EditorIntroOption2);
        </script>
js;
if ($zbp->CheckPlugin('UEditor')) {
	echo "<script type=\"text/javascript\" src=\"{$zbp->host}zb_users/theme/xxmyvip/script/ues.js\"></script>";
}
    echo '<div id="alias" class="editmod"><label for="meta_Feng_prospmc" class="editinputname">商品名称</label>
            <input type="text" style="width:828px;margin-top:-5px;" name="meta_prospmc" value="'.htmlspecialchars($article->Metas->prospmc).'"/>
          </div>';
	echo '<div id="alias" class="editmod"><label for="meta_Feng_procpy5" class="editinputname">列表页标价</label>
            <input type="text" style="width:813px;margin-top:-5px;" name="meta_procpy5" value="'.htmlspecialchars($article->Metas->procpy5).'"/>
          </div>';
    echo '<div id="alias" class="editmod"><label for="meta_Feng_procpy1" class="editinputname">内页①行</label>
            <input type="text" style="width:828px;margin-top:-5px;" name="meta_procpy1" value="'.htmlspecialchars($article->Metas->procpy1).'"/>
          </div>';
    echo '<div id="alias" class="editmod"><label for="meta_Feng_procpy2" class="editinputname">内页②行</label>
            <input type="text" style="width:828px;margin-top:-5px;" name="meta_procpy2" value="'.htmlspecialchars($article->Metas->procpy2).'"/>
          </div>';
    echo '<div id="alias" class="editmod"><label for="meta_Feng_procpy3" class="editinputname">内页③行</label>
            <input type="text" style="width:828px;margin-top:-5px;" name="meta_procpy3" value="'.htmlspecialchars($article->Metas->procpy3).'"/>
          </div>';
	echo '<div id="alias" class="editmod"><label for="meta_Feng_procpy4" class="editinputname">内页④行</label>
            <input type="text" style="width:828px;margin-top:-5px;" name="meta_procpy4" value="'.htmlspecialchars($article->Metas->procpy4).'"/>
          </div>';
    echo '<div id="alias" class="editmod"><label for="meta_Feng_proanan" class="editinputname">内页按钮</label>
            <input type="text" style="width:828px;margin-top:-5px;" name="meta_proanan" value="'.htmlspecialchars($article->Metas->proanan).'"/>
          </div>';
if($article->Metas->tesetu){
    echo '<p><img id="upload123" src="'.$article->Metas->tesetu.'" width="240px" height="80px"></p>';
}
	echo'<div id="alias"><p style="padding:0;" class="uploadimg"><strong style="color: #ffffff;font-size:11px;margin-right:3px;padding:5px 3px;background: #3a6ea5;border: 1px solid #3399cc;cursor: pointer;">点击上传图片(325*260)</strong><input name="meta_prosptp" id="customLogo" type="text" class="uplod_img" style="width:767px;height:27px;margin-top:-20px;padding-top:1px;" value="'.$article->Metas->prosptp.'"/></p></div>';  
}

function InstallPlugin_xxmyvip(){
	global $zbp;
	if(!$zbp->Config('xxmyvip')->HasKey('Version')){
		$zbp->Config('xxmyvip')->Version = '2.5';
		$zbp->Config('xxmyvip')->Postztys = 'd10101';
		$zbp->Config('xxmyvip')->Postljys = '450A11';
		$zbp->Config('xxmyvip')->Postljfd = 'd10101';
		$zbp->Config('xxmyvip')->PostZYSLTKG = '1';
		$zbp->Config('xxmyvip')->PostWTSLTKG = '1';
		$zbp->Config('xxmyvip')->PostLBRZKG = '1';
		$zbp->Config('xxmyvip')->PostBQDZKG = '1';
		$zbp->Config('xxmyvip')->PostPCDHZ = '<li><a href="http://xiaoxiaomayi.com/">首页</a></li>
<li><a href="http://xiaoxiaomayi.com/">主题配置中设置</a></li>
<li>
<a href="http://xiaoxiaomayi.com/"><span id="remen">给我留言</span></a>
<t><a href="http://xiaoxiaomayi.com/">二级导航</a></t>
</li>
<li>
<a href="http://xiaoxiaomayi.com/">免费资源</a>
<t>
<a href="http://xiaoxiaomayi.com/">二级导航</a>
<a href="http://xiaoxiaomayi.com/">二级导航</a>
</t>
</li>
<li>
<a href="http://xiaoxiaomayi.com/"><span id="xin">经验心得</span></a>
<t><a href="http://xiaoxiaomayi.com/">二级导航</a></t>
</li>';
		$zbp->Config('xxmyvip')->PostPCDHY2 = '<img src="http://xiaoxiaomayi.com/images/grgzh.jpg" />';
		$zbp->Config('xxmyvip')->PostYDDH = '<li><a href="http://xiaoxiaomayi.com/">全站首页</a></li>
<li><a href="http://xiaoxiaomayi.com/">创业动态</a></li>
<li><a href="http://xiaoxiaomayi.com/">经验心得</a></li>
<li><a href="http://xiaoxiaomayi.com/">网络营销</a></li>
<li><a href="http://xiaoxiaomayi.com/">好文分享</a></li>';
		$zbp->Config('xxmyvip')->PostGJC = '关键词1,关键词2,关键词3';
		$zbp->Config('xxmyvip')->PostYDMC = '移动版网站名称';
		$zbp->Config('xxmyvip')->PostMS = '首页描述标签内容';
		$zbp->Config('xxmyvip')->PostSYGG = '首页公告内容';
		$zbp->Config('xxmyvip')->PostDBLY = '<p>来源：<a href="http://xiaoxiaomayi.com/">小小蚂蚁博客</a>（微信/QQ号：604980661），转载请保留出处和链接！</p>';
		$zbp->Config('xxmyvip')->PostDBDS = '文章底部广告（PC版）';
		$zbp->Config('xxmyvip')->PostDBBQ = '<p>微信公众号：QQ604980661 关注1元购买iPhone6！</p>
<p>加入【网络营销联盟】QQ群：72599821（加群验证：小小蚂蚁博客）</p>
<p>这里的内容可以随意更改，在后台-主题配置中设置。</p>';
		$zbp->Config('xxmyvip')->PostWZFX = '百度分享获取地址：http://share.baidu.com/';
		$zbp->Config('xxmyvip')->PostTJYD = '百度推荐获取地址：http://tuijian.baidu.com/，百度推荐可能会有一些未知的问题，使用中有任何问题请直接联系百度官方客服！';
		$zbp->Config('xxmyvip')->PostSPFX = '百度分享获取地址：http://share.baidu.com/';
		$zbp->Config('xxmyvip')->PostBQSF = '<a href="http://xiaoxiaomayi.com/" target="_blank">网络推广</a> | 
<a href="http://xiaoxiaomayi.com/" target="_blank">网络营销</a> | 
<a href="http://xiaoxiaomayi.com/reed/325.html" target="_blank">本站主题</a> | 
<a href="http://xiaoxiaomayi.com/" target="_blank">网络创业</a> | 
<a href="http://xiaoxiaomayi.com/" target="_blank">电子商务</a>';
		$zbp->Config('xxmyvip')->PostCLBT = '我是标题';
		$zbp->Config('xxmyvip')->PostCLNR = '内容的形式各种各样，可以是文本，也可以是各种广告等。';
		$zbp->Config('xxmyvip')->PostAD = '首页公告下方广告（PC版）';
		$zbp->Config('xxmyvip')->PostAD3 = '分类页和文章页“当前位置”下方广告（PC版）';
		$zbp->Config('xxmyvip')->PostAD4 = '评论框上方广告（PC版）';
		$zbp->Config('xxmyvip')->PostAD5 = '<img src="http://xiaoxiaomayi.com/images/alipay.gif"/>';
		$zbp->Config('xxmyvip')->PostAD6 = '分类页和文章页“当前位置”下方广告（移动版）';
		$zbp->Config('xxmyvip')->PostAD7 = '文章底部广告（移动版）';
		$zbp->Config('xxmyvip')->PostAD8 = '评论框上方广告（移动版）';
		$zbp->Config('xxmyvip')->PostAD9 = '首页公告下方广告（移动版）';
		$zbp->SaveConfig('xxmyvip');
	}
}


//卸载主题
function UninstallPlugin_xxmyvip(){
	global $zbp;
	//$zbp->DelConfig('xxmyvip');
}

?>