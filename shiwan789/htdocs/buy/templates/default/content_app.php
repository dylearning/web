<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php if($con['seo_title']==''){echo $con['app_title'].'app免费下载|'.$con['app_title'].'手机版下载 - '.SITE_NAME;}
else{echo $con['seo_title'].'-'.SITE_NAME;}?></title>
<meta name="keywords" content="<?php if($con['seo_keywords']==''){echo $con['app_title'];}
else{echo $con['seo_keywords'];}?>" />
<meta name="description" content="<?php if($con['seo_desc']==''){$desc=$c->deletehtml($con['app_title'].','.$con['app_desc']);
if(strlen($desc)>358)
{echo substr($desc,0,356).'...';}
else
{echo $desc;}}
else{echo $con['seo_desc'];}?>" />
<script language="javascript" type="text/javascript" src="<?php echo SITE_PATH;?>templates/lib/jquery-1.7.1.min.js" ></script>
<link rel="stylesheet"  href="<?php echo SITE_PATH;?>templates/<?php echo TEMPLATE;?>/css/style.css"  type="text/css" />

<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/<?php echo TEMPLATE;?>/css/js/comm.js"></script>
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/<?php echo TEMPLATE;?>/css/js/slider.js"></script>
<?php require_once ( 'inc_head.php');?>
    <p class="line-t-15"></p>
        <div class="warp-content"> <!-- 主体内容 开始 -->
        <div class="head-locate">
            <span>您当前位置：</span>
            <?php
            //exit(print_r($con));
            $nav = "";
            foreach($c->cate_father($con['last_cate_id']) as $n){
                $nav .= '<a href="'.$n['surl'].'">'.$n['cname'].'</a>&nbsp;>&nbsp;';
            }
            echo $nav;
            ?>
            <span><?php echo $con['app_title'];?></span>
        </div>
        <div class="marauto">

            <div class="l body-left"> <!-- 左侧主体内容 -->
                <div class="bor-sty bg-fff bout-content app-info">
                    <div class="code-right">
                        <?php // echo $c->google_qrcode(urlencode(SITE_URL.SITE_PATH.'download.php?hid='.$con['history'][0]['appcms_history_id']),"140");
                echo $c->liantu_qcode(urlencode(SITE_URL.SITE_PATH.'download.php?hid='.$con['history'][0]['appcms_history_id']), 140, $logo = null);
?>
                        <p>建议使用手机浏览器扫描二维码访问，快速下载本应用</p>
                       
                    </div>
                    <div class="app-info-i">
                        <a href="<?php echo $con['surl']?>" class="l rank-img"><img src="<?php echo $con['app_logo']?>" border="0" alt=""></a>
                        <div class="app-info-n">
                            <a class="app-title" href="<?php echo $con['surl'];?>"><b><?php echo $con['app_title'];?></b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="col-94 download-num">注册： <?php echo $con['app_down'];?></span>&nbsp;&nbsp;<span class="col-94 download-num">点击： <?php echo $con['app_visitors'];?></span>
                            <ul class="level"><li class="l<?php echo ceil($con['app_recomment']/2);?>"></li></ul>
                        </div>
                        <br /><br />
                        <div class="detailed-info">
                            <span>大小：<?php echo $con['app_size'];?></span>
                            <span>更新日期：<?php echo date("Y-m-d",$con['app_update_time']);?></span>
                            <span style="font-weight:bold;font-size:14px;color:#EC0404">邀请码：<?php echo $con['charge_app_id'];?></span>
                            <span>最新版本：<?php echo $con['app_version'];?></span>
                            <span>系统支持：<?php echo $con['app_system'];?></span>
                        </div>
                    </div>
                    <div class="down-install">
                        <a href="javascript:void(0);" onclick="window.open('<?php echo(SITE_PATH.'download.php?id='.$con['history'][0]['appcms_history_id']);?>');" class="down-computer">注册地址</a>&nbsp;&nbsp;

                    </div>
                    <p class="hr"></p>
                    <div class="screenshot">
                        

                    </div>
                    <div class="introduce">
                        <h2><b><?php echo $con['app_title']; ?> 应用介绍</b></h2>
                        <br />
                        <div class="in-info">
                            <?php echo $con['app_desc']; ?>
                        </div>
                        <p class="line-t-25"></p>
                        <h2><b><?php echo $con['app_title']; ?> 应用截图</b></h2>
                        <br />
<div class="main" style="margin-top:10px;">
<div class="pro-switch">
		<div class="slider">
			<div align="center" class="flexslider">
				<ul class="slides">
					<?php foreach($con['resource'] as $k => $img){?>
					<li> <img src="<?php echo $img['resource_url']?>" height="450" width="300" ></li>
					<?php }?>
				</ul>
			</div>
		</div>
	</div>
	</div>
<script type="text/javascript">
    $(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
                    </div>
                    <div class="comment">
                        <?php echo $con['comment_code'];?>

                    </div>

                </div>
            </div><!-- 左侧主体内容  结束 -->
            <!--右侧内容-->
            <?php require_once (dirname(__FILE__) . '/inc_right.php');?>
        </div>
    </div> <!-- 主体内容 结束 -->
    <p class="line-t-15"></p>
    <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=0" ></script>
    <script type="text/javascript" id="bdshell_js"></script>
    <script type="text/javascript">
        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
    </script>
    <?php require_once ('inc_foot.php');?>
