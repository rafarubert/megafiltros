# $Id: joomla.sql 12384 2009-06-28 03:02:34Z ian $

# --------------------------------------------------------

#
# Table structure for table `#__banner`
#

CREATE TABLE `#__banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
  `description` TEXT NOT NULL DEFAULT '',
  `sticky` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` INTEGER NOT NULL DEFAULT 0,
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` TEXT NOT NULL DEFAULT '',
  `params` TEXT NOT NULL DEFAULT '',
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  INDEX `idx_banner_catid`(`catid`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__bannerclient`
#

CREATE TABLE `#__bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__bannertrack`
#

CREATE TABLE  `#__bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__categories`
#

CREATE TABLE `#__categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default 0,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__components`
#

CREATE TABLE `#__components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`, `option`(32))
) TYPE=MyISAM CHARACTER SET `utf8`;

#
# Dumping data for table `#__components`
#

INSERT INTO `#__components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, '', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=1\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\r\nnew_usertype=Registered\r\nuseractivation=0\r\nfrontend_userparams=1\r\n\r\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(34, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.1.0\nDEV_STATUS=stable', 1),
(35, 'JCE Administration', 'option=com_jce', 0, 0, 'option=com_jce', 'JCE Administration', 'com_jce', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(36, 'Control Panel', '', 0, 35, 'option=com_jce', 'Control Panel', 'com_jce', 0, 'templates/khepri/images/menu/icon-16-cpanel.png', 0, '', 1),
(37, 'Configuration', '', 0, 35, 'option=com_jce&type=config', 'Configuration', 'com_jce', 1, 'templates/khepri/images/menu/icon-16-config.png', 0, '', 1),
(38, 'Plugins', '', 0, 35, 'option=com_jce&type=plugin', 'Plugins', 'com_jce', 2, 'templates/khepri/images/menu/icon-16-plugin.png', 0, '', 1),
(39, 'Install', '', 0, 35, 'option=com_jce&type=install', 'Install', 'com_jce', 3, 'templates/khepri/images/menu/icon-16-install.png', 0, '', 1),
(40, 'eXtplorer', 'option=com_extplorer', 0, 0, 'option=com_extplorer', 'eXtplorer', 'com_extplorer', 0, '../administrator/components/com_extplorer/images/joomla_x_icon.png', 0, '', 1),
(41, 'VirtueMart', 'option=com_virtuemart', 0, 0, 'option=com_virtuemart', 'VirtueMart', 'com_virtuemart', 0, '../components/com_virtuemart/shop_image/ps_image/menu_icon.png', 0, '', 1),
(42, 'Custom QuickIcons', 'option=com_customquickicons', 0, 0, 'option=com_customquickicons', 'CQI - QuickIcons', 'com_customquickicons', 0, 'js/ThemeOffice/component.png', 0, '', 1);
# --------------------------------------------------------

#
# Table structure for table `#__contact_details`
#

CREATE TABLE `#__contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__content`
#

CREATE TABLE `#__content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` TEXT NOT NULL DEFAULT '',
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__content_frontpage`
#

CREATE TABLE `#__content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__content_rating`
#

CREATE TABLE `#__content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

# Table structure for table `#__core_log_items`

CREATE TABLE `#__core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

# Table structure for table `#__core_log_searches`

CREATE TABLE `#__core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) TYPE=MyISAM CHARACTER SET `utf8`;


CREATE TABLE `#__custom_quickicons` (
  `id` int(11) NOT NULL auto_increment,
  `text` varchar(64) NOT NULL default '',
  `target` varchar(255) NOT NULL default '',
  `icon` varchar(255) NOT NULL default '',
  `ordering` int(10) unsigned NOT NULL default '0',
  `new_window` tinyint(1) NOT NULL default '0',
  `prefix` varchar(100) NOT NULL default '',
  `postfix` varchar(100) NOT NULL default '',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `title` varchar(64) NOT NULL default '',
  `cm_check` tinyint(1) NOT NULL default '0',
  `cm_path` varchar(255) NOT NULL default '',
  `akey` varchar(1) NOT NULL default '',
  `display` tinyint(1) NOT NULL default '0',
  `access` int(11) unsigned NOT NULL default '0',
  `gid` int(3) default '25',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=13 ;

#
# Data for Table `#__custom_quickicons`
#

