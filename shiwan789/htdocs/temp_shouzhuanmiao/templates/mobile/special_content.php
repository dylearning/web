<?php
    $lists = $c->get_recommend(array('area_id'=>$id,'pagesize'=>PAGESIZE,'count'=>1,'rewrite'=>SITE_REWRITEURL,'resource'=>0,'where'=>'(area_type=4 or area_type=3)'));//print_r($lists);exit;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>专题 - <?php echo SITE_NAME;?></title>
<link rel="stylesheet"  href="<?php echo SITE_PATH;?>templates/style/css/baidu.css"  type="text/css" />
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/style/css/js/comm.js"></script>
</head>
<body>
	<div class="box wrap">
		<!-- 头部内容 开始 -->
		<?php require_once ('inc_head.php');?>
		<!-- 头部内容 结束 -->
		<p class="line-t-10"></p>
		<!-- 专题内容 开始 -->
		<div class="box wrap-content">
		<div class="title2">
			<h2>专题列表&nbsp;&#187;&nbsp;<?php echo $lists['title'];?></h2></div>

                <div class="tpc-head bg-fff">
                    <div class="topics pad-t-b" style="height:auto;">
                        <a class="l topic-item-img" style="margin:10px 10px 10px 10px;" ><img src="<?php echo $lists['area_logo']?>" width="50%" border="0" alt=""></a></br>
                        <div style="margin:10px 10px 10px 10px;" ><?php echo $lists['area_html']?> </div>
                        <div style="clear:both;"></div>
                    </div>
                </div>

			<p class="line-t-10"></p>
		<div class="box app-area">
			<ul class="app-list" id="app_url">
					<?php foreach($lists['list'] as $v):?>
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
							<span class="b-v">大小：<?php echo $v['app_size'];?> &nbsp;&nbsp; <?php echo $v['app_down'];?>次</span>
				<div class="line-5"></div>
<div class="l level"><span class="<?php echo "l".ceil($v['app_recomment']/2); ?>"></span></div>

						</div>
					</li>
<div class="box part-1"></div>
					<?php endforeach;?>
				</ul>
			</div>
		</div>
		<!-- 专题内容 结束 -->
		<!-- 底部内容 开始 -->
			<?php require_once ('inc_foot.php');?>
		<!-- 底部内容 结束 -->
	</div>
</body>
</html>
