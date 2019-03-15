<?php
 echo'<meta charset="UTF-8"><div style="text-align:center;padding:60px 0;font-size:15px;"><h2 style="font-size:60px;margin-bottom:32px;">非法访问</h2></div>';
 die();
 ?><li class="depth-1" id="cmt{$comment.ID}">
<dl>
<dd>
<span class="shu"><a name="cmt{$comment.ID}"><span class="clg">{if $comment.FloorID > '0'}{$comment.FloorID}楼{else}New{/if}</span></a></span>
<cite><a href="{$comment.Author.HomePage}" rel="nofollow" title="{$comment.Author.StaticName}" target="_blank">{$comment.Author.StaticName}</a></cite>
<span id="reed">{$comment.Time()}</span>
<span class="huifuliuyan"><a href="#cmt{$comment.ID}" onclick="RevertComment('{$comment.ID}')">回复</a></span>
<div class="jwtwenzhang">{$comment.Content}
{foreach $comment.Comments as $comment}
{template:comment}
{/foreach}
</div>
</dd>
</dl>
</li>