INSERT INTO `#__custom_quickicons` VALUES
(1, 'Joomla Website', 'http://joomla.org', '/administrator/components/com_customquickicons/images/browser.png', 1, 1, '<i><b style="color:green">', '</b></i>', 1, 'Joomla Website', 0, '', '', 0, 62, 25, 62, '2008-10-08 09:07:23'),
(2, 'New Article', 'index.php?option=com_content&sectionid=0&task=new', '/administrator/templates/khepri/images/header/icon-48-article-add.png', 3, 0, '', '', 1, 'New Article', 0, '', 'N', 0, 0, 25, 0, '0000-00-00 00:00:00'),
(3, 'Sections', 'index.php?option=com_sections&scope=content', '/administrator/templates/khepri/images/header/icon-48-section.png', 5, 0, '', '', 1, 'Sections Management', 0, '', 'B', 0, 0, 25, 0, '0000-00-00 00:00:00'),
(4, 'Frontpage', 'index.php?option=com_frontpage', '/administrator/templates/khepri/images/header/icon-48-frontpage.png', 6, 0, '', '', 1, 'Frontpage Management', 0, '', 'F', 0, 0, 25, 0, '0000-00-00 00:00:00'),
(5, 'Article', 'index.php?option=com_content', '/administrator/templates/khepri/images/header/icon-48-article.png', 4, 0, '', '', 1, 'Article Management', 0, '', 'A', 0, 0, 25, 0, '0000-00-00 00:00:00'),
(6, 'Media', 'index.php?option=com_media', '/administrator/templates/khepri/images/header/icon-48-media.png', 9, 0, '', '', 1, 'Media Management', 0, '', 'M', 0, 0, 25, 0, '0000-00-00 00:00:00'),
(7, 'Categories', 'index.php?option=com_categories&section=com_content', '/administrator/templates/khepri/images/header/icon-48-category.png', 7, 0, '', '', 1, 'Category Management', 0, '', 'K', 0, 0, 25, 0, '0000-00-00 00:00:00'),
(8, 'Menus', 'index.php?option=com_menus', '/administrator/templates/khepri/images/header/icon-48-menumgr.png', 8, 0, '', '', 1, 'Menus', 0, '', 'R', 0, 0, 25, 0, '0000-00-00 00:00:00'),
(9, 'Languages', 'index.php?option=com_languages&client=0', '/administrator/templates/khepri/images/header/icon-48-language.png', 10, 0, '', '', 1, 'Language Management', 0, '', 'L', 0, 0, 25, 0, '0000-00-00 00:00:00'),
(10, 'Users', 'index.php?option=com_users', '/administrator/templates/khepri/images/header/icon-48-user.png', 11, 0, '', '', 1, 'User Management', 0, '', 'U', 0, 0, 25, 0, '0000-00-00 00:00:00'),
(11, 'Configuration', 'index.php?option=com_config', '/administrator/templates/khepri/images/header/icon-48-config.png', 12, 0, '', '', 1, 'Configuration', 0, '', 'C', 0, 0, 25, 0, '0000-00-00 00:00:00'),
(12, 'Your Online Store', 'index.php?option=com_virtuemart', '/components/com_virtuemart/shop_image/ps_image/menu_logo.gif', 2, 0, '<strong>', '</strong>', 1, 'VirtueMart - Online Store Component', 0, '', '', 0, 0, 25, 0, '0000-00-00 00:00:00');

#
# Table structure for table `#__groups`
#

# --------------------------------------------------------

CREATE TABLE `#__groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM CHARACTER SET `utf8`;

#
# Dumping data for table `#__groups`
#

INSERT INTO `#__groups` VALUES (0, 'Public');
INSERT INTO `#__groups` VALUES (1, 'Registered');
INSERT INTO `#__groups` VALUES (2, 'Special');

# --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `#__jce_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `users` text NOT NULL,
  `types` varchar(255) NOT NULL,
  `components` text NOT NULL,
  `rows` text NOT NULL,
  `plugins` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=3 ;


INSERT INTO `#__jce_groups` (`id`, `name`, `description`, `users`, `types`, `components`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default group for all users with edit access', '', '19,20,21,23,24,25', '', '6,7,8,9,10,11,12,13,14,15,16,17,18,19;20,21,22,23,24,25,26,27,28,30,31,32,35,47;36,37,38,39,40,41,42,43,44,45,46;48,49,50,51,52,53,54,56,57', '1,2,3,4,5,6,20,21,36,37,38,39,40,41,48,49,50,51,52,53,54,56,57', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Group for Authors, Editors, Publishers', '', '19,20,21', '', '6,7,8,9,10,13,14,15,16,17,18,19,27,28;20,21,25,26,30,31,35,42,43,44,46,47,49,50;24,32,38,39,41,45,48,51,52,53,54,56,57', '6,20,21,49,50,1,3,5,38,39,41,48,51,52,53,54,56,57', 0, 2, 0, '0000-00-00 00:00:00', '');


CREATE TABLE IF NOT EXISTS `#__jce_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `row` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `editable` tinyint(3) NOT NULL,
  `iscore` tinyint(3) NOT NULL,
  `elements` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin` (`name`)
) TYPE=MyISAM  AUTO_INCREMENT=58 ;



