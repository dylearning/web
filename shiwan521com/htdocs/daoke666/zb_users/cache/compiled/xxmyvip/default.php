<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php  echo $language;  ?>" lang="<?php  echo $language;  ?>">
<head>
<?php  include $this->GetTemplate('header');  ?>
</head>
<body>
<nav id="daohangs-around">
<div id="logos"><h2><a href="<?php  echo $host;  ?>" title="<?php  echo $zbp->Config('xxmyvip')->PostYDMC;  ?>"><?php  echo $zbp->Config('xxmyvip')->PostYDMC;  ?></a></h2></div>
<ul id="daohangs" class="caidan">
<?php  echo $zbp->Config('xxmyvip')->PostYDDH;  ?>
</ul>
</nav>
<div id="kuangjia">
<div id="daohangbg">
<div id="logo">
<h1><a href="<?php  echo $host;  ?>" title="<?php  echo $name;  ?>"><?php  echo $name;  ?></a></h1><p><?php  echo $subname;  ?></p>
</div>
<ul id="nav">
<?php  echo $zbp->Config('xxmyvip')->PostPCDHZ;  ?>
</ul>
<?php  echo $zbp->Config('xxmyvip')->PostPCDHY2;  ?>
</div>
<div class="neirong">
<div class="reedd">
<div id="shuoming"><h3><?php  echo $zbp->Config('xxmyvip')->PostSYGG;  ?></h3></div></div>
<div id="ads-banner">
<?php  echo $zbp->Config('xxmyvip')->PostAD;  ?>
</div>
<div id="ads-banneryd">
<?php  echo $zbp->Config('xxmyvip')->PostAD9;  ?>
</div>
<?php  foreach ( $articles as $article) { ?>
<?php if ($article->IsTop) { ?>
<?php  include $this->GetTemplate('post-istop');  ?>
<?php }else{  ?>
<?php  include $this->GetTemplate('post-multi');  ?>
<?php } ?>
<?php }   ?>
<?php if ($pagebar->prevbutton) { ?>
<a class="shangg" href="<?php  echo $pagebar->prevbutton;  ?>" title="上一页"></a>
<?php } ?>
<?php if ($pagebar->nextbutton) { ?>
<a class="xiatt" href="<?php  echo $pagebar->nextbutton;  ?>" title="下一页"></a>
<?php } ?>
<div class="fenyetiao"><?php  include $this->GetTemplate('pagebar');  ?></div>
</div>
<div class="cebianlan">
<div class="cebianlan-neibu">
<?php  include $this->GetTemplate('sidebar');  ?>
<div id="moveside" class="div1">
<dl class="rongqi zuijin-reeds">
<dd><h3><?php  echo $zbp->Config('xxmyvip')->PostCLBT;  ?></h3></dd>
<dt>
<ul>
<?php  echo $zbp->Config('xxmyvip')->PostCLNR;  ?>
</ul>
</dt>
</dl>
</div>
</div>
</div>
<?php  include $this->GetTemplate('footer');  ?>
</div>
<script src="<?php  echo $host;  ?>zb_users/theme/xxmyvip/script/util2.js" type="text/javascript"></script>
</body>
</html>