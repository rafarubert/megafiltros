<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<?php if ($params->get('item_title')) : ?>


	<h4 class="contentheading<?php echo $params->get( 'moduleclass_sfx' ); ?>" >
	<?php if ($params->get('link_titles') && $item->linkOn != '') : ?>
		<a href="<?php echo $item->linkOn;?>" class="contentpagetitle<?php echo $params->get( 'moduleclass_sfx' ); ?>">
			<?php echo $item->title;?>
		</a>
	<?php else : ?>
		<?php echo $item->title; ?>
	<?php endif; ?>
	</h4>
    <div class="clr"></div>


<?php endif; ?>

<?php if (!$params->get('intro_only')) :
	echo $item->afterDisplayTitle;
endif; ?>

<?php echo $item->beforeDisplayContent; ?>
	
		<div class="contentarticle<?php echo $params->get( 'moduleclass_sfx' ); ?>"><?php echo $item->text; ?></div>
	
<?php if (isset($item->linkOn) && $item->readmore) :
	echo '<a href="'.$item->linkOn.'">'.JText::_('Read more').'</a>';
endif; ?>