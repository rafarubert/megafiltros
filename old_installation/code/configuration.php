<?php
class JConfig {
	var $offline = '0';
	var $editor = 'tinymce';
	var $list_limit = '20';
	var $helpurl = 'http://help.joomla.org';
	var $debug = '0';
	var $debug_lang = '0';
	var $sef = '0';
	var $sef_rewrite = '0';
	var $sef_suffix = '0';
	var $feed_limit = '10';
	var $secret = 'XWpXwxGKSro9AQuj';
	var $gzip = '0';
	var $error_reporting = '-1';
	var $xmlrpc_server = '0';
	var $log_path = '/var/www/joomla/logs';
	var $tmp_path = '/var/www/joomla/tmp';
	var $live_site = '';
	var $offset = '0';
	var $caching = '0';
	var $cachetime = '15';
	var $cache_handler = 'file';
	var $memcache_settings = array();
	var $ftp_enable = '0';
	var $ftp_host = '127.0.0.1';
	var $ftp_port = '21';
	var $ftp_user = '';
	var $ftp_pass = '';
	var $ftp_root = '';
	var $dbtype = 'mysql';
	var $host = 'localhost';
	var $user = 'joomla';
	var $db = 'joomla';
	var $dbprefix = 'jos_';
	var $mailer = 'mail';
	var $mailfrom = 'mike@visie.com.br';
	var $fromname = 'Joomla - PagSeguro';
	var $sendmail = '/usr/sbin/sendmail';
	var $smtpauth = '0';
	var $smtpuser = '';
	var $smtppass = '';
	var $smtphost = 'localhost';
	var $MetaAuthor = '1';
	var $MetaTitle = '1';
	var $lifetime = '15';
	var $session_handler = 'none';
	var $password = 'joomla';
	var $sitename = 'Joomla - PagSeguro';
	var $MetaDesc = 'Joomla! - O sistema dinâmico de portais e gerenciador de conteúdo';
	var $MetaKeys = 'joomla, Joomla';
	var $offline_message = 'Este site está em manutenção. Por favor, retorne mais tarde.';
}
?>