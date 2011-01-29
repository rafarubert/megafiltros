<?php
/**
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

defined('_JEXEC') or die('Restricted access');
defined( 'DS') || define( 'DS', DIRECTORY_SEPARATOR );

$url = clone(JURI::getInstance());

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
	<head>
		<jdoc:include type="head" />
		<meta http-equiv="content-language" content="pt-br" />
		<meta name="author" content="Rafael Cruz Rubert" />
		<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/style.css" type="text/css" />
	</head>
	<body>
		<div id="general">
			<div id="top">
				<h1><span>Mega Filtros</span></h1>
				
				<div id="info">
					<form action="" method="get" accept-charset="utf-8">
						<label for='username'>Login</label><input type="text" name='username' value="">
						<label for='password'>Senha</label><input type="password" name='password' value="">
						<input type="submit" value="Ok">
					</form>	
					<p class="phone">Contato <br />(85) 0000.0000</p>
				</div>
				<jdoc:include type="modules" name="menu_top" />		
			</div>
			
			<?php if ( $this->countModules('banner') ) { ?>
			<div id="banner">
				<jdoc:include type="modules" name="banner"/>
			</div>
			<?php } ?>
			<?php if ( $this->countModules('breadcrumb') ) { ?>
			<div id="bread_crump">
				<jdoc:include type="modules" name="breadcrumb"/>
			</div>
			<?php } ?>
			<div id="content">
				<div id="left">
					<jdoc:include type="modules" name="left" />
				</div>
				<div id="right">
					<jdoc:include type="modules" name="right" />	
							<?php if ($this->getBuffer('message')) : ?>
							<div class="error">
								<h2>
									<?php echo JText::_('Message'); ?>
								</h2>
								<jdoc:include type="message" />
							</div>
							<?php endif; ?>

							<jdoc:include type="component" />
				</div>
			</div>
			<div class='clear'>&nbsp;</div>				
			<?php include_once(dirname(__FILE__).DS.'footer.php' ); ?>
		</div>
	</body>
</html>