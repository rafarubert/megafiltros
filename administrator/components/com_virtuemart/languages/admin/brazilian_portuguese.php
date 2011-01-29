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
	'PHPSHOP_USER_LIST_LBL' => 'Lista de Usu�rios',
	'PHPSHOP_USER_LIST_USERNAME' => 'Nome de usu�rio',
	'PHPSHOP_USER_LIST_FULL_NAME' => 'Nome Completo',
	'PHPSHOP_USER_LIST_GROUP' => 'Grupo',
	'PHPSHOP_USER_FORM_LBL' => 'Adicionar/Atualizar Informa��es do Usu�rio',
	'PHPSHOP_USER_FORM_PERMS' => 'Permiss�es',
	'PHPSHOP_USER_FORM_CUSTOMER_NUMBER' => 'N�mero / ID de Cliente',
	'PHPSHOP_MODULE_LIST_LBL' => 'Lista de M�dulos',
	'PHPSHOP_MODULE_LIST_NAME' => 'Nome do M�dulo',
	'PHPSHOP_MODULE_LIST_PERMS' => 'Permiss�es do M�dulo',
	'PHPSHOP_MODULE_LIST_FUNCTIONS' => 'Fun��es',
	'PHPSHOP_MODULE_FORM_LBL' => 'Informa��es do M�dulo',
	'PHPSHOP_MODULE_FORM_MODULE_LABEL' => 'Etiqueta do M�dulo (para o menu superior)',
	'PHPSHOP_MODULE_FORM_NAME' => 'Nome do M�dulo',
	'PHPSHOP_MODULE_FORM_PERMS' => 'Permiss�es do M�dulo',
	'PHPSHOP_MODULE_FORM_HEADER' => 'Cabe�alho do M�dulo',
	'PHPSHOP_MODULE_FORM_FOOTER' => 'Rodap� do M�dulo',
	'PHPSHOP_MODULE_FORM_MENU' => 'Exibir M�dulo no Menu de Administra��o?',
	'PHPSHOP_MODULE_FORM_ORDER' => 'Ordem de Exibi��o',
	'PHPSHOP_MODULE_FORM_DESCRIPTION' => 'Descri��o do M�dulo',
	'PHPSHOP_MODULE_FORM_LANGUAGE_CODE' => 'C�digo de Idioma',
	'PHPSHOP_MODULE_FORM_LANGUAGE_FILE' => 'Arquivo de Idioma',
	'PHPSHOP_FUNCTION_LIST_LBL' => 'Lista de Fun��es',
	'PHPSHOP_FUNCTION_LIST_NAME' => 'Nome da Fun��o',
	'PHPSHOP_FUNCTION_LIST_CLASS' => 'Nome da Classe',
	'PHPSHOP_FUNCTION_LIST_METHOD' => 'M�todo da Classe',
	'PHPSHOP_FUNCTION_LIST_PERMS' => 'Permiss�es',
	'PHPSHOP_FUNCTION_FORM_LBL' => 'Informa��es da Fun��o',
	'PHPSHOP_FUNCTION_FORM_NAME' => 'Nome da Fun��o',
	'PHPSHOP_FUNCTION_FORM_CLASS' => 'Nome da Classe',
	'PHPSHOP_FUNCTION_FORM_METHOD' => 'M�todo da Classe',
	'PHPSHOP_FUNCTION_FORM_PERMS' => 'Permiss�es da Fun��o',
	'PHPSHOP_FUNCTION_FORM_DESCRIPTION' => 'Descri��o da Fun��o',
	'PHPSHOP_CURRENCY_LIST_LBL' => 'Lista de Moedas',
	'PHPSHOP_CURRENCY_LIST_NAME' => 'Nome da Moeda',
	'PHPSHOP_CURRENCY_LIST_CODE' => 'C�digo da Moeda',
	'PHPSHOP_COUNTRY_LIST_LBL' => 'Lista de Pa�ses',
	'PHPSHOP_COUNTRY_LIST_NAME' => 'Nome do Pa�s',
	'PHPSHOP_COUNTRY_LIST_3_CODE' => 'C�digo Pa�s (3)',
	'PHPSHOP_COUNTRY_LIST_2_CODE' => 'C�digo Pa�s (2)',
	'PHPSHOP_STATE_LIST_MNU' => 'Listar Estado',
	'PHPSHOP_STATE_LIST_LBL' => 'Lista de Estados para:',
	'PHPSHOP_STATE_LIST_ADD' => 'Adicionar/Atualizar um Estado',
	'PHPSHOP_STATE_LIST_NAME' => 'Nome do Estado',
	'PHPSHOP_STATE_LIST_3_CODE' => 'C�digo do Estado (3)',
	'PHPSHOP_STATE_LIST_2_CODE' => 'C�digo do Estado (2)',
	'PHPSHOP_ADMIN_CFG_GLOBAL' => 'Geral',
	'PHPSHOP_ADMIN_CFG_SITE' => 'Site',
	'PHPSHOP_ADMIN_CFG_SHIPPING' => 'Transporte',
	'PHPSHOP_ADMIN_CFG_CHECKOUT' => 'Finaliza��o',
	'PHPSHOP_ADMIN_CFG_DOWNLOADABLEGOODS' => 'Downloads',
	'PHPSHOP_ADMIN_CFG_USE_ONLY_AS_CATALOGUE' => 'Usar somente como cat�logo',
	'PHPSHOP_ADMIN_CFG_USE_ONLY_AS_CATALOGUE_EXPLAIN' => 'Se marcar isto, voc� desabilitar� todas as funcionalidades do cesto.',
	'PHPSHOP_ADMIN_CFG_SHOW_PRICES' => 'Mostrar Pre�os',
	'PHPSHOP_ADMIN_CFG_SHOW_PRICES_EXPLAIN' => 'Marque para mostrar os pre�os. Se utilizando a funcionalidade de cat�logo, alguns n�o querem que os pre�os apare�am nas p�ginas.',
	'PHPSHOP_ADMIN_CFG_VIRTUAL_TAX' => 'Imposto Virtual',
	'PHPSHOP_ADMIN_CFG_VIRTUAL_TAX_EXPLAIN' => 'Isso determina se os itens com peso zero s�o tributados ou n�o. Modifique ps_checkout.php->calc_order_taxable() para personalizar isto.',
	'PHPSHOP_ADMIN_CFG_TAX_MODE' => 'Modo de Tributa��o:',
	'PHPSHOP_ADMIN_CFG_TAX_MODE_SHIP' => 'Baseado no endere�o de entrega',
	'PHPSHOP_ADMIN_CFG_TAX_MODE_VENDOR' => 'Baseado no endere�o do vendedor',
	'PHPSHOP_ADMIN_CFG_TAX_MODE_EXPLAIN' => 'Isto determina qual taxa de imposto � usada para c�lcular os impostos:<br /><ul><li>Estadual/Nacional referente ao local do vendedor.</li> <li>ou referente ao local do comprador.</li> <li>ou "Modo UE", em que � usada uma taxa de imposto por produto se o cliente est� na Uni�o Europ�ia, caso contr�rio, a taxa de imposto � baseada no endere�o do cliente.</li> </ul>',
	'PHPSHOP_ADMIN_CFG_MULTI_TAX_RATE' => 'Ativar m�ltiplas taxas de imposto?',
	'PHPSHOP_ADMIN_CFG_MULTI_TAX_RATE_EXPLAIN' => 'Marque isto se voc� tem produtos com diferentes taxas de imposto (ex. 7% para livros e comida, 16% para outros coisas)',
	'PHPSHOP_ADMIN_CFG_SUBSTRACT_PAYEMENT_BEFORE' => 'Subtrair desconto do pagamento antes do imposto/frete?',
	'PHPSHOP_ADMIN_CFG_REVIEW' => 'Ativar Sistema de Coment�rios/Avalia��es de Clientes',
	'PHPSHOP_ADMIN_CFG_REVIEW_EXPLAIN' => 'Se ativado, voc� permite que os clientes <strong>avaliem produtos</strong> e <strong>escrevam coment�rios</strong> sobre eles. <br /> Assim, os clientes podem escrever as suas experi�ncias com o produto para outros clientes.<br />',
	'PHPSHOP_ADMIN_CFG_SUBSTRACT_PAYEMENT_BEFORE_EXPLAIN' => 'Define a op��o para subtrair o desconto da forma de pagamento ANTES (marcado) ou DEPOIS dos impostos e frete.',
	'PHPSHOP_ADMIN_CFG_AGREE_TERMS' => 'Deve concordar com os Termos do Servi�o?',
	'PHPSHOP_ADMIN_CFG_AGREE_TERMS_EXPLAIN' => 'Marque se voc� quer que seus clientes concordem com os Termos do Servi�o antes de se registrarem na loja.',
	'PHPSHOP_ADMIN_CFG_CHECK_STOCK' => 'Verifica Estoque?',
	'PHPSHOP_ADMIN_CFG_CHECK_STOCK_EXPLAIN' => 'Define se deve ser verificado o estoque quando um usu�rio adiciona um item ao cesto de compras. Se marcado, isto n�o ir� permitir ao usu�rio adicionar mais itens ao cesto do que est�o dispon�veis em estoque.',
	'PHPSHOP_ADMIN_CFG_MAIL_FORMAT' => 'Formato e-mails de Pedido:',
	'PHPSHOP_ADMIN_CFG_MAIL_FORMAT_TEXT' => 'E-mail texto',
	'PHPSHOP_ADMIN_CFG_MAIL_FORMAT_HTML' => 'E-mail HTML',
	'PHPSHOP_ADMIN_CFG_MAIL_FORMAT_EXPLAIN' => 'Isto determina como s�o configurados os e-mails de confirma��o de pedido:<br /><ul><li>como e-mail de texto simples</li><li>ou como e-mail em html com imagens.</li></ul>',
	'PHPSHOP_ADMIN_CFG_FRONTENDAMDIN' => 'Permitir Administra��o pela Vitrine para Usu�rios n�o Administrativos?',
	'PHPSHOP_ADMIN_CFG_FRONTENDAMDIN_EXPLAIN' => 'Com esta configura��o voc� pode ativar a Administra��o pela Vitrine para usu�rios que sejam administradores de loja, mas que n�o podem acessar a Administra��o do Joomla (ex. Registrado / Editor).',
	'PHPSHOP_ADMIN_CFG_URLSECURE' => 'URL Segura',
	'PHPSHOP_ADMIN_CFG_URLSECURE_EXPLAIN' => 'URL segura para seu site. (https - com a barra no final!)',
	'PHPSHOP_ADMIN_CFG_HOMEPAGE' => 'P�gina Inicial',
	'PHPSHOP_ADMIN_CFG_HOMEPAGE_EXPLAIN' => 'Esta � a p�gina que ser� carregado por padr�o.',
	'PHPSHOP_ADMIN_CFG_ERRORPAGE' => 'P�gina de Erro',
	'PHPSHOP_ADMIN_CFG_ERRORPAGE_EXPLAIN' => 'Esta � a p�gina padr�o para exibir mensagens de erro.',
	'PHPSHOP_ADMIN_CFG_DEBUG' => 'DEPURA��O ?',
	'PHPSHOP_ADMIN_CFG_DEBUG_EXPLAIN' => 'DEPURA��O ? Liga a sa�da de depura��o. Causa a exibi��o da p�gina de DEPURA��O na parte de baixo de cada p�gina. Muito �til durante o desenvolvimento da loja, uma vez que mostra os conte�dos dos cestos, valores dos campos de formul�rio, etc.',
	'PHPSHOP_ADMIN_CFG_FLYPAGE' => 'P�gina de Detalhes de Produto',
	'PHPSHOP_ADMIN_CFG_FLYPAGE_EXPLAIN' => 'Esta � a p�gina padr�o para exibir detalhes de produto.',
	'PHPSHOP_ADMIN_CFG_CATEGORY_TEMPLATE' => 'Tema de Categoria',
	'PHPSHOP_ADMIN_CFG_CATEGORY_TEMPLATE_EXPLAIN' => 'Define o tema de categoria padr�o para exibi��o de produtos em uma categoria.<br />Voc� pode criar novos temas personalizando os arquivos de tema existentes <br /> (que residem no diret�rio <strong>COMPONENTPATH/html/templates/	</strong> e come�am com browse_)',
	'PHPSHOP_ADMIN_CFG_PRODUCTS_PER_ROW' => 'N�mero padr�o de produtos em uma linha',
	'PHPSHOP_ADMIN_CFG_PRODUCTS_PER_ROW_EXPLAIN' => 'Isto define o n�mero de produtos em uma linha. <br /> Exemplo: Se voc� defini-lo para 4, o tema de categoria ir� mostrar 4 produtos por linha',
	'PHPSHOP_ADMIN_CFG_NOIMAGEPAGE' => 'Imagem "sem imagem"',
	'PHPSHOP_ADMIN_CFG_NOIMAGEPAGE_EXPLAIN' => 'Esta imagem ser� mostrada quando nenhuma imagem de produto estiver dispon�vel.',
	'PHPSHOP_ADMIN_CFG_SHOWPHPSHOP_VERSION' => 'Mostrar rodap� ',
	'PHPSHOP_ADMIN_CFG_SHOWPHPSHOP_VERSION_EXPLAIN' => 'Exibe a imagem "powered-by-VirtueMart" no rodap�.',
	'PHPSHOP_ADMIN_CFG_STORE_SHIPPING_METHOD_STANDARD' => 'M�dulo de Envio Padr�o com configura��es individuais para transportador e taxas. <strong>RECOMENDADO !</strong>',
	'PHPSHOP_ADMIN_CFG_STORE_SHIPPING_METHOD_ZONE' => 'M�dulo de Zonas de Envio do Pa�s Vers�o 1.0<br />Para mais informa��es sobre este m�dulo por favor visite <a href="http://ZephWare.com">http://ZephWare.com</a><br /> para detalhes ou contate <a href="mailto:zephware@devcompany.com">ZephWare.com</a> <br />Marque isto para ativar o m�dulo de zonas de envio',
	'PHPSHOP_ADMIN_CFG_STORE_SHIPPING_METHOD_DISABLE' => 'Desabilita a sele��o de M�todo de Envio. Escolha se seus clientes compram produtos que n�o precisam ser enviados, como downloads.',
	'PHPSHOP_ADMIN_CFG_ENABLE_CHECKOUTBAR' => 'Ativa a Barra de Finaliza��o',
	'PHPSHOP_ADMIN_CFG_ENABLE_CHECKOUTBAR_EXPLAIN' => 'Marque isto se voc� desejar que a \'barra de finaliza��o\' seja exibida ao cliente durante o processo de finaliza��o (1 - 2 - 3 - 4 com gr�ficos).',
	'PHPSHOP_ADMIN_CFG_CHECKOUT_PROCESS' => 'Escolha o processo de finaliza��o na sua loja',
	'PHPSHOP_ADMIN_CFG_ENABLE_DOWNLOADS' => 'Ativar Downloads',
	'PHPSHOP_ADMIN_CFG_ENABLE_DOWNLOADS_EXPLAIN' => 'Marque para habilitar a capacidade de download. Somente se voc� desejar vender downloads.',
	'PHPSHOP_ADMIN_CFG_ORDER_ENABLE_DOWNLOADS' => 'Situa��o de Pedido que habilita o download',
	'PHPSHOP_ADMIN_CFG_ORDER_ENABLE_DOWNLOADS_EXPLAIN' => 'Selecione a Situa��o de Pedido na qual o cliente � notificado sobre o download via e-mail.',
	'PHPSHOP_ADMIN_CFG_ORDER_DISABLE_DOWNLOADS' => 'Situa��o de Pedido que desabilita os downloads',
	'PHPSHOP_ADMIN_CFG_ORDER_DISABLE_DOWNLOADS_EXPLAIN' => 'Define a situa��o de pedido na qual o download � desabilitado para o cliente.',
	'PHPSHOP_ADMIN_CFG_DOWNLOADROOT' => 'Raiz dos Downloads',
	'PHPSHOP_ADMIN_CFG_DOWNLOADROOT_EXPLAIN' => 'O caminho f�sico dos arquivos para o cliente baixar. (barra no final!)<br> <span class="message">Para seguran�a de sua loja: Se voc� puder, por favor use um diret�rio EM QUALQUER LUGAR FORA DA RAIZ DO DOM�NIO</span>',
	'PHPSHOP_ADMIN_CFG_DOWNLOAD_MAX' => 'M�ximo de Downloads',
	'PHPSHOP_ADMIN_CFG_DOWNLOAD_MAX_EXPLAIN' => 'Define o n�mero de downloads que pode ser feito com um ID de Download, (para um pedido)',
	'PHPSHOP_ADMIN_CFG_DOWNLOAD_EXPIRE' => 'Expira��o do Download',
	'PHPSHOP_ADMIN_CFG_DOWNLOAD_EXPIRE_EXPLAIN' => 'Defina o intervalo de tempo <strong>em segundos</strong> no qual o download esta dispon�vel para o cliente. Este intervalo come�a com o primeiro download! Quando o intervalo expira, o ID de Download � desabilitado.<br />Nota : 86400s=24h.',
	'PHPSHOP_COUPONS' => 'Cupons',
	'PHPSHOP_COUPONS_ENABLE' => 'Habilita Uso de Cupons',
	'PHPSHOP_COUPONS_ENABLE_EXPLAIN' => 'Se voc� habilitar o Uso de Cupons voc� permitir� aos clientes digitar N�meros de Cupons para ganhar doscontos em suas compras.',
	'PHPSHOP_ADMIN_CFG_PDF_BUTTON' => 'Bot�o - PDF',
	'PHPSHOP_ADMIN_CFG_PDF_BUTTON_EXPLAIN' => 'Exibe ou Oculta o Bot�o - PDF na Loja.',
	'PHPSHOP_ADMIN_CFG_AGREE_TERMS_ONORDER' => 'Deve-se concordar com os Termos do Servi�o em CADA PEDIDO?',
	'PHPSHOP_ADMIN_CFG_AGREE_TERMS_ONORDER_EXPLAIN' => 'Marque se voc� quer que seu cliente concorde com seus Termos do Servi�o em CADA PEDIDO (antes de confirmar o pedido).',
	'PHPSHOP_ADMIN_CFG_SHOW_OUT_OF_STOCK_PRODUCTS' => 'Mostrar Produtos que est�o fora de Estoque',
	'PHPSHOP_ADMIN_CFG_SHOW_OUT_OF_STOCK_PRODUCTS_EXPLAIN' => 'Quando ativado, Produtos que n�o se encontram atualmente em Estoque s�o exibidos. Caso contr�rio, tais produtos s�o ocultados.',
	'PHPSHOP_ADMIN_CFG_SHOP_OFFLINE' => 'A loja est� fora do ar?',
	'PHPSHOP_ADMIN_CFG_SHOP_OFFLINE_TIP' => 'Se voc� marcar isto, a Loja ir� exibir uma Mensagem de Fora do Ar.',
	'PHPSHOP_ADMIN_CFG_SHOP_OFFLINE_MSG' => 'Mensagem de Fora do Ar',
	'PHPSHOP_ADMIN_CFG_TABLEPREFIX' => 'Prefixo de Tabela para as Tabelas da Loja',
	'PHPSHOP_ADMIN_CFG_TABLEPREFIX_TIP' => 'Isto � por padr�o <strong>vm</strong>.',
	'PHPSHOP_ADMIN_CFG_NAV_AT_TOP' => 'Mostrar a Navega��o de P�gina no Topo da Listagem de Produtos?',
	'PHPSHOP_ADMIN_CFG_NAV_AT_TOP_TIP' => 'Ativa ou Desativa a exibi��o da navega��o de p�gina no topo da Lista de Produtos na Vitrine.',
	'PHPSHOP_ADMIN_CFG_SHOW_PRODUCT_COUNT' => 'Mostrar o N�mero de Produtos?',
	'PHPSHOP_ADMIN_CFG_SHOW_PRODUCT_COUNT_TIP' => 'Mostrar o N�mero de Produtos em uma Categoria  como Categoria(4)?',
	'PHPSHOP_ADMIN_CFG_DYNAMIC_THUMBNAIL_RESIZING' => 'Ativar Redimensionamento Din�mico de Miniaturas?',
	'PHPSHOP_ADMIN_CFG_DYNAMIC_THUMBNAIL_RESIZING_TIP' => 'Se marcado, voc� ativa o Redimensionamento Din�mico de Imagens. Isto significa que todas as Imagens Miniatura ser�o redimensionadas para se ajustarem aos Tamanhos que voc� fornecer abaixo usando as fun��es GD2 do PHP (voc� pode verificar se voc� tem suporte a GD2 navegando em "System" -> "System Info" -> "PHP Info" -> gd).
