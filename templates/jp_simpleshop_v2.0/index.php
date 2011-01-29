<?php
/**
* @copyright Copyright (C) 2009-2010 Pixel Praise LLC. All rights reserved.
*/
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<?php // Detecting Home
$menu = & JSite::getMenu();
if ($menu->getActive() == $menu->getDefault()) {
$siteHome = 1;
} else {
$siteHome = 0;
}
// Detecting Active Variables
$option = JRequest::getCmd('option', '');
$view = JRequest::getCmd('view', '');
$layout = JRequest::getCmd('layout', '');
$task = JRequest::getCmd('task', '');
$itemid = JRequest::getCmd('Itemid', '');
$cartLink = $this->params->get('cartLink');
$templateTheme = $this->params->get('templateTheme');
$bgColor = $this->params->get('backgroundColor');
$fontFamily = $this->params->get('fontFamily');
$headingFontFamily = "heading-" . $this->params->get('headingFontFamily');
if($this->params->get('siteTitle')){
$siteTitle = $this->params->get('siteTitle');
} else {
$siteTitle = $mainframe->getCfg('sitename');
}
// Vmart Variable
$page = JRequest::getCmd('page', '');
$page = str_replace('.', '', $page);
if(($option == "com_virtuemart") && ($page == "")){
$page = "shophome";
}
// set custom template theme for user
$user = &JFactory::getUser();
if( !is_null( JRequest::getCmd('templateTheme', NULL) ) ) {
$user->setParam($this->template.'_theme', JRequest::getCmd('templateTheme'));
$user->save(true);
}
if($user->getParam($this->template.'_theme')) {
$this->params->set('templateTheme', $user->getParam($this->template.'_theme'));
}
if($task == "edit" || $layout == "form" ) {
$fullWidth = 1;
} else {
$fullWidth = 0;
}
?>
<jdoc:include type="head" />
<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/system/css/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template ?>/css/<?php echo $this->params->get('templateTheme'); ?>.css" type="text/css" />
<style type="text/css">
<?php if($this->params->get('fontFamily') == "times") { ?>
body{font-family:"Times New Roman", Times, serif;}
<?php } elseif($this->params->get('fontFamily') == "courier") { ?>
body{font-family:"Courier New", Courier, monospace;}
<?php } elseif($this->params->get('fontFamily') == "georgia") { ?>
body{font-family:Georgia,"Times New Roman", Times, serif;}
<?php } ?>
<?php if($this->params->get('headingFontFamily') == "arial") { ?>
h1, h2, h3, h4, h5, h6, .componentheading, .contentheading{font-family:"Liberation Sans",Arial,Helvetica,sans-serif;}
<?php } elseif($this->params->get('headingFontFamily') == "times") { ?>
h1, h2, h3, h4, h5, h6, .componentheading, .contentheading{font-family:"Times New Roman", Times, serif;}
<?php } elseif($this->params->get('headingFontFamily') == "courier") { ?>
h1, h2, h3, h4, h5, h6, .componentheading, .contentheading{font-family:"Courier New", Courier, monospace;}
<?php } ?>
<?php if(($this->countModules('left') == 0) && ($this->countModules('right') == 0)) { ?>
#content {margin:0;}
<?php } ?>
<?php if(($this->countModules('left') >= 1) && ($this->countModules('right') == 0)) { ?>
#content{margin:0 0 0 250px;}
<?php } ?>
<?php if(($this->countModules('left') == 0) && ($this->countModules('right') >= 1)) { ?>
#content {margin:0 250px 0 0;}
<?php } ?>
<?php if($this->params->get('customWidth')) { ?>
.width {width:<?php echo $this->params->get('customWidth');?>;}
<?php } ?>
<?php if($this->params->get('backgroundColor')){ ?>
body{background-color:<?php echo $this->params->get('backgroundColor'); ?>}
<?php } ?>
<?php if($this->params->get('fontColor')){ ?>
body{color:<?php echo $this->params->get('fontColor'); ?>}
<?php } ?>
<?php if($this->params->get('headingColor')){ ?>
h1, h2, h3, h4, h5, h6, .componentheading, .contentheading{color:<?php echo $this->params->get('headingColor'); ?>}
<?php } ?>
<?php if($this->params->get('linkColor')){ ?>
a:link, a:active, a:visited{color:<?php echo $this->params->get('linkColor'); ?>}
<?php } ?>
<?php if($this->params->get('linkHoverColor')){ ?>
a:hover{color:<?php echo $this->params->get('linkHoverColor'); ?>}
<?php } ?>
</style>

