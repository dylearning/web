<?php
require './zb_system/function/c_system_base.php';

$zbp->RedirectInstall();
$zbp->CheckGzip();
$zbp->Load();
$zbp->RedirectPermanentDomain();

    if(strpos(strtolower($_SERVER['HTTP_USER_AGENT']),'baiduspider') !== false) 
    {
		foreach ($GLOBALS['Filter_Plugin_Index_Begin'] as $fpname => &$fpsignal) $fpname();
		ViewIndex();
		foreach ($GLOBALS['Filter_Plugin_Index_End'] as $fpname => &$fpsignal) $fpname();
		RunTime();
    }else{
    ?>
<!doctype html>
<html>
<head>
<meta charset="utf-8"/>
<title>首页</title>
</head>
<body align="center">
<br/>

<p align="center"><img src="images/daoke/100.jpg"></p>
<br/>

<p align="center"><img src="images/daoke/5.jpg"></p>
<br/>

<p align="center"><img src="images/daoke/13.jpg"></p>
<br/>

<p align="center"><img src="images/daoke/12.jpg"></p>
<br/>

<p align="center"><img src="images/daoke/6.jpg"></p>
<br/>

<p align="center"><img src="images/daoke/15.jpg"></p>
<br/>

<p align="center"><img src="images/daoke/10.jpg"></p>
<br/>

<p align="center"><img src="images/daoke/18.jpg"></p>
<br/>

<a rel="external nofollow" target="_blank" href="http://www.miitbeian.gov.cn/">版权所有 沪ICP备18009635号</a>
</body>
</html>
<?php }?>