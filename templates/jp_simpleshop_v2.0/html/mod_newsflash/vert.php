<?php defined('_JEXEC') or die('Restricted access'); ?>

<?php foreach ($list as $item) :
	modNewsFlashHelper::renderItem($item, $params, $access);
	if (count($list) > 1) : ?>
 	<?php endif; ?>
<?php endforeach; ?>