As qualidade da Miniatura de Imagem � muito melhor do que imagens que foram "redimensionadas" pelo navegador. As novas imagens geradas s�o postas no diret�rio /shop_image/prduct/resized. Se a imagem j� foi redimensionada, esta c�pia ser� enviada ao navegador, assim a imagem n�o � redimensionada novamente e novamente.',
	'PHPSHOP_ADMIN_CFG_THUMBNAIL_WIDTH' => 'Largura da Imagem Miniatura',
	'PHPSHOP_ADMIN_CFG_THUMBNAIL_WIDTH_TIP' => 'A <strong>largura</ strong> desejada da Imagem Miniatura redimensionada.',
	'PHPSHOP_ADMIN_CFG_THUMBNAIL_HEIGHT' => 'Altura da Imagem Miniatura',
	'PHPSHOP_ADMIN_CFG_THUMBNAIL_HEIGHT_TIP' => 'A <strong>altura</ strong> desejada da Imagem Miniatura redimensionada.',
	'PHPSHOP_ADMIN_CFG_SHIPPING_NO_SELECTION' => 'Por favor selecione pelo menos uma op��o na Configura��o de Entrega!',
	'PHPSHOP_ADMIN_CFG_PRICE_CONFIGURATION' => 'Configura��o do Pre�o',
	'PHPSHOP_ADMIN_CFG_PRICE_ACCESS_LEVEL' => 'Grupo de Membros para mostrar pre�os a',
	'PHPSHOP_ADMIN_CFG_PRICE_ACCESS_LEVEL_TIP' => 'O grupo de membros selecionado e todos os grupos com permiss�es mais elevadas poder�o ver os pre�os dos produtos.',
	'PHPSHOP_ADMIN_CFG_PRICE_SHOW_INCLUDINGTAX' => 'Mostrar "(inclui XX% de Imposto)" quando aplic�vel?',
	'PHPSHOP_ADMIN_CFG_PRICE_SHOW_INCLUDINGTAX_TIP' => 'Quando marcada, os usu�rios ver�o o texto "(inclui XX% de Imposto)" quando os pre�os s�o mostrados incluindo impostos.',
	'PHPSHOP_ADMIN_CFG_PRICE_SHOW_PACKAGING_PRICELABEL' => 'Mostrar a etiqueta de pre�o para embalagem?',
	'PHPSHOP_ADMIN_CFG_PRICE_SHOW_PACKAGING_PRICELABEL_TIP' => 'Quando marcada, a etiqueta de pre�o � derivada da unidade do produto e dos valores de embalagem: <strong>Pre�o por Unidade (10 pe�as)</strong><br/>Quando n�o marcado, as etiquetas de pre�o t�m o aspecto de costume: <strong>Pre�o: R$xx.xx</strong>',
	'PHPSHOP_ADMIN_CFG_MORE_CORE_SETTINGS' => 'mais Configura��es do N�cleo',
	'PHPSHOP_ADMIN_CFG_CORE_SETTINGS' => 'Configura��es do N�cleo',
	'PHPSHOP_ADMIN_CFG_FRONTEND_FEATURES' => 'Caracter�sticas da Vitrine',
	'PHPSHOP_ADMIN_CFG_TAX_CONFIGURATION' => 'Configura��o dos Impostos',
	'PHPSHOP_ADMIN_CFG_USER_REGISTRATION_SETTINGS' => 'Configura��es de Registro de Usu�rios',
	'PHPSHOP_ADMIN_CFG_ALLOW_REGISTRATION' => 'Registro de usu�rios permitido?',
	'PHPSHOP_ADMIN_CFG_ACCOUNT_ACTIVATION' => 'Novas contas necessitam ativa��o?',
	'VM_FIELDMANAGER_NAME' => 'Nome do campo',
	'VM_FIELDMANAGER_TITLE' => 'T�tulo do campo',
	'VM_FIELDMANAGER_TYPE' => 'Tipo do campo',
	'VM_FIELDMANAGER_REQUIRED' => 'Requerido',
	'VM_FIELDMANAGER_PUBLISHED' => 'Publicado',
	'VM_FIELDMANAGER_SHOW_ON_REGISTRATION' => 'Mostre no formul�rio de registro',
	'VM_FIELDMANAGER_SHOW_ON_ACCOUNT' => 'Mostre na manuten��o de conta',
	'VM_USERFIELD_FORM_LBL' => 'Adicione/Edite Campos de Usu�rio',
	'VM_BROWSE_ORDERBY_DEFAULT_FIELD_LBL' => 'Ordena��o padr�o dos produtos',
	'VM_BROWSE_ORDERBY_DEFAULT_FIELD_LBL_TIP' => 'Define por qual campo os produtos s�o ordenados por padr�o nas p�ginas de navega��o',
	'VM_BROWSE_ORDERBY_FIELDS_LBL' => 'Campos "Classificar por" dispon�veis',
	'VM_BROWSE_ORDERBY_FIELDS_LBL_TIP' => 'Escolha os campos "Classificar por" para a p�gina de navega��o. Cada um define um m�todo de classifica��o para a p�gina de navega��o de produto. Se voc� desmarcar todos, o formul�ro "Ordenar por" n�o ser� mostrado.',
	'VM_GENERALLY_PREVENT_HTTPS' => 'Geralmente impedir conex�es https?',
	'VM_GENERALLY_PREVENT_HTTPS_TIP' => 'Quando marcado, o cliente ser� redirecionado para a URL <strong>http</strong> quando n�o estiver navegando nessas �reas da loja, que s�o for�adas a usar https.',
	'VM_ALLOW_EXTENDED_CLASSES' => 'Permitir a inclus�o de classes estendidas a partir do diret�rio de temas?',
	'VM_ALLOW_EXTENDED_CLASSES_TIP' => 'Quando marcado, o VirtueMart executa um c�digo de programa extendido. O c�digo original do VirtueMart pode ser substitu�do ou extendido. Se voc� n�o sabe o que � isso ou voc� n�o precisa dele, desmarque',
	'VM_MODULES_FORCE_HTTPS' => '�reas da Loja que devem utilizar https',
	'VM_MODULES_FORCE_HTTPS_TIP' => 'Aqui voc� pode utilizar uma lista dos m�dulos do n�cleo da loja separados por v�rgulas (Veja "Admin" => "Lista de M�dulos"), que utilizar�o conex�es https.',
	'VM_SHOW_REMEMBER_ME_BOX' => 'Mostrar a caixa "Lembrar" no login?',
	'VM_SHOW_REMEMBER_ME_BOX_TIP' => 'Quando marcada, a caixa "Lembrar" � mostrada na finaliza��o. N�o � recomendado quando usando ssl compartilhado, porque o cliente poder� optar por n�o receber um cookie de usu�rio - mas este cookie de usu�rio � necess�rio para manter o usu�rio conectado em ambos os dom�nios.',
	'VM_ADMIN_CFG_REVIEW_MINIMUM_COMMENT_LENGTH' => 'Comprimento M�nimo do Coment�rio',
	'VM_ADMIN_CFG_REVIEW_MINIMUM_COMMENT_LENGTH_TIP' => 'Esta � a quantidade de caracteres que DEVEM, no m�nimo, ser escritos por um cliente antes que o coment�rio possa ser enviado.',
	'VM_ADMIN_CFG_REVIEW_MAXIMUM_COMMENT_LENGTH' => 'Comprimento M�ximo do Coment�rio',
	'VM_ADMIN_CFG_REVIEW_MAXIMUM_COMMENT_LENGTH_TIP' => 'Esta � a quantidade m�xima de caracteres que podem ser escritos por um cliente em um coment�rio.',
	'VM_ADMIN_SHOW_EMAILFRIEND' => 'Mostrar o link "Recomendar a um amigo" ?',
	'VM_ADMIN_SHOW_EMAILFRIEND_TIP' => 'Quando ativado, � exibido um pequeno link que permite ao cliente enviar um e-mail de recomenda��o de um produto espec�fico.',
	'VM_ADMIN_SHOW_PRINTICON' => 'Mostrar o link "Visualizar Impress�o" ?',
	'VM_ADMIN_SHOW_PRINTICON_TIP' => 'Quando ativado, � exibido um pequeno link que abre a p�gina atual em uma nova janela para imprimi-la.',
	'VM_REVIEWS_AUTOPUBLISH' => 'Auto-Publicar Coment�rios?',
	'VM_REVIEWS_AUTOPUBLISH_TIP' => 'Se marcada, coment�rios s�o publicados automaticamente ap�s serem postados. Se n�o, o administrador deve aprov�-los/public�-los.',
	'VM_ADMIN_CFG_PROXY_SETTINGS' => 'Configura��es Gerais de Proxy',
	'VM_ADMIN_CFG_PROXY_URL' => 'URL do servidor proxy',
	'VM_ADMIN_CFG_PROXY_URL_TIP' => 'Exemplo: <strong>http://10.42.21.1</strong>.<br />
