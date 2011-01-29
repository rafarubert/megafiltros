<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<div class="bannergroup<?php echo $params->get( 'moduleclass_sfx' ) ?>">

<?php if ($headerText) : ?>
	<h4 class="bannerheader"><?php echo $headerText ?></h4>
<?php endif;

foreach($list as $item) :

	?><div class="banneritem<?php echo $params->get( 'moduleclass_sfx' ) ?>"><?php
	echo modBannersHelper::renderBanner($params, $item);
	?><div class="clr"></div>
	</div>
<?php endforeach; ?>

<?php if ($footerText) : ?>
	<h5 class="bannerfooter<?php echo $params->get( 'moduleclass_sfx' ) ?>">
		 <?php echo $footerText ?>
	</h5>
<?php endif; ?>
</div>