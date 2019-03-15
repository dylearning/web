<?php
require '../../../zb_system/function/c_system_base.php';
require '../../../zb_system/function/c_system_admin.php';
$zbp->Load();
$action='root';
if (!$zbp->CheckRights($action)) {$zbp->ShowError(6);die();}
if (!$zbp->CheckPlugin('tt_sql')) {$zbp->ShowError(48);die();}
$act = "";
if ($_GET['act']){
$act = $_GET['act'] == "" ? 'config' : $_GET['act'];
}
$blogtitle='MYSQL数据库备份还原';
require $blogpath . 'zb_system/admin/admin_header.php';
require $blogpath . 'zb_system/admin/admin_top.php';
?>
<div id="divMain">
  <div class="divHeader"><?php echo $blogtitle;?></div>
  <div class="SubMenu">
  <?php echo tt_sql_SubMenu($act); ?>
  </div>
  <div id="divMain2">
<?php
if ($act == 'beifen'){
?>
<?php
if(isset($_POST['bkmax'])){
$zbp->Config('tt_sql')->bkmax = $_POST['bkmax'];
$zbp->SaveConfig('tt_sql');
$zbp->ShowHint('good');
}
;?>
	<form id="form1" name="form1" method="post">  
    <table width="100%" style='padding:0;margin:0;' cellspacing='0' cellpadding='0' class="tableBorder">
		<tr>
			<td><p align="center">数据库备份大小定义</p></label></td>
			<td><p align="left"><textarea name="bkmax" type="text" id="bkmax" style="width:98%;"><?php echo $zbp->Config('tt_sql')->bkmax;?></textarea></p></td>
			<td><p align="left">数据库备份大小定义以kb为大小2048代表2mb，不保存，默认2mb大小</p></td>
		</tr>
	</table>
	<br />
   <input style="float:right" name="" type="Submit" class="button" value="保存"/>
    </form>	
		<h1 style="
    text-align: left;
    font-size: 20px;  line-height: 30px;
">（1）下面的操作有一定的安全性，所以请恢复完成后请删除本插件。
<br>
（2）上面的数据如果不保存，也可以备份数据，但是是默认2mb一个数据库分卷，小于2m就一个数据库文件。
<br>（3）请谨慎操作。
</h1>
	 <div id="divMain2">
    <a style="padding: 10px;float: left;background-color: red;color: #fff;" href="out.php?type=back" target="_blank">点击备份数据库</a>
	</div>
<?php
    }
	if ($act == 'huanyuan'){
  ?>
  <?php
  if(isset($_POST['bkwj'])){
$zbp->Config('tt_sql')->bkwj = $_POST['bkwj'];
$zbp->SaveConfig('tt_sql');
$zbp->ShowHint('good');

}
  
  ;?>
	<form id="form1" name="form1" method="post" >  
    <table width="100%" style='padding:0;margin:0;' cellspacing='0' cellpadding='0' class="tableBorder">	
		<?php  
		$hostdir = $GLOBALS['blogpath']."zb_users/plugin/tt_sql/backup";
		 $filesnames = scandir($hostdir);
		 function tt_sql_wenj($default){
		  global $filesnames;
		  $str="";
			foreach($filesnames as $key=>$file){
				if($key>1){
				$str .='<option ' . ($default==$file?'selected="selected"':'') . ' value="'. $file .'">' . $file. '</option>';	
				}
				
				
			} 
			return $str; 
		 }
		?>

          <tr>
			<td><p align="center">数据库还原文件选择</p></label></td>
			<td><p align="left">
			<select style="" class="edit" size="1" name="bkwj" id="bkwj">
<?php echo tt_sql_wenj($zbp->Config('tt_sql')->bkwj);?>
            </select>
			
			</p></td>
			<td><p align="left">数据库还原文件选择</p></td>
		</tr>
	</table>
	<br />
   <input style="float:right" name="" type="Submit" class="button" value="保存"/>
    </form>
	<h1 style="
    text-align: left;
    font-size: 20px;  line-height: 30px;
">（1）下面的操作有一定的安全性，所以请恢复完成后请删除本插件。
<br>
（2）上面的数据保存完成后下面的操作才管用的。<br>
（3）全部恢复请选择名称后面带有v1的数据库文件，它会从v1开始向后恢复，直到结束vn。
<br>（4）请谨慎操作。
</h1>
	  <div id="divMain2">
   <a style="padding: 10px;float: right;background-color: red;color: #fff;" href="out.php?type=restore" target="_blank">点击恢复sql文件</a>
  </div>
<?php
    }
  ?>
 
  </div>

</div>

<?php
require $blogpath . 'zb_system/admin/admin_footer.php';
RunTime();
?>