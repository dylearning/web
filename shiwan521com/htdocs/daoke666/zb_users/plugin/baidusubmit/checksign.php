<?php
require '../../../zb_system/function/c_system_base.php';
require '../../../zb_system/function/c_system_admin.php';
$zbp->Load();
//$action='root';
//if (!$zbp->CheckRights($action)) {$zbp->ShowError(6);die();}
if (!$zbp->CheckPlugin('baidusubmit')) {$zbp->ShowError(48);die();}


/*if (!function_exists('add_action')) {
    require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . './../../../wp-config.php';
}*/

require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'inc/options.php';

$checksign = GetVars('checksign', 'GET');
if (!$checksign || strlen($checksign) !== 32 ){
    exit;
}
$data = BaidusubmitOptions::getOption('checksign', null, true);
if (isset($data['time']) && $data['value'] == $checksign && time()-$data['time'] < 30) {
    echo $data['value'];
}

