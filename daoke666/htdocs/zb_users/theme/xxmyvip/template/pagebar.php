{if $pagebar}
{foreach $pagebar.buttons as $k=>$v}
{if $pagebar.PageNow==$k}
<span class="now-page">{$k}</span>
{else}
<a href="{$v}" title="{$k}">{$k}</a>
{/if}
{/foreach}
{/if}