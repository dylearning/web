<?php
 echo'<meta charset="UTF-8"><div style="text-align:center;padding:60px 0;font-size:15px;"><h2 style="font-size:60px;margin-bottom:32px;">非法访问</h2></div>';
 die();
 ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$language}" lang="{$language}">
<head>
{template:header}
</head>
<body>
<nav id="daohangs-around">
<div id="logos"><h2><a href="{$host}" title="{$zbp->Config('xxmyvip')->PostYDMC}">{$zbp->Config('xxmyvip')->PostYDMC}</a></h2></div>
<ul id="daohangs" class="caidan">
{$zbp->Config('xxmyvip')->PostYDDH}
</ul>
</nav>
<div id="kuangjia">
<div id="daohangbg">
<div id="logo">
<h1><a href="{$host}" title="{$name}">{$name}</a></h1><p>{$subname}</p>
</div>
<ul id="nav">
{$zbp->Config('xxmyvip')->PostPCDHZ}
</ul>
{$zbp->Config('xxmyvip')->PostPCDHY2}
</div>
<div class="neirong">
<div id="content-inner">
<div class="archive-list">
<div class="reedd"><div id="shuomingg"><h3>当前位置：首页{if $type=='category'} » {$category.Name}{/if}{if $type=='tag'} » {$tag.Name}{/if} - 第{$pagebar.PageNow}页</h3></div></div>
<div id="ads-banner">
{$zbp->Config('xxmyvip')->PostAD3}
</div>
<div id="ads-banneryd">
{$zbp->Config('xxmyvip')->PostAD6}
</div>
{foreach $articles as $article}
{if $article.IsTop}
{template:post-istop2}
{else}
{template:post-multi2}
{/if}
{/foreach}
<div class="qingchu"></div>
</div>
{if $pagebar.prevbutton}
<a class="shangg" href="{$pagebar.prevbutton}" title="上一页"></a>
{/if}
{if $pagebar.nextbutton}
<a class="xiatt" href="{$pagebar.nextbutton}" title="下一页"></a>
{/if}
<div class="fenyetiao">{template:pagebar}</div>
</div>
</div>
<div class="cebianlan">
<div class="cebianlan-neibu">
{template:sidebar4}
<div id="moveside" class="div1">
<dl class="rongqi zuijin-reeds">
<dd><h3>{$zbp->Config('xxmyvip')->PostCLBT}</h3></dd>
<dt>
<ul>
{$zbp->Config('xxmyvip')->PostCLNR}
</ul>
</dt>
</dl>
</div>
</div>
</div> 
{template:footer}
</div>
<script src="{$host}zb_users/theme/xxmyvip/script/util2.js" type="text/javascript"></script>
</body>
</html>