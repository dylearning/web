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
<div id="kuangjias">
<div id="daohangbg">
<div id="logo">
<h2><a href="{$host}" title="{$name}">{$name}</a></h2><p>{$subname}</p>
</div>
<ul id="nav">
{$zbp->Config('xxmyvip')->PostPCDHZ}
</ul>
{$zbp->Config('xxmyvip')->PostPCDHY2}
</div>
<div class="neirongs">
<div class="reed">
<h1 style="text-align:center;font-size:26px;line-height:26px;padding-bottom:10px;font-weight: normal;font-family: Microsoft YaHei,small;border-bottom:1px solid #e9e9e9;">{$article.Title}</h1>
<dd class="kan">
{$article.Content}
</dd>
</div>
</div>
{template:footer}
</div>
</body>
</html>