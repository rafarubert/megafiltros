<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 
/**
*
* ================================================================================
* CORRIGIDO PARA O PORTUGU�S DO BRASIL - CORRECTED TO BRAZILIAN PORTUGUESE
* v.1.9 - Fernando Soares - http://www.fernandosoares.com.br - 16-Fev-2009
* Para (To): VirtueMart 1.1.x
* ================================================================================
*
* @package VirtueMart
* @subpackage languages
* @copyright Copyright (C) 2004-2008 soeren - All rights reserved.
* @translator soeren
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
* VirtueMart is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See /administrator/components/com_virtuemart/COPYRIGHT.php for copyright notices and details.
*
* http://virtuemart.net
*/
global $VM_LANG;
$langvars = array (
	'CHARSET' => 'ISO-8859-1',
	'PHPSHOP_ACC_CUSTOMER_ACCOUNT' => 'Conta do Cliente:',
	'PHPSHOP_ACC_UPD_BILL' => 'Aqui voc� pode atualizar suas informa��es de faturamento.',
	'PHPSHOP_ACC_UPD_SHIP' => 'Aqui voc� pode adicionar e atualizar endere�os para entrega.',
	'PHPSHOP_ACC_ACCOUNT_INFO' => 'Informa��es de Conta',
	'PHPSHOP_ACC_SHIP_INFO' => 'Informa��es de Envio',
	'PHPSHOP_DOWNLOADS_CLICK' => 'Clique no Nome do Produto para Baixar o(s) Arquivo(s).',
	'PHPSHOP_DOWNLOADS_EXPIRED' => 'Voc� j� baixou o(s) arquivo(s) pelo n�mero m�ximo de vezes, ou o prazo para download expirou.'
); $VM_LANG->initModule( 'account', $langvars );
?>