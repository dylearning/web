<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php if(defined('SEO_TITLE') && SEO_TITLE != ''){ echo SEO_TITLE;}else{echo SITE_NAME.' - 手赚市场-苹果赚钱软件-安卓赚钱软件';}?></title>
<meta name="keywords" content="<?php if(defined('SEO_KEYWORDS')){ echo SEO_KEYWORDS;}?>">
<meta name="description" content="<?php if(defined('SEO_DESCRIPTION')){echo SEO_DESCRIPTION;}?>">
<script language="javascript" type="text/javascript" src="<?php echo SITE_PATH;?>templates/lib/jquery-1.7.1.min.js" ></script>
<link rel="stylesheet"  href="<?php echo SITE_PATH;?>templates/<?php echo TEMPLATE;?>/css/style.css"  type="text/css" />
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/<?php echo TEMPLATE;?>/css/js/comm.js"></script>
<script type="text/javascript" src="<?php echo SITE_PATH;?>templates/lib/nbspslider-1.1/jquery.nbspSlider.1.1.js"></script>
<link href="<?php echo SITE_PATH;?>templates/lib/nbspslider-1.1/css/css.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="templates/default/css/img/favicon.ico">
<script type="text/javascript">
    $(document).ready(function(){
        $("#index_top_left").nbspSlider({widths:'720px',heights:'200px',numBtnSty:"num",numBtnShow:1,speeds:500,delays:4000,preNexBtnShow:0});
    });
