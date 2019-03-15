<?php
 echo'<meta charset="UTF-8"><div style="text-align:center;padding:60px 0;font-size:15px;"><h2 style="font-size:60px;margin-bottom:32px;">非法访问</h2></div>';
 die();
 ?><div class="firstreed">
<div class="reed">
<div class="read-more"><a rel="nofollow" href="{$article.Url}" title="{$article.Title}">阅读全文</a></div>
{if $zbp->Config('xxmy')->PostLBRZKG=='1'}<div class="riqi"><span>{$article.Time('m月')}</span><span class="f">{$article.Time('d日')}</span></div>{/if}
<h2><a target="_blank" href="{$article.Url}" title="{$article.Title}">{$article.Title}</a></h2>
<h6>发布 : <a target="_blank" href="{$article.Author.Url}" title="查看 {$article.Author.StaticName} 的全部文章">{$article.Author.StaticName}</a> | 分类 : <a href="{$article.Category.Url}" title="查看 {$article.Category.Name} 的全部文章">{$article.Category.Name}</a> | 评论 : {$article.CommNums}人 | 浏览 : {$article.ViewNums}次
<div class="clear"></div>
</h6><div class="jieshao">
{if $zbp->Config('xxmyvip')->PostZYSLTKG=='1'}
{php}$pattern="/<[img|IMG].*?src=[\'|\"](.*?(?:[\.gif|\.jpg|\.png]))[\'|\"].*?[\/]?>/";$content = $article->Content;preg_match_all($pattern,$content,$matchContent);{/php}{if  isset($matchContent[1][0])}<span id="zhaiyaotu"><a rel="nofollow" href="{$article.Url}" title="{$article.Title}"><img alt="{$article.Title}" src="{$matchContent[1][0];}" /></a></span>
{else}
{if $zbp->Config('xxmyvip')->PostWTSLTKG=='1'}
<span id="zhaiyaotu"><a rel="nofollow" href="{$article.Url}" title="{$article.Title}"><img alt="{$article.Title}" src="{$host}/zb_users/theme/xxmyvip/include/noimg.png" /></a></span>
{/if}
{/if}
{/if}
<p>{php}$description = preg_replace('/[\r\n\s]+/', '', trim(SubStrUTF8(TransferHTML($article->Content,'[nohtml]'),350)));{/php}{$description}</p></div>
</div>
</div>