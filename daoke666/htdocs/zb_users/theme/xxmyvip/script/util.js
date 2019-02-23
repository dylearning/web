//tuisong
(function(){
    var bp = document.createElement('script');
    bp.src = '//push.zhanzhang.baidu.com/push.js';
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
//moveside
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
//pinlun list Tabs
function setTab(name,cursel,n){
for(i=1;i<=n;i++){
var menu=document.getElementById(name+i);
var con=document.getElementById("con"+name+i);
menu.className=i==cursel?"current":"";
con.style.display=i==cursel?"block":"none";
}
}
//changyanbq
document.writeln('<script type="text/javascript"  charset=\"utf-8\" src="http://changyan.itc.cn/js/??lib/jquery.js,changyan.labs.js?appid=cyqIl0VkO"></script>');