Deixe vazio se n�o tiver a certeza.</strong> Este valor ser� usado para se conectar � internet a partir do servidor da loja   (ex. ao buscar taxas de frete da UPS/USPS).',
	'VM_ADMIN_CFG_PROXY_PORT' => 'Porta do Proxy',
	'VM_ADMIN_CFG_PROXY_PORT_TIP' => 'A porta utilizada para comunica��o com o servidor proxy (principalmente <b>80</b> ou <b>8080</b>).',
	'VM_ADMIN_CFG_PROXY_USER' => 'Nome de usu�rio do Proxy',
	'VM_ADMIN_CFG_PROXY_USER_TIP' => 'Se o proxy requer autentica��o preencha o seu nome de usu�rio aqui.',
	'VM_ADMIN_CFG_PROXY_PASS' => 'Senha do Proxy',
	'VM_ADMIN_CFG_PROXY_PASS_TIP' => 'Se o proxy requer autentica��o preencha a senha correta aqui.',
	'VM_ADMIN_ONCHECKOUT_SHOW_LEGALINFO' => 'Mostrar informa��es sobre "Pol�tica de Devolu��es" na p�gina de confirma��o de pedido?',
	'VM_ADMIN_ONCHECKOUT_SHOW_LEGALINFO_TIP' => 'Os propriet�rios de lojas s�o obrigados por lei a informar os seus clientes sobre as pol�ticas de devolu��o e cancelamento de pedido na maioria dos pa�ses europeus. Portanto, isto deve ser ativado na maioria dos casos.',
	'VM_ADMIN_ONCHECKOUT_LEGALINFO_SHORTTEXT' => 'Texto de informa��es legais (vers�o curta).',
	'VM_ADMIN_ONCHECKOUT_LEGALINFO_SHORTTEXT_TIP' => 'Este texto instrui seus clientes abreviadamente sobre suas pol�ticas de devolu��o e cancelamento de pedido. � mostrado na �ltima p�gina da finaliza��o, logo acima do bot�o "Confirmar Pedido".',
	'VM_ADMIN_ONCHECKOUT_LEGALINFO_LINK' => 'Vers�o completa da pol�tica de devolu��es (lincar para um item de conte�do).',
	'VM_ADMIN_ONCHECKOUT_LEGALINFO_LINK_TIP' => 'Por favor adicione um novo item de conte�do sobre os detalhes de sua pol�tica de devolu��o e cancelamento de pedido.
