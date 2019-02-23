<?php
 echo'<meta charset="UTF-8"><div style="text-align:center;padding:60px 0;font-size:15px;"><h2 style="font-size:60px;margin-bottom:32px;">非法访问</h2></div>';
 die();
 ?><div class="neirong">
<div class="reedd"><div id="shuomingg"><h3>当前位置：首页 » <a href="{$article.Category.Url}" title="分类 {$article.Category.Name} 的全部文章" rel="category tag">{$article.Category.Name}</a> » 正文</h3></div></div>
<div id="ads-banner">
{$zbp->Config('xxmyvip')->PostAD3}
</div>
<div id="ads-banneryd">
{$zbp->Config('xxmyvip')->PostAD6}
</div>
<dl class="reed" id="reed-{$article.ID}">
<div class="reed-biaoti2">
<div class="reed-biaoti">
<h1>{$article.Title}</h1>
<h6><span>{$article.ViewNums}</span>&nbsp;人参与&nbsp;&nbsp;{$article.Time('Y年m月d日 H:i')}&nbsp;&nbsp;分类 : {$article.Category.Name}&nbsp;&nbsp;<a href="#pinglun">评论</a></h6>
</div></div>
<div class="qingchu"></div>
<dd class="kan">
{$article.Content}
{$zbp->Config('xxmyvip')->PostDBLY}
<p>本文链接：<a href="{$article.Url}">{$article.Url}</a></p>
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
<div id="fenxiang">
{$zbp->Config('xxmyvip')->PostWZFX}
</div>
<p>本文标签：{foreach $article.Tags as $tag}<a href="{$tag.Url}">{$tag.Name}</a>&nbsp;&nbsp;{/foreach}</p>
{$zbp->Config('xxmyvip')->PostDBBQ}
</div>
<center>
<div class="bdtuijian">
{$zbp->Config('xxmyvip')->PostTJYD}
</div>
</center>
{if $article.Prev}
<a class="shang" href="{$article.Prev.Url}" title="{$article.Prev.Title}"><span class="fanyeyd">&lt;&lt; 上一篇</span></a>
{/if}
{if $article.Next}
<a class="xiat" href="{$article.Next.Url}" title="{$article.Next.Title}"><span class="fanyeyd">下一篇 &gt;&gt;</span></a>
{/if}
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