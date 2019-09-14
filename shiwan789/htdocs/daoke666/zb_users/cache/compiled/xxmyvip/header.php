<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Content-Language" content="<?php  echo $language;  ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="applicable-device" content="pc,mobile">
<?php if ($type=='article') { ?>
<title><?php  echo $title;  ?> - <?php  echo $name;  ?></title>
<meta name="keywords" content="<?php  foreach ( $article->Tags as $tag) { ?><?php  echo $tag->Name;  ?>,<?php }   ?><?php  echo $name;  ?>" />
<meta name="description" content="<?php $description = preg_replace('/[\r\n\s]+/', '', trim(SubStrUTF8(TransferHTML($article->Content,'[nohtml]'),130))); ?><?php  echo $description;  ?>" />
<?php }elseif($type=='index') {  ?>
<title><?php  echo $name;  ?> - <?php  echo $subname;  ?><?php if ($pagebar->PageNow > '1') { ?> - 第<?php  echo $pagebar->PageNow;  ?>页<?php } ?></title>
<meta name="Keywords" content="<?php  echo $zbp->Config('xxmyvip')->PostGJC;  ?>">
<meta name="description" content="<?php  echo $zbp->Config('xxmyvip')->PostMS;  ?>">
<?php }elseif($type=='tag') {  ?>
<title><?php  echo $tag->Name;  ?><?php if ($pagebar->PageNow > '1') { ?> - 第<?php  echo $pagebar->PageNow;  ?>页<?php } ?> - <?php  echo $name;  ?></title>
<meta name="Keywords" content="<?php  echo $tag->Name;  ?>,<?php  echo $name;  ?>">
<?php if ($tag->Intro) { ?>
<meta name="description" content="<?php  echo $tag->Intro;  ?>">
<?php } ?>
<?php }elseif($type=='category') {  ?>
<title><?php  echo $category->Name;  ?><?php if ($pagebar->PageNow > '1') { ?> - 第<?php  echo $pagebar->PageNow;  ?>页<?php } ?> - <?php  echo $name;  ?></title>
<meta name="Keywords" content="<?php  echo $category->Name;  ?>,<?php  echo $name;  ?>">
<?php if ($category->Intro) { ?>
<meta name="description" content="<?php  echo $category->Intro;  ?>">
<?php } ?>
<?php }elseif($type=='author') {  ?>
<title><?php  echo $author->StaticName;  ?>的全部文章<?php if ($pagebar->PageNow > '1') { ?> - 第<?php  echo $pagebar->PageNow;  ?>页<?php } ?> - <?php  echo $name;  ?></title>
<meta name="Keywords" content="<?php  echo $author->StaticName;  ?>,<?php  echo $name;  ?>">
<?php if ($author->Intro) { ?>
<meta name="description" content="<?php  echo $author->Intro;  ?>">
<?php } ?>
<?php }else{  ?>
<title><?php  echo $title;  ?> - <?php  echo $name;  ?></title>
<meta name="baidu_ssp_verify" content="ba89f789d43b19d7133ddcd7fe1be433">
<meta name="Keywords" content="<?php  echo $name;  ?>">
<meta name="description" content="<?php $description = preg_replace('/[\r\n\s]+/', '', trim(SubStrUTF8(TransferHTML($article->Content,'[nohtml]'),130))); ?><?php  echo $description;  ?>">
<?php } ?>
<meta name="generator" content="<?php  echo $zblogphp;  ?>" />
<link rel="stylesheet" rev="stylesheet" href="<?php  echo $host;  ?>zb_users/theme/<?php  echo $theme;  ?>/style/xxmyvip-Index.css" type="text/css" media="all" />
<script src="<?php  echo $host;  ?>zb_system/script/common.js" type="text/javascript"></script>
<script src="<?php  echo $host;  ?>zb_system/script/c_html_js_add.php" type="text/javascript"></script>
<?php  echo $header;  ?>
<?php if ($type=='index'&&$page=='1') { ?>
<link rel="alternate" type="application/rss+xml" href="<?php  echo $feedurl;  ?>" title="<?php  echo $name;  ?>" />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<?php  echo $host;  ?>zb_system/xml-rpc/?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="<?php  echo $host;  ?>zb_system/xml-rpc/wlwmanifest.xml" />
<?php } ?>
<style type="text/css">
#daohang ul li t,.reed .riqi,a.shangg,a.xiatt,a.shangg:hover,a.xiatt:hover,a.shang,a.xiat,a.shang:hover,a.xiat:hover,.reed-pinglun-anniu,span.now-page,#daohangs-around,#caidan-tubiao,#daohangs,#daohangs li,#btnPost{background-color:#<?php  echo $zbp->Config('xxmyvip')->Postztys;  ?>;}
.dinglanyou1 h3{border-bottom:3px solid #<?php  echo $zbp->Config('xxmyvip')->Postztys;  ?>;}
#dibuer{border-top:2px solid #<?php  echo $zbp->Config('xxmyvip')->Postztys;  ?>;}.cebianlan .rongqi h3{border-bottom:1px solid #<?php  echo $zbp->Config('xxmyvip')->Postztys;  ?>;}
#edtSearch{border:1px solid #<?php  echo $zbp->Config('xxmyvip')->Postztys;  ?>;}
#daohang .zuo ul li{border-right:1px solid #<?php  echo $zbp->Config('xxmyvip')->Postsbfd;  ?>;}
#daohang ul li t a{border-top:1px solid #<?php  echo $zbp->Config('xxmyvip')->Postsbfd;  ?>;border-right:1px solid #<?php  echo $zbp->Config('xxmyvip')->Postztys;  ?>;}
#daohang ul li t a:hover{border-right:1px solid #<?php  echo $zbp->Config('xxmyvip')->Postsbfd;  ?>;}
#daohang .you ul li a:hover,#daohang .zuo ul li a:hover,.reed-pinglun-anniu:hover{background-color:#<?php  echo $zbp->Config('xxmyvip')->Postsbfd;  ?>;}
a:hover,.reed h6 a:hover,#dibuer a:hover,.reed .riqiding,.cebianlan .rongqi li a:hover,#pinglun-liebiao ul.fubens li.depth-1 dl dd span.shu a,#pinglun-liebiao ul.fubens li.depth-1 dl dd span.huifuliuyan a:hover,.reed-biaoti h6 span{color:#<?php  echo $zbp->Config('xxmyvip')->Postztys;  ?>;}
.reed .kan a{color:#<?php  echo $zbp->Config('xxmyvip')->Postljys;  ?>;}.reed .kan a:hover{color:#<?php  echo $zbp->Config('xxmyvip')->Postljfd;  ?>;}
@media screen and (max-width:1492px){a.shang,a.xiat{background:none;}
a.xiat:hover,a.shang:hover{background-color:#f9f9f9;background-image:none;text-decoration:none;}}
</style>
<?php  echo $zbp->Config('xxmyvip')->PostBDTJ;  ?>