Posteriormente voc� poder� selecion�-lo aqui.',
	'VM_SELECT_THEME' => 'Selecione o tema para sua Loja',
	'VM_SELECT_THEME_TIP' => 'Temas permitem estilizar e personalizar sua loja. <br /> Se n�o houver outros temas presentes al�m do "padr�o" ent�o voc� n�o tem mais temas instalados.',
	'VM_CFG_CONTENT_PLUGINS_ENABLE' => 'Ativar mambots / plugins de conte�do em descri��es?',
	'VM_CFG_CONTENT_PLUGINS_ENABLE_TIP' => 'Se ativado, descri��es de produto e categoria s�o analisadas por todos os mambots / plugins de conte�dos publicados.',
	'VM_CFG_CURRENCY_MODULE' => 'Selecione um m�dulo conversor de moeda',
	'VM_CFG_CURRENCY_MODULE_TIP' => 'Isto permite-lhe selecionar um determinado m�dulo conversor de moeda. Esses m�dulos buscam taxas de c�mbio a partir de um servidor e convertem uma moeda para outra.',
	'PHPSHOP_ADMIN_CFG_TAX_MODE_EU' => 'Modo Uni�o Europ�ia',
	'VM_ADMIN_CFG_DOWNLOAD_KEEP_STOCKLEVEL' => 'Manter N�vel de Estoque do Produto na Compra?',
	'VM_ADMIN_CFG_DOWNLOAD_KEEP_STOCKLEVEL_TIP' => 'Quando ativado, o n�vel do estoque de um produto para download  n�o � baixado embora tenha sido comprado pelos clientes.',
	'VM_USERGROUP_FORM_LBL' => 'Adiciona/Edita um Grupo de Usu�rios',
	'VM_USERGROUP_NAME' => 'Nome do Grupo de Usu�rios',
	'VM_USERGROUP_LEVEL' => 'N�vel do Grupo de Usu�rios',
	'VM_USERGROUP_LEVEL_TIP' => 'Importante! Um n�mero maior significa <b>menos</b> permiss�es. O grupo <b>admin</b> � <em>n�vel 0</em>, administrador de loja   � n�vel 250, os usu�rios t�m n�vel 500.',
	'VM_USERGROUP_LIST_LBL' => 'Lista de Grupos de Usu�rios',
	'VM_ADMIN_CFG_COOKIE_CHECK' => 'Ative a Checagem de Cookies?',
	'VM_ADMIN_CFG_COOKIE_CHECK_EXPLAIN' => 'Se ativado, o VirtueMart checa se o navegador do cliente aceita cookies ou n�o. Isto � amig�vel ao usu�rio, mas pode ter consequ�ncias negativas sobre o Mecanismo de Pesquisa Amig�vel de sua loja.',
	'VM_CFG_REGISTRATION_TYPE' => 'Tipo de Registro de Usu�rio',
	'VM_CFG_REGISTRATION_TYPE_TIP' => 'Escolha o Tipo de Registro de Usu�rio para sua loja!<br />
