<?php
require '../../../zb_system/function/c_system_base.php';
require '../../../zb_system/function/c_system_admin.php';
$zbp->Load();
if (!$zbp->CheckRights('root')) {$zbp->ShowError(6);die();}
if (!$zbp->CheckPlugin('baidusubmit')) {$zbp->ShowError(48);die();}

$action = GetVars('page', 'GET');
$action = isset($baidusubmit_menus[$action]) ? $baidusubmit_menus[$action]['param'] : 'baidu_admin';
$blogtitle = $baidusubmit_menus[$action]['title'];

require $blogpath . 'zb_system/admin/admin_header.php';
require $blogpath . 'zb_system/admin/admin_top.php';
?>
<div id="divMain">
  <div class="divHeader"><?php echo $blogtitle;?></div>
  <div class="SubMenu"><?php echo make_submenu()?>
  </div>
  <div id="divMain2">
<?php
$cls = new $baidusubmit_menus[$action]['class'][0];
$cls->$baidusubmit_menus[$action]['class'][1]();
?>
  </div>
</div>
	<script type="text/javascript">ActiveTopMenu("topmenu2");</script>
	<script type="text/javascript">AddHeaderIcon("<?php echo $bloghost . 'zb_users/plugin/baidusubmit/logo.png';?>");</script>	
<?php
require $blogpath . 'zb_system/admin/admin_footer.php';
RunTime();
?>

<?php
function make_submenu()
{
	global $baidusubmit_menus; 
	global $action;
	$str = ''; 
	foreach($baidusubmit_menus as $m)
	{
		$str .= '<a href="?page=' . $m['param'] . '"><span class="m-left ' . ($action === $m['param']?'m-now':'') .'">';
		$str .= $m['submn'] . '</span></a>';
	}
	return $str;
}
?>