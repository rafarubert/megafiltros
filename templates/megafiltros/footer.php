<?php
// no direct access

require_once('libraries/joomla/utilities/date.php');
$date  = new JDate();
$config = new JConfig();

?>




<address>
	<p> <?php echo $config->sitename;?> &copy; <?php echo $date->toFormat( '2010 - %Y' ); ?> Todos os direitos reservados</p>
	<a href='http://www.yack.com.br'>
		<img src='<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/images/yack.gif' />
	</a>
</address>

