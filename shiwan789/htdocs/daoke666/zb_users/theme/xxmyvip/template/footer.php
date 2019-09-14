<?php
 echo'<meta charset="UTF-8"><div style="text-align:center;padding:60px 0;font-size:15px;"><h2 style="font-size:60px;margin-bottom:32px;">非法访问</h2></div>';
 die();
 ?><div id="dibuer">
<p>{$zbp->Config('xxmyvip')->PostBQSF}</p>
<p>{$copyright}</p>
</div>
<script type="text/javascript">
jQuery(document).ready(function($){
	/* prepend menu icon */
	$('#daohangs-around').prepend('<div id="caidan-tubiao"></div>');
	/* toggle nav */
	$("#caidan-tubiao").on("click", function(){
		$("#daohangs").slideToggle();
		$(this).toggleClass("active");
	});
});
</script>
{$footer}