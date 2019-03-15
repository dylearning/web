<?php
 echo'<meta charset="UTF-8"><div style="text-align:center;padding:60px 0;font-size:15px;"><h2 style="font-size:60px;margin-bottom:32px;">非法访问</h2></div>';
 die();
 ?>{$aid=$article.ID}
{$tagid=$article.Tags}
{$cid=$article.Category.ID}
{php}
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
{/php}
{$str}