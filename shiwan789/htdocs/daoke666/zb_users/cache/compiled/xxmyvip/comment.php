<li class="depth-1" id="cmt<?php  echo $comment->ID;  ?>">
<dl>
<dd>
<span class="shu"><a name="cmt<?php  echo $comment->ID;  ?>"><span class="clg"><?php if ($comment->FloorID > '0') { ?><?php  echo $comment->FloorID;  ?>楼<?php }else{  ?>New<?php } ?></span></a></span>
<cite><a href="<?php  echo $comment->Author->HomePage;  ?>" rel="nofollow" title="<?php  echo $comment->Author->StaticName;  ?>" target="_blank"><?php  echo $comment->Author->StaticName;  ?></a></cite>
<span id="reed"><?php  echo $comment->Time();  ?></span>
<span class="huifuliuyan"><a href="#cmt<?php  echo $comment->ID;  ?>" onclick="RevertComment('<?php  echo $comment->ID;  ?>')">回复</a></span>
<div class="jwtwenzhang"><?php  echo $comment->Content;  ?>
<?php  foreach ( $comment->Comments as $comment) { ?>
<?php  include $this->GetTemplate('comment');  ?>
<?php }   ?>
</div>
</dd>
</dl>
</li>