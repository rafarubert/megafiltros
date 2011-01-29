<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<a href="<?php echo $link ?>">
	<p><?php echo JHTML::_('image.site', 'livemarks.png', '/images/M_images/', NULL, NULL, 'feed-image'); ?> <?php echo $params->get('text') ?></p>
</a>