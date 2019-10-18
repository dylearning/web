<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title><?php echo $c->categories[$cid]['cname'].'-苹果试玩经验教程,安卓手机试玩赚钱评测- '.SITE_NAME;?></title>
<link rel="stylesheet"  href="<?php echo SITE_PATH;?>templates/style/css/baidu.css"  type="text/css" />
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/style/css/js/comm.js"></script>
</head>
<body>
	<div class="box wrap">
		<!-- 头部内容 开始 -->
			<?php require_once ('inc_head.php');?>
		<!-- 头部内容 结束 -->
</nav>
	</header>
<div class="info-list">
				<!-- 资讯列表 开始 -->
				<?php $a = $c->get_list(array('type'=>1,'pagesize'=>PAGESIZE,'count'=>1,'cate_id'=>$cid,'rewrite'=>SITE_REWRITEURL,'p'=>$p));?>

					<?php foreach($a['list'] as $k => $v):?>
						  <ul>
								<li>
					<a href="<?php echo $v['surl'];?>">
<img src="<?php echo $v['info_img']; ?>" border="0">
						<h2 title="<?php echo $v['info_title'];?>"><?php echo $v['info_title'];?></h2>
							<p><?php echo helper::utf8_substr(strip_tags($v['info_desc']),0,55);?></p>
					</a>
			  </li>
<div class="box part-1"></div>
					<?php endforeach;?>
				</ul>
				<!-- 资讯列表 结束 -->
			</div>
			<div class="pager">
				<?php if(!empty($a['list']))echo $a['pagebar']['pagecode']?>
			</div>
		</div>
<div class="box wrap-footer">
<?php echo($c->get_flink($tpl));?>
		<!-- 底部内容 开始 -->
			<?php require_once ('inc_foot.php');?>
		<!-- 底部内容 结束 -->
	</div>
</body>
</html>