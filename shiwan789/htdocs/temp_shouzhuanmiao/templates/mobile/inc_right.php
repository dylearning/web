        <!--相关推荐-->
        <div class="r body-right"><!-- 右侧主体内容 -->
			<div class="bor-sty right-app-info asce-order">
                <span class="rank-title">猜你喜欢</span>
                <?php $apps =$c->get_randlist(array('count'=>9,'cate_id'=>$cid,'rewrite'=>SITE_REWRITEURL));?>
                <div class="l ranking">
                    <ul>
                    <?php foreach($apps['list'] as $k => $v ){?>
                        <li>
                            <p class="open" <?php if($k!=0) echo "style='display:none;'" ?>>
                                <em class="l">
                                <span class="sort-num sort <?php if($k>2){echo 'sort-num-grey';}?>"><?php echo ($k+1);?></span>
                                <a href="<?php echo $v['surl'];?>" class="rank-img"><img src="<?php echo $v['app_logo'];?>" border="0" alt="<?php echo $v['app_title'];?>"></a>
                                </em>
                                <span class="r info-and-download">
                                    <a href="<?php echo $v['surl'];?>" class="txt-overflw description"><?php echo $v['app_title'];?></a>
                                    <a href="<?php echo $v['surl'];?>" class="dwd">下载</a>
                                </span>
                            </p>
                            <p class="close"  <?php if($k==0) echo "style='display:none;'" ?>>
                                <span class="sort-num sort <?php if($k>2){echo 'sort-num-grey';}?>"><?php echo ($k+1);?></span>
                                <a href="<?php echo $v['surl'];?>" class="col-6b txt-overflw description"><?php echo $v['app_title'];?></a>
                                <span class="col-94 download-num"><?php echo $v['app_down'];?>次</span>
                            </p>
                        </li>
                        <?php }?>
                    </ul>
                </div>
            </div>
            <p class="line-t-10"></p>
            <div class="bor-sty right-app-info asce-order">
                <span class="rank-title">经典平台</span>
                <?php $apps =$c->get_list(array('count'=>0,'cate_id'=>20,'rewrite'=>SITE_REWRITEURL,'pagesize'=>9,'order'=>" order by app_order DESC,app_down DESC "));?>
                <div class="l ranking">
                    <ul>
                    <?php foreach($apps['list'] as $k => $v ){?>
                        <li>
                            <p class="open" <?php if($k!=0) echo "style='display:none;'" ?>>
                                <em class="l">
                                <span class="sort-num sort <?php if($k>2){echo 'sort-num-grey';}?>"><?php echo ($k+1);?></span>
                                <a href="<?php echo $v['surl'];?>" class="rank-img"><img src="<?php echo $v['app_logo'];?>" border="0" alt="<?php echo $v['app_title'];?>"></a>
                                </em>
                                <span class="r info-and-download">
                                    <a href="<?php echo $v['surl'];?>" class="txt-overflw description"><?php echo $v['app_title'];?></a>
                                    <a href="<?php echo $v['surl'];?>" class="dwd">下载</a>
                                </span>
                            </p>
                            <p class="close"  <?php if($k==0) echo "style='display:none;'" ?>>
                                <span class="sort-num sort <?php if($k>2){echo 'sort-num-grey';}?>"><?php echo ($k+1);?></span>
                                <a href="<?php echo $v['surl'];?>" class="col-6b txt-overflw description"><?php echo $v['app_title'];?></a>
                                <span class="col-94 download-num"><?php echo $v['app_down'];?>次</span>
                            </p>
                        </li>
                        <?php }?>
                    </ul>
                </div>
            </div>
            <p class="line-t-10"></p>
            <div class="bor-sty right-app-info asce-order">
             <?php $a = $c->get_list(array('count'=>0,'cate_id'=>19,'pagesize'=>13,'type'=>1,'rewrite'=>SITE_REWRITEURL));
                //print_r($a);?>
                <div class="bor-sty the-list">
                    <span class="a-o">酷玩评测</span>
                    <ul class="list-o">
                    <?php foreach($a['list'] as $k => $v ){?>
                        <li><a href="<?php echo $v['surl'];?>"><?php echo $v['info_title'];?></a></li>
                    <?php } ?>
                    </ul>
                </div>
        </div><!-- 右侧主体内容  结束 -->