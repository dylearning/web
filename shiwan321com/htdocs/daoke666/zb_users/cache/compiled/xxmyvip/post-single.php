<div class="neirong">
<div class="reedd"><div id="shuomingg"><h3>当前位置：首页 » <a href="<?php  echo $article->Category->Url;  ?>" title="分类 <?php  echo $article->Category->Name;  ?> 的全部文章" rel="category tag"><?php  echo $article->Category->Name;  ?></a> » 正文</h3></div></div>
<div id="ads-banner">
<?php  echo $zbp->Config('xxmyvip')->PostAD3;  ?>
</div>
<div id="ads-banneryd">
<?php  echo $zbp->Config('xxmyvip')->PostAD6;  ?>
</div>
<dl class="reed" id="reed-<?php  echo $article->ID;  ?>">
<div class="reed-biaoti2">
<div class="reed-biaoti">
<h1><?php  echo $article->Title;  ?></h1>
<h6><span><?php  echo $article->ViewNums;  ?></span>&nbsp;人参与&nbsp;&nbsp;<?php  echo $article->Time('Y年m月d日 H:i');  ?>&nbsp;&nbsp;分类 : <?php  echo $article->Category->Name;  ?>&nbsp;&nbsp;<a href="#pinglun">评论</a></h6>
</div></div>
<div class="qingchu"></div>
<dd class="kan">
<?php  echo $article->Content;  ?>
<?php  echo $zbp->Config('xxmyvip')->PostDBLY;  ?>
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
<div id="fenxiang">
<?php  echo $zbp->Config('xxmyvip')->PostWZFX;  ?>
</div>
<p>本文标签：<?php  foreach ( $article->Tags as $tag) { ?><a href="<?php  echo $tag->Url;  ?>"><?php  echo $tag->Name;  ?></a>&nbsp;&nbsp;<?php }   ?></p>
<?php  echo $zbp->Config('xxmyvip')->PostDBBQ;  ?>
</div>
<center>
<div class="bdtuijian">
<?php  echo $zbp->Config('xxmyvip')->PostTJYD;  ?>
</div>
</center>
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
<li id="tabcomment2" onclick="setTab('tabcomment',2,2)">相关文章</li></ul></h3>
</div>
<div id="contabcomment2" class="weixianshi"><div class="xiangguanwen"><ul><?php  include $this->GetTemplate('mutuality');  ?></ul></div><div class="cuowu-tishi"><?php  echo $zbp->Config('xxmyvip')->PostAD5;  ?></div></div>
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