INSERT INTO `#__jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `iscore`, `elements`, `checked_out`, `checked_out_time`) VALUES
(1, 'Context Menu', 'contextmenu', 'plugin', '', '', 0, 0, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(2, 'File Browser', 'browser', 'plugin', '', '', 0, 0, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(3, 'Inline Popups', 'inlinepopups', 'plugin', '', '', 0, 0, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(4, 'Media Support', 'media', 'plugin', '', '', 0, 0, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(5, 'Safari Browser Support', 'safari', 'plugin', '', '', 0, 0, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(6, 'Help', 'help', 'plugin', 'help', 'help', 1, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(7, 'New Document', 'newdocument', 'command', 'newdocument', 'newdocument', 1, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(8, 'Bold', 'bold', 'command', 'bold', 'bold', 1, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(9, 'Italic', 'italic', 'command', 'italic', 'italic', 1, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(10, 'Underline', 'underline', 'command', 'underline', 'underline', 1, 5, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(11, 'Font Select', 'fontselect', 'command', 'fontselect', 'fontselect', 1, 6, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(12, 'Font Size Select', 'fontsizeselect', 'command', 'fontsizeselect', 'fontsizeselect', 1, 7, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(13, 'Style Select', 'styleselect', 'command', 'styleselect', 'styleselect', 1, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(14, 'StrikeThrough', 'strikethrough', 'command', 'strikethrough', 'strikethrough', 1, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(15, 'Justify Full', 'full', 'command', 'justifyfull', 'justifyfull', 1, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(16, 'Justify Center', 'center', 'command', 'justifycenter', 'justifycenter', 1, 11, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(17, 'Justify Left', 'left', 'command', 'justifyleft', 'justifyleft', 1, 12, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(18, 'Justify Right', 'right', 'command', 'justifyright', 'justifyright', 1, 13, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(19, 'Format Select', 'formatselect', 'command', 'formatselect', 'formatselect', 1, 14, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(20, 'Paste', 'paste', 'plugin', 'cut,copy,paste', 'paste', 2, 1, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(21, 'Search Replace', 'searchreplace', 'plugin', 'search,replace', 'searchreplace', 2, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(22, 'Font ForeColour', 'forecolor', 'command', 'forecolor', 'forecolor', 2, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(23, 'Font BackColour', 'backcolor', 'command', 'backcolor', 'backcolor', 2, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(24, 'Unlink', 'unlink', 'command', 'unlink', 'unlink', 2, 5, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(25, 'Indent', 'indent', 'command', 'indent', 'indent', 2, 6, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(26, 'Outdent', 'outdent', 'command', 'outdent', 'outdent', 2, 7, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(27, 'Undo', 'undo', 'command', 'undo', 'undo', 2, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(28, 'Redo', 'redo', 'command', 'redo', 'redo', 2, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(29, 'HTML', 'html', 'command', 'code', 'code', 2, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(30, 'Numbered List', 'numlist', 'command', 'numlist', 'numlist', 2, 11, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(31, 'Bullet List', 'bullist', 'command', 'bullist', 'bullist', 2, 12, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(32, 'Anchor', 'anchor', 'command', 'anchor', 'anchor', 2, 13, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(33, 'Image', 'image', 'command', 'image', 'image', 2, 14, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(34, 'Link', 'link', 'command', 'link', 'link', 2, 15, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(35, 'Code Cleanup', 'cleanup', 'command', 'cleanup', 'cleanup', 2, 16, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(36, 'Directionality', 'directionality', 'plugin', 'ltr,rtl', 'directionality', 3, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(37, 'Emotions', 'emotions', 'plugin', 'emotions', 'emotions', 3, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(38, 'Fullscreen', 'fullscreen', 'plugin', 'fullscreen', 'fullscreen', 3, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(39, 'Preview', 'preview', 'plugin', 'preview', 'preview', 3, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(40, 'Tables', 'table', 'plugin', 'tablecontrols', 'buttons', 3, 5, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(41, 'Print', 'print', 'plugin', 'print', 'print', 3, 6, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(42, 'Horizontal Rule', 'hr', 'command', 'hr', 'hr', 3, 7, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(43, 'Subscript', 'sub', 'command', 'sub', 'sub', 3, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(44, 'Superscript', 'sup', 'command', 'sup', 'sup', 3, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(45, 'Visual Aid', 'visualaid', 'command', 'visualaid', 'visualaid', 3, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(46, 'Character Map', 'charmap', 'command', 'charmap', 'charmap', 3, 11, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(47, 'Remove Format', 'removeformat', 'command', 'removeformat', 'removeformat', 2, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(48, 'Styles', 'style', 'plugin', 'styleprops', 'style', 4, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(49, 'Non-Breaking', 'nonbreaking', 'plugin', 'nonbreaking', 'nonbreaking', 4, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(50, 'Visual Characters', 'visualchars', 'plugin', 'visualchars', 'visualchars', 4, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(51, 'XHTML Xtras', 'xhtmlxtras', 'plugin', 'cite,abbr,acronym,del,ins,attribs', 'xhtmlxtras', 4, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(52, 'Image Manager', 'imgmanager', 'plugin', 'imgmanager', 'imgmanager', 4, 5, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(53, 'Advanced Link', 'advlink', 'plugin', 'advlink', 'advlink', 4, 6, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(54, 'Spell Checker', 'spellchecker', 'plugin', 'spellchecker', 'spellchecker', 4, 7, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(55, 'Layers', 'layer', 'plugin', 'insertlayer,moveforward,movebackward,absolute', 'layer', 4, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(56, 'Advanced Code Editor', 'advcode', 'plugin', 'advcode', 'advcode', 4, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(57, 'Article Breaks', 'article', 'plugin', 'readmore,pagebreak', 'article', 4, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00');

#
# Table structure for table `#__plugins`
#

