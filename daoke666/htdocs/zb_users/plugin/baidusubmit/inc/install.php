<?php


class BaidusubmitInstall
{
    static $createTableSql = array(
 	   'baidusubmit_sitemap' => '',
       'baidusubmit_urlstat' => ''
    );
	
	
	static function create_sql()
	{
		global $zbp;
        foreach (array_keys(self::$createTableSql) as $table) {
			if (self::$createTableSql[$table] != '') return;
			self::$createTableSql[$table] = $zbp->db->sql->CreateTable($GLOBALS['table']['plugin_'.$table],$GLOBALS['datainfo']['plugin_'.$table]);
        }
	}
	
    static function install()
    {
		global $zbp;
		self::create_sql();
        require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'options.php';
        require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'sitemap.php';
        //BaidusubmitOptions::setOption('enabled', '1');
        if (null === BaidusubmitOptions::getOption('installmaxtid', null)) {
            BaidusubmitOptions::setOption('installmaxtid', BaidusubmitSitemap::getMaxTid());
        }
        if (null === BaidusubmitOptions::getOption('openping', null)) {
            BaidusubmitOptions::setOption('openping', '1');
        }

        foreach (array_keys(self::$createTableSql) as $table) {
            $zbp->db->QueryMulit(self::$createTableSql[$table]);
        }
    }

    static function deactivation()
    {
        require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'options.php';
        //BaidusubmitOptions::setOption('enabled', 0);
    }

    static function uninstall()
    {
		global $zbp;
		self::create_sql();
		
        require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'options.php';
        require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'sitemap.php';
        $siteurl = BaidusubmitOptions::getOption('siteurl');
        $token = BaidusubmitOptions::getOption('pingtoken');
        $sppasswd = BaidusubmitOptions::getOption('sppasswd');
        $sign = md5($siteurl.$token);

        BaidusubmitSitemap::submitIndex('del', BaidusubmitSitemap::TYPE_ALL, $siteurl, $sppasswd, $sign);
        BaidusubmitSitemap::submitIndex('del', BaidusubmitSitemap::TYPE_INC, $siteurl, $sppasswd, $sign);

        BaidusubmitOptions::clearAllOptions();

        global $zbp;
        foreach (array_keys(self::$createTableSql) as $table) {
            $zbp->db->DelTable($GLOBALS['table']['plugin_'.$table]);
        }
    }
}