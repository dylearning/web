<?php
#注册插件
RegisterPlugin("NoCate","ActivePlugin_NoCate");

function ActivePlugin_NoCate() {
    global $zbp;
    if($zbp->Config('NoCate')->nocateid) Add_Filter_Plugin('Filter_Plugin_ViewList_Core','NoCate_ViewList_Core');
}
function NoCate_ViewList_Core(&$type,&$page,&$category,&$author,&$datetime,&$tag,&$w,&$pagebar){
    global $zbp;
    $nocatelist=explode(',' ,$zbp->Config('NoCate')->nocateid); //分段获得不显示的分类数组
    if($type=='index'){
        //过滤列表
        $w[]=array('NOT IN' ,'log_CateID' ,$nocatelist);
    }
}
function InstallPlugin_NoCate() {}
function UninstallPlugin_NoCate() {}