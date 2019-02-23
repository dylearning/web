<?php
 echo'<meta charset="UTF-8"><div style="text-align:center;padding:60px 0;font-size:15px;"><h2 style="font-size:60px;margin-bottom:32px;">非法访问</h2></div>';
 die();
 ?><dl class="rongqi" id="{$module.HtmlID}">
{if (!$module.IsHideTitle)&&($module.Name)}<dd><h3>{$module.Name}</h3></dd>{else}<dd style="display:none;"></dd>{/if}
<dt>

{if $module.Type=='div'}
<div>{$module.Content}</div>
{/if}

{if $module.Type=='ul'}
<ul>{$module.Content}</ul>
{/if}

</dt>
</dl>