<strong>Registro Normal</strong><br />
Este � o tipo de registro padr�o, quando o cliente deve se registrar e escolher um nome de usu�rio e senha<br /><br />
<strong>Registro Silencioso</strong><br />
Registro Silencioso significa que o cliente n�o precisa escolher nome de usu�rio e senha, mas estes s�o criados automaticamente durante o processo de registro e enviados para o endere�o de e-mail fornecido.
<br /><br />
<strong>Registro Opcional</strong><br />
Registro Opcional permite ao cliente escolher se ele/ela pretende criar uma conta ou n�o. Se o cliente quiser criar uma conta, um nome de usu�rio e senha devem ser escolhidos.
<br /><br />
<strong>Nenhum Registro</strong><br />
Os clientes n�o precisam e n�o s�o capazes de se registrarem neste tipo de registro.',
	'VM_CFG_REGISTRATION_TYPE_NORMAL_REGISTRATION' => 'Cria��o de Conta Normal',
	'VM_CFG_REGISTRATION_TYPE_SILENT_REGISTRATION' => 'Cria��o de Conta Silenciosa',
	'VM_CFG_REGISTRATION_TYPE_OPTIONAL_REGISTRATION' => 'Cria��o de Conta Opcional',
	'VM_CFG_REGISTRATION_TYPE_NO_REGISTRATION' => 'Sem Cria��o de Conta',
	'VM_ADMIN_CFG_FEED_CONFIGURATION' => 'Configura��o de Feed (RSS)',
	'VM_ADMIN_CFG_FEED_ENABLE' => 'Ativar Feeds de Produtos (RSS)',
	'VM_ADMIN_CFG_FEED_ENABLE_TIP' => 'Se estiver ativado, os clientes podem inscrever-se em um feed RSS que fornece os mais recentes produtos em sua loja (de tudo ou de uma determinada categoria).',
	'VM_ADMIN_CFG_FEED_CACHE' => 'Configura��o de Cache doFeed',
	'VM_ADMIN_CFG_FEED_CACHE_ENABLE' => 'Ativar Cache?',
	'VM_ADMIN_CFG_FEED_CACHETIME' => 'Tempo do Cache (segundos)',
	'VM_ADMIN_CFG_FEED_CACHE_TIP' => 'O cache acelera a entrega do feed RSS e reduz a carga do servidor, porque o feed RSS � criado apenas uma vez e salvo em um arquivo.',
	'VM_ADMIN_CFG_FEED_SHOWPRICES' => 'Incluir o Pre�o do Produto na descri��o?',
	'VM_ADMIN_CFG_FEED_SHOWPRICES_TIP' => 'Se ativado, o Pre�o Padr�o do Produto ser� adicionado � Descri��o do Produto',
	'VM_ADMIN_CFG_FEED_SHOWDESC' => 'Incluir a Descri��o do Produto?',
	'VM_ADMIN_CFG_FEED_SHOWDESC_TIP' => 'Se ativado, a Descri��o do Produto ser� adicionada ao item do feed RSS',
	'VM_ADMIN_CFG_FEED_SHOWIMAGES' => 'Incluir Imagens no feed RSS?',
	'VM_ADMIN_CFG_FEED_SHOWIMAGES_TIP' => 'Se ativado, as imagens miniatura ser�o inclu�das com o item do feed RSS.',
	'VM_ADMIN_CFG_FEED_DESCRIPTION_TYPE' => 'Tipo de Descri��o de Produto',
	'VM_ADMIN_CFG_FEED_DESCRIPTION_TYPE_TIP' => 'Escolha o tipo de descri��o de produto que ser� inclu�da com o feed RSS.',
	'VM_ADMIN_CFG_FEED_LIMITTEXT' => 'Limitar a Descri��o?',
	'VM_ADMIN_CFG_FEED_MAX_TEXT_LENGTH' => 'Comprimento M�ximo da Descri��o',
	'VM_ADMIN_CFG_MAX_TEXT_LENGTH_TIP' => 'Este � o comprimento m�ximo de descri��o do produto para cada item do feed RSS.',
	'VM_ADMIN_CFG_FEED_TITLE_TIP' => 'T�tulo do Feed RSS (o coringa {storename} cont�m o nome de sua loja)',
	'VM_ADMIN_CFG_FEED_TITLE_CATEGORIES_TIP' => 'T�tulo de uma Categoria de Feed RSS (\'{catname}\' � o coringa para o nome de categoria, {storename} cont�m o nome de sua loja)',
	'VM_ADMIN_CFG_FEED_TITLE' => 'T�tulo do Feed RSS',
	'VM_ADMIN_CFG_FEED_TITLE_CATEGORIES' => 'T�tulo do Feed RSS para Categorias',
	'VM_ADMIN_SECURITY' => 'Seguran�a',
	'VM_ADMIN_SECURITY_SETTINGS' => 'Configura��es de Seguran�a',
	'VM_CFG_ENABLE_FEATURE' => 'Ativar este Recurso',
	'VM_CFG_CHECKOUT_SHOWSTEP_TIP' => 'Aqui voc� pode ativar, desativar e reordenar alguns Passos da Finaliza��o. Voc� pode exibir v�rios Passos uma �nica p�gina, dando-lhes o mesmo N�mero de Passo.',
	'PHPSHOP_ADMIN_CFG_STORE_SHIPPING_METHOD_FLEX' => 'Flex Shipping. Custo fixo de envio para definir valor base do pedido com porcentagem da venda total acima do valor base',
	'PHPSHOP_ADMIN_CFG_STORE_SHIPPING_METHOD_SHIPVALUE' => 'Envio baseado nos totais do pedido. Custos fixos de envio baseados em valores inseridos na configura��o.',
	'VM_CFG_CHECKOUT_SHOWSTEPINCHECKOUT' => 'Mostrar no Passo: %s do Processo de Finaliza��o.',
	'VM_ADMIN_ENCRYPTION_KEY' => 'Chave de Criptografia',
	'VM_ADMIN_ENCRYPTION_KEY_TIP' => 'Usado para armazenar e recuperar com seguran�a dados sens�veis (como informa��es de cart�o de cr�dito) criptografados no banco de dados.',
	'VM_ADMIN_STORE_CREDITCARD_DATA' => 'Armazenar Informa��es de Cart�o de Cr�dito?',
	'VM_ADMIN_STORE_CREDITCARD_DATA_TIP' => 'O VirtueMart armazena as informa��es do cart�o de cr�dito dos clientes criptografadas no banco de dados. Isso � feito mesmo quando as Informa��es do Cart�o de Cr�dito s�o processadas por um servidor externo. <strong>Se voc� n�o precisar processar as Informa��es de Cart�o de Cr�dito manualmente ap�s o pedido ser confirmado, voc� deve desligar esta op��o.</strong>',
	'VM_USERFIELDS_URL_ONLY' => 'Apenas URL',
	'VM_USERFIELDS_HYPERTEXT_URL' => 'Hypertexto e URL',
	'VM_FIELDS_TEXTFIELD' => 'Campo Texto',
	'VM_FIELDS_CHECKBOX_SINGLE' => 'Check Box (Simples)',
	'VM_FIELDS_CHECKBOX_MULTIPLE' => 'Check Box (M�ltiplo)',
	'VM_FIELDS_DATE' => 'Data',
	'VM_FIELDS_DROPDOWN_SINGLE' => 'Drop Down (Sele��o Simples)',
	'VM_FIELDS_DROPDOWN_MULTIPLE' => 'Drop Down (Sele��o M�ltipla)',
	'VM_FIELDS_EMAIL' => 'Endere�o de E-mail',
	'VM_FIELDS_EUVATID' => 'EU VAT ID',
	'VM_FIELDS_EDITORAREA' => 'Editor �rea de Texto',
	'VM_FIELDS_TEXTAREA' => '�rea de Texto',
	'VM_FIELDS_RADIOBUTTON' => 'Bot�o Radio',
	'VM_FIELDS_WEBADDRESS' => 'Endere�o Web',
	'VM_FIELDS_DELIMITER' => '=== Delimitador de campo ===',
	'VM_FIELDS_NEWSLETTER' => 'Inscri��o no Boletim de Not�cias',
	'VM_USERFIELDS_READONLY' => 'Apenas Leitura',
	'VM_USERFIELDS_SIZE' => 'Tamanho do Campo',
	'VM_USERFIELDS_MAXLENGTH' => 'Comprimento M�ximo',
	'VM_USERFIELDS_DESCRIPTION' => 'Descri��o, dica-campo: texto ou HTML',
	'VM_USERFIELDS_COLUMNS' => 'Colunas',
	'VM_USERFIELDS_ROWS' => 'Linhas',
	'VM_USERFIELDS_EUVATID_MOVESHOPPER' => 'Mova o cliente na seguinte compras grupo ap�s valida��o bem sucedida do IVA da UE ID
