<?php
 echo'<meta charset="UTF-8"><div style="text-align:center;padding:60px 0;font-size:15px;"><h2 style="font-size:60px;margin-bottom:32px;">非法访问</h2></div>';
 die();
 ?><div class="neirong">
<dl class="reed shopup" id="reed-{$article.ID}">
<div class="qingchu"></div>
<dd class="kan">
{$article.Content}
{$zbp->Config('xxmyvip')->PostDBLY}
<!--<p>本文链接：<a href="{$article.Url}">{$article.Url}</a></p>-->
<div id="wendibu">
<center>
{$zbp->Config('xxmyvip')->PostDBDS}
</center>
</div>
<div id="wendibuyd">
<center>
{$zbp->Config('xxmyvip')->PostAD7}
</center>
</div>
</dd>
<dd>
{if $zbp->Config('xxmyvip')->PostBQDZKG=='1'}
<div class="cydianzan"><div id="cyEmoji" role="cylabs" data-use="emoji"></div></div>
{/if}
<div class="reed-biaoqian">
{$zbp->Config('xxmyvip')->PostDBBQ}
</div>
<center>
<div class="bdtuijian">
{$zbp->Config('xxmyvip')->PostTJYD}
</div>
</center>
</dd>
</dl>
<div class="fabiaokuang">
{$zbp->Config('xxmyvip')->PostAD4}
</div>
<div class="fabiaokuangyd">
{$zbp->Config('xxmyvip')->PostAD8}
</div>
<div id="pingluns">
{if !$article.IsLock}
{if $socialcomment}
{$socialcomment}
{else}
<div class="pinglun-biaoti">
<h3><ul><a name="pinglun"></a><li id="tabcomment1" onclick="setTab('tabcomment',1,2)" class="current">评论（{$article.CommNums}）</li>
<li id="tabcomment2" onclick="setTab('tabcomment',2,2)">相关文章</li></ul></h3>
</div>
<div id="contabcomment2" class="weixianshi"><div class="xiangguanwen"><ul>{template:mutuality}</ul></div><div class="cuowu-tishi">{$zbp->Config('xxmyvip')->PostAD5}</div></div>
<div id="contabcomment1">
{template:commentpost}
<div id="pinglun-liebiao">
<ul class="fubens">
<label id="AjaxCommentBegin"></label>
{foreach $comments as $key => $comment}
{template:comment}
{/foreach}
{if $pagebar}
<div class="commentpagebar">
{foreach $pagebar.buttons as $k=>$v}
  {if $pagebar.PageNow==$k}
	<span class="page now-page">{$k}</span>
  {else}
	<a href="{$v}"><span class="page">{$k}</span></a>
  {/if}
{/foreach}
</div>
{/if}
<label id="AjaxCommentEnd"></label>
</ul>
</div>
</div>
{/if}
{/if}
</div>
</div>