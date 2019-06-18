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
<h2><a href="<?php  echo $host;  ?>" title="<?php  echo $name;  ?>"><?php  echo $name;  ?></a></h2><p><?php  echo $subname;  ?></p>
</div>
<ul id="nav">
<?php  echo $zbp->Config('xxmyvip')->PostPCDHZ;  ?>
</ul>
<?php  echo $zbp->Config('xxmyvip')->PostPCDHY2;  ?>
</div>
<?php if ($article->Type==ZC_POST_TYPE_ARTICLE) { ?>
<?php  include $this->GetTemplate('post-single');  ?>
<?php }else{  ?>
<?php  include $this->GetTemplate('post-page');  ?>
<?php } ?>
<div class="cebianlan">
<div class="cebianlan-neibu">
<?php  include $this->GetTemplate('sidebar3');  ?>
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
<script src="<?php  echo $host;  ?>zb_users/theme/xxmyvip/script/util.js" type="text/javascript"></script>
<script src="<?php  echo $host;  ?>zb_users/theme/xxmyvip/script/custom.js" type="text/javascript"></script>
</body>
</html>