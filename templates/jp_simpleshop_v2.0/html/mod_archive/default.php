<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<ul class="archive">
	<?php foreach ($list as $item) : ?>
	<li>
		<a href="<?php echo $item->link; ?>">
			<?php echo $item->text; ?></a>
	</li>
	<?php endforeach; ?>
</ul>