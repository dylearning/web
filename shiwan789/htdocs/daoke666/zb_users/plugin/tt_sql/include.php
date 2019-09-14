<?php
#注册插件
require dirname(__FILE__) . DIRECTORY_SEPARATOR . 'DbManage.class.php';
RegisterPlugin("tt_sql","ActivePlugin_tt_sql");

function ActivePlugin_tt_sql() {}
function tt_sql_SubMenu($id){
	$arySubMenu = array(
	    0 => array('备份', 'beifen', 'left', false),
		1 => array('还原数据库', 'huanyuan', 'left', false),
	);
	foreach($arySubMenu as $k => $v){
		echo '<a href="?act='.$v[1].'" '.($v[3]==true?'target="_blank"':'').'><span class="m-'.$v[2].' '.($id==$v[1]?'m-now':'').'">'.$v[0].'</span></a>';
	}
}
function InstallPlugin_tt_sql() {}
function UninstallPlugin_tt_sql() {
global $zbp;	
	//$zbp->DelConfig('tt_sql');
	
}