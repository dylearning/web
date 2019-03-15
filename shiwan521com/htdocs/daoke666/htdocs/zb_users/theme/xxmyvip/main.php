<?php
require '../../../zb_system/function/c_system_base.php';
require '../../../zb_system/function/c_system_admin.php';

$zbp->Load();
$action='root';
if (!$zbp->CheckRights($action)) {$zbp->ShowError(6);die();}
if (!$zbp->CheckPlugin('xxmyvip')) {$zbp->ShowError(48);die();}
$blogtitle='小小蚂蚁主题高级版 - 配置页面';

$act = "";
if ($_GET['act']){
$act = $_GET['act'] == "" ? 'xxmyvip1' : $_GET['act'];
}

require $blogpath . 'zb_system/admin/admin_header.php';
require $blogpath . 'zb_system/admin/admin_top.php';

?>
<script src="selector/jscolor.js" type="text/javascript"></script>
<div id="divMain">
	<div class="divHeader"><?php echo $blogtitle;?></div>
	<div class="SubMenu">
	<?php xxmyvip_SubMenu($act);?>
	<a target="_blank" href="http://xiaoxiaomayi.com/read/521.html" title="SEO优化诊断服务，全面诊断和优化网站"><span style="color:#007dff;" class="m-left">SEO诊断</span></a>
	<a target="_blank" href="http://xiaoxiaomayi.com/read/1079.html" title="17百家汇高端资源社群"><span style="color:#D10101;" class="m-left">网赚社群</span></a>
    </div>
	<div id="divMain2">
    <?php
    if(isset($_POST['Postztys'])){
  $zbp->Config('xxmyvip')->Postztys = $_POST['Postztys'];
  $zbp->Config('xxmyvip')->Postljys = $_POST['Postljys'];
  $zbp->Config('xxmyvip')->Postljfd = $_POST['Postljfd'];
  $zbp->Config('xxmyvip')->PostZYSLTKG = $_POST['PostZYSLTKG'];
  $zbp->Config('xxmyvip')->PostWTSLTKG = $_POST['PostWTSLTKG'];
  $zbp->Config('xxmyvip')->PostLBRZKG = $_POST['PostLBRZKG'];
  $zbp->Config('xxmyvip')->PostBQDZKG = $_POST['PostBQDZKG'];
  $zbp->Config('xxmyvip')->PostPCDHZ = $_POST['PostPCDHZ'];
  $zbp->Config('xxmyvip')->PostPCDHY2 = $_POST['PostPCDHY2'];
  $zbp->Config('xxmyvip')->PostYDDH = $_POST['PostYDDH'];
  $zbp->Config('xxmyvip')->PostYDMC = $_POST['PostYDMC'];
  $zbp->Config('xxmyvip')->PostBDTJ = $_POST['PostBDTJ'];
    $zbp->SaveConfig('xxmyvip');
    $zbp->ShowHint('good');
    }
    if ($act == 'xxmyvip1'){ ?>
    <table style="margin:0.5em 0 0;" width="100%" cellspacing='0' cellpadding='0' class="tableBorder">
  <tr>
	<form enctype="multipart/form-data" method="post" action="save.php?type=base">
    <td width="20%"><label for="logo.gif"><p align="center">上传LOGO（尺寸154px*108px）</p></label></td>
    <td width="21%"><p align="center"><input name="logo.gif" type="file"/></p></td>
  <td width="9%"><p align="center"><input name="" type="Submit" class="button" value="保存"/></p></td>
    </form>
	<form enctype="multipart/form-data" method="post" action="save.php?type=base2">
    <td width="20%"><label for="noimg.png"><p align="center">上传文章无图时的默认缩略图</p></label></td>
    <td width="21%"><p align="center"><input name="noimg.png" type="file"/></p></td>
  <td width="9%"><p align="center"><input name="" type="Submit" class="button" value="保存"/></p></td>
    </form>
  </tr>
    </table>
    <form id="form1" name="form1" method="post">
    <table style="margin-bottom:5px;width:100%;" cellspacing='0' cellpadding='0' class="tableBorder">
    <td width="25%"><p align="center">网站主体颜色 (默认: D10101)</p></td>
    <td width="8%" align="center"><input name="Postztys" type="text" class="color" style="width:80%" value="#<?php echo $zbp->Config('xxmyvip')->Postztys;?>" /></input></td>
    <td width="25%"><p align="center">文中链接颜色 (默认: 450A11)</p></td>
    <td width="8%" align="center"><input name="Postljys" type="text" class="color" style="width:80%" value="#<?php echo $zbp->Config('xxmyvip')->Postljys;?>" /></input></td>
    <td width="25%"><p align="center">文中链接浮动 (默认: D10101)</p></td>
    <td width="8%" align="center"><input name="Postljfd" type="text" class="color" style="width:80%" value="#<?php echo $zbp->Config('xxmyvip')->Postljfd;?>" /></input></td>
    </tr>
    </table>

    <table style="margin-bottom:5px;width:100%;" cellspacing='0' cellpadding='0' class="tableBorder">
    <tr>
    <td width="17%"><label for="PostZYSLTKG"><p align="center">是否显示摘要的缩略图部分</p></label></td>
    <td width="8%" align="center">开关<input name="PostZYSLTKG" type="text" value="<?php echo $zbp->Config('xxmyvip')->PostZYSLTKG; ?>" class="checkbox" style="display:none;" /></td>
    <td width="17%"><label for="PostWTSLTKG"><p align="center">是否显示无图时默认缩略图</p></label></td>
    <td width="8%" align="center">开关<input name="PostWTSLTKG" type="text" value="<?php echo $zbp->Config('xxmyvip')->PostWTSLTKG; ?>" class="checkbox" style="display:none;" /></td>
    <td width="17%"><label for="PostLBRZKG"><p align="center">是否显示文章列表日期模块</p></label></td>
    <td width="8%" align="center">开关<input name="PostLBRZKG" type="text" value="<?php echo $zbp->Config('xxmyvip')->PostLBRZKG; ?>" class="checkbox" style="display:none;" /></td>
    <td width="17%"><label for="PostBQDZKG"><p align="center">是否显示文章底部表情点赞</p></label></td>
    <td width="8%" align="center">开关<input name="PostBQDZKG" type="text" value="<?php echo $zbp->Config('xxmyvip')->PostBQDZKG; ?>" class="checkbox" style="display:none;" /></td>
    </tr>
    </table>

    <table width="100%" style='padding:0;margin:0;' cellspacing='0' cellpadding='0' class="tableBorder">
  <tr>
    <th width="20%"><p align="center">配置名称</p></th>
    <th width="55%"><p align="center">配置内容</p></th>
  <th width="25%"><p align="center">配置说明</p></th>
  </tr>
     <tr>
    <td><label for="PostPCDHZ"><p align="center">PC版导航</p></label></td>
    <td><p align="left"><textarea name="PostPCDHZ" type="text" id="PostPCDHZ" style="width:98%;height:120px;"><?php echo $zbp->Config('xxmyvip')->PostPCDHZ;?></textarea></p></td>
  <td><p align="left">只需把链接和文本修改为自己的即可，链接和文本可随意填写；每一个导航由 li 标签开头和结尾，导航数量可自行增加或删减。<br />&lt;t&gt;&lt;/t&gt; 表示二级导航！<br />&lt;span id=&quot;remen&quot;&gt;&lt;/span&gt; 表示hot图标<br />&lt;span id=&quot;xin&quot;&gt;&lt;/span&gt; 表示new图标</p></td>
  </tr>
    <tr>
    <td><label for="PostPCDHY2"><p align="center">PC版导航下方二维码</p></label></td>
    <td><p align="left"><textarea name="PostPCDHY2" type="text" id="PostPCDHY2" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostPCDHY2;?></textarea></p></td>	
  <td><p align="left">尺寸 宽 ≤ 154px<br />PC版导航下方二维码图片设置，也可以是文本或者广告等。</p></td>
  </tr>
    <tr>
    <td><label for="PostYDDH"><p align="center">移动版导航</p></label></td>
    <td><p align="left"><textarea name="PostYDDH" type="text" id="PostYDDH" style="width:98%;height:100px;"><?php echo $zbp->Config('xxmyvip')->PostYDDH;?></textarea></p></td>	
  <td><p align="left">只需把链接和文本修改为自己的即可，链接和文本可随意填写；每一个导航由 li 标签开头和结尾，导航数量可自行增加或删减。</p></td>
  </tr>
    <tr>
    <td><label for="PostYDMC"><p align="center">移动版网站名称</p></label></td>
    <td><p align="center"><textarea name="PostYDMC" type="text" id="PostYDMC" style="width:50%;height:30px;line-height:30px;text-align:center;"><?php echo $zbp->Config('xxmyvip')->PostYDMC;?></textarea></p></td>	
  <td><p align="left">这里填写移动版网站名称，纯文本格式，建议不要太长！</p></td>
  </tr>
    <tr>
    <td><label for="PostBDTJ"><p align="center">百度统计代码</p></label></td>
    <td><p align="left"><textarea name="PostBDTJ" type="text" id="PostBDTJ" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostBDTJ;?></textarea></p></td>	
  <td><p align="left">填写百度统计新的升级代码（不适合老版代码），不设置请留空；只限填写需要安装在头部标签的代码，其他代码（包括百度统计老版代码）直接在 网站设置-版权说明 中添加！</p></td>
  </tr>
	</table>
	<br />
    <input name="" type="Submit" class="button" value="保存配置"/>
    </form>
    <?php
    }
    if(isset($_POST['PostGJC'])){
  $zbp->Config('xxmyvip')->PostGJC = $_POST['PostGJC'];
  $zbp->Config('xxmyvip')->PostMS = $_POST['PostMS'];
  $zbp->Config('xxmyvip')->PostSYGG = $_POST['PostSYGG'];
    $zbp->SaveConfig('xxmyvip');
    $zbp->ShowHint('good');
    }
    if ($act == 'xxmyvip2'){ ?>
    <form id="form2" name="form2" method="post">  
    <table width="100%" style='padding:0;margin:0;' cellspacing='0' cellpadding='0' class="tableBorder">
  <tr>
    <th width="20%"><p align="center">配置名称</p></th>
    <th width="55%"><p align="center">配置内容</p></th>
  <th width="25%"><p align="center">配置说明</p></th>
  </tr>
      <tr>
    <td><label for="PostGJC"><p align="center">首页关键词标签</p></label></td>
    <td><p align="left"><textarea name="PostGJC" type="text" id="PostGJC" style="width:98%;"><?php echo $zbp->Config('xxmyvip')->PostGJC;?></textarea></p></td>
  <td><p align="left">网站首页关键词标签（Keywords）设置，关键词为纯文本，关键词之间用英文逗号隔开。</p></td>
  </tr>
        <tr>
    <td><label for="PostMS"><p align="center">首页描述标签</p></label></td>
    <td><p align="left"><textarea name="PostMS" type="text" id="PostMS" style="width:98%;"><?php echo $zbp->Config('xxmyvip')->PostMS;?></textarea></p></td>
  <td><p align="left">网站首页描述标签（description）设置，描述填写为纯文本形式。</p></td>
  </tr>
  <tr>
    <td><label for="PostSYGG"><p align="center">网站首页公告</p></label></td>
    <td><p align="left"><textarea name="PostSYGG" type="text" id="PostSYGG" style="width:98%;"><?php echo $zbp->Config('xxmyvip')->PostSYGG;?></textarea></p></td>
    <td><p align="left">填写网站公告信息，公告位置在网站首页文章摘要顶部。</p></td>
</tr>    
    </table>
    <br />
    <input name="" type="Submit" class="button" value="保存配置"/>
    </form>
    <?php
    }
    if(isset($_POST['PostDBLY'])){
  $zbp->Config('xxmyvip')->PostDBLY = $_POST['PostDBLY'];
  $zbp->Config('xxmyvip')->PostDBBQ = $_POST['PostDBBQ'];
  $zbp->Config('xxmyvip')->PostWZFX = $_POST['PostWZFX'];
  $zbp->Config('xxmyvip')->PostTJYD = $_POST['PostTJYD'];
  $zbp->Config('xxmyvip')->PostSPFX = $_POST['PostSPFX'];
    $zbp->SaveConfig('xxmyvip');
    $zbp->ShowHint('good');
    }
    if ($act == 'xxmyvip3'){ ?>
    <form id="form3" name="form3" method="post">  
    <table width="100%" style='padding:0;margin:0;' cellspacing='0' cellpadding='0' class="tableBorder">
  <tr>
    <th width="20%"><p align="center">配置名称</p></th>
    <th width="55%"><p align="center">配置内容</p></th>
  <th width="25%"><p align="center">配置说明</p></th>
  </tr>
  <tr>
    <td><label for="PostDBLY"><p align="center">内页底部来源信息</p></label></td>
    <td><p align="left"><textarea name="PostDBLY" type="text" id="PostDBLY" style="width:98%;"><?php echo $zbp->Config('xxmyvip')->PostDBLY;?></textarea></p></td>
    <td><p align="left">按照默认的形式修改即可。</p></td>
</tr>
  <tr>
    <td><label for="PostDBBQ"><p align="center">内页底部标签部分</p></label></td>
    <td><p align="left"><textarea name="PostDBBQ" type="text" id="PostDBBQ" style="width:98%;"><?php echo $zbp->Config('xxmyvip')->PostDBBQ;?></textarea></p></td>
    <td><p align="left">按照默认的形式修改即可，可自行增加或删减行数。</p></td>
</tr>
  <tr>
    <td><label for="PostWZFX"><p align="center">内页底部标签部分右侧分享按钮</p></label></td>
    <td><p align="left"><textarea name="PostWZFX" type="text" id="PostWZFX" style="width:98%;"><?php echo $zbp->Config('xxmyvip')->PostWZFX?></textarea></p></td>
    <td><p align="left">直接填写获取的分享按钮代码即可，比如百度分享。</p></td>
</tr>
  <tr>
    <td><label for="PostTJYD"><p align="center">内页底部标签部分下方文章推荐</p></label></td>
    <td><p align="left"><textarea name="PostTJYD" type="text" id="PostTJYD" style="width:98%;"><?php echo $zbp->Config('xxmyvip')->PostTJYD;?></textarea></p></td>
    <td><p align="left">直接填写获取的文章推荐代码即可，比如百度推荐或无觅推荐。</p></td>
</tr>
  <tr>
    <td><label for="PostSPFX"><p align="center">商品图片右侧分享按钮</p></label></td>
    <td><p align="left"><textarea name="PostSPFX" type="text" id="PostSPFX" style="width:98%;"><?php echo $zbp->Config('xxmyvip')->PostSPFX?></textarea></p></td>
    <td><p align="left">直接填写获取的分享按钮代码即可，比如百度分享。</p></td>
</tr>
</table>
 <br />
   <input name="" type="Submit" class="button" value="保存配置"/>
    </form>
    <?php
    }
    if(isset($_POST['PostBQSF'])){
  $zbp->Config('xxmyvip')->PostBQSF = $_POST['PostBQSF'];
  $zbp->Config('xxmyvip')->PostCLBT = $_POST['PostCLBT'];
  $zbp->Config('xxmyvip')->PostCLNR = $_POST['PostCLNR'];
    $zbp->SaveConfig('xxmyvip');
    $zbp->ShowHint('good');
    }
    if ($act == 'xxmyvip4'){ ?>
  <form id="form4" name="form4" method="post">  
    <table width="100%" style='padding:0;margin:0;' cellspacing='0' cellpadding='0' class="tableBorder">
  <tr>
    <th width="20%"><p align="center">配置名称</p></th>
    <th width="55%"><p align="center">配置内容</p></th>
  <th width="25%"><p align="center">配置说明</p></th>
  </tr>
  <tr>
    <td><label for="PostBQSF"><p align="center">网站底部版权第一行</p></label></td>
    <td><p align="left"><textarea name="PostBQSF" type="text" id="PostBQSF" style="width:98%;height:90px;"><?php echo $zbp->Config('xxmyvip')->PostBQSF;?></textarea></p></td>
    <td><p align="left">按照默认的代码修改，由多个描文本链接组成，链接之间用 | 符号分隔，数量可自行增加或删减；当然也可以根据自己的喜欢设置。<br />注：版权的第二行请在网站设置中设置！</p></td>
</tr>
  <tr>
    <td><label for="PostCLBT"><p align="center">右下跟随侧栏标题</p></label></td>
    <td><p align="center"><textarea name="PostCLBT" type="text" id="PostCLBT" style="width:50%;height:30px;line-height:30px;text-align:center;"><?php echo $zbp->Config('xxmyvip')->PostCLBT;?></textarea></p></td>
    <td><p align="left">直接填写标题即可。</p></td>
</tr>
  <tr>
    <td><label for="PostCLNR"><p align="center">右下跟随侧栏内容</p></label></td>
    <td><p align="left"><textarea name="PostCLNR" type="text" id="PostCLNR" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostCLNR;?></textarea></p></td>
    <td><p align="left">内容的形式各种各样，可以是文本，也可以是各种广告等。</p></td>
</tr>
  </table>
 <br />
   <input name="" type="Submit" class="button" value="保存配置"/>
    </form>
  <?php
    }
    if(isset($_POST['PostAD'])){
  $zbp->Config('xxmyvip')->PostAD = $_POST['PostAD'];
  $zbp->Config('xxmyvip')->PostAD3 = $_POST['PostAD3'];
  $zbp->Config('xxmyvip')->PostDBDS = $_POST['PostDBDS'];
  $zbp->Config('xxmyvip')->PostAD4 = $_POST['PostAD4'];
  $zbp->Config('xxmyvip')->PostAD5 = $_POST['PostAD5'];
    $zbp->SaveConfig('xxmyvip');
    $zbp->ShowHint('good');
    }
    if ($act == 'xxmyvip5'){ ?>
   <form id="form5" name="form5" method="post">  
    <table width="100%" style='padding:0;margin:0;' cellspacing='0' cellpadding='0' class="tableBorder">
  <tr>
    <th width="20%"><p align="center">配置名称</p></th>
    <th width="55%"><p align="center">配置内容</p></th>
  <th width="25%"><p align="center">配置说明</p></th>
  </tr>
      <tr>
    <td><label for="PostAD"><p align="center">首页公告下方广告</p></label></td>
    <td><p align="left"><textarea name="PostAD" type="text" id="PostAD" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostAD;?></textarea></p></td>
  <td><p align="left">尺寸 776px*90px<br />广告可以是文本、图片、联盟广告等，图片广告直接填写图片代码（不懂请百度，很简单），注意不要超过广告位尺寸。（下同）</p></td>
  </tr>
    <tr>
      <td><label for="PostAD3"><p align="center">当前位置下方广告</p></label></td>
    <td><p align="left"><textarea name="PostAD3" type="text" id="PostAD3" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostAD3;?></textarea></p></td>
  <td><p align="left">尺寸 776px*90px</p></td>
  </tr>
  <tr>
    <td><label for="PostDBDS"><p align="center">内页底部广告</p></label></td>
    <td><p align="left"><textarea name="PostDBDS" type="text" id="PostDBDS" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostDBDS;?></textarea></p></td>
    <td><p align="left">尺寸 宽 ≤ 776px</p></td>
</tr>
    <tr>
      <td><label for="PostAD4"><p align="center">评论框上方广告</p></label></td>
    <td><p align="left"><textarea name="PostAD4" type="text" id="PostAD4" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostAD4;?></textarea></p></td>
  <td><p align="left">尺寸 776px*90px</p></td>
  </tr>
    <tr>
      <td><label for="PostAD5"><p align="center">评论框“相关文章”按钮广告</p></label></td>
    <td><p align="left"><textarea name="PostAD5" type="text" id="PostAD5" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostAD5;?></textarea></p></td>
  <td><p align="left">尺寸 宽：776px</p></td>
  </tr>
  </table>
 <br />
   <input name="" type="Submit" class="button" value="保存配置"/>
    </form>
  <?php
    }
    if(isset($_POST['PostAD6'])){
  $zbp->Config('xxmyvip')->PostAD6 = $_POST['PostAD6'];
  $zbp->Config('xxmyvip')->PostAD7 = $_POST['PostAD7'];
  $zbp->Config('xxmyvip')->PostAD8 = $_POST['PostAD8'];
  $zbp->Config('xxmyvip')->PostAD9 = $_POST['PostAD9'];
    $zbp->SaveConfig('xxmyvip');
    $zbp->ShowHint('good');
    }
    if ($act == 'xxmyvip6'){ ?>
   <form id="form6" name="form6" method="post">  
    <table width="100%" style='padding:0;margin:0;' cellspacing='0' cellpadding='0' class="tableBorder">
  <tr>
    <th width="20%"><p align="center">配置名称</p></th>
    <th width="55%"><p align="center">配置内容</p></th>
  <th width="25%"><p align="center">配置说明</p></th>
  </tr>
    <tr>
    <td><label for="PostAD9"><p align="center">首页公告下方广告</p></label></td>
    <td><p align="left"><textarea name="PostAD9" type="text" id="PostAD9" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostAD9;?></textarea></p></td>
  <td><p align="left">尺寸 宽 ≤ 415px<br />广告可以是文本、图片、联盟广告等，图片广告直接填写图片代码（不懂请百度，很简单），联盟广告建议设置移动广告。（下同）</p></td>
  </tr>
    <tr>
    <td><label for="PostAD6"><p align="center">当前位置下方广告</p></label></td>
    <td><p align="left"><textarea name="PostAD6" type="text" id="PostAD6" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostAD6;?></textarea></p></td>
  <td><p align="left">尺寸 宽 ≤ 415px</p></td>
  </tr>

  <tr>
    <td><label for="PostAD7"><p align="center">内页底部广告</p></label></td>
    <td><p align="left"><textarea name="PostAD7" type="text" id="PostAD7" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostAD7;?></textarea></p></td>
    <td><p align="left">尺寸 宽 ≤ 415px</p></td>
</tr>

    <tr>
      <td><label for="PostAD8"><p align="center">评论框上方广告</p></label></td>
    <td><p align="left"><textarea name="PostAD8" type="text" id="PostAD8" style="width:98%;height:70px;"><?php echo $zbp->Config('xxmyvip')->PostAD8;?></textarea></p></td>
  <td><p align="left">尺寸 宽 ≤ 415px</p></td>
  </tr>
  </table>
 <br />
   <input name="" type="Submit" class="button" value="保存配置"/>
    </form>
  <?php
    }
    if ($act == 'xxmyvip7'){ ?>
   <form id="form7" name="form7" method="post">
    <table width="100%" cellspacing='0' cellpadding='0' class="tableBorder">
    <tr class="color2 color3">
    <td width="20%"><p align="center">主题设置说明</p></td>
    <td><p align="left"><a title="查看小小蚂蚁主题高级版设置说明" target="_blank" href="http://xiaoxiaomayi.com/xxmyvip.html">点击查看小小蚂蚁主题高级版设置说明&gt;&gt;</a></p></td>
    </tr>
    </table>
    </form>
   <?php
	}
	?>
  </div>
</div>
<script type="text/javascript">ActiveTopMenu("topmenu_xxmyvip");</script> 
<?php
require $blogpath . 'zb_system/admin/admin_footer.php';
RunTime();
?>