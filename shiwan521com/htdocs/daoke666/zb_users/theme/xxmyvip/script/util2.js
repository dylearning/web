$(function(){
	var toTopHeight = $("#moveside").offset().top;
	$(window).scroll(function() {
		if( $(document).scrollTop() > toTopHeight ){
			if ('undefined' == typeof(document.body.style.maxHeight)) {
				var scrollTop = $(document).scrollTop();
				$("#moveside").css({'position':'absolute','top':scrollTop+'px'});
			}else{
				$("#moveside").addClass("div2");
			}
		}else{
			if ('undefined' == typeof(document.body.style.maxHeight)) {
				$("#moveside").css({'position':'absolute','top':toTopHeight+'px'});
			}else{
				$("#moveside").removeClass("div2");
			}
		}
	});
	
});