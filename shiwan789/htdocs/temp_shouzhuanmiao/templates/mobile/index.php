<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title><?php if(defined('SEO_TITLE') && SEO_TITLE != ''){ echo SEO_TITLE;}else{echo SITE_NAME.' - 手机赚钱软件大全';}?></title>
<link rel="stylesheet"  href="<?php echo SITE_PATH;?>templates/style/css/baidu.css"  type="text/css" />
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/style/css/js/comm.js"></script>
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/style/css/js/TouchSlide.1.1.js"></script>
<script type="text/javascript" src="templates/style/css/js/TouchSlide.1.1.js"></script>
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/style/css/js/jquery-1.7.1.min.js"></script>
</head>
<body>
		<!-- 头部内容 开始 -->
			<?php require_once ('inc_head.php');?>
		<!-- 头部内容 结束 -->
</nav>
	</header>
		<div class="part"></div>
<div id="slideBox" class="slideBox">
    				  <div class="bd">
			  <div class="tempWrap">
		      <div class="box big-banner" style="overflow:hidden; position:relative;"><ul style="width: 1440px; position: relative; overflow: hidden; padding: 0px; margin: 0px; transition: 1000ms; -webkit-transition: 1000ms; -webkit-transform: translate(-720px, 0px) translateZ(0px);"><?php $c->get_ad(16); ?></a></li></ul>
  		       <div class="hdli">
        			  <ul><li class="">1</li><li class="on">2</li></ul>
  		    	</div>          
  		  </div>          
	<script>
	TouchSlide({ 
	slideCell:"#slideBox",
	titCell:".hdli ul", 
	mainCell:".bd ul", 
	effect:"leftLoop", 
	autoPage:true,
	autoPlay:true
});

</script>
	<!--焦点图结束-->
		<p style="margin: 10px 0;text-align: justify;font-family: Calibri;font-size: medium;text-indent: 0;white-space: normal;padding: 5px;line-height: 21px">
		<strong><span style="color: #9900CC; letter-spacing: 0px; font-size: 17px; font-family: 楷体;">温馨提示：</span></strong>
		<span style="font-family: 楷体;color: #2A2A2A;letter-spacing: 0;font-size: 17px">①君子爱财，取之有道。小胜凭智，大胜靠德。②【谨记】兼职有行动才有钱赚，网上兼职赚钱均免费，需要交钱的都是骗子行为!</span>
		</p>	

		<div class="part"></div>
	<div class="box wrap-content">
		<div class="nav-head">
		                <a href="<?php echo SITE_PATH;?>info/1.html" class="nav-btn4"><em></em>新手攻略</a>
                                <a href="<?php echo SITE_PATH;?>index.php?tpl=list_pai" class="nav-btn3"><em></em>人气排行</a>
				<a href="<?php echo SITE_PATH;?>special/24.html" class="nav-btn1"><em></em>任务最多</a>
				<a href="<?php echo SITE_PATH;?>special/23.html" class="nav-btn3"><em></em>单价最高</a>
                </div>
		

	<div class="part"></div>
	  <div class="title">
	    <h2>苹果试玩App赚钱排行榜前20(必玩)</h2>
	  </div>
			<ul class="app-list" id="app_url">
      
      <?php $a = $c->get_recommend(array('area_id'=>22,'pagesize'=>20,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'((area_type=3 )'));//print_r($a['list'][0]);?>
     <?php if(!empty($a['list'])){ foreach($a['list'] as $k => $v){?>
					<li class="box"  url="<?php echo 'http://'.$_SERVER['HTTP_HOST'].$v['surl'];?>" onclick="locaUrl(this)">
<a href="<?php echo $v1['surl'];?>"class="app-btn-down">下载</a>
						<a class="app-icon" href="<?php echo $v['surl'];?>">
							<img src="<?php echo $v['app_logo'];?>" border="0">
						</a>
						<div class="app-info">
							<span class="app-name">
								<a href="<?php echo $v['surl'];?>" title="<?php echo $v['app_title'];?>"><?php echo $v['app_title'];?></a>
							</span>
				<div class="line-5"></div>
							<span class="b-v"><?php echo $v['app_size'];?> &nbsp;&nbsp; <?php echo $v['app_down'];?>人在玩</span>
				<div class="line-5"></div>
<div class="l level"><span class="<?php echo "l".ceil($v['app_recomment']/2); ?>"></span></div>

						</div>
					</li>
<div class="box part-1"></div>
<?php } }?>


	<div class="part"></div>
	  <div class="title">
	    <h2>安卓赚钱平台推荐</h2>
	  </div>
			<ul class="app-list" id="app_url">
      
      <?php $a = $c->get_recommend(array('area_id'=>3,'pagesize'=>10,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'((area_type=3 )'));//print_r($a['list'][0]);?>
     <?php if(!empty($a['list'])){ foreach($a['list'] as $k => $v){?>
					<li class="box"  url="<?php echo 'http://'.$_SERVER['HTTP_HOST'].$v['surl'];?>" onclick="locaUrl(this)">
<a href="<?php echo $v1['surl'];?>"class="app-btn-down">下载</a>
						<a class="app-icon" href="<?php echo $v['surl'];?>">
							<img src="<?php echo $v['app_logo'];?>" border="0">
						</a>
						<div class="app-info">
							<span class="app-name">
								<a href="<?php echo $v['surl'];?>" title="<?php echo $v['app_title'];?>"><?php echo $v['app_title'];?></a>
							</span>
				<div class="line-5"></div>
							<span class="b-v"><?php echo $v['app_size'];?> &nbsp;&nbsp; <?php echo $v['app_down'];?>人在玩</span>
				<div class="line-5"></div>
<div class="l level"><span class="<?php echo "l".ceil($v['app_recomment']/2); ?>"></span></div>

						</div>
					</li>
<div class="box part-1"></div>
<?php } }?>	


