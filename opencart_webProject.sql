-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26-Jan-2017 às 11:22
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opencedison`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Gcokm3k70tJPeWyhwlhbaxwBoxg3K6PJLE3Xch6pKMWnCWnVT3sZrIE5Y6qdJnAI', '', '', 'JEAhJkKvVBcYcuUhsjvvz1OMBcrZArnfAa9Ft9QOZOZgve3FAmre07R0gVlttIIQsK1ALwPEVyPC5mVBJDfltaL23mXbV7gXTRlSf5GRJv758HpUL0LFfR8RIQBfzIw2wvN7sdz10GhL3A1AFBt6IfnDQRh7Lr4uHmsAwXazZyAzrP5E2jKKoGKMQp6wao49V1Faup3K03VzW22fgecvCEktIbN8g7xladTNjTP2JViN43qTDxouTZ2n3kWifoil', 1, '2017-01-19 11:47:28', '2017-01-19 11:47:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', 'a:5:{s:4:"name";s:17:"Banner - Category";s:9:"banner_id";s:1:"6";s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:6:"status";s:1:"1";}'),
(29, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(28, 'Home Page', 'featured', 'a:6:{s:4:"name";s:20:"Featured - Home Page";s:7:"product";a:4:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"42";i:3;s:2:"30";}s:5:"limit";s:1:"4";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(27, 'Home Page', 'slideshow', 'a:5:{s:4:"name";s:21:"Slideshow - Home Page";s:9:"banner_id";s:1:"7";s:5:"width";s:4:"1140";s:6:"height";s:3:"380";s:6:"status";s:1:"1";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_ocorrencia`
--

