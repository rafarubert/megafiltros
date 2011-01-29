<?php if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' );
mm_showMyFileName(__FILE__);
?>

<a href="<?php echo $product_flypage ?>" title="<?php echo $product_name ?>" class="product">
	<?php echo ps_product::image_tag( $product_thumb_image, 'class="browseProductImage" border="0" title="'.$product_name.'" alt="'.$product_name .'"' ) ?>	
	<h3 class=""><?php echo $product_s_desc ?></h3>
	<strong><?php echo $product_price ?><span>Comprar</span></strong>
</a>