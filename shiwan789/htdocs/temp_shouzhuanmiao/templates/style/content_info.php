<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title><?php echo $con['info_title'].'- '.SITE_NAME;?></title>
<link rel="stylesheet"  href="<?php echo SITE_PATH;?>templates/style/css/baidu.css"  type="text/css" />
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/style/css/js/comm.js"></script>
</head>
<body>
	<div class="box wrap">
		<!-- 头部内容 开始 -->
		<?php require_once ('inc_head.php');?>
		<!-- 头部内容 结束 -->
</nav>
	</header>    <div class="part"></div>
	<div class="box column-wrap">
		<div class="title2">
			<h2><?php echo $con['info_title'];?></h2>
		</div>
		<div class="info-top">
		  <div class="info-time">时间：<?php echo date('Y-m-d',$con['info_update_time']);?></div>
	  </div>
				</div>
					<div class="info-details">
			<div class="info-body">
			<ul class="app-list" id="app_url">
					<?php echo $con['info_body'];?>
				</div>
			</div>
			<!-- 资讯内容 结束 -->
		</div>
<div class="box wrap-footer">
<?php echo($c->get_flink($tpl));?>
		<!-- 底部内容 开始 -->
			<?php require_once ('inc_foot.php');?>
		<!-- 底部内容 结束 -->
	</div>
</body>
</html>