Mova o cliente no seguinte grupo de cliente ap�s a valida��o bem sucedida do EU VAT ID',
	'VM_USERFIELDS_ADDVALUES_TIP' => 'Use a tabela abaixo para adicionar novos valores.',
	'VM_ADMIN_CFG_DISPLAY' => 'Mostrar',
	'VM_ADMIN_CFG_LAYOUT' => 'Estilo',
	'VM_ADMIN_CFG_THEME_SETTINGS' => 'Configura��es de Tema',
	'VM_ADMIN_CFG_THEME_PARAMETERS' => 'Par�metros',
	'VM_ADMIN_ENCRYPTION_FUNCTION' => 'Fun��o de Criptografia',
	'VM_ADMIN_ENCRYPTION_FUNCTION_TIP' => 'Aqui voc� pode selecionar a fun��o de criptografia usada para criptografar informa��es sens�veis antes de serem armazenadas no banco de dados. AES_ENCRYPT � recomendada, porque � muito segura. ENCODE n�o fornece criptografia real.',
	'SAVE_PERMISSIONS' => 'Salvar Permiss�es',
	'VM_ADMIN_THEME_CFG_NOT_EXISTS' => 'O arquivo de configura��o para este tema n�o existe e n�o pode ser criado. A configura��o n�o � poss�vel',
	'VM_ADMIN_THEME_NOT_EXISTS' => 'O tema "{theme}" n�o existe.',
	'VM_USERFIELDS_ADDVALUE' => 'Adicionar um Valor',
	'VM_USERFIELDS_TITLE' => 'T�tulo',
	'VM_USERFIELDS_VALUE' => 'Valor',
	'VM_USER_FORM_LASTVISIT_NEVER' => 'Nunca',
	'VM_USER_FORM_TAB_GENERALINFO' => 'Informa��es Gerais do Usu�rio',
	'VM_USER_FORM_LEGEND_USERDETAILS' => 'Detalhes do Usu�rio',
	'VM_USER_FORM_LEGEND_PARAMETERS' => 'Par�metros',
	'VM_USER_FORM_LEGEND_CONTACTINFO' => 'Informa��es de Contato',
	'VM_USER_FORM_NAME' => 'Nome',
	'VM_USER_FORM_USERNAME' => 'Nome de usu�rio',
	'VM_USER_FORM_EMAIL' => 'E-mail',
	'VM_USER_FORM_NEWPASSWORD' => 'Nova Senha',
	'VM_USER_FORM_VERIFYPASSWORD' => 'Verificar Senha',
	'VM_USER_FORM_GROUP' => 'Grupo',
	'VM_USER_FORM_BLOCKUSER' => 'Bloquear Usu�rio',
	'VM_USER_FORM_RECEIVESYSTEMEMAILS' => 'Receber E-mails do Sistema',
	'VM_USER_FORM_REGISTERDATE' => 'Data de Registro',
	'VM_USER_FORM_LASTVISITDATE' => 'Data da �ltima Visita',
	'VM_USER_FORM_NOCONTACTDETAILS_1' => 'Nenhum detalhe de contato ligado a este Usu�rio:',
	'VM_USER_FORM_NOCONTACTDETAILS_2' => 'Veja \'Components -> Contact -> Manage Contacts\' para detalhes.',
	'VM_USER_FORM_CONTACTDETAILS_NAME' => 'Nome',
	'VM_USER_FORM_CONTACTDETAILS_POSITION' => 'Posi��o',
	'VM_USER_FORM_CONTACTDETAILS_TELEPHONE' => 'Telefone',
	'VM_USER_FORM_CONTACTDETAILS_FAX' => 'CPF/CNPJ',
	'VM_USER_FORM_CONTACTDETAILS_CHANGEBUTTON' => 'Mudar Detalhes de Contato',
	'VM_ADMIN_CFG_LOGFILE_HEADER' => 'Configura��o do Arquivo de Log',
	'VM_ADMIN_CFG_LOGFILE_ENABLED' => 'Ativar log?',
	'VM_ADMIN_CFG_LOGFILE_ENABLED_EXPLAIN' => 'Se desativado, um log "nulo" ser� instanciado no lugar de modo que o vmFileLogger ainda pode ser invocado sem erros.',
	'VM_ADMIN_CFG_LOGFILE_NAME' => 'Nome do Arquivo de Log',
	'VM_ADMIN_CFG_LOGFILE_NAME_EXPLAIN' => 'Caminho para o Arquivo de Log. Precisa ser acess�vel e grav�vel.',
	'VM_ADMIN_CFG_LOGFILE_LEVEL' => 'N�vel de log',
	'VM_ADMIN_CFG_LOGFILE_LEVEL_EXPLAIN' => 'Mensagens de Log acima deste n�vel de prioridade ser�o ignoradas.',
	'VM_ADMIN_CFG_LOGFILE_LEVEL_TIP' => 'DICA - 8',
	'VM_ADMIN_CFG_LOGFILE_LEVEL_DEBUG' => 'DEPURA��O - 7',
	'VM_ADMIN_CFG_LOGFILE_LEVEL_INFO' => 'INFORMA��O - 6',
	'VM_ADMIN_CFG_LOGFILE_LEVEL_NOTICE' => 'NOTICIA - 5',
	'VM_ADMIN_CFG_LOGFILE_LEVEL_WARNING' => 'ATEN��O - 4',
	'VM_ADMIN_CFG_LOGFILE_LEVEL_ERR' => 'ERRO - 3',
	'VM_ADMIN_CFG_LOGFILE_LEVEL_CRIT' => 'CR�TICO - 2',
	'VM_ADMIN_CFG_LOGFILE_LEVEL_ALERT' => 'ALERTA - 1',
	'VM_ADMIN_CFG_LOGFILE_LEVEL_EMERG' => 'EMERG�NCIA - 0',
	'VM_ADMIN_CFG_LOGFILE_FORMAT' => 'Formato do arquivo de log',
	'VM_ADMIN_CFG_LOGFILE_FORMAT_EXPLAIN' => 'Formato para entradas de linha individuais no arquivo de log.',
	'VM_ADMIN_CFG_LOGFILE_FORMAT_EXPLAIN_EXTRA' => 'Os campos de formata��o do arquivo de log podem incluir algum dos seguintes: %{timestamp} %{ident} [%{priority}] [%{remoteip}] [%{username}] %{message} %{vmsessionid}.',
	'VM_ADMIN_CFG_LOGFILE_ERROR' => 'N�o � poss�vel criar ou acessar o arquivo de log. Por favor contate o administrador do sistema ou website.',
	'VM_ADMIN_CFG_DEBUG_MODE_ENABLED' => 'Ativar modo de DEPURA��O?',
	'VM_ADMIN_CFG_DEBUG_IP_ENABLED' => 'Limitar pelo endere�o IP?',
	'VM_ADMIN_CFG_DEBUG_IP_ENABLED_EXPLAIN' => 'Limitar sa�da de depura��o a um endere�o IP de cliente espec�fico?',
	'VM_ADMIN_CFG_DEBUG_IP_ADDRESS' => 'Endere�o IP de cliente',
	'VM_ADMIN_CFG_DEBUG_IP_ADDRESS_EXPLAIN' => 'Se voc� ativar esta op��o e entrar um endere�o IP aqui, ent�o a sa�da de depura��o ser� ativada APENAS para este endere�o IP de cliente. Outros clientes n�o ver�o a sa�da de depura��o.',
	'VM_FIELDMANAGER_SHOW_ON_SHIPPING' => 'Exibir no formul�rio de envio',
	'VM_USER_NOSHIPPINGADDR' => 'Sem endere�os de envio.',
	'VM_UPDATE_CHECK_LBL' => 'Verificar Atualiza��o do VirtueMart',
	'VM_UPDATE_CHECK_VERSION_INSTALLED' => 'Vers�o do VirtueMart instalada aqui',
	'VM_UPDATE_CHECK_LATEST_VERSION' => '�ltima Vers�o do VirtueMart',
	'VM_UPDATE_CHECK_CHECKNOW' => 'Verifique agora!',
	'VM_UPDATE_CHECK_DLUPDATE' => 'Baixar Atualiza��o',
	'VM_UPDATE_CHECK_CHECKING' => 'Verificando...',
	'VM_UPDATE_CHECK_CHECK' => 'Verifique',
	'VM_UPDATE_NOTDOWNLOADED' => 'O Pacote de Atualiza��o n�o p�de ser baixado.',
	'VM_UPDATE_PREVIEW_LBL' => 'Pre-visualizar Atualiza��o do VirtueMart',
	'VM_UPDATE_WARNING_TITLE' => 'Aviso Geral',
	'VM_UPDATE_WARNING_TEXT' => 'Instalando uma Atualiza��o para VirtueMart usando um Pacote de Atualiza��o pode causar danos em seu site se voc� j� modificou alguns arquivos do componente VirtueMart. O Processo de Corre��o ir� sobrescrever todos os arquivos listados abaixo - ele n�o aplicar� apenas pequenas mudan�as (diff), mas substituir� o arquivo existente pelo novo. Se voc� tiver modificado arquivos do VirtueMart por si pr�prio, isto pode levar � arquivos inconsistentes e depend�ncias desaparecidas em classes / fun��es.',
	'VM_UPDATE_PATCH_DETAILS' => 'Detalhes da Corre��o',
	'VM_UPDATE_PATCH_DESCRIPTION' => 'Descri��o',
	'VM_UPDATE_PATCH_DATE' => 'Data de Libera��o',
	'VM_UPDATE_PATCH_FILESTOUPDATE' => 'Arquivos a serem atualizados',
	'VM_UPDATE_PATCH_STATUS' => 'Situa��o',
	'VM_UPDATE_PATCH_WRITABLE' => 'Grav�vel',
	'VM_UPDATE_PATCH_UNWRITABLE' => 'Arquivo/Diret�rio n�o grav�vel',
	'VM_UPDATE_PATCH_QUERYTOEXEC' => 'Consultas a serem executadas no Banco de Dados',
	'VM_UPDATE_PATCH_CONFIRM_TEXT' => 'Eu li o <a href="#warning">Aten��o</a> e tenho certeza de aplicar o Pacote de Corre��o � minha Instala��o do VirtueMart agora.',
	'VM_UPDATE_PATCH_APPLY' => 'Aplicar Corre��o agora',
	'VM_UPDATE_PATCH_ERR_UNWRITABLE' => 'Nem todos os arquivos/diret�rios que precisam ser atualizados s�o grav�veis. Por favor corrija as permiss�es primeiro.',
	'VM_UPDATE_PATCH_PLEASEMARK' => 'Por favor marque a caixa antes de aplicar a Corre��o.',
	'VM_UPDATE_RESULT_TITLE' => 'Vers�o Atualmente Instalada',
	'VM_FIELDS_CAPTCHA' => 'Campo de Captcha (usando com_securityimages)',
	'VM_FIELDS_AGEVERIFICATION' => 'Verifica��o de Idade (Campos de Sele��o de Data)',
	'VM_FIELDS_AGEVERIFICATION_MINIMUM' => 'Especificar a Idade m�nima'
); $VM_LANG->initModule( 'admin', $langvars );
?>