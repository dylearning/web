<div id="dibuer">
<p><?php  echo $zbp->Config('xxmyvip')->PostBQSF;  ?></p>
<p><?php  echo $copyright;  ?></p>
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
<?php  echo $footer;  ?>