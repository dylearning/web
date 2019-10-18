<header class="box wrap-head">
		<div class="header">
			<a class="header-logo" href="<?php echo SITE_PATH;?>">手机赚钱</a>
			<div class="header-search">
				<script type="text/javascript">
					function do_search(){
						var searchvalue = document.getElementById('abc').value;
						if(searchvalue==''){return false;}
						window.location.href="/index.php?tpl=search&q="+encodeURIComponent(searchvalue);
					}
				</script>
				<input type="text" id="abc" class="header-search-input" onkeydown="search_up(this,event); if(event.keyCode==13) do_search();" value="">
				<a href="javascript:void(0);" class="header-search-clean" onclick="clean()"></a>
				<a href="javascript:void(0);" class="header-search-button" onclick="do_search()"></a>
			</div>
		</div>
<div style="height:35px;"></div>
<div class="box nav">
<div class="box nav-stair" id="nav-stair">
<nav class="box nav-bar">
			<a href="<?php echo SITE_PATH;?>"<?php if($cid<=0 && !strstr($_SERVER['QUERY_STRING'],'special') && !strstr($_SERVER['QUERY_STRING'],'lastupdate') && !isset($topid)) echo 'class="on"';?>>首页</a>
			<!-- 顶级分类 开始 -->
			        <?php //print_r($c->categories);
                        foreach($c->categories as $a){
                            if($a['parent_id']=='0'){//只输出顶级分类
                                $style='';
                                if((intval($cid)>0 && ($a['cate_id'] == $cid || $a['cate_id']==$c->categories[$cid]['parent_id'])) || (isset($topid) && $topid == $a['cate_id'])) $style='class="selected"';
                               if($a['cat_show'] == 1) echo('<li><a href="'.$a['surl'].'" '.$style.'>'.$a['cname'].'</a></li>');
                            }
                        }
                    ?>
			<!-- 顶级分类 结束 -->
		</div>
<!-- 子分类 开始 -->
		<?php if($tpl !== 'index' && $cid!==''):?>

			<?php
                    if(intval($c->categories[$cid]['parent_id'])>0){
                        //echo('<a href="'.$c->categories[$c->categories[$cid]['parent_id']]['surl'].'" '.'>全部</a>');
                    }
                    if($c->categories[$cid]['parent_id']==0){
                        $a=$c->cate_son($cid);
                    }else{
                        $a=$c->cate_son($c->categories[$cid]['parent_id']);
                    }
					$style = '';
					if(!empty($a)){
						echo '<div class="nav-second">';
						foreach($a as $b){
							if($b['cate_id'] == $cid){
								$style='class="sd-sel"';
							}else{
								$style = '';
							}
							echo('<a href="'.$b['surl'].'" '.$style.'>'.$b['cname'].'</a>');
						}
						echo '</div>';
					}
            ?>
		<?php endif;?>
		<!-- 子分类 结束 -->
	</div>
</div>
