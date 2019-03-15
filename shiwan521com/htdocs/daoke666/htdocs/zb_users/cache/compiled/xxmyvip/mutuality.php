<?php  $aid=$article->ID;  ?>
<?php  $tagid=$article->Tags;  ?>
<?php  $cid=$article->Category->ID;  ?>
<?php 
$str = '';
$tagrd=array_rand($tagid);
if( sizeof($tagid)>0 && ($tagid[$tagrd]->Count)>1){
$tagi='%{'.$tagrd.'}%';
$where = array(array('=','log_Status','0'),array('like','log_Tag',$tagi),array('<>','log_ID',$aid));
}else{
$where = array(array('=','log_Status','0'),array('=','log_CateID',$cid),array('<>','log_ID',$aid));
}
$array = $zbp->GetArticleList(array('*'),$where,array('rand()'=>' '),array(10),'');
foreach ($array as $related) {
if(($related->ID)!=$aid){
$str .= "<li><span>{$related->Time('Y-m-d H:i')}</span><a href=\"{$related->Url}\" title=\"{$related->Title}\">{$related->Title}</a></li>";
}
}
 ?>
<?php  echo $str;  ?>