</script>
<?php require_once ('inc_head.php')?>
<p class="line-t-10"></p>
<div class="warp-content"> <!-- 主体内容 开始 -->

			<?php $a = $c->get_list(array('count'=>0,'cate_id'=>21,'pagesize'=>10,'type'=>1,'rewrite'=>SITE_REWRITEURL));
                //print_r($a);?>
                
				<p class="line-t-10"></p>
        <div class="l body-left"> <!-- 左侧主体内容 -->
            <div class="body-top-poster" id="index_top_left">
                <ul style=""><?php $c->get_ad(16); ?></ul>
            </div>
			
            <p class="line-t-10"></p>
            <!--手赚推荐-->

            <?php $a = $c->get_recommend(array('area_id'=>2,'pagesize'=>15,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=3  )'));//print_r($a['list'][0]);?>
            <div class="body-cent-boutique bor-sty bg-fff">
                <p class="line-t-10"></p>
                <span class="title"><em><?php echo $a['title']; ?></em></span>
                <ul class="bout-content">
                <?php if(!empty($a['list'])){ foreach($a['list'] as $k => $v){?>
                    <li>
                        <dl>
                            <dt class="play-img"><a href="<?php echo $v['surl']?>"><img src="<?php echo $v['app_logo']; ?>" width="72" height="72" border="0" alt="<?php echo $v['app_title']; ?>"></a></dt>
                            <dd class="play-name"><a href="<?php echo $v['surl']?>"><?php echo $v['app_title']; ?></a></dd>
                            <dd class="play-type"><?php echo $v['cate']['cname']; ?></dd>
                            <dd class="play-download" style="display:none;"><a href="<?php echo $v['surl']?>">查看注册</a></dd>
                        </dl>
                    </li>
                <?php } }?>
                </ul>
            </div>

            <p class="line-t-10"></p>
			
			            <!--试玩手赚-->
                    
			
            <!--最新排行-->
            
            <div>
                
               

            </div>
        </div><!-- 左侧主体内容  结束 -->
        <div class="r body-right"><!-- 右侧主体内容 -->
            <!--每日推荐-->
            <div class="center-warp">
<div><img src="templates/default/css/img/index_right/a2.jpg" border="0"></div>
<p class="line-t-10"></p>
<a href="/info/43.html" target="_blank"><img src="/templates/default/css/img/zhinan.gif" alt="手机赚钱常见问题" width="235" height="95" border="0"></a>	
                <p class="line-t-10"></p>
                <!--上升最快-->
                <?php $a = $c->get_recommend(array('area_id'=>2,'pagesize'=>12,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=3 )'));//print_r($a);?>
                <div class="bor-sty asce-order">
                    <span class="rank-title"><?php echo $a['title']; ?></span>
                    <div class="l ranking">
                        <ul>
                        <?php if(!empty($a['list'])){foreach($a['list'] as $k => $v ){?>
                            <li>
                                <p class="open" <?php if($k!=0) echo "style='display:none;'" ?>>
                                    <em class="l">
                                    <span class="sort-num sort <?php if($k>2){echo "sort-num-grey";}?>"><?php echo ($k+1);?></span>
                                    <a href="<?php echo $v['surl'];?>" class="rank-img"><img src="<?php echo $v['app_logo'];?>" border="0" alt="<?php echo $v['app_title'];?>"></a>
                                    </em>
                                    <span class="r info-and-download">
                                        <a href="<?php echo $v['surl'];?>" class="txt-overflw description"><?php echo $v['app_title'];?></a>
                                        <a href="<?php echo $v['surl']?>" class="dwd">查看注册</a>
                                    </span>
                                </p>
                                <p class="close" <?php if($k==0) echo "style='display:none;'" ?>>
                                    <span class="sort-num sort <?php if($k>2){echo "sort-num-grey";}?>"><?php echo ($k+1);?></span>
                                    <a href="<?php echo $v['surl'];?>" class="col-6b txt-overflw description"><?php echo $v['app_title'];?></a>
                                    <span class="col-94 download-num"><?php echo $v['app_down'];?>次</span>
                                </p>
                            </li>
                            <?php } } ?>
                            </ul>
                    </div>
                </div>
            <p class="line-t-10"></p>				
            </div>


        </div><!-- 右侧主体内容  结束 -->
        <p class="line-t-10"></p>

		<!--苹果手赚-->
                     
                     <div class="i8i3 bor-sty bg-fff">
					 <div class="modp_top">
                     <h3>&nbsp;»&nbsp;<a href="<?php echo $c->categories[1]['surl'];?>" onclick="tj('tj-ad49','')">苹果赚钱</a></h3>
                     <a href="<?php echo $c->categories[1]['surl']?>" class="modp_more" onclick="tj('tj-ad50','')">更多&gt;&gt;</a>
                     </div>
            <?php $a = $c->get_list(array('pagesize'=>14,'cate_id'=>1,'count'=>0,'rewrite'=>SITE_REWRITEURL));?>
            <ul class="bout-content">
                <?php foreach($a['list'] as $k => $v){?>
                <li>
                        <dl>
                            <dt class="play-img"><a href="<?php echo $v['surl']?>"><img src="<?php echo $v['app_logo']; ?>" width="72" height="72" border="0" alt="<?php echo $v['app_title']; ?>"></a></dt>
                            <dd class="play-name"><a href="<?php echo $v['surl']?>"><?php echo $v['app_title']; ?></a></dd>
                            <dd class="play-type"><?php echo $v['cate']['cname']; ?></dd>
                            <dd class="lay-download" style="display:none;"><a href="<?php echo $v['surl']?>">查看注册</a></dd>
                        </dl>
                </li>
                <?php }?>
            </ul>
        </div>

            <p class="line-t-10"></p>
			<!--安卓手赚-->
                     
                     <div class="i8i3 bor-sty bg-fff">
					 <div class="modp_top">
                     <h3>&nbsp;»&nbsp;<a href="<?php echo $c->categories[2]['surl'];?>" onclick="tj('tj-ad49','')">安卓赚钱</a></h3>
                     <a href="<?php echo $c->categories[2]['surl']?>" class="modp_more" onclick="tj('tj-ad50','')">更多&gt;&gt;</a>
                     </div>
            <?php $a = $c->get_list(array('pagesize'=>14,'cate_id'=>2,'count'=>0,'rewrite'=>SITE_REWRITEURL));?>
            <ul class="bout-content">
                <?php foreach($a['list'] as $k => $v){?>
                <li>
                        <dl>
                            <dt class="play-img"><a href="<?php echo $v['surl']?>"><img src="<?php echo $v['app_logo']; ?>" width="72" height="72" border="0" alt="<?php echo $v['app_title']; ?>"></a></dt>
                            <dd class="play-name"><a href="<?php echo $v['surl']?>"><?php echo $v['app_title']; ?></a></dd>
                            <dd class="play-type"><?php echo $v['cate']['cname']; ?></dd>
                            <dd class="lay-download" style="display:none;"><a href="<?php echo $v['surl']?>">查看注册</a></dd>
                        </dl>
                </li>
                <?php }?>
            </ul>
        </div>

            <p class="line-t-10"></p>
			<!--网赚资讯-->
			<?php $a = $c->get_list(array('count'=>0,'cate_id'=>21,'pagesize'=>10,'type'=>1,'rewrite'=>SITE_REWRITEURL));
                //print_r($a);?>
                <div class="weixin weixin1 ews_index">
                    <span class="a-o"><a href="<?php echo 'http://'.$_SERVER['HTTP_HOST'].'/index.php?tpl=list_info&cpy=shouzhuan&p=1';?>" target="_blank">手赚攻略</a></span>
                    <ul class="list-o">
                    <?php foreach($a['list'] as $k => $v ){?>
					
                       <li>
                       
					   <a href="<?php echo $v['surl'];?>"><?php echo $v['info_title'];?></a>
					   <span class="ab">更新：<?php echo date('Y-m-d',$v['info_update_time']);?></span>
					   </li>
						
                    <?php } ?>
                    </ul>
                </div>
				<p class="line-t-10"></p>
			
					
		
        <?php $a = $c->get_recommend(array('pagesize'=>9,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=4 or area_type=3)'));//print_r($a);?>
        <div class="bor-sty choiceness">
        <?php foreach($a['list'] as $k => $v){ if($k==0){
                if(empty($v['area_logo'])){$v['area_logo']=SITE_PATH."templates/".TEMPLATE."/css/img/default.jpg";}
        ?>
            <div class="l choice-left">
                <span class="title">专题精选</span>
                <div class="p-img"><a href="<?php echo $v['surl'];?>"><img src ="<?php echo $v['area_logo'];?>" class="p-img"/></a></div>
                <a class="c-name" href="<?php echo $v['surl'];?>"><?php echo $v['title'];?></a><br />
                <span class="c-info"><?php echo $v['area_html'];?></span>
            </div>
            <div class="r choice-right">
                <a class="more" href="<?php echo $c->url->encode('special_list', array('host' => '/','p' => 1));?>">更多>></a>
                <ul>
            <?php }else{?>
            <!--专题精选--><li><a href="<?php echo $v['surl'];?>" class="r-img"><img src="<?php echo $v['area_logo'];?>" border="0" alt="<?php echo $v['title'];?>"></a>
                    <a class="p-name" href="<?php echo $v['surl'];?>"><?php echo $v['title'];?></a></li>
                <?php } }?>

                </ul>
            </div>
        </div>
		
		
        <?php $a = $c->get_list(array('fields'=>'app_title,app_logo,app_id,last_cate_id','pagesize'=>100,'rewrite'=>SITE_REWRITEURL,'count'=>0));?>
        <div class="newlist">
            <div class="title">最近更新</div>
            <ul>
            <?php
                foreach($a['list'] as $b){
                echo('<li><a href="'.$b['surl'].'"><img src="'.$b['app_logo'].'"><span>'.$b['app_title'].'</span></a></li>');
                }
            ?>
            </ul>
            <div style="clear:both;"></div>
        </div>
    </div> <!-- 主体内容 结束 -->
    <p class="line-t-10"></p>

    <?php require_once ('inc_foot.php');?>