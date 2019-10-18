        <!--相关推荐-->
        <div class="r body-right"><!-- 右侧主体内容 -->
		<div class="bor-sty right-app-info asce-order">
                <span class="rank-title">苹果赚钱排行榜</span>
                <?php $apps =$c->get_recommend(array('area_id'=>19,'pagesize'=>10,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=3 )'));?>
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
                <span class="rank-title">安卓赚钱排行榜</span>
                <?php $apps =$c->get_recommend(array('area_id'=>20,'pagesize'=>10,'count'=>0,'rewrite'=>SITE_REWRITEURL,'where'=>'(area_type=3 )'));?>
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

        </div><!-- 右侧主体内容  结束 -->