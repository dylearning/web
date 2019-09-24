<div class="warp-footer"> <!-- 页脚 结束 -->
      <div class="marauto">
        <div class="l footer-left">
            <h4>友情链接（联系QQ：1366922633）</h4>
            <div class="footer-link">
                <?php echo($c->get_flink($tpl));?>
            </div>
            <div class="f-img-link">
            
            </div>
        </div>
        <p class="line-t-25"></p>
        <span class="footer-info">
            <p class="line-t-15"></p>
            <!-- 版权标识开始 -->
            <div class="l"><a href="http://www.yixiangzhuan.com">易享赚</a> &copy; 2013&nbsp;&nbsp;冀ICP备17021537号-2</div>
            <!-- 版权标识结束 -->
            <div class="r"><?php echo('Processed in '.number_format(helper::getmicrotime()-$time_start, 2, '.', '').' MilliSeconds ');?>&nbsp;&nbsp;<?php if(defined('COUNT_CODE')) echo(COUNT_CODE); ?></div>
            <p class="line-t-25"></p>
        </span>
      </div>    
    </div><!-- 页脚 结束  -->
</div>
<div class="to-top"  style="display:none;"  >
	<a class="to-top-a" title="返回顶部"></a>
</div>

<script type="text/javascript">
	$(function(){
		$(window).scroll(function(){
				var scrolltop=$(this).scrollTop();
				scrolltop > 250 ? $('.to-top').show(): $('.to-top').hide();
				var top = $(window).height();
				$('.to-top').css({'top':scrolltop + top - 246});
			});
		$('.to-top').on('click',function(){
			if(!$('body').is(":animated"))
				$('html,body').animate({scrollTop: 0}, 500);
		});
	});
</script>

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?9555783fe3623a8b9be072755956775f";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

<script>
(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';        
    }
    else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script>

</body>
</html>
