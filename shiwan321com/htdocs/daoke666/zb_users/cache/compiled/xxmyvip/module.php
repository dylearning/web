<dl class="rongqi" id="<?php  echo $module->HtmlID;  ?>">
<?php if ((!$module->IsHideTitle)&&($module->Name)) { ?><dd><h3><?php  echo $module->Name;  ?></h3></dd><?php }else{  ?><dd style="display:none;"></dd><?php } ?>
<dt>

<?php if ($module->Type=='div') { ?>
<div><?php  echo $module->Content;  ?></div>
<?php } ?>

<?php if ($module->Type=='ul') { ?>
<ul><?php  echo $module->Content;  ?></ul>
<?php } ?>

</dt>
</dl>