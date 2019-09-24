<?php

/**
 * 系统参数
 */
define("VERSION", "2.0.101"); // 版本号
define("AUTH_CODE", "5WYyJqC568OzJmHBNQgqwkUhuPUTYYUTnAci77X768Ap0"); // 授权码
define("DATA_CENTER_URL", "http://data.appcms.cc"); //数据中心
define("UNION_URL", "http://union.appcms.cc"); //计费联盟URL
define("SITE_PATH", "/"); //站点安装路径，默认为根目录
/**
 * 以下参数为可后台编辑
 */
define("SITE_NAME", "手机赚钱app软件下载-易享赚"); //站点名称
define("SITE_URL", "http://www.yixiangzhuan.com"); //站点域名
define("SITE_LOGO", "/upload/logo.png"); //站点LOGO
define("UPLOAD_PATH", "/img/"); //资源上传路径,相对于upload
define("SITE_REWRITEURL", "1"); //是否开启伪静态重写 0==不开启，1==开启
define("SITE_SAFECODE", ""); //后台登录安全码
define("TEMPLATE", "default"); //模板风格
define("PAGESIZE", "9"); //默认每页显示行数
define("UPLOAD_CODE", ""); //上传安全码，该值安装时候自动生成，6-12位随机字母（大小写）数字，特殊符号
define("UPLOAD_KEY", ""); //上传密钥，该值安装时候自动生成，6-12位随机字母（大小写）数字，特殊符号
define("COMMENT_CODE", "<!-- 代码1：放在页面需要展示的位置  --><!-- 如果您配置过sourceid，建议在div标签中配置sourceid、cid(分类id)，没有请忽略  --><div id=\"cyReward\" role=\"cylabs\" data-use=\"reward\" style=\"text-align: center;\"></div><!--PC版--><div id=\"SOHUCS\" ></div><script charset=\"utf-8\" type=\"text/javascript\" src=\"https://changyan.sohu.com/upload/changyan.js\" ></script><script type=\"text/javascript\">window.changyan.api.config({appid: 'cytkvpKFK',conf: 'prod_2d0d2682c542a9f01a875f3c8bf14da6'});</script><!-- 代码2：用来读取评论框配置，此代码需放置在代码1之后。 --><!-- 如果当前页面有评论框，代码2请勿放置在评论框代码之前。 --><!-- 如果页面同时使用多个实验室项目，以下代码只需要引入一次，只配置上面的div标签即可 --><script type=\"text/javascript\" charset=\"utf-8\" src=\"https://changyan.itc.cn/js/lib/jquery.js\"></script><script type=\"text/javascript\" charset=\"utf-8\" src=\"https://changyan.sohu.com/js/changyan.labs.https.js?appid=cytkvpKFK\"></script>"); //评论代码
define("APP_IMG_LOCAL", "0"); //添加应用是否图片本地化
define("CONTENT_NLINK", "1"); //是否开启正文内链
define("COUNT_CODE", "<script type=\"text/javascript\">var cnzz_protocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cspan id='cnzz_stat_icon_1268873145'%3E%3C/span%3E%3Cscript src='\" + cnzz_protocol + \"s22.cnzz.com/z_stat.php%3Fid%3D1268873145%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E\"));</script>"); //统计代码
define("SEO_TITLE", "易享赚网_安卓手赚苹果iPhone手机赚钱软件排行_手机兼职app网赚平台"); //首页SEO标题
define("SEO_KEYWORDS", "手机赚钱,手机赚钱软件,手机兼职,手机兼职赚钱,手机赚钱软件排行,苹果赚钱,安卓赚钱,易享赚"); //首页关键词
define("SEO_DESCRIPTION", "易享赚是国内知名的手机赚钱平台，拥有海量的手赚app软件、教程、活动、资讯等,提供正规安全有效的安卓、苹果、微信等手机兼职网赚软件，同时为赚友提供各种手赚方法、线报，让你爱上手机赚钱。"); //首页描述
define("CONTENT_MOBILE", "1"); //是否开启手机版
define("WAP_URL", ""); //手机版独立域名
define("WAP_LOGO", "/upload/logos.png"); //手机版图片
define("WAP_TPL", "style"); //手机版模板
define("CACHE_TIME", "0");
define("UNION_ID", "");

define("IMG_REWRITE", "0");
define("UPLOAD_PATH_APK", "/apk/");
define("BAIDU_SUBMIT", "http://data.zz.baidu.com/urls?site=www.yixiangzhuan.com&token=0QJsAN7YhZgTkEGc");