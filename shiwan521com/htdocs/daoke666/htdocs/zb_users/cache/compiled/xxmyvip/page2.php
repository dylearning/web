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
<div class="reed" style="border-bottom:none;">
<h1 style="text-align:center;font-size:26px;line-height:26px;padding-bottom:10px;font-weight: normal;font-family: Microsoft YaHei,small;border-bottom:1px solid #e9e9e9;"><?php  echo $article->Title;  ?></h1>
<dd class="kan">
<?php  echo $article->Content;  ?>
</dd>
</div>
<div id="pingluns" style="padding-bottom:10px;">
<?php if (!$article->IsLock) { ?>
<?php if ($socialcomment) { ?>
<?php  echo $socialcomment;  ?>
<?php }else{  ?>
<div class="pinglun-biaoti">
<h3><ul><a name="pinglun"></a><li id="tabcomment1" onclick="setTab('tabcomment',1,2)" class="current">评论（<?php  echo $article->CommNums;  ?>）</li>
<li id="tabcomment2" onclick="setTab('tabcomment',2,2)">赞助本站</li></ul></h3>
</div>
<div id="contabcomment2" class="weixianshi"><div class="cuowu-tishi"><center><?php  echo $zbp->Config('xxmyvip')->PostAD5;  ?></center></div></div>
<div id="contabcomment1"><?php  include $this->GetTemplate('commentpost');  ?></div>
<div id="pinglun-liebiao">
<ul class="fubens">
<label id="AjaxCommentBegin"></label>
<?php  foreach ( $comments as $key => $comment) { ?>
<?php  include $this->GetTemplate('comment');  ?>
<?php }   ?>
<div>
<?php if ($pagebar) { ?>
<div class="commentpagebar">
<?php  foreach ( $pagebar->buttons as $k=>$v) { ?>
  <?php if ($pagebar->PageNow==$k) { ?>
	<span class="page now-page"><?php  echo $k;  ?></span>
  <?php }else{  ?>
	<a href="<?php  echo $v;  ?>"><span class="page"><?php  echo $k;  ?></span></a>
  <?php } ?>
<?php }   ?>
</div>
<?php } ?>
</div>
<label id="AjaxCommentEnd"></label>
</ul>
</div>
<?php } ?>
<?php } ?>
</div>
</div>
<?php  include $this->GetTemplate('footer');  ?>
</div>
<script src="<?php  echo $host;  ?>zb_users/theme/xxmyvip/script/util.js" type="text/javascript"></script>
</body>
</html>