<div class="column-wrap">
				<div class="line-5"></div>
		<div class="part"></div>
			<div class="box title"><h2>专题标签</h2></div>
			<ul class="tags-ul">
				<?php $a = $c->get_recommend(array('pagesize'=>PAGESIZE,'count'=>1,'rewrite'=>SITE_REWRITEURL,'where'=>' area_type=3','p'=>$p));?>
					<?php foreach($a['list'] as $v):?>
<li>
						<div class="">
							<span class=""><a href="<?php echo $v['surl'];?>"><?php echo $v['title'];?></a></span>
						</div>
					<?php endforeach;?>
  </ul>
</div>          
				<!-- 专题列表 结束 -->
				<div class="box title"><h2>网赚资讯</h2></div>
		<div class="info-list3">
		  <ul>
								<li>
  				    <?php $a = $c->get_list(array('count'=>0,'cate_id'=>19,'pagesize'=>8,'type'=>1,'rewrite'=>SITE_REWRITEURL,'order'=>'order by info_order desc'));
              				  //print_r($a);?>
                    				<?php foreach($a['list'] as $k => $v ){?>
							  <ul>
								<li>
					<a href="<?php echo $v['surl'];?>">
                                        
					<img src="<?php echo $v['info_img']; ?>">
						<h2 title="<?php echo $v['info_title'];?>"><?php echo $v['info_title'];?></h2>
							<p><?php echo helper::utf8_substr(strip_tags($v['info_desc']),0,55);?></p>
					</a>
			  </li>
<div class="box part-1"></div>
                    <?php } ?>
                    </ul>
	</div>
		<footer>
		<script type="text/javascript">
		$(function(){
			$("#totop").hide();
			$(function(){
				$(window).scroll(function(){
					if ($(window).scrollTop()>60){//大于60px时显示
						$("#totop").fadeIn();
					}else{
						$("#totop").fadeOut();
					}
				});
				$("#totop").click(function(){
					$('body,html').animate({scrollTop:0},500);
					return false;
				});
			});
		}); 
		</script>
		<div id="back-top">
			<a id="totop" title="返回顶部" style="display: none;">返回顶部</a>
		</div>
<div class="box wrap-footer">
             
             站长QQ:542593802
	<!-- 底部内容 开始 -->
			<?php require_once ('inc_foot.php');?>
		<!-- 底部内容 结束 -->
</div>

										
	    


</body></html>