</head>

<body class="<?php echo $option . " " . $view . " " . $page . " " . $layout . " " . $task . " " . $itemid . " " . $fontFamily . " " . $headingFontFamily;?>  <?php if($siteHome){ echo "homepage";}?>">

<div id="bar"><jdoc:include type="modules" name="inset" /></div>
<div id="background">
  <div class="width">
    <div id="main">
      <div class="inside">
        <div id="header"> 
        <a href="<?php echo $mainframe->getCfg('live_site'); ?>" id="logo" title="<?php echo $mainframe->getCfg('sitename'); ?>"><?php echo $mainframe->getCfg('sitename'); ?></a>
          <?php if (($this->countModules('user1')) || ($this->countModules('user2'))) { ?>
          <div id="toolbar">
            <?php if ($this->countModules('user1')) { ?>
            <div id="mainmenu">
              <jdoc:include type="modules" name="user1" />
              <div class="clr"></div>
            </div>
            <div class="clr"></div>
            <?php } ?>
            <?php if ($this->countModules('user2')) { ?>
            <div id="search">
              <jdoc:include type="modules" name="user2" />
<?php if($cartLink){ ?>
              <ul class="menu">
                <li class="item54">
                  <a href="#" class="foxycart">View Cart</a>
                </li>
              </ul>
<?php } ?>
              <div class="clr"></div>
            </div>
            <?php } ?>
          </div>
          <?php } ?>
          <div class="clr"></div>
        </div>
        <?php if ($this->countModules('breadcrumb')) { ?>
        <div id="pathway">
          <jdoc:include type="modules" name="breadcrumb" />
        </div>
        <?php } ?>
        <?php if ($this->countModules('banner')) { ?>
        <div id="banner">
          <jdoc:include type="modules" name="banner" style="xhtml" />
        </div>
        <?php } ?>
        <div id="container">
          <div id="mainbody">
          	<?php if ($this->countModules('featured')) { ?>
          	<div id="featured">
          	  <jdoc:include type="modules" name="featured" style="xhtml" />
          	  <div class="clr"></div>
          	</div>
          	<?php } ?>
            <?php if ($this->countModules('left')) { ?>
            <div id="sidebar">
              <jdoc:include type="modules" name="left" style="xhtml" />
            </div>
            <?php } ?>
            <?php if ($this->countModules('right')) { ?>
            <div id="sidebar2">
              <jdoc:include type="modules" name="right" style="xhtml" />
            </div>
            <?php } ?>
            <div id="content">
            	<div id="content-inner">
	              <jdoc:include type="message" />
	              <jdoc:include type="modules" name="top" style="xhtml" />
	              <jdoc:include type="component" />
	              <jdoc:include type="modules" name="bottom" style="xhtml" />
              	</div>
            </div>
            <div class="clr"></div>
          </div>
        </div>
      </div>
    </div>
    <?php if ($this->countModules('user4')) { ?>
    <div id="elements">
      <div class="inside">
          <jdoc:include type="modules" name="user4" style="xhtml" />
          <div class="clr"></div>
      </div>
    </div>
    <?php } ?>
    <div id="footer">
      <?php if ($this->countModules('user5')) { ?>
      <div id="link">
        <jdoc:include type="modules" name="user5" />
        <div class="clr"></div>
      </div>
      <?php } ?>
      <?php if ($this->countModules('footer')) { ?>
      <div id="copy">
        <jdoc:include type="modules" name="footer" />
        <div><a href="http://www.joomlapraise.com" title="Joomla! Templates and Extensions" target="_blank">Joomla! Templates &amp; Extensions</a> by <a href="http://www.joomlapraise.com" title="Joomla! Templates and Extensions" target="_blank">JoomlaPraise</a></div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
<div class="inside">
  <jdoc:include type="modules" name="debug" style="xhtml"/>
</div>
</body>
</html>
