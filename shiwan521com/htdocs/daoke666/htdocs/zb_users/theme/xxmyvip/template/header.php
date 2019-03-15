<?php
 echo'<meta charset="UTF-8"><div style="text-align:center;padding:60px 0;font-size:15px;"><h2 style="font-size:60px;margin-bottom:32px;">非法访问</h2></div>';
 die();
 ?><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Content-Language" content="{$language}" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="applicable-device" content="pc,mobile">
{if $type=='article'}
<title>{$title} - {$name}</title>
<meta name="keywords" content="{foreach $article.Tags as $tag}{$tag.Name},{/foreach}{$name}" />
<meta name="description" content="{php}$description = preg_replace('/[\r\n\s]+/', '', trim(SubStrUTF8(TransferHTML($article->Content,'[nohtml]'),130)));{/php}{$description}" />
{elseif $type=='index'}
<title>{$name} - {$subname}{if $pagebar.PageNow > '1'} - 第{$pagebar.PageNow}页{/if}</title>
<meta name="Keywords" content="{$zbp->Config('xxmyvip')->PostGJC}">
<meta name="description" content="{$zbp->Config('xxmyvip')->PostMS}">
{elseif $type=='tag'}
<title>{$tag.Name}{if $pagebar.PageNow > '1'} - 第{$pagebar.PageNow}页{/if} - {$name}</title>
<meta name="Keywords" content="{$tag.Name},{$name}">
{if $tag.Intro}
<meta name="description" content="{$tag.Intro}">
{/if}
{elseif $type=='category'}
<title>{$category.Name}{if $pagebar.PageNow > '1'} - 第{$pagebar.PageNow}页{/if} - {$name}</title>
<meta name="Keywords" content="{$category.Name},{$name}">
{if $category.Intro}
<meta name="description" content="{$category.Intro}">
{/if}
{elseif $type=='author'}
<title>{$author.StaticName}的全部文章{if $pagebar.PageNow > '1'} - 第{$pagebar.PageNow}页{/if} - {$name}</title>
<meta name="Keywords" content="{$author.StaticName},{$name}">
{if $author.Intro}
<meta name="description" content="{$author.Intro}">
{/if}
{else}
<title>{$title} - {$name}</title>
<meta name="baidu_ssp_verify" content="ba89f789d43b19d7133ddcd7fe1be433">
<meta name="Keywords" content="{$name}">
<meta name="description" content="{php}$description = preg_replace('/[\r\n\s]+/', '', trim(SubStrUTF8(TransferHTML($article->Content,'[nohtml]'),130)));{/php}{$description}">
{/if}
<meta name="generator" content="{$zblogphp}" />
<link rel="stylesheet" rev="stylesheet" href="{$host}zb_users/theme/{$theme}/style/xxmyvip-Index.css" type="text/css" media="all" />
<script src="{$host}zb_system/script/common.js" type="text/javascript"></script>
<script src="{$host}zb_system/script/c_html_js_add.php" type="text/javascript"></script>
{$header}
{if $type=='index'&&$page=='1'}
<link rel="alternate" type="application/rss+xml" href="{$feedurl}" title="{$name}" />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="{$host}zb_system/xml-rpc/?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="{$host}zb_system/xml-rpc/wlwmanifest.xml" />
{/if}
<style type="text/css">
#daohang ul li t,.reed .riqi,a.shangg,a.xiatt,a.shangg:hover,a.xiatt:hover,a.shang,a.xiat,a.shang:hover,a.xiat:hover,.reed-pinglun-anniu,span.now-page,#daohangs-around,#caidan-tubiao,#daohangs,#daohangs li,#btnPost{background-color:#{$zbp->Config('xxmyvip')->Postztys};}
.dinglanyou1 h3{border-bottom:3px solid #{$zbp->Config('xxmyvip')->Postztys};}
#dibuer{border-top:2px solid #{$zbp->Config('xxmyvip')->Postztys};}.cebianlan .rongqi h3{border-bottom:1px solid #{$zbp->Config('xxmyvip')->Postztys};}
#edtSearch{border:1px solid #{$zbp->Config('xxmyvip')->Postztys};}
#daohang .zuo ul li{border-right:1px solid #{$zbp->Config('xxmyvip')->Postsbfd};}
#daohang ul li t a{border-top:1px solid #{$zbp->Config('xxmyvip')->Postsbfd};border-right:1px solid #{$zbp->Config('xxmyvip')->Postztys};}
#daohang ul li t a:hover{border-right:1px solid #{$zbp->Config('xxmyvip')->Postsbfd};}
#daohang .you ul li a:hover,#daohang .zuo ul li a:hover,.reed-pinglun-anniu:hover{background-color:#{$zbp->Config('xxmyvip')->Postsbfd};}
a:hover,.reed h6 a:hover,#dibuer a:hover,.reed .riqiding,.cebianlan .rongqi li a:hover,#pinglun-liebiao ul.fubens li.depth-1 dl dd span.shu a,#pinglun-liebiao ul.fubens li.depth-1 dl dd span.huifuliuyan a:hover,.reed-biaoti h6 span{color:#{$zbp->Config('xxmyvip')->Postztys};}
.reed .kan a{color:#{$zbp->Config('xxmyvip')->Postljys};}.reed .kan a:hover{color:#{$zbp->Config('xxmyvip')->Postljfd};}
@media screen and (max-width:1492px){a.shang,a.xiat{background:none;}
a.xiat:hover,a.shang:hover{background-color:#f9f9f9;background-image:none;text-decoration:none;}}
</style>
{$zbp->Config('xxmyvip')->PostBDTJ}