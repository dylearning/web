<div class="firstreed">
<div class="reed">
<div class="read-more"><a rel="nofollow" href="<?php  echo $article->Url;  ?>" title="<?php  echo $article->Title;  ?>">阅读全文</a></div>
<h2><span class="riqiding">置顶</span><a target="_blank" href="<?php  echo $article->Url;  ?>" title="<?php  echo $article->Title;  ?>"><?php  echo $article->Title;  ?></a></h2>
<h6>发布 : <a target="_blank" href="<?php  echo $article->Author->Url;  ?>" title="查看 <?php  echo $article->Author->StaticName;  ?> 的全部文章"><?php  echo $article->Author->StaticName;  ?></a> | 分类 : <a href="<?php  echo $article->Category->Url;  ?>" title="查看 <?php  echo $article->Category->Name;  ?> 的全部文章"><?php  echo $article->Category->Name;  ?></a> | 评论 : <?php  echo $article->CommNums;  ?>人 | 浏览 : <?php  echo $article->ViewNums;  ?>次
<div class="clear"></div>
</h6><div class="jieshao">
<?php if ($zbp->Config('xxmyvip')->PostZYSLTKG=='1') { ?>
<?php $pattern="/<[img|IMG].*?src=[\'|\"](.*?(?:[\.gif|\.jpg|\.png]))[\'|\"].*?[\/]?>/";$content = $article->Content;preg_match_all($pattern,$content,$matchContent); ?><?php if ( isset($matchContent[1][0])) { ?><span id="zhaiyaotu"><a rel="nofollow" href="<?php  echo $article->Url;  ?>" title="<?php  echo $article->Title;  ?>"><img alt="<?php  echo $article->Title;  ?>" src="<?php  echo $matchContent[1][0];;  ?>" /></a></span>
<?php }else{  ?>
<?php if ($zbp->Config('xxmyvip')->PostWTSLTKG=='1') { ?>
<span id="zhaiyaotu"><a rel="nofollow" href="<?php  echo $article->Url;  ?>" title="<?php  echo $article->Title;  ?>"><img alt="<?php  echo $article->Title;  ?>" src="<?php  echo $host;  ?>/zb_users/theme/xxmyvip/include/noimg.png" /></a></span>
<?php } ?>
<?php } ?>
<?php } ?>
<p><?php $description = preg_replace('/[\r\n\s]+/', '', trim(SubStrUTF8(TransferHTML($article->Content,'[nohtml]'),350))); ?><?php  echo $description;  ?></p></div>
</div>
</div>