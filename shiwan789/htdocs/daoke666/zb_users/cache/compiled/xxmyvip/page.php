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
<div id="kuangjias">
<div id="daohangbg">
<div id="logo">
<h2><a href="<?php  echo $host;  ?>" title="<?php  echo $name;  ?>"><?php  echo $name;  ?></a></h2><p><?php  echo $subname;  ?></p>
</div>
<ul id="nav">
<?php  echo $zbp->Config('xxmyvip')->PostPCDHZ;  ?>
</ul>
<?php  echo $zbp->Config('xxmyvip')->PostPCDHY2;  ?>
</div>
<div class="neirongs">
<div class="reed">
<h1 style="text-align:center;font-size:26px;line-height:26px;padding-bottom:10px;font-weight: normal;font-family: Microsoft YaHei,small;border-bottom:1px solid #e9e9e9;"><?php  echo $article->Title;  ?></h1>
<dd class="kan">
<?php  echo $article->Content;  ?>
</dd>
</div>
</div>
<?php  include $this->GetTemplate('footer');  ?>
</div>
</body>
</html>