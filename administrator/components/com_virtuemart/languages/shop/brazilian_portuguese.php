<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 
/**
*
* ================================================================================
* CORRIGIDO PARA O PORTUGU�S DO BRASIL - CORRECTED TO BRAZILIAN PORTUGUESE
* v.1.9.1 - Fernando Soares - http://www.fernandosoares.com.br - 16-Mar-2010
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
	'PHPSHOP_BROWSE_LBL' => 'Procurar Artigos',
	'PHPSHOP_FLYPAGE_LBL' => 'Detalhes do Produto',
	'PHPSHOP_PRODUCT_FORM_EDIT_PRODUCT' => 'Editar este produto',
	'PHPSHOP_DOWNLOADS_START' => 'Iniciar Download',
	'PHPSHOP_DOWNLOADS_INFO' => 'Por favor digite o ID de Download que voc� recebeu em seu e-mail e clique em "Iniciar Download".',
	'PHPSHOP_WAITING_LIST_MESSAGE' => 'Por favor intruduza seu e-mail abaixo para ser notificado quando este produto voltar ao estoque. 
N�s n�o compartilhamos, arrendamos, vendemos ou usamos este endere�o de e-mail para qualquer outra finalidade que n�o seja informar-lhe quando o produto est� de volta ao estoque. <br /> <br />Muito obrigado!',
	'PHPSHOP_WAITING_LIST_THANKS' => 'Obrigado por aguardar! <br />Vamos inform�-lo assim que chegar em nosso estoque.',
	'PHPSHOP_WAITING_LIST_NOTIFY_ME' => 'Notifique-me!',
	'PHPSHOP_SEARCH_ALL_CATEGORIES' => 'Pesquisar em Todas as Categorias',
	'PHPSHOP_SEARCH_ALL_PRODINFO' => 'Pesquisar todas as informa��es do produto',
	'PHPSHOP_SEARCH_PRODNAME' => 'Apenas nome do produto',
	'PHPSHOP_SEARCH_MANU_VENDOR' => 'Apenas Fabricante/Vendedor',
	'PHPSHOP_SEARCH_DESCRIPTION' => 'Apenas descri��o do produto',
	'PHPSHOP_SEARCH_AND' => 'e',
	'PHPSHOP_SEARCH_NOT' => 'n�o',
	'PHPSHOP_SEARCH_TEXT1' => 'A primeira lista permite selecionar uma categoria a qual limitar a pesquisa. A segunda lista permite limitar a sua pesquisa a uma determinada parte das informa��es do produto (ex. Nome).
Uma vez selecionadas (ou deixadas no padr�o), introduza a palavra-chave a ser pesquisada.',
	'PHPSHOP_SEARCH_TEXT2' => 'Voc� pode refinar ainda mais a sua pesquisa, adicionando uma segunda palavra-chave e selecionando os operadores AND (e) ou NOT (n�o). Selecionando AND significa que ambas as palavras devem estar presentes para o produto ser exibido.
Selecionando NOT significa que o produto ser� exibido somente se a primeira palavra-chave estiver presente e a segunda n�o.',
	'PHPSHOP_CONTINUE_SHOPPING' => 'Continuar Comprando',
	'PHPSHOP_AVAILABLE_IMAGES' => 'Imagens Dispon�veis para',
	'PHPSHOP_BACK_TO_DETAILS' => 'Retorna para detalhes do produto',
	'PHPSHOP_IMAGE_NOT_FOUND' => 'A image n�o foi encontrada!',
	'PHPSHOP_PARAMETER_SEARCH_TEXT1' => 'Voc� deseja procurar produtos segundo par�metros t�cnicos?<BR>Voc� pode utilizar qualquer formul�rio j� preparado:',
	'PHPSHOP_PARAMETER_SEARCH_NO_PRODUCT_TYPE' => 'Lamento. N�o h� nenhuma categoria para pesquisar.',
	'PHPSHOP_PARAMETER_SEARCH_BAD_PRODUCT_TYPE' => 'Lamento. N�o existe nenhum Tipo de Produto publicado com esse nome.',
	'PHPSHOP_PARAMETER_SEARCH_IS_LIKE' => '� Como',
	'PHPSHOP_PARAMETER_SEARCH_IS_NOT_LIKE' => 'N�O � Como',
	'PHPSHOP_PARAMETER_SEARCH_FULLTEXT' => 'Pesquisar texto completo',
	'PHPSHOP_PARAMETER_SEARCH_FIND_IN_SET_ALL' => 'Todos os selecionados',
	'PHPSHOP_PARAMETER_SEARCH_FIND_IN_SET_ANY' => 'Qualquer Selecionado',
	'PHPSHOP_PARAMETER_SEARCH_RESET_FORM' => 'Redefinir o Formul�rio',
	'PHPSHOP_PRODUCT_NOT_FOUND' => 'Desculpe, mas o Produto solicitado n�o foi encontrado!',
	'PHPSHOP_PRODUCT_PACKAGING1' => 'N�mero {unit}s na embalagem:',
	'PHPSHOP_PRODUCT_PACKAGING2' => 'N�mero {unit}s na caixa:',
	'PHPSHOP_CART_PRICE_PER_UNIT' => 'Pre�o Unit�rio',
	'VM_PRODUCT_ENQUIRY_LBL' => 'Pergunte sobre este produto',
	'VM_RECOMMEND_FORM_LBL' => 'Recomende este produto a um amigo',
	'PHPSHOP_EMPTY_YOUR_CART' => 'Esvaziar Carrinho',
	'VM_RETURN_TO_PRODUCT' => 'Retornar ao produto',
	'EMPTY_CATEGORY' => 'Esta Categoria est� atualmente vazia.',
	'ENQUIRY' => 'Indaga��o',
	'NAME_PROMPT' => 'Digite seu Nome',
	'EMAIL_PROMPT' => 'Endere�o de E-mail',
	'MESSAGE_PROMPT' => 'Digite sua Mensagem',
	'SEND_BUTTON' => 'Enviar',
	'THANK_MESSAGE' => 'Obrigado pela sua Solicita��o. N�s entraremos em contato com voc� o mais breve poss�vel.',
	'PROMPT_CLOSE' => 'Fechar',
	'VM_RECOVER_CART_REPLACE' => 'Substituir Carrinho pelo Carrinho Salvo',
	'VM_RECOVER_CART_MERGE' => 'Adicionar Carrinho Salvo ao Carrinho Atual',
	'VM_RECOVER_CART_DELETE' => 'Deletar Carrinho Salvo',
	'VM_EMPTY_YOUR_CART_TIP' => 'Limpar o carrinho de todos os conte�dos',
	'VM_SAVED_CART_TITLE' => 'Cesto Salvo',
	'VM_SAVED_CART_RETURN' => 'Retornar'
); $VM_LANG->initModule( 'shop', $langvars );
?>