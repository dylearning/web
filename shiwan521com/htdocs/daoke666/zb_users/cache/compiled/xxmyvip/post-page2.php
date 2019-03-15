<div class="neirong">
<dl class="reed shopup" id="reed-<?php  echo $article->ID;  ?>">
<div class="qingchu"></div>
<dd class="kan">
<?php  echo $article->Content;  ?>
<div id="wendibu">
<center>
<?php  echo $zbp->Config('xxmyvip')->PostDBDS;  ?>
</center>
</div>
<div id="wendibuyd">
<center>
<?php  echo $zbp->Config('xxmyvip')->PostAD7;  ?>
</center>
</div>
</dd>
<dd>
<?php if ($zbp->Config('xxmyvip')->PostBQDZKG=='1') { ?>
<div class="cydianzan"><div id="cyEmoji" role="cylabs" data-use="emoji"></div></div>
<?php } ?>
<div class="reed-biaoqian">
<?php  echo $zbp->Config('xxmyvip')->PostDBBQ;  ?>
</div>
<?php if ($article->Prev) { ?>
<a class="shang" href="<?php  echo $article->Prev->Url;  ?>" title="<?php  echo $article->Prev->Title;  ?>"><span class="fanyeyd">&lt;&lt; 上一篇</span></a>
<?php } ?>
<?php if ($article->Next) { ?>
<a class="xiat" href="<?php  echo $article->Next->Url;  ?>" title="<?php  echo $article->Next->Title;  ?>"><span class="fanyeyd">下一篇 &gt;&gt;</span></a>
<?php } ?>
</dd>
</dl>
<div class="fabiaokuang">
<?php  echo $zbp->Config('xxmyvip')->PostAD4;  ?>
</div>
<div class="fabiaokuangyd">
<?php  echo $zbp->Config('xxmyvip')->PostAD8;  ?>
</div>
<div id="pingluns">
<?php if (!$article->IsLock) { ?>
<?php if ($socialcomment) { ?>
<?php  echo $socialcomment;  ?>
<?php }else{  ?>
<div class="pinglun-biaoti">
<h3><ul><a name="pinglun"></a><li id="tabcomment1" onclick="setTab('tabcomment',1,2)" class="current">评论（<?php  echo $article->CommNums;  ?>）</li>
<li id="tabcomment2" onclick="setTab('tabcomment',2,2)">赞助本站</li></ul></h3>
</div>
<div id="contabcomment2" class="weixianshi"><div class="cuowu-tishi"><?php  echo $zbp->Config('xxmyvip')->PostAD5;  ?></div></div>
<div id="contabcomment1">
<?php  include $this->GetTemplate('commentpost');  ?>
<div id="pinglun-liebiao">
<ul class="fubens">
<label id="AjaxCommentBegin"></label>
<?php  foreach ( $comments as $key => $comment) { ?>
<?php  include $this->GetTemplate('comment');  ?>
<?php }   ?>
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
<label id="AjaxCommentEnd"></label>
</ul>
</div>
</div>
<?php } ?>
<?php } ?>
</div>
</div>