CREATE TABLE `#__plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) TYPE=MyISAM CHARACTER SET `utf8`;

INSERT INTO `#__plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'Editor - JCE 1.5', 'jce', 'editors', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'editor_width=700\neditor_height=350\neditor_state=mceEditor\neditor_toggle_text=[show/hide]\neditor_toggle_allow=19\ntable_inline_editing=0\ntheme_advanced_toolbar_location=top\nlayout_rows=5\nbody_class_type=custom\nbody_class_custom=\nskin=default\nskin_variant=default\ninlinepopups_skin=clearlooks2\nverify_html=0\nrelative_urls=1\nfix_table_elements=1\nfix_list_elements=1\npluginmode=0\ninvalid_elements=applet\nextended_elements=\nevent_elements=td,img,a\nallow_script=99\nforced_root_block=0\nnewlines=0\ncontent_css=1\ncontent_css_custom=templates/$template/css/editor_content.css\ntheme_advanced_fonts_add=\ntheme_advanced_fonts_remove=\nfont_size_style_values=\nfont_size_classes=\nupload_method=flash\nfolder_tree=1\ntheme_advanced_source_editor_height=550\ntheme_advanced_source_editor_width=750\nplugin_preview_height=550\nplugin_preview_width=750\ncustom_colors=\ncustom_config=\ncallback_file=\n\n'),
(35, 'VirtueMart Product Snapshot', 'vmproductsnapshots', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'showname=n\nshowimage=n\nshowdesc=n\nshowprice=n\nquantity=1\nshowaddtocart=n\ndisplayeach=h\ndisplaylist=v\n'),
(36, 'Virtuemart Extended Search Plugin', 'vmxsearch.plugin', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'density_flag=1\nname_flag=1\nsku_flag=1\ndesc_flag=1\nsdesc_flag=1\nurl_flag=1\nreview_flag=1\nmanufacturer_flag=1\ncategory_flag=1\nparent_filter=both\n'),
(37, 'System - VM Mainframe', 'vmmainframe', 'system', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(38, 'Virtuemart PayPal Authentication', 'virtuemartpaypal', 'authentication', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
# --------------------------------------------------------

#
# Table structure for table `#__menu`
#

CREATE TABLE `#__menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default 0,
  `parent` int(11) unsigned NOT NULL default 0,
  `componentid` int(11) unsigned NOT NULL default 0,
  `sublevel` int(11) default 0,
  `ordering` int(11) default 0,
  `checked_out` int(11) unsigned NOT NULL default 0,
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default 0,
  `browserNav` tinyint(4) default 0,
  `access` tinyint(3) unsigned NOT NULL default 0,
  `utaccess` tinyint(3) unsigned NOT NULL default 0,
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default 0,
  `rgt` int(11) unsigned NOT NULL default 0,
  `home` INTEGER(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) TYPE=MyISAM CHARACTER SET `utf8`;

INSERT INTO `#__menu` VALUES 
(1, 'mainmenu', 'Home', 'home', 'index.php?option=com_virtuemart', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, '', 0, 0, 1);

# --------------------------------------------------------

#
# Table structure for table `#__menu_types`
#

CREATE TABLE `#__menu_types` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `menutype` VARCHAR(75) NOT NULL DEFAULT '',
  `title` VARCHAR(255) NOT NULL DEFAULT '',
  `description` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY(`id`),
  UNIQUE `menutype`(`menutype`)
) TYPE=MyISAM CHARACTER SET `utf8`;

INSERT INTO `#__menu_types` VALUES (1, 'mainmenu', 'Main Menu', 'The main menu for the site');

# --------------------------------------------------------

#
# Table structure for table `#__messages`
#

CREATE TABLE `#__messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`, `state`)
) TYPE=MyISAM CHARACTER SET `utf8`;
# --------------------------------------------------------

#
# Table structure for table `#__messages_cfg`
#

CREATE TABLE `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE `idx_user_var_name` (`user_id`,`cfg_name`)
) TYPE=MyISAM CHARACTER SET `utf8`;
# --------------------------------------------------------

#
# Table structure for table `#__modules`
#

CREATE TABLE `#__modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` TEXT NOT NULL DEFAULT '',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) TYPE=MyISAM CHARACTER SET `utf8`;

