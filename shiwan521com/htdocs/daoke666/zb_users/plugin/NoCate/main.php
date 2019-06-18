<?php
require '../../../zb_system/function/c_system_base.php';
require '../../../zb_system/function/c_system_admin.php';
$zbp->Load();
$action='root';
if (!$zbp->CheckRights($action)) {$zbp->ShowError(6);die();}
if (!$zbp->CheckPlugin('NoCate')) {$zbp->ShowError(48);die();}

$blogtitle='首页过滤分类';
require $blogpath . 'zb_system/admin/admin_header.php';
require $blogpath . 'zb_system/admin/admin_top.php';
if(isset($_POST['Forum'])){
	foreach($_POST['Forum'] as $key=>$val){
	    $zbp->Config('NoCate')->$key = $val;
	}
	$zbp->SaveConfig('NoCate');
	$zbp->ShowHint('good');
}
?>
<div id="divMain">
  <div class="divHeader"><?php echo $blogtitle;?></div>
  <div class="SubMenu">
  </div>
  <div id="divMain2">
    <form method="post">
    <table border="1" class="tableFull tableBorder">
    <tr>
    <th>配置功能/开关/选项</th>
    </tr>
    <tr>
    <td>需要在首页过滤的分类：<input type="text"  name="Forum[nocateid]" value="<?php echo $zbp->Config('NoCate')->nocateid;?>"> 用半角逗号(,)隔开，输入保存后请打开首页查看效果！</td>
    </tr>
    </table>
    <hr/>
    <p>
    <input type="submit" class="button" value="<?php echo $lang['msg']['submit'] ?>" />
    </p>
    </form>
  </div>
</div>

<?php
require $blogpath . 'zb_system/admin/admin_footer.php';
RunTime();
?>