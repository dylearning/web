<?php



class BaidusubmitOptions
{
    const PREFIX = 'baidusubmit_';

    static protected $_keys = array(
        'siteurl',
        'sppasswd',
        'pingtoken',
        'installmaxtid',
        'openping',
        'checksign',
        'lastcrawl',
        'enabled',
    );

    static function getOption($name, $default=null, $inc_time=false)
    {
		global $zbp;
        if (!in_array($name, self::$_keys)) return null;
        $value = $zbp->Config('baidusubmit')->$name;
		if (!isset($value)) $value = $default;
        $time = null;
        if ("\n\n" == substr($value, -12, 2) && preg_match('#^\d+$#', ($time = substr($value, -10)))) {
            $value = substr($value, 0, -12);
        }
		$value = str_replace('{#ZC_BLOG_HOST#}', ($zbp->option['ZC_PERMANENT_DOMAIN_ENABLE']==false?$zbp->host:$zbp->option['ZC_BLOG_HOST']), $value);
        return $inc_time ? array('value' => $value, 'time' => $time) : $value;
    }

    static function setOption($name, $value)
    {
		global $zbp;
        if (!in_array($name, self::$_keys)) return false;
        $time = time();		
		$zbp->Config('baidusubmit')->$name = $value . "\n\n" . $time;
		$zbp->SaveConfig('baidusubmit');
    }

    static function deleteOption($name)
    {
		global $zbp;
		$zbp->Config('baidusubmit')->Del($name);
		$zbp->SaveConfig('baidusubmit');
    }

    static function clearAllOptions()
    {
		global $zbp;
        $zbp->DelConfig('baidusubmit');
    }
	
	static function initOptions()
	{
		global $zbp;
		/*$time = time();
		self::$config = &$zbp->configs['baidusubmit'];
		foreach (self::$_keys as $key) {
            self::$config->$name = $key . "\n\n" . $time;
        }*/
		$zbp->SaveConfig('baidusubmit');
	}
	
}