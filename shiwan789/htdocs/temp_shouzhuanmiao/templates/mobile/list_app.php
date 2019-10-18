<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title><?php if($c->categories[$cid]['ctitle']=='') {echo $c->categories[$cid]['cname'].'应用下载 - '.SITE_NAME;} else {echo $c->categories[$cid]['ctitle'].' - '.SITE_NAME;}?></title>
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

<div class="box wrap-content">
			<div class="box app-area">
							<ul class="app-list" id="app_url">
<div class="" id="tab-1">
					<?php
					$a = $c->get_list(array('pagesize'=>PAGESIZE,'count'=>1,'cate_id'=>$cid,'rewrite'=>SITE_REWRITEURL,'order'=>'order by app_order desc,create_time asc','p'=>$p));
					?>
					<?php if(!empty($a['list'])){foreach($a['list'] as $k=> $v){?>
					<li class="box"  url="<?php echo 'http://'.$_SERVER['HTTP_HOST'].$v['surl'];?>" onclick="locaUrl(this)">
                               <span class="rank-num-1 <?php if($k>2){echo "rank-num-grey";}?>"><?php echo ($k+1);?></span>				
<a class="app-icon" href="<?php echo $v['surl'];?>">
						<img src="<?php echo $v['app_logo'];?>" border="0">
						</a>
						<a href="<?php echo $v['surl'];?>"class="app-btn-down">下载</a>
						<div class="app-info">
							<span class="app-name">
								<a href="<?php echo $v['surl'];?>" title="<?php echo $v['app_title'];?>"><?php echo $v['app_title'];?></a>
							</span>
				<div class="line-5"></div>
							<span class="b-v"><?php echo $v['app_size'];?> &nbsp;&nbsp; <?php echo $v['app_down'];?>人在玩</span>
				<div class="line-5"></div>
<div class="l level"><span class="<?php echo "l".ceil($v['app_recomment']/2); ?>"></span></div>
					</li>
<div class="box part-2"></div>
<?php } }else{ echo '<div class="h788"><span>没有找到数据</span></div>';}?>
<div class="pager">
				<?php if(!empty($a['list']))echo $a['pagebar']['pagecode']?>
			</div>
			</div>
			<ul class="app-list" id="app_url">
<div class="" id="tab-2"  style="display:none;">
      <?php $a = $c->get_recommend(array('area_id'=>2,'pagesize'=>8,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=3  )'));//print_r($a['list'][0]);?>
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