<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 
/**
*
* ================================================================================
* CORRIGIDO PARA O PORTUGU�S DO BRASIL - CORRECTED TO BRAZILIAN PORTUGUESE
* v.1.9.2 - Fernando Soares - http://www.fernandosoares.com.br - 28-Out-2009
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
	'PHPSHOP_ORDER_PRINT_PAYMENT_LOG_LBL' => 'Registro de Pagamento',
	'PHPSHOP_ORDER_PRINT_SHIPPING_PRICE_LBL' => 'Valor do Envio',
	'PHPSHOP_ORDER_STATUS_LIST_CODE' => 'C�digo da Situa��o de Pedido',
	'PHPSHOP_ORDER_STATUS_LIST_NAME' => 'Nome da Situa��o de Pedido',
	'PHPSHOP_ORDER_STATUS_FORM_LBL' => 'Situa��o de Pedido',
	'PHPSHOP_ORDER_STATUS_FORM_CODE' => 'C�digo da Situa��o de Pedido',
	'PHPSHOP_ORDER_STATUS_FORM_NAME' => 'Nome da Situa��o de Pedido',
	'PHPSHOP_ORDER_STATUS_FORM_LIST_ORDER' => 'Ordem na Lista',
	'PHPSHOP_COMMENT' => 'Coment�rio',
	'PHPSHOP_ORDER_LIST_NOTIFY' => 'Notificar Cliente?',
	'PHPSHOP_ORDER_LIST_NOTIFY_ERR' => 'Por favor modifique a Situa��o do Pedido primeiro!',
	'PHPSHOP_ORDER_HISTORY_INCLUDE_COMMENT' => 'Incluir este coment�rio?',
	'PHPSHOP_ORDER_HISTORY_DATE_ADDED' => 'Data de Inclus�o',
	'PHPSHOP_ORDER_HISTORY_CUSTOMER_NOTIFIED' => 'Cliente Notificado?',
	'PHPSHOP_ORDER_STATUS_CHANGE' => 'Altera��o na Situa��o do Pedido',
	'PHPSHOP_ORDER_LIST_PRINT_LABEL' => 'R�tulo Impress�o',
	'PHPSHOP_ORDER_LIST_VOID_LABEL' => 'R�tulo Vencimento',
	'PHPSHOP_ORDER_LIST_TRACK' => 'Rastro',
	'VM_DOWNLOAD_STATS' => 'ESTAT�STICAS DE DOWNLOAD',
	'VM_DOWNLOAD_NOTHING_LEFT' => 'nenhum download restante',
	'VM_DOWNLOAD_REENABLE' => 'Re-Habilitar Download',
	'VM_DOWNLOAD_REMAINING_DOWNLOADS' => 'Downloads Restantes',
	'VM_DOWNLOAD_RESEND_ID' => 'Reenviar ID de Download',
	'VM_EXPIRY' => 'Expira',
	'VM_UPDATE_STATUS' => 'Atualiza Situa��o',
	'VM_ORDER_LABEL_ORDERID_NOTVALID' => 'Por favor forne�a um ID de Pedido num�rico e v�lido, n�o "{order_id}"',
	'VM_ORDER_LABEL_NOTFOUND' => 'Registro do pedido n�o encontrado no r�tulo da base de dados.',
	'VM_ORDER_LABEL_NEVERGENERATED' => 'R�tulo ainda n�o foi gerado',
	'VM_ORDER_LABEL_CLASSCANNOT' => 'Classe {ship_class} n�o p�de obter as imagens de r�tulo, por isso estamos aqui?',
	'VM_ORDER_LABEL_SHIPPINGLABEL_LBL' => 'Etiqueta de Transporte',
	'VM_ORDER_LABEL_SIGNATURENEVER' => 'A assinatura nunca foi recuperada',
	'VM_ORDER_LABEL_TRACK_TITLE' => 'Trilha',
	'VM_ORDER_LABEL_VOID_TITLE' => 'R�tulo de Expira��o',
	'VM_ORDER_LABEL_VOIDED_MSG' => 'Selo para waybill {tracking_number} foi anulado.',
	'VM_ORDER_PRINT_PO_IPADDRESS' => 'ENDERE�O-IP',
	'VM_ORDER_STATUS_ICON_ALT' => 'Icone de Situa��o',
	'VM_ORDER_PAYMENT_CCV_CODE' => 'C�digo CVV',
	'VM_ORDER_NOTFOUND' => 'Pedido n�o encontrado! Pode ter sido deletado.',
	'PHPSHOP_ORDER_EDIT_ACTIONS' => 'A��es',
	'PHPSHOP_ORDER_EDIT' => 'Alterar Detalhes do Pedido',
	'PHPSHOP_ORDER_EDIT_ADD' => 'Adicionar',
	'PHPSHOP_ORDER_EDIT_ADD_PRODUCT' => 'Adicionar Produto',
	'PHPSHOP_ORDER_EDIT_EDIT_ORDER' => 'Mudar Pedido',
	'PHPSHOP_ORDER_EDIT_ERROR_QUANTITY_MUST_BE_HIGHER_THAN_0' => 'Quantidade deve ser maior que 0.',
	'PHPSHOP_ORDER_EDIT_PRODUCT_ADDED' => 'O Produto foi adicionado ao Pedido',
	'PHPSHOP_ORDER_EDIT_PRODUCT_DELETED' => 'O Produto foi removido deste Pedido',
	'PHPSHOP_ORDER_EDIT_QUANTITY_UPDATED' => 'Quantidade foi atualizada',
	'PHPSHOP_ORDER_EDIT_RETURN_PARENTS' => 'voltar ao Produto Pai',
	'PHPSHOP_ORDER_EDIT_CHOOSE_PRODUCT' => 'Selecione um Produto',
	'PHPSHOP_ORDER_CHANGE_UPD_BILL' => 'Mudar Endere�o de Cobran�a',
	'PHPSHOP_ORDER_CHANGE_UPD_SHIP' => 'Mudar Endere�o de Envio',
	'PHPSHOP_ORDER_EDIT_SOMETHING_HAS_CHANGED' => ' foi modificado',
	'PHPSHOP_ORDER_EDIT_CHOOSE_PRODUCT_BY_SKU' => 'Selecione Ref'
); $VM_LANG->initModule( 'order', $langvars );
?>