INSERT INTO `#__modules` VALUES (1, 'Main Menu', '', 1, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmoduleclass_sfx=_menu\n', 1, 0, '');
INSERT INTO `#__modules` VALUES (2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, '');
INSERT INTO `#__modules` VALUES (3, 'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0, 1, '');
INSERT INTO `#__modules` VALUES (4, 'Recent added Articles','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0, 1, '');
INSERT INTO `#__modules` VALUES (5, 'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0, 1, '');
INSERT INTO `#__modules` VALUES (6, 'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1, 1, '');
INSERT INTO `#__modules` VALUES (7, 'Online Users','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1, 1, '');
INSERT INTO `#__modules` VALUES (8, 'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1, 1, '');
INSERT INTO `#__modules` VALUES (9, 'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1, '');
INSERT INTO `#__modules` VALUES (10, 'Logged in Users','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1, '');
INSERT INTO `#__modules` VALUES (11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, '');
INSERT INTO `#__modules` VALUES (12, 'Admin Menu','', 1,'menu', 0,'0000-00-00 00:00:00', 1,'mod_menu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `#__modules` VALUES (13, 'Admin SubMenu','', 1,'submenu', 0,'0000-00-00 00:00:00', 1,'mod_submenu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `#__modules` VALUES (14, 'User Status','', 1,'status', 0,'0000-00-00 00:00:00', 1,'mod_status', 0, 2, 1, '', 0, 1, '');
INSERT INTO `#__modules` VALUES (15, 'Title','', 1,'title', 0,'0000-00-00 00:00:00', 1,'mod_title', 0, 2, 1, '', 0, 1, '');
INSERT INTO `#__modules` VALUES(17, 'User Menu', '', 5, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu', 1, 0, '');
INSERT INTO `#__modules` VALUES(18, 'Main Menu', '', 3, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'class_sfx=\nmoduleclass_sfx=\nmenutype=mainmenu\nmenu_style=vert_indent\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=', 1, 0, '');
INSERT INTO `#__modules` VALUES(19, 'Login Form', '', 2, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_login', 0, 0, 1, 'moduleclass_sfx=-dark\npretext=\nposttext=\nlogin=\nlogout=\nlogin_message=0\nlogout_message=0\ngreeting=1\nname=0', 1, 0, '');
INSERT INTO `#__modules` VALUES(20, 'Latest News', '', 1, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'moduleclass_sfx=\ncache=0\ntype=1\nshow_front=1\ncount=5\ncatid=\nsecid=', 1, 0, '');
INSERT INTO `#__modules` VALUES(21, 'Statistics', '', 4, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=0\nincrease=0\nmoduleclass_sfx=-grey', 0, 0, '');
INSERT INTO `#__modules` VALUES(22, 'Who''s Online', '', 7, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'showmode=0\nmoduleclass_sfx=', 0, 0, '');
INSERT INTO `#__modules` VALUES(23, 'Popular', '', 3, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_mostread', 0, 0, 1, 'moduleclass_sfx=\ncache=0\ntype=1\nshow_front=1\ncount=5\ncatid=\nsecid=', 0, 0, '');
INSERT INTO `#__modules` VALUES(24, 'Archive', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, '', 1, 0, '');
INSERT INTO `#__modules` VALUES(25, 'Sections', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, '', 1, 0, '');
INSERT INTO `#__modules` VALUES(26, 'Related Items', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, '');
INSERT INTO `#__modules` VALUES(27, 'Search', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\ncache=0\nset_itemid=\nwidth=20\ntext=\nbutton=\nbutton_pos=right\nbutton_text=', 0, 0, '');
INSERT INTO `#__modules` VALUES(28, 'Random Image', '', 5, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_random_image', 0, 0, 1, '', 0, 0, '');
INSERT INTO `#__modules` VALUES(29, 'Top Menu', '', 1, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'class_sfx=-nav\nmoduleclass_sfx=\nmenutype=topmenu\nmenu_style=list_flat\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=', 1, 0, '');
INSERT INTO `#__modules` VALUES(30, 'Banners', '', 1, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'banner_cids=\nmoduleclass_sfx=-blank', 1, 0, '');
INSERT INTO `#__modules` VALUES(31, 'Other Menu', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'class_sfx=\nmoduleclass_sfx=\nmenutype=othermenu\nmenu_style=vert_indent\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=', 0, 0, '');
INSERT INTO `#__modules` VALUES(32, 'Wrapper', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, '');
INSERT INTO `#__modules` VALUES(33, 'Welcome to Ja Larix', '<p>Lorem ipsum dolor sit amet consectetuer orci sed neque accumsan In. Interdum interdum Phasellus pede Nunc Suspendisse consequat fringilla eget eget Nulla.</p> <p>Lobortis tellus leo netus elit mattis suscipit</p>  <img src="images/stories/demo/banner1.jpg" border="0" alt="Demo" title="demo" />', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(48, 'JA VM Product Slider', '', 0, 'slider', 0, '0000-00-00 00:00:00', 1, 'mod_ja_vmproductslide', 0, 0, 0, 'xheight=160\nxwidth=140\ntypeproduct=0\ncatid=0\nnumElem=6\nmode=horizontal\nshow_price=0\nshow_addtocart=0\nauto=1\ndirection=left\nzipjs=no\ndelaytime=5000\nanimationtime=1000\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(34, 'Breadcrumbs', '', 0, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'showHome=1\nhomeText=Home\nseparator=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 1, 0, '');
INSERT INTO `#__modules` VALUES(35, 'Products', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_product_categories', 0, 0, 1, 'menutype=links\njscook_type=menu\njscookMenu_style=ThemeOffice\nmenu_orientation=hbr\njscookTree_style=ThemeXP\nroot_label=Shop\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(36, 'VirtueMart Search', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_search', 0, 0, 1, '', 0, 0, '');
INSERT INTO `#__modules` VALUES(37, 'Random Products', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_randomprod', 0, 0, 1, 'max_items=2\nshow_price=1\nshow_addtocart=1\ndisplay_style=vertical\nproducts_per_row=4\ncategory_id=\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(38, 'VirtueMart Manufacturers', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_manufacturers', 0, 0, 1, 'show_linklist=1\nshow_dropdown=1\nauto=1\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(39, 'Latest Products', '', 6, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_latestprod', 0, 0, 1, 'max_items=2\nshow_price=1\nshow_addtocart=1\ndisplay_style=vertical\nproducts_per_row=4\ncategory_id=\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(40, 'VirtueMart All-In-One', '', 15, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_allinone', 0, 0, 1, 'show_new=1\nshow_topten=1\nshow_special=1\nshow_random=1\nshow_price=1\nshow_addtocart=1\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(41, 'Our Store', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart', 0, 0, 1, 'class_sfx=\r\nmoduleclass_sfx=\r\npretext=\r\nshow_login_form=yes\r\nshow_categories=yes\r\nshow_listall=yes\r\nshow_adminlink=yes\r\nshow_accountlink=yes\r\nuseGreyBox_accountlink=0\r\nshow_minicart=yes\r\nuseGreyBox_cartlink=0\r\nshow_productsearch=yes\r\nshow_product_parameter_search=no\r\nmenutype=links\r\njscook_type=menu\r\njscookMenu_style=ThemeOffice\r\nmenu_orientation=hbr\r\njscookTree_style=ThemeXP\r\nroot_label=Shop', 0, 0, '');
INSERT INTO `#__modules` VALUES(42, 'VirtueMart Product Scroller', '', 17, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_productscroller', 0, 0, 1, 'NumberOfProducts=5\nfeaturedProducts=no\nScrollSortMethod=random\nshow_product_name=yes\nshow_addtocart=yes\nshow_price=yes\nScrollHeight=125\nScrollWidth=150\nScrollBehavior=scroll\nScrollDirection=up\nScrollAmount=scroll\nScrollDelay=80\nScrollAlign=left\nScrollSpaceChar=&nbsp;\nScrollSpaceCharTimes=5\nScrollLineChar=<br />\nScrollLineCharTimes=2\nScrollCSSOverride=no\nScrollTextAlign=left\nScrollTextWeight=normal\nScrollTextSize=10\nScrollTextColor=#000000\nScrollBGColor=transparent\nScrollMargin=2\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(43, 'Top Ten Products', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_topten', 0, 0, 1, 'num_topsellers=10\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(44, 'JA News', '', 0, 'ja-news', 0, '0000-00-00 00:00:00', 0, 'mod_janews', 0, 0, 0, 'moduleclass_sfx=cat\nshowheadline=1\nheadlinelang=Headline\nnumberofheadlinenews=10\nheadlineheight=220\nautoroll=1\ndelaytime=5\ncatid=37, 38, 39, 40\nlinkitems=3\nmaxchars=120\nwidth=100\nheight=100\ncols=2\nshowintro=1\nshowimage=1\nautoresize=1\nalign=left\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(45, 'JA Slide show', '', 1, 'slideshow', 0, '0000-00-00 00:00:00', 0, 'mod_jaslideshow', 0, 0, 0, 'moduleclass_sfx=\nmootools=0\nplay=play\nswidth=550\nsheight=210\nfolder=images/stories/food/\naltimage=JA slide show\norderby=0\nsort=\nsetimagearray=\nstartwith=\nautoresize=1\ntimedisplay=5\ntimeanimation=2\nanimation=fade\nppercent=10\nzpercent=10\neffect=bounceOut\nnavigation=number\nshowDescription=0\ndescription=\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(46, 'VirtueMart Featured Products', '', 0, 'vm-fp', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_featureprod', 0, 0, 0, 'max_items=3\nshow_price=1\nshow_addtocart=1\ndisplay_style=horizontal\nproducts_per_row=4\ncategory_id=\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(47, ' Your Shopping Cart', '', 0, 'your-cart', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_cart', 0, 0, 1, 'moduleclass_sfx=\nvmCartDirection=1\nvmEnableGreyBox=0\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(49, 'JCE Latest News', '', 1, 'jce_cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_feed', 0, 0, 1, 'cache=1\r\n	cache_time=15\r\n	moduleclass_sfx=\r\n	rssurl=http://www.joomlacontenteditor.net/index.php?option=com_rss&feed=RSS2.0&type=com_frontpage&Itemid=1\r\n	rssrtl=0\r\n	rsstitle=0\r\n	rssdesc=0\r\n	rssimage=0\r\n	rssitems=3\r\n	rssitemdesc=1\r\n	word_count=100', 0, 1, '');
INSERT INTO `#__modules` VALUES(50, 'JCE Control Panel Icons', '', 1, 'jce_icon', 0, '0000-00-00 00:00:00', 1, 'mod_jcequickicon', 0, 0, 0, '', 0, 1, '');
INSERT INTO `#__modules` VALUES(51, 'Currency Selector', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_currencies', 0, 0, 1, 'text_before=\nproduct_currency=USD,\ncache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, '');
INSERT INTO `#__modules` VALUES(52, 'CustomQuickIcons', '', 2, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_customquickicons', 0, 0, 1, '', 0, 1, '');


# --------------------------------------------------------

#
# Table structure for table `#__modules_menu`
#

CREATE TABLE `#__modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) TYPE=MyISAM CHARACTER SET `utf8`;

#
# Dumping data for table `#__modules_menu`
#

INSERT INTO `#__modules_menu` VALUES(16, 1);
INSERT INTO `#__modules_menu` VALUES(16, 3);
INSERT INTO `#__modules_menu` VALUES(16, 5);
INSERT INTO `#__modules_menu` VALUES(16, 7);
INSERT INTO `#__modules_menu` VALUES(16, 9);
INSERT INTO `#__modules_menu` VALUES(16, 25);
INSERT INTO `#__modules_menu` VALUES(16, 65);
INSERT INTO `#__modules_menu` VALUES(16, 67);
INSERT INTO `#__modules_menu` VALUES(16, 70);
INSERT INTO `#__modules_menu` VALUES(16, 71);
INSERT INTO `#__modules_menu` VALUES(16, 72);
INSERT INTO `#__modules_menu` VALUES(17, 0);
INSERT INTO `#__modules_menu` VALUES(18, 1);
INSERT INTO `#__modules_menu` VALUES(18, 3);
INSERT INTO `#__modules_menu` VALUES(18, 5);
INSERT INTO `#__modules_menu` VALUES(18, 7);
INSERT INTO `#__modules_menu` VALUES(18, 9);
INSERT INTO `#__modules_menu` VALUES(18, 25);
INSERT INTO `#__modules_menu` VALUES(18, 26);
INSERT INTO `#__modules_menu` VALUES(18, 64);
INSERT INTO `#__modules_menu` VALUES(18, 65);
INSERT INTO `#__modules_menu` VALUES(18, 67);
INSERT INTO `#__modules_menu` VALUES(18, 68);
INSERT INTO `#__modules_menu` VALUES(18, 70);
INSERT INTO `#__modules_menu` VALUES(18, 71);
INSERT INTO `#__modules_menu` VALUES(18, 72);
INSERT INTO `#__modules_menu` VALUES(18, 73);
INSERT INTO `#__modules_menu` VALUES(19, 1);
INSERT INTO `#__modules_menu` VALUES(19, 3);
INSERT INTO `#__modules_menu` VALUES(19, 5);
INSERT INTO `#__modules_menu` VALUES(19, 7);
INSERT INTO `#__modules_menu` VALUES(19, 9);
INSERT INTO `#__modules_menu` VALUES(19, 25);
INSERT INTO `#__modules_menu` VALUES(19, 65);
INSERT INTO `#__modules_menu` VALUES(19, 67);
INSERT INTO `#__modules_menu` VALUES(19, 69);
INSERT INTO `#__modules_menu` VALUES(19, 70);
INSERT INTO `#__modules_menu` VALUES(19, 71);
INSERT INTO `#__modules_menu` VALUES(19, 72);
INSERT INTO `#__modules_menu` VALUES(19, 73);
INSERT INTO `#__modules_menu` VALUES(20, 1);
INSERT INTO `#__modules_menu` VALUES(20, 38);
INSERT INTO `#__modules_menu` VALUES(21, 1);
INSERT INTO `#__modules_menu` VALUES(21, 3);
INSERT INTO `#__modules_menu` VALUES(21, 5);
INSERT INTO `#__modules_menu` VALUES(21, 7);
INSERT INTO `#__modules_menu` VALUES(21, 9);
INSERT INTO `#__modules_menu` VALUES(21, 25);
INSERT INTO `#__modules_menu` VALUES(21, 65);
INSERT INTO `#__modules_menu` VALUES(21, 67);
INSERT INTO `#__modules_menu` VALUES(21, 69);
INSERT INTO `#__modules_menu` VALUES(21, 70);
INSERT INTO `#__modules_menu` VALUES(21, 71);
INSERT INTO `#__modules_menu` VALUES(21, 72);
INSERT INTO `#__modules_menu` VALUES(21, 73);
INSERT INTO `#__modules_menu` VALUES(22, 1);
INSERT INTO `#__modules_menu` VALUES(22, 3);
INSERT INTO `#__modules_menu` VALUES(22, 5);
INSERT INTO `#__modules_menu` VALUES(22, 7);
INSERT INTO `#__modules_menu` VALUES(22, 9);
INSERT INTO `#__modules_menu` VALUES(22, 25);
INSERT INTO `#__modules_menu` VALUES(22, 26);
INSERT INTO `#__modules_menu` VALUES(22, 64);
INSERT INTO `#__modules_menu` VALUES(22, 65);
INSERT INTO `#__modules_menu` VALUES(22, 67);
INSERT INTO `#__modules_menu` VALUES(22, 68);
INSERT INTO `#__modules_menu` VALUES(22, 70);
INSERT INTO `#__modules_menu` VALUES(22, 71);
INSERT INTO `#__modules_menu` VALUES(22, 72);
INSERT INTO `#__modules_menu` VALUES(22, 73);
INSERT INTO `#__modules_menu` VALUES(23, 1);
INSERT INTO `#__modules_menu` VALUES(27, 0);
INSERT INTO `#__modules_menu` VALUES(29, 0);
INSERT INTO `#__modules_menu` VALUES(30, 70);
INSERT INTO `#__modules_menu` VALUES(31, 1);
INSERT INTO `#__modules_menu` VALUES(31, 3);
INSERT INTO `#__modules_menu` VALUES(31, 5);
INSERT INTO `#__modules_menu` VALUES(31, 7);
INSERT INTO `#__modules_menu` VALUES(31, 9);
INSERT INTO `#__modules_menu` VALUES(31, 25);
INSERT INTO `#__modules_menu` VALUES(31, 26);
INSERT INTO `#__modules_menu` VALUES(31, 64);
INSERT INTO `#__modules_menu` VALUES(31, 65);
INSERT INTO `#__modules_menu` VALUES(31, 67);
INSERT INTO `#__modules_menu` VALUES(31, 68);
INSERT INTO `#__modules_menu` VALUES(31, 70);
INSERT INTO `#__modules_menu` VALUES(31, 71);
INSERT INTO `#__modules_menu` VALUES(31, 72);
INSERT INTO `#__modules_menu` VALUES(33, 0);
INSERT INTO `#__modules_menu` VALUES(34, 0);
INSERT INTO `#__modules_menu` VALUES(35, 1);
INSERT INTO `#__modules_menu` VALUES(35, 3);
INSERT INTO `#__modules_menu` VALUES(35, 5);
INSERT INTO `#__modules_menu` VALUES(35, 7);
INSERT INTO `#__modules_menu` VALUES(35, 9);
INSERT INTO `#__modules_menu` VALUES(35, 25);
INSERT INTO `#__modules_menu` VALUES(35, 26);
INSERT INTO `#__modules_menu` VALUES(35, 64);
INSERT INTO `#__modules_menu` VALUES(35, 65);
INSERT INTO `#__modules_menu` VALUES(35, 67);
INSERT INTO `#__modules_menu` VALUES(35, 68);
INSERT INTO `#__modules_menu` VALUES(35, 70);
INSERT INTO `#__modules_menu` VALUES(35, 71);
INSERT INTO `#__modules_menu` VALUES(35, 72);
INSERT INTO `#__modules_menu` VALUES(36, 0);
INSERT INTO `#__modules_menu` VALUES(37, 17);
INSERT INTO `#__modules_menu` VALUES(37, 79);
INSERT INTO `#__modules_menu` VALUES(38, 0);
INSERT INTO `#__modules_menu` VALUES(39, 17);
INSERT INTO `#__modules_menu` VALUES(39, 79);
INSERT INTO `#__modules_menu` VALUES(40, 0);
INSERT INTO `#__modules_menu` VALUES(41, 0);
INSERT INTO `#__modules_menu` VALUES(43, 17);
INSERT INTO `#__modules_menu` VALUES(43, 79);
INSERT INTO `#__modules_menu` VALUES(44, 1);
INSERT INTO `#__modules_menu` VALUES(45, 1);
INSERT INTO `#__modules_menu` VALUES(46, 17);
INSERT INTO `#__modules_menu` VALUES(46, 79);
INSERT INTO `#__modules_menu` VALUES(47, 0);
INSERT INTO `#__modules_menu` VALUES(48, 17);
INSERT INTO `#__modules_menu` VALUES(48, 79);
INSERT INTO `#__modules_menu` VALUES(49, 0);
INSERT INTO `#__modules_menu` VALUES(51, 0);
# --------------------------------------------------------

#
# Table structure for table `#__newsfeeds`
#

CREATE TABLE `#__newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__poll_data`
#

CREATE TABLE `#__poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL default '',
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__poll_date`
#

CREATE TABLE `#__poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__polls`
#

CREATE TABLE `#__polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__poll_menu`
# !!!DEPRECATED!!!
#

CREATE TABLE `#__poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__sections`
#

CREATE TABLE `#__sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` TEXT NOT NULL default '',
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__session`
#

CREATE TABLE `#__session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__stats_agents`
#

CREATE TABLE `#__stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__templates_menu`
#

CREATE TABLE `#__templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY (`menuid`, `client_id`, `template`(255))
) TYPE=MyISAM CHARACTER SET `utf8`;

# Dumping data for table `#__templates_menu`

INSERT INTO `#__templates_menu` (`template`, `menuid`, `client_id`) VALUES
('ja_larix', 0, 0),
('joomla_admin', 0, 1);

# --------------------------------------------------------

#
# Table structure for table `#__users`
#

CREATE TABLE `#__users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`, `block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__weblinks`
#

CREATE TABLE `#__weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL default '',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__core_acl_aro`
#

CREATE TABLE `#__core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `#__section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `#__gacl_hidden_aro` (`hidden`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__core_acl_aro_map`
#

CREATE TABLE  `#__core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__core_acl_aro_groups`
#
CREATE TABLE `#__core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `#__gacl_parent_id_aro_groups` (`parent_id`),
  KEY `#__gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) TYPE=MyISAM CHARACTER SET `utf8`;

#
# Dumping data for table `#__core_acl_aro_groups`
#

INSERT INTO `#__core_acl_aro_groups` VALUES (17,0,'ROOT',1,22,'ROOT');
INSERT INTO `#__core_acl_aro_groups` VALUES (28,17,'USERS',2,21,'USERS');
INSERT INTO `#__core_acl_aro_groups` VALUES (29,28,'Public Frontend',3,12,'Public Frontend');
INSERT INTO `#__core_acl_aro_groups` VALUES (18,29,'Registered',4,11,'Registered');
INSERT INTO `#__core_acl_aro_groups` VALUES (19,18,'Author',5,10,'Author');
INSERT INTO `#__core_acl_aro_groups` VALUES (20,19,'Editor',6,9,'Editor');
INSERT INTO `#__core_acl_aro_groups` VALUES (21,20,'Publisher',7,8,'Publisher');
INSERT INTO `#__core_acl_aro_groups` VALUES (30,28,'Public Backend',13,20,'Public Backend');
INSERT INTO `#__core_acl_aro_groups` VALUES (23,30,'Manager',14,19,'Manager');
INSERT INTO `#__core_acl_aro_groups` VALUES (24,23,'Administrator',15,18,'Administrator');
INSERT INTO `#__core_acl_aro_groups` VALUES (25,24,'Super Administrator',16,17,'Super Administrator');

# --------------------------------------------------------

#
# Table structure for table `#__core_acl_groups_aro_map`
#
CREATE TABLE `#__core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------

#
# Table structure for table `#__core_acl_aro_sections`
#
CREATE TABLE `#__core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `#__gacl_value_aro_sections` (`value`),
  KEY `#__gacl_hidden_aro_sections` (`hidden`)
) TYPE=MyISAM CHARACTER SET `utf8`;

INSERT INTO `#__core_acl_aro_sections` VALUES (10,'users',1,'Users',0);

# --------------------------------------------------------

#
# Table structure for table `#__migration_backlinks`
#
CREATE TABLE #__migration_backlinks (
	`itemid` INT(11) NOT NULL,
	`name` VARCHAR(100) NOT NULL,
	`url` TEXT NOT NULL,
	`sefurl` TEXT NOT NULL,
	`newurl` TEXT NOT NULL,
	PRIMARY KEY(`itemid`)
) TYPE=MyISAM CHARACTER SET `utf8`;

# --------------------------------------------------------