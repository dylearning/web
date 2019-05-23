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
<h2><a href="{$host}" title="{$name}">{$name}</a></h2><p>{$subname}</p>
</div>
<ul id="nav">
{$zbp->Config('xxmyvip')->PostPCDHZ}
</ul>
{$zbp->Config('xxmyvip')->PostPCDHY2}
</div>
{if $article.Type==ZC_POST_TYPE_ARTICLE}
{template:post-single}
{else}
{template:post-page}
{/if}
<div class="cebianlan">
<div class="cebianlan-neibu">
{template:sidebar3}
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
<script src="{$host}zb_users/theme/xxmyvip/script/util.js" type="text/javascript"></script>
<script src="{$host}zb_users/theme/xxmyvip/script/custom.js" type="text/javascript"></script>
</body>
</html>