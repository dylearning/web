<?php if ($pagebar) { ?>
<?php  foreach ( $pagebar->buttons as $k=>$v) { ?>
<?php if ($pagebar->PageNow==$k) { ?>
<span class="now-page"><?php  echo $k;  ?></span>
<?php }else{  ?>
<a href="<?php  echo $v;  ?>" title="<?php  echo $k;  ?>"><?php  echo $k;  ?></a>
<?php } ?>
<?php }   ?>
<?php } ?>