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
<div class="dingshop">
<div class="reedd"><div id="shuomingg"><h3>当前位置：首页 <?php if ($type=='article') { ?>» <a href="<?php  echo $article->Category->Url;  ?>" title="分类 <?php  echo $article->Category->Name;  ?> 的全部文章" rel="category tag"><?php  echo $article->Category->Name;  ?></a> <?php } ?>» <?php  echo $article->Metas->prospmc;  ?></h3></div></div>
<div class="shop-biaoti2">
<div class="reed-biaoti">
<h1><?php  echo $article->Title;  ?></h1>
<h6><span><?php  echo $article->ViewNums;  ?></span>&nbsp;人参与&nbsp;&nbsp;<?php  echo $article->Time('Y年m月d日 H:i');  ?>&nbsp;&nbsp;<?php if ($type=='article') { ?>分类: <?php  echo $article->Category->Name;  ?>&nbsp;&nbsp;<?php } ?><a href="#pinglun">评论</a></h6>
</div>
</div>
<div class="dingshopl">
<img alt="<?php  echo $article->Title;  ?>" src="<?php  echo $article->Metas->prosptp;  ?>" />
</div>
<ul class="dingshopr">
<div id="fenxiangs">
<?php  echo $zbp->Config('xxmyvip')->PostSPFX;  ?>
<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_mshare" data-cmd="mshare" title="分享到一键分享"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_tieba" data-cmd="tieba" title="分享到百度贴吧"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"1","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"24"},"share":{},"image":{"viewList":["mshare","qzone","weixin","tsina","tqq","tieba","renren"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["mshare","qzone","weixin","tsina","tqq","tieba","renren"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
</div>

<li>
<?php  echo $article->Metas->procpy1;  ?>
</li>
<li>
<?php  echo $article->Metas->procpy2;  ?>
</li>
<li>
<?php  echo $article->Metas->procpy3;  ?>
</li>
<li>
<?php  echo $article->Metas->procpy4;  ?>
</li>
<li class="buy">
<?php  echo $article->Metas->proanan;  ?>
</li>
</ul>
</div>
<?php if ($article->Type==ZC_POST_TYPE_ARTICLE) { ?>
<?php  include $this->GetTemplate('post-single2');  ?>
<?php }else{  ?>
<?php  include $this->GetTemplate('post-page2');  ?>
<?php } ?>
<div class="cebianlan">
<div class="cebianlan-neibu">
<?php  include $this->GetTemplate('sidebar5');  ?>
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
</html>l>