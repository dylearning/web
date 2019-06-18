<?php
require '../../../zb_system/function/c_system_base.php';
$zbp->Load();
$action='root';
if (!$zbp->CheckRights($action)) {$zbp->ShowError(6);die();}
if (!$zbp->CheckPlugin('tt_sql')) {$zbp->ShowError(48);die();}
header("Content-type:text/html;charset=utf-8");

if($_GET['type'] == 'back' ){
$db = new tt_sql_DBManage ($zbp->option['ZC_MYSQL_SERVER'],$zbp->option['ZC_MYSQL_USERNAME'],$zbp->option['ZC_MYSQL_PASSWORD'],$zbp->option['ZC_MYSQL_NAME'], 'utf8' );
$db->backup('','',$zbp->Config('tt_sql')->bkmax);
}
if($_GET['type'] == 'restore' ){
$db = new tt_sql_DBManage ($zbp->option['ZC_MYSQL_SERVER'],$zbp->option['ZC_MYSQL_USERNAME'],$zbp->option['ZC_MYSQL_PASSWORD'],$zbp->option['ZC_MYSQL_NAME'], 'utf8' );
$db->restore ('backup/'.$zbp->Config('tt_sql')->bkwj.'');
}

?>