CREATE TABLE `oc_ocorrencia` (
  `idOcorrencia` int(11) NOT NULL,
  `idUsuario_Autor` int(11) NOT NULL,
  `idOcorrencia_Anterior` int(11) DEFAULT NULL,
  `idTarefa` int(11) DEFAULT NULL,
  `severidade` int(11) NOT NULL,
  `ocorrencia` text NOT NULL,
  `descricao` text NOT NULL,
  `idTipoOcorrencia` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `lancamento` datetime NOT NULL,
  `idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Interessados na conclusão da tarefa';

--
-- Extraindo dados da tabela `oc_ocorrencia`
--

INSERT INTO `oc_ocorrencia` (`idOcorrencia`, `idUsuario_Autor`, `idOcorrencia_Anterior`, `idTarefa`, `severidade`, `ocorrencia`, `descricao`, `idTipoOcorrencia`, `status`, `lancamento`, `idProduto`) VALUES
(11, 1, NULL, NULL, 0, 'teste', '<p>teste</p>', NULL, 0, '2017-01-09 08:25:45', 1),
(12, 5, NULL, NULL, 0, 'Mensagem de erro: " ''0.0'' is not a valid timestamp - Ao gerar relatório personalizado de produtos."', '<p>Verificar campos com valores negativos ou muito altos na tabela produtos. (Fazer um update para setar 0, nos valores de reducaopro negativo e outro update para setar cargatribpro=aliquotapro quando carga for maior que aliquota.)</p>', NULL, 0, '2017-01-10 08:17:44', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(267, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(266, 0, 'config', 'config_shared', '0', 0),
(265, 0, 'config', 'config_secure', '0', 0),
(264, 0, 'config', 'config_fraud_status_id', '7', 0),
(263, 0, 'config', 'config_fraud_score', '', 0),
(262, 0, 'config', 'config_fraud_key', '', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(261, 0, 'config', 'config_fraud_detection', '0', 0),
(260, 0, 'config', 'config_mail_alert', '', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(259, 0, 'config', 'config_mail', 'a:7:{s:8:"protocol";s:4:"mail";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:0:"";s:13:"smtp_username";s:0:"";s:13:"smtp_password";s:0:"";s:9:"smtp_port";s:0:"";s:12:"smtp_timeout";s:0:"";}', 1),
(258, 0, 'config', 'config_ftp_status', '0', 0),
(257, 0, 'config', 'config_ftp_root', '', 0),
(256, 0, 'config', 'config_ftp_password', '', 0),
(255, 0, 'config', 'config_ftp_username', '', 0),
(254, 0, 'config', 'config_ftp_port', '21', 0),
(253, 0, 'config', 'config_ftp_hostname', '', 0),
(252, 0, 'config', 'config_image_location_height', '50', 0),
(251, 0, 'config', 'config_image_location_width', '268', 0),
(250, 0, 'config', 'config_image_cart_height', '47', 0),
(249, 0, 'config', 'config_image_cart_width', '47', 0),
(248, 0, 'config', 'config_image_wishlist_height', '47', 0),
(181, 0, 'config', 'config_meta_title', 'Your Store', 0),
(182, 0, 'config', 'config_meta_description', 'My Store', 0),
(183, 0, 'config', 'config_meta_keyword', '', 0),
(184, 0, 'config', 'config_template', 'default', 0),
(185, 0, 'config', 'config_layout_id', '4', 0),
(186, 0, 'config', 'config_country_id', '222', 0),
(187, 0, 'config', 'config_zone_id', '3563', 0),
(188, 0, 'config', 'config_language', 'en', 0),
(189, 0, 'config', 'config_admin_language', 'en', 0),
(190, 0, 'config', 'config_currency', 'USD', 0),
(191, 0, 'config', 'config_currency_auto', '1', 0),
(192, 0, 'config', 'config_length_class_id', '1', 0),
(193, 0, 'config', 'config_weight_class_id', '1', 0),
(194, 0, 'config', 'config_product_count', '1', 0),
(195, 0, 'config', 'config_product_limit', '15', 0),
(196, 0, 'config', 'config_product_description_length', '100', 0),
(197, 0, 'config', 'config_limit_admin', '20', 0),
(198, 0, 'config', 'config_review_status', '1', 0),
(199, 0, 'config', 'config_review_guest', '1', 0),
(200, 0, 'config', 'config_review_mail', '0', 0),
(201, 0, 'config', 'config_voucher_min', '1', 0),
(202, 0, 'config', 'config_voucher_max', '1000', 0),
(203, 0, 'config', 'config_tax', '1', 0),
(204, 0, 'config', 'config_tax_default', 'shipping', 0),
(205, 0, 'config', 'config_tax_customer', 'shipping', 0),
(206, 0, 'config', 'config_customer_online', '0', 0),
(207, 0, 'config', 'config_customer_group_id', '1', 0),
(208, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(209, 0, 'config', 'config_customer_price', '0', 0),
(210, 0, 'config', 'config_account_id', '3', 0),
(211, 0, 'config', 'config_account_mail', '0', 0),
(212, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(283, 0, 'config', 'config_api_id', '1', 0),
(214, 0, 'config', 'config_cart_weight', '1', 0),
(215, 0, 'config', 'config_checkout_guest', '1', 0),
(216, 0, 'config', 'config_checkout_id', '5', 0),
(217, 0, 'config', 'config_order_status_id', '1', 0),
(218, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(219, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(220, 0, 'config', 'config_order_mail', '0', 0),
(221, 0, 'config', 'config_stock_display', '0', 0),
(222, 0, 'config', 'config_stock_warning', '0', 0),
(223, 0, 'config', 'config_stock_checkout', '0', 0),
(224, 0, 'config', 'config_affiliate_approval', '0', 0),
(225, 0, 'config', 'config_affiliate_auto', '0', 0),
(226, 0, 'config', 'config_affiliate_commission', '5', 0),
(227, 0, 'config', 'config_affiliate_id', '4', 0),
(228, 0, 'config', 'config_affiliate_mail', '0', 0),
(229, 0, 'config', 'config_return_id', '0', 0),
(230, 0, 'config', 'config_return_status_id', '2', 0),
(231, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(232, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(233, 0, 'config', 'config_image_category_width', '80', 0),
(234, 0, 'config', 'config_image_category_height', '80', 0),
(235, 0, 'config', 'config_image_thumb_width', '228', 0),
(236, 0, 'config', 'config_image_thumb_height', '228', 0),
(237, 0, 'config', 'config_image_popup_width', '500', 0),
(238, 0, 'config', 'config_image_popup_height', '500', 0),
(239, 0, 'config', 'config_image_product_width', '228', 0),
(240, 0, 'config', 'config_image_product_height', '228', 0),
(241, 0, 'config', 'config_image_additional_width', '74', 0),
(242, 0, 'config', 'config_image_additional_height', '74', 0),
(243, 0, 'config', 'config_image_related_width', '80', 0),
(244, 0, 'config', 'config_image_related_height', '80', 0),
(245, 0, 'config', 'config_image_compare_width', '90', 0),
(246, 0, 'config', 'config_image_compare_height', '90', 0),
(247, 0, 'config', 'config_image_wishlist_width', '47', 0),
(180, 0, 'config', 'config_comment', '', 0),
(179, 0, 'config', 'config_open', '', 0),
(178, 0, 'config', 'config_image', '', 0),
(177, 0, 'config', 'config_fax', '', 0),
(176, 0, 'config', 'config_telephone', '123456789', 0),
(280, 0, 'config', 'config_email', 'fabricio@sws.inf.br', 0),
(174, 0, 'config', 'config_geocode', '', 0),
(172, 0, 'config', 'config_owner', 'Your Name', 0),
(173, 0, 'config', 'config_address', 'Address 1', 0),
(171, 0, 'config', 'config_name', 'Your Store', 0),
(268, 0, 'config', 'config_seo_url', '0', 0),
(269, 0, 'config', 'config_file_max_size', '300000', 0),
(270, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(271, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(272, 0, 'config', 'config_maintenance', '0', 0),
(273, 0, 'config', 'config_password', '1', 0),
(282, 0, 'config', 'config_encryption', '82e8928a55d1098123a0f05b2078a0a6', 0),
(275, 0, 'config', 'config_compression', '0', 0),
(276, 0, 'config', 'config_error_display', '1', 0),
(277, 0, 'config', 'config_error_log', '1', 0),
(278, 0, 'config', 'config_error_filename', 'error.log', 0),
(279, 0, 'config', 'config_google_analytics', '', 0),
(281, 0, 'config', 'config_url', 'http://localhost/opencedison/', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(824, 'product_id=48', 'ipod-classic'),
(836, 'category_id=20', 'desktops'),
(834, 'category_id=26', 'pc'),
(835, 'category_id=27', 'mac'),
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(768, 'product_id=42', 'test'),
(789, 'category_id=34', 'mp3-players'),
(781, 'category_id=36', 'test2'),
(774, 'category_id=18', 'laptop-notebook'),
(775, 'category_id=46', 'macs'),
(776, 'category_id=45', 'windows'),
(777, 'category_id=25', 'component'),
(778, 'category_id=29', 'mouse'),
(779, 'category_id=28', 'monitor'),
(780, 'category_id=35', 'test1'),
(782, 'category_id=30', 'printer'),
(783, 'category_id=31', 'scanner'),
(784, 'category_id=32', 'web-camera'),
(785, 'category_id=57', 'tablet'),
(786, 'category_id=17', 'software'),
(787, 'category_id=24', 'smartphone'),
(788, 'category_id=33', 'camera'),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(803, 'category_id=38', 'test4'),
(804, 'category_id=37', 'test5'),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(807, 'category_id=41', 'test8'),
(808, 'category_id=42', 'test9'),
(809, 'product_id=30', 'canon-eos-5d'),
(840, 'product_id=47', 'hp-lp3065'),
(811, 'product_id=28', 'htc-touch-hd'),
(812, 'product_id=43', 'macbook'),
(813, 'product_id=44', 'macbook-air'),
(814, 'product_id=45', 'macbook-pro'),
(816, 'product_id=31', 'nikon-d300'),
(817, 'product_id=29', 'palm-treo-pro'),
(818, 'product_id=35', 'product-8'),
(819, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 'product_id=46', 'sony-vaio'),
(837, 'product_id=41', 'imac'),
(823, 'product_id=40', 'iphone'),
(825, 'product_id=36', 'ipod-nano'),
(826, 'product_id=34', 'ipod-shuffle'),
(827, 'product_id=32', 'ipod-touch'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '697dec6e2b54ca2ee18adc2c0e48d690c08d2e07', '7ad0f115b', 'John', 'Doe', 'fabricio@sws.inf.br', '', '', '::1', 1, '2017-01-19 11:47:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:"access";a:11:{i:0;s:18:"common/column_left";i:1;s:18:"common/filemanager";i:2;s:11:"common/menu";i:3;s:14:"common/profile";i:4;s:21:"ocorrencia/ocorrencia";i:5;s:11:"tool/backup";i:6;s:14:"tool/error_log";i:7;s:11:"tool/upload";i:8;s:8:"user/api";i:9;s:9:"user/user";i:10;s:20:"user/user_permission";}s:6:"modify";a:11:{i:0;s:18:"common/column_left";i:1;s:18:"common/filemanager";i:2;s:11:"common/menu";i:3;s:14:"common/profile";i:4;s:21:"ocorrencia/ocorrencia";i:5;s:11:"tool/backup";i:6;s:14:"tool/error_log";i:7;s:11:"tool/upload";i:8;s:8:"user/api";i:9;s:9:"user/user";i:10;s:20:"user/user_permission";}}'),
(10, 'Demonstration', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=844;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
