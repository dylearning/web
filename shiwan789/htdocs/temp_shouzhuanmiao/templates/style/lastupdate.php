<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>手机赚钱软件最新发布网站 - <?php echo SITE_NAME;?></title>
<link rel="stylesheet"  href="<?php echo SITE_PATH;?>templates/style/css/baidu.css"  type="text/css" />
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/style/css/js/comm.js"></script>
</head>
<body>
						<div class="box wrap">
						<!-- 头部内容 开始 -->
						<?php require_once ('inc_head.php');?>
						<!-- 头部内容 结束 --> 
<div class="box wrap-content">
			<div class="box app-area">
							<ul class="app-list" id="app_url">
<div class="" id="tab-1">

  <?php $a = $c->get_list(array('fields'=>'app_title,app_logo,app_size,app_down,app_id,last_cate_id','pagesize'=>100,'rewrite'=>SITE_REWRITEURL,'count'=>0));?>
   					    <?php if(!empty($a['list'])){ foreach($a['list'] as $k => $v){?>
					<li class="box" url="<?php echo 'http://'.$_SERVER['HTTP_HOST'].$v['surl'];?>" onclick="locaUrl(this)"><a class="app-icon" href="<?php echo $v['surl'];?>">
						<img src="<?php echo $v['app_logo'];?>" border="0">
					  </a>
						<a href="<?php echo $v['surl'];?>"class="app-btn-down">下载</a>
						<div class="app-info">
							<span class="app-name">
								<a href="<?php echo $v['surl'];?>" title="<?php echo $v['app_title'];?>"><?php echo $v['app_title'];?></a>							</span>
				<div class="line-5"></div>
							<span class="b-v"><?php echo $v['app_size'];?> &nbsp;&nbsp; <?php echo $v['app_down'];?>人在玩</span>
				<div class="line-5"></div>

</li>
<div class="box part-2"></div>
                       					<?php } }?>
</div>
		</div>
<div class="box wrap-footer">
<?php echo($c->get_flink($tpl));?>
		<!-- 底部内容 开始 -->
			<?php require_once ('inc_foot.php');?>
		<!-- 底部内容 结束 -->
</div>