<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<div class="moduletable<?php echo $params->get('moduleclass_sfx') ?>">
	
	<?php foreach ($list as $item) : ?>
			<?php modNewsFlashHelper::renderItem($item, $params, $access); ?>
	<?php endforeach; ?>
	
</div>