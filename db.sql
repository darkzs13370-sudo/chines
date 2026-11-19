-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 25/10/2025 às 14:04
-- Versão do servidor: 10.11.10-MariaDB-log
-- Versão do PHP: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sadfasd322`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `email` text NOT NULL,
  `contato` text DEFAULT NULL,
  `senha` text NOT NULL,
  `nivel` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `token_recover` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `2fa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `admin_users`
--

INSERT INTO `admin_users` (`id`, `nome`, `email`, `contato`, `senha`, `nivel`, `status`, `token_recover`, `avatar`, `2fa`) VALUES
(1, 'admin', 'admin@gmail.com', '', '$2a$12$8wguLjR6BjH1O8rGXln0Ku6N6.Lvl7cSiJBHQOcv7b6BQmT/DB5Na', 0, 1, NULL, '', '123123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `afiliados_config`
--

CREATE TABLE `afiliados_config` (
  `id` int(11) NOT NULL,
  `cpaLvl1` decimal(10,2) DEFAULT NULL,
  `cpaLvl2` decimal(10,2) DEFAULT NULL,
  `cpaLvl3` decimal(10,2) DEFAULT NULL,
  `chanceCpa` int(11) NOT NULL,
  `revShareFalso` decimal(5,2) DEFAULT NULL,
  `revShareLvl1` decimal(5,2) DEFAULT NULL,
  `revShareLvl2` decimal(5,2) DEFAULT NULL,
  `revShareLvl3` decimal(5,2) DEFAULT NULL,
  `minDepForCpa` decimal(10,2) DEFAULT NULL,
  `minResgate` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `afiliados_config`
--

INSERT INTO `afiliados_config` (`id`, `cpaLvl1`, `cpaLvl2`, `cpaLvl3`, `chanceCpa`, `revShareFalso`, `revShareLvl1`, `revShareLvl2`, `revShareLvl3`, `minDepForCpa`, `minResgate`) VALUES
(1, 0.00, 0.00, 0.00, 20, 0.00, 0.00, 0.00, 0.00, 10.00, 100.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `apipragmatic`
--

CREATE TABLE `apipragmatic` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `agent_secret` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `apipragmatic`
--

INSERT INTO `apipragmatic` (`id`, `url`, `agent_code`, `agent_token`, `agent_secret`, `ativo`) VALUES
(1, 'https://api.supremabet.online', 'china23', 'f2e678c417c9f5de60f06f37fad73588', '49cab6f89cb237b6ea1dd9ab41cdf619', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `criado_em`, `img`, `status`) VALUES
(1, 'Banner 1', '2024-06-28 18:10:47', '1758083572_papagaiocarroseulapp.png', 1),
(2, 'Banner 2', '2024-06-28 18:08:02', '1756349358_papagaiocarroseulvip.png', 1),
(3, 'Banner 3', '2024-06-28 18:08:02', '1756349367_papagaiocarrousel1.png', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bau`
--

CREATE TABLE `bau` (
  `id` int(11) NOT NULL,
  `num` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `is_get` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `bau`
--

INSERT INTO `bau` (`id`, `num`, `status`, `token`, `is_get`) VALUES
(1, '', 'user novo', '95507a36ef35376a5d5d75934fa243bb', 0),
(2, '', 'user novo', 'b0e2fcf0c98e27bcbfec3ab8ae5f4926', 0),
(3, '', 'user novo', 'e51ac50d38343188e966c46e0eca755b', 0),
(4, '', 'user novo', '426ac8cfb146b9d14aa26fef02aab0ad', 0),
(5, '', 'user novo', 'b01cca8789eeab538beaa5d35f13b188', 0),
(6, '', 'user novo', '1a3e10a0c9413e5a732306933ab63b8f', 0),
(7, '', 'user novo', '52edd90658b88748a2b7c25d3a48a0bc', 0),
(8, '', 'user novo', 'b06c2cd0546b8f41e0a50660466c4abd', 0),
(9, '', 'user novo', '2c6e85761295430566f21329ecd14acb', 0),
(10, '', 'user novo', '0228a92079c2d6b5e6f4b31f14e42662', 0),
(11, '', 'user novo', '8c9d806a4e4ba181cda806bdd702980e', 0),
(12, '', 'user novo', '303f2860141313916f6007e68711d5c3', 0),
(13, '', 'user novo', '9c17bff7d17a496389dd704ab9369829', 0),
(14, '', 'user novo', 'be8f922b080fd9e586756b4793291f67', 0),
(15, '', 'user novo', '2b3e7675643ba3aef2b65eb507539535', 0),
(16, '', 'user novo', '383f8a6fa19255c802db762ee1b74210', 0),
(17, '', 'user novo', 'edea35a0d96208c2866081f5028a71ee', 0),
(18, '', 'user novo', '0d399d5c40a7bb9ffe1a3d4ffca20ccd', 0),
(19, '', 'user novo', '7aa9ac528a6f746c8831c721a117ec65', 0),
(20, '', 'user novo', '2515c02023194797c728878d588cf6c0', 0),
(21, '', 'user novo', '1cd00ac26ba437b178f385007ec4b489', 0),
(22, '', 'user novo', 'a1e8e189b73813070ce6c877a3dcd835', 0),
(23, '', 'user novo', 'ea1812f8e4d62f074bb24bb9f6c9030a', 0),
(24, '', 'user novo', '79f88a5a9cb3822f4d85d897aa59abdd', 0),
(25, '', 'user novo', '892ff6d691d967915c60d5c1c252457a', 0),
(26, '', 'user novo', '28d9a4faf1bda14631c3fd3a3fe88955', 0),
(27, '', 'user novo', 'fde90beed0e03b89304c35dbfa61341b', 0),
(28, '', 'user novo', '972c9aba4cce85398270a911adab5fb9', 0),
(29, '', 'user novo', '8594ffec3b24435039d884ab6e2a7f9b', 0),
(30, '', 'user novo', '93433374daa65a37049928f37050b97f', 0),
(31, '', 'user novo', 'b25ba27506a091d3e4835e49cc516707', 0),
(32, '', 'user novo', '0906caeb33c3b29bc4a4eca9a5a0c8cd', 0),
(33, '', 'user novo', '0448cdf051784a6e58c4121fd3cc3de1', 0),
(34, '', 'user novo', 'd4b1b38ef582df08ec7820a7b82218b2', 0),
(35, '', 'user novo', '6414e9ba7acfaa0d4634eb7a13f9acd6', 0),
(36, '', 'user novo', '77e824f49e1db7baf96d11ccb975ae3c', 0),
(37, '', 'user novo', '583e57ee9ac5efef402a8204d93e02b1', 0),
(38, '', 'user novo', 'a1e90b96b82540b4e86c63c20e22e219', 0),
(39, '', 'user novo', 'a8edfe87c42e4022a03a613d63b1031d', 0),
(40, '', 'user novo', 'c2a8fafb788d365c959809e0b5bea27e', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `beeplay`
--

CREATE TABLE `beeplay` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL,
  `rtp` int(11) NOT NULL DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `codexpay`
--

CREATE TABLE `codexpay` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `codexpay`
--

INSERT INTO `codexpay` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(1, '', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nome_site` text DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `grupoplataforma` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `telegram` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `suporte` text DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sublogo` text DEFAULT NULL,
  `facebookads` text DEFAULT NULL,
  `rodapelogo` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `logoapp` text DEFAULT NULL,
  `loader_image` varchar(255) DEFAULT NULL,
  `loader_enabled` tinyint(1) DEFAULT 1,
  `googleAnalytics` text DEFAULT NULL,
  `minplay` int(11) DEFAULT NULL,
  `minsaque` double DEFAULT NULL,
  `maxsaque` int(11) DEFAULT 1000,
  `saque_automatico` int(11) NOT NULL,
  `rollover` int(11) DEFAULT NULL,
  `mindep` text DEFAULT NULL,
  `jackpot` int(11) DEFAULT NULL,
  `numero_jackpot` int(11) DEFAULT NULL,
  `jackpot_custom` text DEFAULT NULL,
  `cor_padrao` varchar(45) NOT NULL,
  `background_padrao` varchar(50) DEFAULT NULL,
  `custom_css` longtext NOT NULL,
  `texto` varchar(45) NOT NULL,
  `img_seo` text DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `marquee` text DEFAULT NULL,
  `status_topheader` int(11) NOT NULL DEFAULT 0,
  `cor_topheader` varchar(48) DEFAULT '#ed1c24',
  `niveisbau` text DEFAULT NULL,
  `qntsbaus` int(11) DEFAULT NULL,
  `nvlbau` int(11) DEFAULT NULL,
  `pessoasbau` int(11) DEFAULT NULL,
  `tema` int(11) DEFAULT NULL,
  `versao_app_android` text DEFAULT NULL,
  `versao_app_ios` text DEFAULT NULL,
  `mensagem_app` text DEFAULT NULL,
  `link_app_android` text DEFAULT NULL,
  `link_app_ios` text DEFAULT NULL,
  `broadcast` text DEFAULT NULL,
  `mostrar_barra_topo` tinyint(1) NOT NULL DEFAULT 0,
  `mostrar_barra_inferior` tinyint(1) NOT NULL DEFAULT 0,
  `mostrar_modal_download` tinyint(1) NOT NULL DEFAULT 1,
  `suporte_url` varchar(255) NOT NULL DEFAULT '',
  `lvl1_percentage` int(11) NOT NULL DEFAULT 0,
  `lvl2_percentage` int(11) NOT NULL DEFAULT 0,
  `lvl3_percentage` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `nome_site`, `descricao`, `grupoplataforma`, `logo`, `avatar`, `telegram`, `instagram`, `whatsapp`, `suporte`, `email`, `sublogo`, `facebookads`, `rodapelogo`, `favicon`, `logoapp`, `loader_image`, `loader_enabled`, `googleAnalytics`, `minplay`, `minsaque`, `maxsaque`, `saque_automatico`, `rollover`, `mindep`, `jackpot`, `numero_jackpot`, `jackpot_custom`, `cor_padrao`, `background_padrao`, `custom_css`, `texto`, `img_seo`, `keyword`, `marquee`, `status_topheader`, `cor_topheader`, `niveisbau`, `qntsbaus`, `nvlbau`, `pessoasbau`, `tema`, `versao_app_android`, `versao_app_ios`, `mensagem_app`, `link_app_android`, `link_app_ios`, `broadcast`, `mostrar_barra_topo`, `mostrar_barra_inferior`, `mostrar_modal_download`, `suporte_url`, `lvl1_percentage`, `lvl2_percentage`, `lvl3_percentage`) VALUES
(1, 'admin', '', 'Aumente seu nível jogando na melhor! Os melhores jogos estão aqui!', 'admin', 'logo_1761197116.png', 'favicon.png.webp', '', '', '', NULL, '', '', 'Insira o ID', NULL, 'favicon_1761197116.png', 'logoapp_1761197116.png', 'loader_1761197116.png', 1, 'Insira o ID', 1, 1, 2000, 10, 0, '5,25,50,80,100,150,300,500,1000', 5, 5, NULL, '#0096DD', '#010e24', '', '', '154504365733.png', 'Cassino, plataforma chinesa, casa pagante', 'Bem-vindo, Mega Sorteio de Membros: 254732 ganhar 2956BRL, 942048 ganhar 6590BRL, 224782 ganhar 50081BRL, 148295 ganhar 2320BRL, 592841 ganhar 9922BRL, 783323 ganhar 2880BRL, 352708 ganhar 5239BRL, 109803 ganhar 6288BRL, 820682 ganhar 3220BRL, 592444 ganhar 1530BRL. Espero que você seja o próximo ganhador e boa sorte!', 0, '#0096dd', '10', 100, 5, 1, 28, '2.2', '2.0.1', 'Baixar App', 'https://chinav2.expfygaming.online/', 'https://chinav2.expfygaming.online/', 'expfygaming', 0, 0, 0, 'https://jivo.chat/admin', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cupom`
--

CREATE TABLE `cupom` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `tipo` int(11) NOT NULL DEFAULT 2,
  `valor` int(11) NOT NULL,
  `qtd` int(11) NOT NULL DEFAULT 0,
  `qtd_insert` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cupom`
--

INSERT INTO `cupom` (`id`, `nome`, `tipo`, `valor`, `qtd`, `qtd_insert`, `status`) VALUES
(1, 'Bônus de Depósito', 2, 1, 100, 15, 0),
(2, 'Bônus de Depósito 2x', 2, 30, 5, 15, 0),
(3, 'Bônus de Depósito 3x', 2, 40, 5, 20, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cupom_usados`
--

CREATE TABLE `cupom_usados` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cupom` int(11) NOT NULL,
  `valor` int(11) NOT NULL DEFAULT 0,
  `data_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `financeiro`
--

CREATE TABLE `financeiro` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `bonus` decimal(10,2) DEFAULT NULL,
  `saldo_afiliados` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fiverscan`
--

CREATE TABLE `fiverscan` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `fiverscan`
--

INSERT INTO `fiverscan` (`id`, `url`, `agent_code`, `agent_token`, `ativo`) VALUES
(1, 'https://api.playfivers.com', '28fd0b9c-7004-46fd-8922-cebc96827215', 'efd02bfb-c25f-4631-a9aa-193d7daa342e', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `floats`
--

CREATE TABLE `floats` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `floats`
--

INSERT INTO `floats` (`id`, `titulo`, `criado_em`, `img`, `status`) VALUES
(1, 'Float 1', '2024-06-28 18:10:47', 'float1.png', 1),
(2, 'Float 2', '2024-06-28 18:08:02', 'float2.gif', 1),
(3, 'Float 3', '2024-06-28 18:08:02', 'float3.gif', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `game_code` text NOT NULL,
  `game_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `provider` text DEFAULT NULL,
  `popular` int(11) NOT NULL DEFAULT 0,
  `type` text DEFAULT NULL,
  `game_type` int(11) DEFAULT NULL,
  `distribution` varchar(255) DEFAULT 'Clone'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`, `popular`, `type`, `game_type`, `distribution`) VALUES
(1, 'scratch_1', 'R$1', 'https://igamewin.com/images/raspadinha/1/20850_pic.avif', 1, 'ORIGINAL', 1, 'slot', 0, 'igamewin'),
(4, '126', 'Fortune Tiger', '/uploads/igamewin/fortune-tiger.avif', 1, 'PGSOFT', 1, 'slot', 3, 'kingsslots'),
(5, 'fortune-snake', 'Fortune Snake', '/uploads/igamewin/fortune-snake.avif', 1, 'PGSOFT', 1, 'slot', 0, 'kingsslots'),
(6, 'fortune-ox', 'Fortune Ox', '/uploads/igamewin/fortune-ox.avif', 1, 'PGSOFT', 1, 'slot', 3, 'kingsslots'),
(7, 'fortune-dragon', 'Fortune Dragon', '/uploads/igamewin/fortune-dragon.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(8, 'graffiti-rush', 'Graffiti Rush', '/uploads/igamewin/graffiti-rush.jpg', 1, 'PGSOFT', 1, 'slot', 0, 'igamewin'),
(9, 'mr-treas-fort', 'Mr. Treasure\'s Fortune', '/uploads/igamewin/mr-treasure.jpg', 1, 'PGSOFT', 1, 'slot', 0, 'igamewin'),
(10, 'wild-ape-3258', 'Wild Ape #3258', '/uploads/igamewin/wild-ape.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(11, 'incan-wonders', 'Incan Wonders', '/uploads/igamewin/incan-wonders.jpg', 1, 'PGSOFT', 1, 'slot', 0, 'igamewin'),
(12, 'vs20fruitsw', 'Sweet Bonanza', 'https://igamewin.com/storage/igamewin/177.webp', 1, 'PRAGMATIC', 1, 'slot', 0, 'igamewin'),
(13, 'ganesha-gold', 'Ganesha Gold', '/uploads/igamewin/ganesha-gold.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(14, 'fortune-rabbit', 'Fortune Rabbit', '/uploads/igamewin/fortune-rabbit.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(15, 'cash-mania', 'Cash Mania', '/uploads/igamewin/cash-mania.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(16, 'fortune-mouse', 'Fortune Mouse', '/uploads/igamewin/fortune-mouse.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(17, 'dragon-hatch2', 'Dragon Hatch 2', '/uploads/igamewin/dragon-hatch-2.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(18, 'piggy-gold', 'Piggy Gold', '/uploads/igamewin/piggy-gold.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(19, 'wild-bandito', 'Wild Bandito', '/uploads/igamewin/wild-bandito.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(20, 'jewels-prosper', 'Jewels of Prosperity', '/uploads/igamewin/jewels.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(21, 'double-fortune', 'Double Fortune', '/uploads/igamewin/double-fortune.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(22, 'captains-bounty', 'Captain’s Bounty', '/uploads/igamewin/captain-bounty.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(23, 'gem-saviour', 'Gem Saviour', '/uploads/igamewin/gem-conquest.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(24, 'rio-fantasia', 'Rio Fantasia', '/uploads/igamewin/rio-fantasia.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(25, 'oishi-delights', 'Oishi Delights', '/uploads/igamewin/oishi.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(26, 'wings-iguazu', 'Wings of Iguazu', '/uploads/igamewin/wings.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(27, 'mahjong-ways', 'Mahjong Ways', '/uploads/igamewin/mahjong.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(28, '39', 'Three Crazy Piggies', '/uploads/igamewin/3porquinhos.avif', 1, 'PGSOFT', 1, 'slot', 3, 'Clone'),
(29, 'anubis-wrath', 'Anubis Wrath', '/uploads/igamewin/anubis.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(30, 'gemstones-gold', 'Gemstones Gold', '/uploads/igamewin/gemstones.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(31, 'futebol-fever', 'Futebol Fever', '/uploads/igamewin/futebol-fever.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(32, 'hip-hop-panda', 'Chicky Run', '/uploads/igamewin/chikcy-run.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(33, 'the-great-icescape', 'The Great Icescape', '/uploads/igamewin/icescape.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(34, 'emoji-riches', 'Emoji Riches', '/uploads/igamewin/emoji.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(35, 'bikini-paradise', 'Bikini Paradise', '/uploads/igamewin/bikini-paradise.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(36, 'ganesha-fortune', 'Ganesha Fortune', '/uploads/igamewin/ganesha-fortune.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(37, 'dreams-of-macau', 'Dreams of Macau', '/uploads/igamewin/dreams-of-macau.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(38, 'jungle-delight', 'Jungle Delight', '/uploads/igamewin/jungle-delight.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(39, 'phoenix-rises', 'Phoenix Rises', '/uploads/igamewin/phoenix-rises.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(40, 'wild-fireworks', 'Wild Fireworks', '/uploads/igamewin/wild-fireworks.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(41, 'lucky-neko', 'Lucky Neko', '/uploads/igamewin/lucky-neko.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(42, 'sct-cleopatra', 'Secrets of Cleopatra', '/uploads/igamewin/sct-cleopatra.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(43, 'gdn-ice-fire', 'Guardians of Ice & Fire', '/uploads/igamewin/gdn-ice-fire.avif', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(44, 'alchemy-gold', 'Alchemy Gold', 'https://igamewin.com/storage/igamewin/157.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(45, 'bali-vacation', 'Bali Vacation', 'https://igamewin.com/storage/igamewin/81.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(46, 'battleground', 'Battleground Royale', 'https://igamewin.com/storage/igamewin/41.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(47, 'buffalo-win', 'Buffalo Win', 'https://igamewin.com/storage/igamewin/88.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(48, 'btrfly-blossom', 'Butterfly Blossom', 'https://igamewin.com/storage/igamewin/39.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(49, 'candy-bonanza', 'Candy Bonanza', 'https://igamewin.com/storage/igamewin/30.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(50, 'choc-deluxe', 'Chocolate Deluxe', 'https://igamewin.com/storage/igamewin/341.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(51, 'forge-wealth', 'Forge of Wealth', 'https://igamewin.com/storage/igamewin/143.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(52, 'cruise-royale', 'Cruise Royale', 'https://igamewin.com/storage/igamewin/148.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(53, 'cocktail-nite', 'Cocktail Nights', 'https://igamewin.com/storage/igamewin/94.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(54, 'crypto-gold', 'Crypto Gold', 'https://igamewin.com/storage/igamewin/85.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(55, 'fruity-candy', 'Fruity Candy', 'https://igamewin.com/storage/igamewin/149.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(56, 'dragon-hatch', 'Dragon Hatch', 'https://igamewin.com/storage/igamewin/6.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(57, 'galactic-gems', 'Galactic Gems', 'https://igamewin.com/storage/igamewin/27.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(58, 'garuda-gems', 'Garuda Gems', 'https://igamewin.com/storage/igamewin/37.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(59, 'gladi-glory', 'Gladiator\'s Glory', 'https://igamewin.com/storage/igamewin/146.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(60, 'hawaiian-tiki', 'Hawaiian Tiki', 'https://igamewin.com/storage/igamewin/154.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(61, 'heist-stakes', 'Heist Stakes', 'https://igamewin.com/storage/igamewin/86.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(62, 'jack-frosts', 'Jack Frost\'s Winter', 'https://igamewin.com/storage/igamewin/82.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(63, 'jurassic-kdm', 'Jurassic Kingdom', 'https://igamewin.com/storage/igamewin/90.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(64, 'lgd-monkey-kg', 'Legendary Monkey King', 'https://igamewin.com/storage/igamewin/34.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(65, 'Lucky Clover Lady', 'Lucky Clover Lady', 'https://igamewin.com/storage/igamewin/150.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(66, 'mafia-mayhem', 'Mafia Mayhem', 'https://igamewin.com/storage/igamewin/142.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(67, 'majestic-ts', 'Majestic Treasures', 'https://igamewin.com/storage/igamewin/31.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(68, 'mask-carnival', 'Mask Carnival', 'https://igamewin.com/storage/igamewin/95.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(69, 'mermaid-riches', 'Mermaid Riches', 'https://igamewin.com/storage/igamewin/84.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(70, 'midas-fortune', 'Midas Fortune', 'https://igamewin.com/storage/igamewin/44.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(71, 'museum-mystery', 'Museum Mystery', 'https://igamewin.com/storage/igamewin/339.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(72, 'mystic-potions', 'Mystic Potion', 'https://igamewin.com/storage/igamewin/329.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(73, 'myst-spirits', 'Mystical Spirits', 'https://igamewin.com/storage/igamewin/152.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(74, 'ninja-raccoon', 'Ninja Raccoon Frenzy', 'https://igamewin.com/storage/igamewin/145.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(75, 'opera-dynasty', 'Opera Dynasty', 'https://igamewin.com/storage/igamewin/80.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(76, 'pinata-wins', 'Pinata Wins', 'https://igamewin.com/storage/igamewin/328.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(77, 'crypt-fortune', 'Raider Jane\'s Crypt of Fortune', 'https://igamewin.com/storage/igamewin/32.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(78, 'rave-party-fvr', 'Rave Party Fever', 'https://igamewin.com/storage/igamewin/155.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(79, 'rise-of-apollo', 'Rise of Apollo', 'https://igamewin.com/storage/igamewin/83.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(80, 'rooster-rbl', 'Rooster Rumble', 'https://igamewin.com/storage/igamewin/40.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(81, 'shark-hunter', 'Shark Hunter', 'https://igamewin.com/storage/igamewin/334.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(82, 'songkran-spl', 'Songkran Splash', 'https://igamewin.com/storage/igamewin/153.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(83, 'speed-winner', 'Speed Winner', 'https://igamewin.com/storage/igamewin/97.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(84, 'spirit-wonder', 'Spirit of Wonder', 'https://igamewin.com/storage/igamewin/35.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(85, 'spr-golf-drive', 'Super Golf Drive', 'https://igamewin.com/storage/igamewin/151.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(86, 'sprmkt-spree', 'Supermarket Spree', 'https://igamewin.com/storage/igamewin/33.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(87, 'thai-river', 'Thai River Wonders', 'https://igamewin.com/storage/igamewin/79.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(88, 'queen-banquet', 'The Queen\'s Banquet', 'https://igamewin.com/storage/igamewin/96.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(89, 'totem-wonders', 'Totem Wonders', 'https://igamewin.com/storage/igamewin/158.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(90, 'ways-of-qilin', 'Ways of the Qilin', 'https://igamewin.com/storage/igamewin/87.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(91, 'werewolf-hunt', 'Werewolf\'s Hunt', 'https://igamewin.com/storage/igamewin/139.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(92, 'wild-bounty-sd', 'Wild Bounty Showdown', 'https://igamewin.com/storage/igamewin/160.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(93, 'wild-coaster', 'Wild Coaster', 'https://igamewin.com/storage/igamewin/161.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(94, 'wild-heist-co', 'Wild Heist Cashout', 'https://igamewin.com/storage/igamewin/144.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(95, 'win-win-fpc', 'Win Win Fish Prawn Crab', 'https://igamewin.com/storage/igamewin/98.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(96, 'wings-iguazu', 'Yakuza Honor', 'https://igamewin.com/storage/igamewin/336.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(97, 'zombie-outbrk', 'Zombie Outbreak', 'https://igamewin.com/storage/igamewin/331.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(98, 'aviator_core', 'Aviator', 'https://igamewin.com/storage/igamewin/170.webp', 1, 'SPRIBE', 1, 'slot', 3, 'igamewin'),
(99, 'dice', 'Dice', 'https://igamewin.com/storage/igamewin/165.webp', 1, 'SPRIBE', 1, 'slot', 3, 'igamewin'),
(100, 'goal', 'Goal', 'https://igamewin.com/storage/igamewin/167.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(101, 'hilo', 'Hilo', 'https://igamewin.com/storage/igamewin/169.webp', 1, 'SPRIBE', 1, 'slot', 3, 'igamewin'),
(102, 'hotline', 'Hotline', 'https://igamewin.com/storage/igamewin/163.webp', 1, 'SPRIBE', 1, 'slot', 3, 'igamewin'),
(103, 'mines', 'Mines', 'https://igamewin.com/storage/igamewin/162.webp', 1, 'SPRIBE', 1, 'slot', 3, 'igamewin'),
(104, 'keno', 'Keno', 'https://igamewin.com/storage/igamewin/168.webp', 1, 'SPRIBE', 1, 'slot', 3, 'igamewin'),
(105, 'roulette', 'Mini Roulette', 'https://igamewin.com/storage/igamewin/164.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(106, 'plinko', 'Plinko', 'https://igamewin.com/storage/igamewin/166.webp', 1, 'PGSOFT', 1, 'slot', 3, 'igamewin'),
(107, 'vswayscharms', '5 Frozen Charms Megaways', 'https://igamewin.com/storage/igamewin/237.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(108, 'vs10gdchalleng', '8 Golden Dragon Challenge', 'https://igamewin.com/storage/igamewin/249.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(109, 'vs1dragon8', '888 Dragons', 'https://igamewin.com/storage/igamewin/188.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(110, 'vs1dragon8', '888 Dragons', 'https://igamewin.com/storage/igamewin/188.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(111, 'vs20hotzone', 'African Elephant', 'https://igamewin.com/storage/igamewin/280.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(112, 'vs5aztecgems', 'Aztec Gems', 'https://igamewin.com/storage/igamewin/183.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(113, 'vs5aztecgems', 'Aztec Powernudge', 'https://igamewin.com/storage/igamewin/183.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(114, 'vs20sbpnudge', 'Aztec Powernudge', 'https://kto.kgp-cdn.com/kto/2023/11/20130929/Bakery-Bonanzax-654d0ee0c7f7c-766x1024.jpg', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(115, 'vswaysmegahays', 'Barnyard Megahays Megaways', 'https://igamewin.com/storage/igamewin/205.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(116, 'vs10bbbonanza', 'Big Bass Bonanza', 'https://igamewin.com/storage/igamewin/175.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(117, 'vs10bbkir', 'Big Bass Bonanza - Keeping it Reel', 'https://igamewin.com/storage/igamewin/307.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(118, 'vs10bbbrlact', 'Big Bass Bonanza - Reel Action', 'https://igamewin.com/storage/igamewin/198.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(119, 'vs10bbfloats', 'Big Bass Floats my Boat', 'https://igamewin.com/storage/igamewin/225.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(120, 'vswaysbbhas', 'Big Bass Hold & Spinner Megaways', 'https://igamewin.com/storage/igamewin/252.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(121, 'vs10bbfmission', 'Big Bass Mission Fishin\'', 'https://igamewin.com/storage/igamewin/193.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(122, 'vs10bburger', 'Big Burger Load it up with Xtra Cheese', 'https://igamewin.com/storage/igamewin/209.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(123, 'vs12bbbxmas', 'Bigger Bass Blizzard - Christmas Catch', 'https://igamewin.com/storage/igamewin/301.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(124, 'vs20mergedwndw', 'Blade & Fangs', 'https://igamewin.com/storage/igamewin/232.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(125, 'vs20trswild2', 'Black Bull', 'https://igamewin.com/storage/igamewin/325.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(126, 'vswaysfirewmw', 'Blazing Wilds Megaways', 'https://igamewin.com/storage/igamewin/222.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(127, 'vswaysbook', 'Book of Golden Sands', 'https://igamewin.com/storage/igamewin/316.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(128, 'vswaystut', 'Book of Tut Megaways', 'https://igamewin.com/storage/igamewin/248.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(129, 'vs10bookviking', 'Book of Vikings', 'https://igamewin.com/storage/igamewin/253.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(130, 'vswaysbkingasc', 'Buffalo King Untamed Megaways', 'https://igamewin.com/storage/igamewin/192.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(131, 'vs20candybltz2', 'Candy Blitz Bombs', 'https://igamewin.com/storage/igamewin/203.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(132, 'vswaysexpandng', 'Castle of Fire', 'https://igamewin.com/storage/igamewin/234.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(133, 'vs12tropicana', 'Club Tropicana', 'https://igamewin.com/storage/igamewin/289.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(134, 'vswaysultrcoin', 'Cowboy Coins', 'https://igamewin.com/storage/igamewin/286.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(135, 'vs10crownfire', 'Crown of Fire', 'https://igamewin.com/storage/igamewin/313.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(136, 'vs20earthquake', 'Cyclops Smash', 'https://igamewin.com/storage/igamewin/262.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(137, 'vs5luckytig', 'Tigre Sortudo', 'https://igamewin.com/storage/igamewin/343.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(138, 'vs40demonpots', 'Demon Pots', 'https://igamewin.com/storage/igamewin/242.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(139, 'vs20devilic', 'Devilicious', 'https://igamewin.com/storage/igamewin/195.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(140, 'vs20drgbless', 'Dragon Hero', 'https://igamewin.com/storage/igamewin/295.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(141, 'vswaysspltsym', 'Dwarf & Dragon', 'https://igamewin.com/storage/igamewin/172.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(142, 'vs20olympgate', 'Gates of Olympus', 'https://mediumrare.imgix.net/abb9098000cde7009fb88c54c26621682110bfbe895818cff2a7b99e7a05a0d3?&dpr=2&format=auto&auto=format&q=50', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(143, 'vs20doghouse', 'The Dog House', 'https://mediumrare.imgix.net/eb75dbe63e5b45feb035e02cba7f846d6e71a9343f66187387a32ee8abe21e75?&dpr=2&format=auto&auto=format&q=50', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(144, 'vs20excalibur', 'Excalibur Unleashed', 'https://igamewin.com/storage/igamewin/279.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(145, 'vs20beefed', 'Fat Panda', 'https://igamewin.com/storage/igamewin/268.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(146, 'vs25archer', 'Fire Archer', 'https://igamewin.com/storage/igamewin/268.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(147, 'vs100firehot', 'Fire Hot 100', 'https://igamewin.com/storage/igamewin/322.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(148, 'vs20portals', 'Fire Portals', 'https://igamewin.com/storage/igamewin/211.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(149, 'vs10fisheye', 'Fish Eye', 'https://igamewin.com/storage/igamewin/292.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(150, 'vs10floatdrg', 'Floating Dragon', 'https://igamewin.com/storage/igamewin/185.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(151, 'vs10fdrasbf', 'Floating Dragon - Dragon Boat Festival', 'https://igamewin.com/storage/igamewin/269.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(152, 'vs20forge', 'Forge of Olympus', 'https://igamewin.com/storage/igamewin/260.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(153, 'vswaysstrlght', 'Fortunes of Aztec', 'https://igamewin.com/storage/igamewin/245.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(154, 'vs10frontrun', 'Front Runner Odds On', 'https://igamewin.com/storage/igamewin/219.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(155, 'vswaysftropics', 'Frozen Tropics', 'https://igamewin.com/storage/igamewin/250.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(156, 'vs20fortbon', 'Fruity Treats', 'https://igamewin.com/storage/igamewin/202.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(157, 'vswaysfuryodin', 'Fury of Odin Megaways', 'https://igamewin.com/storage/igamewin/300.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(158, 'vs20olympdice', 'Gates of Olympus Dice', 'https://igamewin.com/storage/igamewin/230.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(159, 'vs20sugarrush', 'Sugar Rush', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/5527e6f0-38c1-4736-d0c5-7bae6b5a1b00/public', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(160, 'vs20wildparty', '3 buzzing wild', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/228b9736-0e3e-4cf7-c631-0fdd39c36400/public', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(161, 'vs15godsofwar', 'Zeus vs Hades - Gods of War', 'https://imagedelivery.net/BgH9d8bzsn4n0yijn4h7IQ/70ec752f-f027-4b62-7439-b98231ba6700/public', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(162, 'vs20octobeer', 'Octobeer', 'https://storage.googleapis.com/www.mcluck.com/tiles/vs20octobeer/source.png', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(163, 'vs20clustext', 'Gears of Horus', 'https://igamewin.com/storage/igamewin/231.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(164, 'vs20lcount', 'Gems of Serengeti', 'https://igamewin.com/storage/igamewin/303.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(165, 'vs10gizagods', 'Gods of Giza', 'https://igamewin.com/storage/igamewin/281.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(166, 'vswaysincwnd', 'Gold Oasis', 'https://igamewin.com/storage/igamewin/251.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(167, 'vs25goldparty', 'Gold Party', 'https://igamewin.com/storage/igamewin/184.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(168, 'vs10luckfort', 'Good Luck & Good Fortune', 'https://igamewin.com/storage/igamewin/235.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(169, 'vs1024gmayhem', 'Gorilla Mayhem', 'https://igamewin.com/storage/igamewin/327.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(170, 'vs20gravity', 'Gravity Bonanza', 'https://igamewin.com/storage/igamewin/246.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(171, 'vs20wolfie', 'Greedy Wolf', 'https://igamewin.com/storage/igamewin/326.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(172, 'vs20midas2', 'Hand of Midas 2', 'https://igamewin.com/storage/igamewin/190.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(173, 'vs20heartcleo', 'Heart of Cleopatra', 'https://igamewin.com/storage/igamewin/200.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(174, 'vs20hstgldngt', 'Heist for the Golden Nuggets', 'https://igamewin.com/storage/igamewin/265.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(175, 'vs243nudge4gold', 'Hellvis Wild', 'https://igamewin.com/storage/igamewin/258.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(176, 'vs20shootstars', 'Heroic Spins', 'https://igamewin.com/storage/igamewin/173.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(177, 'vs20dugems', 'Hot Pepper', 'https://igamewin.com/storage/igamewin/298.webp', 1, 'PRAGMATIC', 1, 'slot', 3, 'igamewin'),
(178, 'vs40hotburnx', 'Hot To Burn Extreme', 'https://igamewin.com/storage/igamewin/324.webp', 1, 'PRAGMATIC', 1, 'slot', 0, 'igamewin'),
(179, 'vs5hotbmult', 'Hot To Burn Multiplier', 'https://igamewin.com/storage/igamewin/191.webp', 1, 'PRAGMATIC', 1, 'slot', 0, 'igamewin'),
(180, 'vs20stickypos', 'Ice Lobster', 'https://igamewin.com/storage/igamewin/206.webp', 1, 'PRAGMATIC', 1, 'slot', 0, 'igamewin'),
(181, 'vs40infwild', 'Infective Wild', 'https://igamewin.com/storage/igamewin/247.webp', 1, 'PRAGMATIC', 1, 'slot', 0, 'igamewin'),
(182, 'vs20mvwild', 'Jasmine Dreams', 'https://igamewin.com/storage/igamewin/284.webp', 1, 'PRAGMATIC', 1, 'slot', 0, 'igamewin'),
(183, 'vs20jewelparty', 'Jewel Rush', 'https://igamewin.com/storage/igamewin/272.webp', 1, 'PRAGMATIC', 1, 'slot', 0, 'igamewin'),
(184, 'vs20sugarrush', 'Sugar Rush', 'https://igamewin.com/storage/igamewin/176.webp', 1, 'PRAGMATIC', 1, 'slot', 0, 'igamewin'),
(185, 'vs20clustcol', 'Sweet Kingdom', 'https://igamewin.com/storage/igamewin/171.webp', 1, 'PRAGMATIC', 1, 'slot', 0, 'igamewin'),
(186, '112', 'Pyramid Raider', 'https://images.jiamengweiquan.com/cherry/icon/qkTykFxR.png', 1, 'slot-cq9', 1, 'slot', 3, 'igamewin'),
(187, '125', 'Zeus M', 'https://images.jiamengweiquan.com/cherry/icon/DPnXZKQx.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(188, '123', 'Lucky Bats M', 'https://images.jiamengweiquan.com/cherry/icon/J1Nzx0J1.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(189, '129', 'Gu Gu Gu 2 M', 'https://images.jiamengweiquan.com/cherry/icon/hXsF4prq.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(190, '137', 'Disco Night M', 'https://images.jiamengweiquan.com/cherry/icon/EYe9gKUL.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(191, '118', 'SkrSkr', 'https://images.jiamengweiquan.com/cherry/icon/gSA0sJWW.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(192, '121', 'Rave Jump 2 M', 'https://images.jiamengweiquan.com/cherry/icon/B6WtMKzZ.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(193, '135', 'Gu Gu Gu M', 'https://images.jiamengweiquan.com/cherry/icon/OccXMvsd.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(194, '116', 'Wonderland', 'https://images.jiamengweiquan.com/cherry/icon/ZcsPXlbg.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(195, '115', 'Snow Queen', 'https://images.jiamengweiquan.com/cherry/icon/zaG4epx7.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(196, '221', 'Detective Dee 2', 'https://images.jiamengweiquan.com/cherry/icon/rnxFXz4M.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(197, '124', 'Invincible Elephant', 'https://images.jiamengweiquan.com/cherry/icon/sOuNJHuS.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(198, '131', 'Fa Cai Shen M', 'https://images.jiamengweiquan.com/cherry/icon/vIhTvyji.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(199, '109', 'Rave Jump mobile', 'https://images.jiamengweiquan.com/cherry/icon/FTOgWQxD.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(200, '122', 'Zuma Wild', 'https://images.jiamengweiquan.com/cherry/icon/bvDiSUot.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(201, '139', 'Fire Chibi M', 'https://images.jiamengweiquan.com/cherry/icon/2ydsCVXV.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(202, '127', 'God of War M', 'https://images.jiamengweiquan.com/cherry/icon/8MFGZdVV.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(203, '144', 'Diamond Treasure', 'https://images.jiamengweiquan.com/cherry/icon/Mu1a6J0d.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(204, '130', 'Gold Stealer', 'https://images.jiamengweiquan.com/cherry/icon/2LfJumfY.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(205, '138', 'Move n\' Jump', 'https://images.jiamengweiquan.com/cherry/icon/NMA5c7qp.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(206, '147', 'Flower Fortunes', 'https://images.jiamengweiquan.com/cherry/icon/3is7ZyOl.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(207, '157', '5 Boxing', 'https://images.jiamengweiquan.com/cherry/icon/4aI0yoPF.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(208, '132', 'Meow', 'https://images.jiamengweiquan.com/cherry/icon/7JNuaTTN.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(209, '142', 'Hephaestus', 'https://images.jiamengweiquan.com/cherry/icon/31qyLrb2.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(210, '143', 'Fa Cai Fu Wa', 'https://images.jiamengweiquan.com/cherry/icon/CMDpUcV7.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(211, '152', 'Double Fly', 'https://images.jiamengweiquan.com/cherry/icon/H1Mjnq2a.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(212, '153', 'Six Candy', 'https://images.jiamengweiquan.com/cherry/icon/h58qXy8j.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(213, '150', 'Shou-Xin', 'https://images.jiamengweiquan.com/cherry/icon/scwq2K9q.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(214, '148', 'Fortune Totem', 'https://images.jiamengweiquan.com/cherry/icon/wTXE7f95.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(215, '136', 'Running Animals', 'https://images.jiamengweiquan.com/cherry/icon/OEzu2TxD.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(216, '140', 'Fire Chibi 2', 'https://images.jiamengweiquan.com/cherry/icon/zeAzPHVB.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(217, '206', 'Sweet POP', 'https://images.jiamengweiquan.com/cherry/icon/ghppFsDy.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(218, '209', 'The Cupids', 'https://images.jiamengweiquan.com/cherry/icon/8LAvHcm3.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(219, '13', 'SakuraLegend', 'https://images.jiamengweiquan.com/cherry/icon/V4xFcXeB.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(220, '26', '777', 'https://images.jiamengweiquan.com/cherry/icon/TLC28bsL.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(221, '72', 'HappyRichYear', 'https://images.jiamengweiquan.com/cherry/icon/GIrO0snQ.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(222, '79', 'Chameleon', 'https://images.jiamengweiquan.com/cherry/icon/FFRRdPcq.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(223, '89', 'Thor', 'https://images.jiamengweiquan.com/cherry/icon/xd4z0bYW.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(224, '214', 'Ninja Raccoon', 'https://images.jiamengweiquan.com/cherry/icon/dOr9R2kQ.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(225, '8', 'SoSweet', 'https://images.jiamengweiquan.com/cherry/icon/l2pXvnE2.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(226, '15', 'GuGuGu', 'https://images.jiamengweiquan.com/cherry/icon/R7qHNfZf.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(227, '31', 'God of War', 'https://images.jiamengweiquan.com/cherry/icon/XdsdCyXK.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(228, '42', 'Sherlock Holmes', 'https://images.jiamengweiquan.com/cherry/icon/17tEE26p.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(229, '68', 'WuKong&Peaches', 'https://images.jiamengweiquan.com/cherry/icon/G72CaDlv.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(230, '80', 'Poseidon', 'https://images.jiamengweiquan.com/cherry/icon/h1V9idIR.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(231, '218', 'Dollar Bomb', 'https://images.jiamengweiquan.com/cherry/icon/tl9tGpmv.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(232, '187', 'Wing Chun', 'https://images.jiamengweiquan.com/cherry/icon/SRoNUPP6.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(233, '46', 'Wolf Moon', 'https://images.jiamengweiquan.com/cherry/icon/OIPQMNEH.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(234, '17', 'GreatLion', 'https://images.jiamengweiquan.com/cherry/icon/xekMMfqm.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(235, '64', 'Zeus', 'https://images.jiamengweiquan.com/cherry/icon/GnXe0qaD.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(236, '74', 'Treasure Bowl', 'https://images.jiamengweiquan.com/cherry/icon/ESogCyv6.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(237, '194', 'Fortune Dragon', 'https://images.jiamengweiquan.com/cherry/icon/FatieWGx.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(238, '197', 'Dragon\'s Treasure', 'https://images.jiamengweiquan.com/cherry/icon/B7tBS1CK.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(239, '210', 'Oo Ga Cha Ka', 'https://images.jiamengweiquan.com/cherry/icon/URat0NTk.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(240, '222', 'Loy Krathong', 'https://images.jiamengweiquan.com/cherry/icon/LRuR2t7j.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(241, '173', '6 Toros', 'https://images.jiamengweiquan.com/cherry/icon/R52AT7g9.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(242, '59', 'SummerMood', 'https://images.jiamengweiquan.com/cherry/icon/wvxjYGzX.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(243, '67', 'GoldenEggs', 'https://images.jiamengweiquan.com/cherry/icon/VGzJfXLS.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(244, '96', 'FootballBaby', 'https://images.jiamengweiquan.com/cherry/icon/U8LaXPLT.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(245, '5007', 'Da Fa Cai', 'https://static-r2.ibcsfaqcha.net/cq9/dafacai.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(246, '177', 'Aladdin\'s lamp', 'https://images.jiamengweiquan.com/cherry/icon/5Hu1PvAX.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(247, '154', 'Kronos', 'https://images.jiamengweiquan.com/cherry/icon/SLSCP1Dd.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(248, '32', 'Detective Dee', 'https://images.jiamengweiquan.com/cherry/icon/7SVoxQzw.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(249, '55', 'Dragon Heart', 'https://images.jiamengweiquan.com/cherry/icon/aGRJyWxE.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(250, '202', 'OrientalBeauty', 'https://images.jiamengweiquan.com/cherry/icon/zdtwRVhC.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(251, '203', 'RaveHigh', 'https://images.jiamengweiquan.com/cherry/icon/o7IXNkqO.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(252, '5009', 'Uproar in Heaven', 'https://static-r2.ibcsfaqcha.net/cq9/uproarinheaven.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(253, '171', 'Greek Gods', 'https://images.jiamengweiquan.com/cherry/icon/FnhHfeJD.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(254, '182', 'Thor 2', 'https://images.jiamengweiquan.com/cherry/icon/wlUmyslm.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(255, '16', 'Super5', 'https://images.jiamengweiquan.com/cherry/icon/P97Remip.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(256, '77', 'RedPhoenix', 'https://images.jiamengweiquan.com/cherry/icon/IMGvoCt1.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(257, '86', 'RunningToro', 'https://images.jiamengweiquan.com/cherry/icon/w73Y4I5Z.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(258, '220', 'Floating Market', 'https://images.jiamengweiquan.com/cherry/icon/zaGqaVxt.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(259, '33', 'Fire Chibi', 'https://images.jiamengweiquan.com/cherry/icon/uxeVBYcn.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(260, '44', 'Fruit King II', 'https://images.jiamengweiquan.com/cherry/icon/JnxxReWv.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(261, '49', 'Lonely Planet', 'https://images.jiamengweiquan.com/cherry/icon/nIbfa1mZ.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(262, '76', 'WonWonWon', 'https://images.jiamengweiquan.com/cherry/icon/joK8d56Y.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(263, '212', 'Burning Xi-You', 'https://images.jiamengweiquan.com/cherry/icon/ACqGmHvE.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(264, '211', 'King of Atlantis', 'https://images.jiamengweiquan.com/cherry/icon/AK9ebmsy.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(265, '219', 'King Kong Shake', 'https://images.jiamengweiquan.com/cherry/icon/EYSNJNc7.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(266, '3', 'VampireKiss', 'https://images.jiamengweiquan.com/cherry/icon/j6yXzx7I.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(267, '34', 'Gophers War', 'https://images.jiamengweiquan.com/cherry/icon/x5yPsK1M.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(268, '38', 'All Wilds', 'https://images.jiamengweiquan.com/cherry/icon/yPn5SSj8.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(269, '51', 'Ecstatic Circus', 'https://images.jiamengweiquan.com/cherry/icon/l6yhx0hx.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(270, '70', 'WanBaoDino', 'https://images.jiamengweiquan.com/cherry/icon/iSYzExKo.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(271, '83', 'FireQueen', 'https://images.jiamengweiquan.com/cherry/icon/okYFfluF.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(272, '179', 'Jump High 2', 'https://images.jiamengweiquan.com/cherry/icon/Lsng4kDo.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(273, '186', 'Fire Queen 2', 'https://images.jiamengweiquan.com/cherry/icon/ukH8rpTT.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(274, '184', 'Six Gacha', 'https://images.jiamengweiquan.com/cherry/icon/8zz928W9.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(275, '1', 'FruitKing', 'https://images.jiamengweiquan.com/cherry/icon/M5k8fcBE.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(276, '20', '888', 'https://images.jiamengweiquan.com/cherry/icon/AVVZZDTL.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(277, '57', 'The Beast War', 'https://images.jiamengweiquan.com/cherry/icon/3xReDmGC.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(278, '66', 'Fire777', 'https://images.jiamengweiquan.com/cherry/icon/6KyGSa7t.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(279, '78', 'Apollo', 'https://images.jiamengweiquan.com/cherry/icon/t04iYWeL.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(280, '5', 'Mr.Rich', 'https://images.jiamengweiquan.com/cherry/icon/p6IdSgsl.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(281, '9', 'ZhongKui', 'https://images.jiamengweiquan.com/cherry/icon/Qp8HJX37.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(282, '21', 'BigWolf', 'https://images.jiamengweiquan.com/cherry/icon/A6vuOK7r.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(283, '23', 'YuanBao', 'https://images.jiamengweiquan.com/cherry/icon/Y0ZLI4RN.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(284, '24', 'RaveJump2', 'https://images.jiamengweiquan.com/cherry/icon/3P0UBk4c.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(285, '36', 'Pub Tycoon', 'https://images.jiamengweiquan.com/cherry/icon/aB1Lgsld.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(286, '183', 'Wolf Disco', 'https://images.jiamengweiquan.com/cherry/icon/AVVZZDTL.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(287, '7', 'RaveJump', 'https://images.jiamengweiquan.com/cherry/icon/20x1jSLJ.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(288, '52', 'Jump High', 'https://images.jiamengweiquan.com/cherry/icon/PCddPyrH.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(289, '54', 'Funny Alpaca', 'https://images.jiamengweiquan.com/cherry/icon/CCUV6GQb.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(290, '69', 'FaCaiShen', 'https://images.jiamengweiquan.com/cherry/icon/dYSFNGvb.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(291, '35', 'CrazyNuozha', 'https://images.jiamengweiquan.com/cherry/icon/UFUdbq0z.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(292, '95', 'FootballBoots', 'https://images.jiamengweiquan.com/cherry/icon/U9epZh4q.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(293, '204', 'LuckyBoxes', 'https://images.jiamengweiquan.com/cherry/icon/58EgLK90.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(294, '199', 'Songkran Festival', 'https://images.jiamengweiquan.com/cherry/icon/93i7A6P9.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(295, '12', 'TreasureHouse', 'https://images.jiamengweiquan.com/cherry/icon/41REF4m9.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(296, '19', 'HotSpin', 'https://images.jiamengweiquan.com/cherry/icon/JjppyVxd.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(297, '22', 'MonkeyOfficeLegend', 'https://images.jiamengweiquan.com/cherry/icon/ECTGAb9g.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(298, '27', 'Magic World', 'https://images.jiamengweiquan.com/cherry/icon/oRmX2erV.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(299, '39', 'Apsaras', 'https://images.jiamengweiquan.com/cherry/icon/HEu1Pcbb.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(300, '105', 'Jumping Mobile', 'https://images.jiamengweiquan.com/cherry/icon/zY84kunx.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(301, '195', 'Lord Ganesha', 'https://images.jiamengweiquan.com/cherry/icon/guLGMUxR.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(302, '223', 'Acrobatics', 'https://images.jiamengweiquan.com/cherry/icon/md8hnuwC.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(303, '98', 'All Star Team', 'https://images.jiamengweiquan.com/cherry/icon/Okh58PC3.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(304, '208', 'Money Tree', 'https://images.jiamengweiquan.com/cherry/icon/JOeIAmue.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(305, '188', 'Cricket Fever', 'https://images.jiamengweiquan.com/cherry/icon/5FmroacQ.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(306, '2', 'GodOfChess', 'https://images.jiamengweiquan.com/cherry/icon/xz7zurdV.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(307, '4', 'WildTarzan', 'https://images.jiamengweiquan.com/cherry/icon/0IT0ytjx.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(308, '10', 'LuckyBats', 'https://images.jiamengweiquan.com/cherry/icon/0s2JAojt.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(309, '81', 'Treasure Island', 'https://images.jiamengweiquan.com/cherry/icon/RsviagHn.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(310, '92', 'WorldCupRussia2018', 'https://images.jiamengweiquan.com/cherry/icon/yQV8hHsM.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(311, '205', 'DiscoNight', 'https://images.jiamengweiquan.com/cherry/icon/jR7hDhP5.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(312, '5008', 'Da Hong Zhong', 'https://static-r2.ibcsfaqcha.net/cq9/dahongzhong.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(313, '226', 'Lucky Tigers', 'https://images.jiamengweiquan.com/cherry/icon/HZMTD7vZ.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(314, '225', 'Mr. Miser', 'https://images.jiamengweiquan.com/cherry/icon/ouxlCOaf.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(315, '227', '888 Cai Shen', 'https://images.jiamengweiquan.com/cherry/icon/LwhKroKO.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(316, '228', 'Mirror Mirror', 'https://images.jiamengweiquan.com/cherry/icon/hUSvRvpt.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(317, '231', 'Striker WILD', 'https://images.jiamengweiquan.com/cherry/icon/qZV1fWFy.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(318, '241', 'The Chicken House', 'https://images.jiamengweiquan.com/cherry/icon/HUUzbeUj.png', 1, 'SLOT-CQ9', 1, 'slot', 3, 'igamewin'),
(319, '14087', 'POP POP CANDY', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14087/14087_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(320, '14086', 'Open Sesame Mega', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14086/14086_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(321, '14042', 'TREASURE BOWL', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14042/14042_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(322, '14085', 'FRUITY BONANZA', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14085/14085_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(323, '14083', 'COOCOO FARM', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14083/14083_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(324, '14082', 'Elemental Link Water', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14082/14082_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(325, '14080', 'ELEMENTAL LINK FIRE', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14080/14080_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(326, '14077', 'TRUMPCARD', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14077/14077_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(327, '14075', 'FORTUNE NEKO', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14075/14075_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(328, '14070', 'BOOK OF MYSTERY', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14070/14070_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(329, '14068', 'PROSPERITY TIGER', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14068/14068_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(330, '14065', 'BLOSSOM OF WEALTH', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14065/14065_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(331, '14064', 'BOOM FIESTA', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14064/14064_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(332, '14063', 'CRAZYBIG THREE DRAGONS', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14063/14063_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(333, '14060', 'LANTERN WEALTH', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14060/14060_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(334, '14061', 'MAYA GOLD', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14061/14061_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(335, '14059', 'MARVELOUS IV', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14059/14059_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(336, '14058', 'WONDER ELEPHANT', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14058/14058_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(337, '14055', 'KONG', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14055/14055_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(338, '14052', 'JUNGLE JUNGLE', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14052/14052_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(339, '14054', 'LUCKY DIAMOND', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14054/14054_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(340, '8049', 'FLIRTING SCHOLAR TANG Ⅱ', 'https://dl.lfyanwei.com/jdb-assetsv3/games/8049/8049_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(341, '8047', 'WINNING MASK Ⅱ', 'https://dl.lfyanwei.com/jdb-assetsv3/games/8047/8047_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(342, '14048', 'DOUBLE WILDS', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14048/14048_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(343, '14047', 'MONEYBAGS MAN', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14047/14047_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(344, '14043', 'GOLDEN DISCO', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14043/14043_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(345, '14045', 'Super Niubi Deluxe', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14045/14045_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(346, '14044', 'FUNKY KING KONG', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14044/14044_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(347, '14040', 'PIRATE TREASURE', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14040/14040_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(348, '14039', 'FORTUNE TREASURE', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14039/14039_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(349, '14038', 'EGYPT TREASURE', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14038/14038_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(350, '14034', 'GO LAI FU', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14034/14034_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(351, '8050', 'FORTUNE HORSE', 'https://dl.lfyanwei.com/jdb-assetsv3/games/8050/8050_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(352, '14027', '777ORIENT', 'https://dl.lfyanwei.com/jdb-assetsv3/games/14027/14027_en.png', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(353, '8048', 'OPEN SESAME Ⅱ', 'https://i.ibb.co/zZXcGNV/Open-Sesame-II-250x203-en.jpg', 1, 'slot-jdb', 1, 'slot', 3, 'igamewin'),
(354, '7003', 'CaiShenFishing', 'https://api.jdbgaming.com/assets/upload/images/game/cover-9778d5d219c5080b9a6a17bef029331c.png', 1, 'fishing-jdb', 1, 'slot', 3, 'igamewin'),
(355, '7004', 'Shade Dragons Fishing', 'https://api.jdbgaming.com/assets/upload/images/game/cover-a3c65c2974270fd093ee8a9bf8ae7d0b.png', 1, 'fishing-jdb', 1, 'slot', 3, 'igamewin'),
(356, '7005', 'Fishing Yilufa', 'https://api.jdbgaming.com/assets/upload/images/game/cover-eb160de1de89d9058fcb0b968dbbbd68.png', 1, 'fishing-jdb', 1, 'slot', 3, 'igamewin'),
(357, 'holy-heist', 'Holy Heist', 'https://bc.imgix.net/game/image/0040ac0db0.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(358, 'dragon-s-domain', 'Dragon’s Domain', 'https://bc.imgix.net/game/image/dcb346ee4d.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(359, 'old-gun', 'Old Gun', 'https://bc.imgix.net/game/image/aab8aa161e.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(360, 'donny-dough', 'Donny Dough', 'https://bc.imgix.net/game/image/8c2358949a.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(361, 'pirate-bonanza', 'Pirate Bonanza', 'https://bc.imgix.net/game/image/2c37bb8398.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(362, 'pickle-bandits', 'Pickle Bandits', 'https://bc.imgix.net/game/image/f7a80ff414.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(363, 'tai-the-toad', 'Tai the Toad', 'https://bc.imgix.net/game/image/8ad8d38094.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(364, 'octo-attack', 'Octo Attack', 'https://bc.imgix.net/game/image/eba3e4fef9.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(365, 'cup-heroes', 'Cup Heroes', 'https://hacksaw.goldengatex.com/game-img/logo/cup-heroes.jpeg', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(366, 'jawsome-pirates', 'Jawsome Pirates', 'https://bc.imgix.net/game/image/556a5b6eaa.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(367, 'desert-temple', 'Desert Temple', 'https://bc.imgix.net/game/image/9481e6aae6.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(368, 'evil-eyes', 'Evil Eyes', 'https://bc.imgix.net/game/image/ab92e00911.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(369, 'ze-zeus', 'Ze Zeus', 'https://bc.imgix.net/game/image/fbcc71adf2.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(370, 'wanted-dead-or-a-wild', 'Wanted Dead or a Wild', 'https://bc.imgix.net/game/image/3bb2f8446f.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(371, 'le-bandit', 'Le Bandit', 'https://bc.imgix.net/game/image/cfdb2fe04a.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(372, 'rip-city', 'Rip City', 'https://bc.imgix.net/game/image/47265b5161.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(373, 'shadow-strike', 'Shadow Strike', 'https://bc.imgix.net/game/image/d20b0f4a22.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(374, 'slayers-inc', 'Slayers INC', 'https://bc.imgix.net/game/image/7da25263f9.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(375, 'fist-of-destruction', 'Fist of Destruction', 'https://bc.imgix.net/game/image/d47fd59815.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(376, 'dork-unit', 'Dork Unit', 'https://bc.imgix.net/game/image/da9db5a0f2.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(377, 'stormforged', 'Stormforged', 'https://bc.imgix.net/game/image/126be620de.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(378, 'hand-of-anubis', 'Hand of Anubis', 'https://bc.imgix.net/game/image/10234_Hand%20of%20Anubis.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(379, 'densho', 'Densho', 'https://bc.imgix.net/game/image/2de18aef4a.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(380, 'book-of-time', 'Book of Time', 'https://hacksaw.goldengatex.com/game-img/logo/book-of-time.jpeg', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(381, 'rotten', 'Rotten', 'https://bc.imgix.net/game/image/387c8b6e00.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(382, 'xmas-drop', 'Xmas Drop', 'https://bc.imgix.net/game/image/e8ed230c47.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin');
INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`, `popular`, `type`, `game_type`, `distribution`) VALUES
(383, 'chaos-crew-ii', 'Chaos Crew II', 'https://bc.imgix.net/game/image/e906c6dada.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(384, 'beast-below', 'Beast Below', 'https://bc.imgix.net/game/image/4a7db10d54.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(385, 'divine-drop', 'Divine Drop', 'https://bc.imgix.net/game/image/ec22796b7b.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(386, '2-wild-2-die', '2 Wild 2 Die', 'https://bc.imgix.net/game/image/30a4ec5cf0.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(387, 'magic-piggy', 'Magic Piggy', 'https://bc.imgix.net/game/image/852db221c8.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(388, 'drop-em', 'Drop\'em', 'https://bc.imgix.net/game/image/e1be0d5586.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(389, 'cursed-crypt', 'Cursed Crypt', 'https://bc.imgix.net/game/image/ce6d5b0b6e.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(390, 'cash-crew', 'Cash Crew', 'https://hacksaw.goldengatex.com/game-img/logo/cash-crew.jpeg', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(391, 'junkyard-kings', 'Junkyard Kings', 'https://bc.imgix.net/game/image/55e7480b42.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(392, 'immortal-desire', 'Immortal Desire', 'https://bc.imgix.net/game/image/960b402aa8.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(393, 'barrel-bonanza', 'Barrel Bonanza', 'https://bc.imgix.net/game/image/10319a0087.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(394, 'temple-of-torment', 'Temple of Torment', 'https://bc.imgix.net/game/image/31cbbe09eb.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(395, 'rusty-curly', 'Rusty & Curly', 'https://bc.imgix.net/game/image/8b34c5db26.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(396, 'cursed-seas', 'Cursed Seas', 'https://bc.imgix.net/game/image/806911bd1f.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(397, 'toshi-video-club', 'Toshi Video Club', 'https://bc.imgix.net/game/image/79cba4f5ef.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(398, 'keep-em', 'Keep \'em', 'https://bc.imgix.net/game/image/7846ae6daf.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(399, 'benny-the-beer', 'Benny the Beer', 'https://bc.imgix.net/game/image/92f9535443.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(400, 'itero', 'Itero', 'https://bc.imgix.net/game/image/10458_Itero.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(401, 'dark-summoning', 'Dark Summoning', 'https://bc.imgix.net/game/image/33e44c544a.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(402, 'eye-of-the-panda', 'Eye of the Panda', 'https://bc.imgix.net/game/image/c9d07079bf.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(403, 'undead-fortune', 'Undead Fortune', 'https://bc.imgix.net/game/image/bfbf4f1f15.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(404, 'gladiator-legends', 'Gladiator Legends', 'https://bc.imgix.net/game/image/9852_Gladiator%20Legends.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(405, 'stack-em', 'Stack \'em', 'https://bc.imgix.net/game/image/8f3f14b776.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(406, 'double-rainbow', 'Double Rainbow', 'https://bc.imgix.net/game/image/5119d9c41f.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(407, 'space-zoo', 'Space Zoo', 'https://bc.imgix.net/game/image/3d97535697.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(408, 'franks-farm', 'Frank\'s Farm', 'https://bc.imgix.net/game/image/0c2ec5d20f.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(409, 'jelly-slice', 'Jelly Slice', 'https://bc.imgix.net/game/image/eda04ea4f7.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(410, 'bloodthirst', 'Bloodthirst', 'https://bc.imgix.net/game/image/fe6228b0d1.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(411, 'fire-born', 'Fire Born', 'https://bc.imgix.net/game/image/eabfaca078.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(412, 'bouncy-bombs', 'Bouncy Bombs', 'https://bc.imgix.net/game/image/a91120458d.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(413, 'the-cursed-king', 'The Cursed King', 'https://bc.imgix.net/game/image/92cbea8d4d.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(414, 'outlaws-inc', 'Outlaws Inc', 'https://www-live.hacksawgaming.com/casino_thumbnails/1083.jpg', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(415, 'time-spinners', 'Time Spinners', 'https://bc.imgix.net/game/image/734ef5cd63.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(416, 'chaos-crew', 'Chaos Crew', 'https://bc.imgix.net/game/image/9fcaea4df9.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(417, 'fruit-duel', 'Fruit Duel', 'https://bc.imgix.net/game/image/1f4a995f3d.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(418, 'wild-dojo-strike', 'Wild Dojo Strike', 'https://bc.imgix.net/game/image/0c04da554c.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(419, 'fear-the-dark', 'Fear The Dark', 'https://bc.imgix.net/game/image/c4957a0a21.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(420, 'merlins-alchemy', 'Merlin\'s Alchemy', 'https://bc.imgix.net/game/image/b733514070.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(421, 'commander-of-tridents', 'Commander of Tridents', 'https://bc.imgix.net/game/image/33eb431787.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(422, 'alpha-eagle', 'Alpha Eagle', 'https://bc.imgix.net/game/image/aa05ecadb5.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(423, 'feel-the-beat', 'Feel the Beat', 'https://bc.imgix.net/game/image/01d01eda2d.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(424, 'gronks-gems', 'Gronk\'s Gems', 'https://bc.imgix.net/game/image/31a7d43c16.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(425, 'cubes2', 'Cubes2', 'https://bc.imgix.net/game/image/6596_Cubes2.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(426, 'hop-n-pop', 'Hop \'n Pop', 'https://bc.imgix.net/game/image/b9748197fc.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(427, 'mafia-clash', 'Mafia Clash', 'https://bc.imgix.net/game/image/2f1ae26dc1.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(428, 'the-bowery-boys', 'The Bowery Boys', 'https://bc.imgix.net/game/image/8638_The%20Bowery%20Boys.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(429, 'orb-of-destiny', 'Orb of Destiny', 'https://bc.imgix.net/game/image/7607f1107b.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(430, 'mighty-masks', 'Mighty Masks', 'https://bc.imgix.net/game/image/f8965ebc04.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(431, 'born-wild', 'Born WILD', 'https://bc.imgix.net/game/image/6609_Born%20WILD.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(432, 'joker-bombs', 'Joker Bombs', 'https://bc.imgix.net/game/image/837e4f501e.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(433, 'lord-venom', 'Lord Venom', 'https://bc.imgix.net/game/image/9105bfa325.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(434, 'blademaster', 'Blademaster', 'https://bc.imgix.net/game/image/7e9c72f5d6.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(435, 'vending-machine', 'Vending Machine', 'https://bc.imgix.net/game/image/e4e64b646d.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(436, 'buffalo-stack-n-sync', 'Buffalo Stack \'n\' Sync', 'https://bc.imgix.net/game/image/62badc0668.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(437, 'harvest-wilds', 'Harvest Wilds', 'https://bc.imgix.net/game/image/8214_Harvest%20Wilds.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(438, 'breakbones', 'BreakBones', 'https://bc.imgix.net/game/image/a854e955a4.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(439, 'xpander', 'Xpander', 'https://bc.imgix.net/game/image/b4c5bd0ff3.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(440, 'piggy-cluster-hunt', 'Piggy Cluster Hunt', 'https://bc.imgix.net/game/image/06b82f09b5.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(441, 'frutz', 'Frutz', 'https://bc.imgix.net/game/image/485654793e.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(442, 'king-carrot', 'King Carrot', 'https://bc.imgix.net/game/image/0f0eb98abe.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(443, 'mystery-motel', 'Mystery Motel', 'https://bc.imgix.net/game/image/e2188d8c09.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(444, 'rocket-reels', 'Rocket Reels', 'https://bc.imgix.net/game/image/defaa176dd.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(445, 'cash-compass', 'Cash Compass', 'https://bc.imgix.net/game/image/c301547c54.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(446, 'tasty-treats', 'Tasty Treats', 'https://bc.imgix.net/game/image/51bf2cae02.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(447, 'keep-em-cool', 'Keep\'em Cool', 'https://bc.imgix.net/game/image/7aaab25c54.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(448, 'forest-fortune', 'Forest Fortune', 'https://bc.imgix.net/game/image/242686b590.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(449, 'sleepy-grandpa', 'Sleepy Grandpa', 'https://bc.imgix.net/game/image/bb18570742.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(450, 'warrior-ways', 'Warrior Ways', 'https://bc.imgix.net/game/image/9638_Warrior%20Ways.png?_v=4&auto=format&dpr=1&w=200', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(451, 'the-respinners', 'The Respinners', 'https://bc.imgix.net/game/image/cdf1d75ca8.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(452, 'cash-quest', 'Cash Quest', 'https://bc.imgix.net/game/image/04931a393b.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(453, 'omnom', 'OmNom', 'https://bc.imgix.net/game/image/502dec581a.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(454, 'stickem', 'Stickem', 'https://bc.imgix.net/game/image/1dbf801edb.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(455, 'cubes', 'Cubes', 'https://bc.imgix.net/game/image/95e074e5de.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(456, 'aztec-twist', 'Aztec Twist', 'https://bc.imgix.net/game/image/e1cd43412e.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(457, 'miamimultiplier', 'MiamiMultiplier', 'https://bc.imgix.net/game/image/5080a67980.png', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(458, 'freds-food-truck', 'Fred\'s Food Truck', 'https://www-live.hacksawgaming.com/casino_thumbnails/1229.jpg', 1, 'slot-hacksaw', 1, 'slot', 3, 'igamewin'),
(459, 'anubis_moon', 'Anubis Moon', 'https://evoplay.games/wp-content/uploads/2021/09/Anubis_Moon_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(460, 'bandit_bust', 'Bandit Bust', 'https://evoplay.games/wp-content/uploads/2024/02/bandit_bust_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(461, 'bandit_bust_b_b', 'Bandit Bust Bonus Buy', 'https://evoplay.games/wp-content/uploads/2024/03/bandit_bust_bonus_buy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(462, 'belfry_bliss', 'Belfry Bliss', 'https://evoplay.games/wp-content/uploads/2024/05/belfrybliss_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(463, 'book_of_the_priestess', 'Book of the Priestess', 'https://evoplay.games/wp-content/uploads/2023/01/Book_of_the_Priestess_270x270-1.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(464, 'budai_reels_bonus_buy', 'Budai Reels Bonus Buy', 'https://evoplay.games/wp-content/uploads/2022/02/budaireelsbonusbuy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(465, 'camino_de_chili', 'Camino de Chili', 'https://evoplay.games/wp-content/uploads/2022/06/caminodechili_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(466, 'camino_de_chili_b_b', 'Camino de Chili Bonus Buy', 'https://evoplay.games/wp-content/uploads/2022/07/caminodechilibonusbuy_270x270-1.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(467, 'candy_craze', 'Candy Craze', 'https://evoplay.games/wp-content/uploads/2024/04/Candy_craze_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(468, 'candy_dreams_sweet_planet', 'Candy Dreams: Sweet Planet', 'https://evoplay.games/wp-content/uploads/2022/06/Candydreamssweetplanet_270x270.png', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(469, 'candy_dreams_sweet_planet_b_b', 'Candy Dreams Sweet Planet Bonus Buy', 'https://evoplay.games/wp-content/uploads/2022/08/Candydreamssweetplanetbonusbuy_270x270.png', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(470, 'christmas_reach_bonus_buy', 'Christmas Reach Bonus Buy', 'https://evoplay.games/wp-content/uploads/2021/12/christmasreach_270x270-1.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(471, 'collapsed_castle_b_b', 'Collapsed Castle Bonus Buy', 'https://evoplay.games/wp-content/uploads/2022/12/CollapsedCastleBonusBuy_270x270-1.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(472, 'cursed_can', 'Cursed Can', 'https://evoplay.games/wp-content/uploads/2023/10/Cursed_can_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(473, 'cursed_can_b_b', 'Cursed Can Bonus Buy', 'https://evoplay.games/wp-content/uploads/2023/11/Cursed_can_bonus_buy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(474, 'cycle_of_luck', 'Cycle of Luck', 'https://evoplay.games/wp-content/uploads/2021/04/580x580.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(475, 'ellens_fortune', 'Ellen\'s Fortune', 'https://evoplay.games/wp-content/uploads/2021/03/EllensFortune_360x360.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(476, 'epic_legends', 'Epic Legends', 'https://evoplay.games/wp-content/uploads/2021/03/270x270-2.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(477, 'europe_transit', 'Europe Transit', 'https://evoplay.games/wp-content/uploads/2023/06/Europe_transit_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(478, 'europe_transit_b_b', 'Europe Transit Bonus Buy', 'https://evoplay.games/wp-content/uploads/2023/08/Europe_transit_bonus_buy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(479, 'fruit_super_nova', 'Fruit Super Nova', 'https://evoplay.games/wp-content/uploads/2021/03/FruitSuperNova_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(480, 'fruit_super_nova_80', 'Fruit Super Nova 80', 'https://evoplay.games/wp-content/uploads/2021/12/fruitsupernova80_270x270-1.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(481, 'gold_of_sirens_bonus_buy', 'Gold of Sirens Bonus Buy', 'https://evoplay.games/wp-content/uploads/2021/08/Gold_of_Sirens_270x270-1.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(482, 'hot_mania', 'Hot Mania', 'https://evoplay.games/wp-content/uploads/2023/09/hotmania_580x580.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(483, 'hot_triple_sevens', 'Hot Triple Sevens', 'https://evoplay.games/wp-content/uploads/2021/03/360x360-1.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(484, 'hot_triple_sevens_special', 'Hot Triple Sevens Special', 'https://evoplay.games/wp-content/uploads/2021/11/hottriplesevensspecial_270x270-1.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(485, 'hot_volcano', 'Hot Volcano', 'https://evoplay.games/wp-content/uploads/2022/07/hotvolkano_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(486, 'hot_volcano_b_b', 'Hot Volcano Bonus Buy', 'https://evoplay.games/wp-content/uploads/2022/10/hotvolkanobonusbuy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(487, 'ice_mania', 'Ice Mania', 'https://evoplay.games/wp-content/uploads/2021/03/publicpreview-3.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(488, 'inner_fire', 'Inner Fire', 'https://evoplay.games/wp-content/uploads/2022/12/innerfire_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(489, 'inner_fire_b_b', 'Inner Fire Bonus Buy', 'https://evoplay.games/wp-content/uploads/2023/01/innerfirebonusbuy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(490, 'irish_weekend_b_b', 'Irish Weekend Bonus Buy', 'https://evoplay.games/wp-content/uploads/2023/04/irishweekendbonusbuy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(491, 'jhana_of_god_b_b', 'Jhana Of God Bonus Buy', 'https://evoplay.games/wp-content/uploads/2023/08/Jhana_of_god_bonus_buy270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(492, 'juicy_gems', 'Juicy Gems', 'https://evoplay.games/wp-content/uploads/2022/05/juicygems_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(493, 'massive_luck', 'Massive Luck', 'https://evoplay.games/wp-content/uploads/2022/08/massiveluck_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(494, 'massive_luck_b_b', 'Massive Luck Bonus Buy', 'https://evoplay.games/wp-content/uploads/2022/12/massiveluckbonusbuy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(495, 'money_minter', 'Money Minter', 'https://evoplay.games/wp-content/uploads/2022/07/moneyminter_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(496, 'money_minter_b_b', 'Money Minter Bonus Buy', 'https://evoplay.games/wp-content/uploads/2022/09/moneyminterbonusbuy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(497, 'neon_capital', 'Neon Capital', 'https://evoplay.games/wp-content/uploads/2023/05/neoncapital_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(498, 'neon_capital_b_b', 'Neon Capital Bonus Buy', 'https://evoplay.games/wp-content/uploads/2023/06/neoncapitalbonusbuy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(499, 'northern_temple', 'Northern Temple', 'https://evoplay.games/wp-content/uploads/2023/06/Northern_temple_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(500, 'northern_temple_b_b', 'Northern Temple Bonus Buy', 'https://evoplay.games/wp-content/uploads/2023/06/Northern_temple_bonus_buy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(501, 'nuke_world', 'Nuke World', 'https://evoplay.games/wp-content/uploads/2021/03/NukeWorld_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(502, 'ocean_catch', 'Ocean Catch', 'https://evoplay.games/wp-content/uploads/2024/03/Ocean-Catch_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(503, 'roman_rule', 'Roman Rule', 'https://evoplay.games/wp-content/uploads/2024/06/romanrule_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(504, 'rueda_de_chile', 'Rueda De Chile', 'https://evoplay.games/wp-content/uploads/2022/09/ruedadechile_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(505, 'rueda_de_chile_b_b', 'Rueda De Chile Bonus Buy', 'https://evoplay.games/wp-content/uploads/2022/10/ruedadechilebonusbuy_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(506, 'sweet_sugar', 'Sweet Sugar', 'https://evoplay.games/wp-content/uploads/2021/03/promo_360_360-1.png', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(507, 'temple_of_thunder2', 'Temple Of Thunder II', 'https://evoplay.games/wp-content/uploads/2023/12/temple_of_thunderII_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(508, 'temple_of_thunder2_b_b', 'Temple Of Thunder II Bonus Buy', 'https://evoplay.games/wp-content/uploads/2024/02/temple_of_thunderII_bonus_buy_580x580.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(509, 'the_greatest_catch', 'The Greatest Catch', 'https://evoplay.games/wp-content/uploads/2022/04/Thegreatestcatch_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(510, 'treasure_mania', 'Treasure Mania', 'https://evoplay.games/wp-content/uploads/2021/03/TreasureMania_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(511, 'valley_of_dreams', 'Valley Of Dreams', 'https://evoplay.games/wp-content/uploads/2021/03/ValleyOfDeams_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(512, 'wild_bullets', 'Wild Bullets', 'https://evoplay.games/wp-content/uploads/2021/03/WildBullets_270x270.jpg', 1, 'slot-evoplay', 1, 'slot', 3, 'igamewin'),
(513, 'yggdrasil/ElixirOfWealth', 'Elixir of Wealth', 'https://igamewin.com/storage/igamewin/6806.webp', 1, 'jelly', 1, 'slot', 3, 'igamewin'),
(514, 'yggdrasil/SecretRichesoftheIrish', 'secret Riches of the Irish', 'https://igamewin.com/storage/igamewin/8684.webp', 1, 'jelly', 1, 'slot', 3, 'igamewin'),
(515, 'yggdrasil/FuryofHydeMegaways', 'Fury of Hyde Megaways', 'https://igamewin.com/storage/igamewin/8967.webp', 1, 'jelly', 1, 'slot', 3, 'igamewin'),
(516, 'yggdrasil/CleoPatrickDoubleMax', 'CleoPatrick DoubleMax', 'https://igamewin.com/storage/igamewin/8968.webp', 1, 'jelly', 1, 'slot', 3, 'igamewin'),
(517, 'yggdrasil/SugarBombMultiBoost', 'sugar Bomb MultiBoost', 'https://igamewin.com/storage/igamewin/8969.webp', 1, 'jelly', 1, 'slot', 3, 'igamewin'),
(518, 'yggdrasil/BurningBloxGigaBlox', 'Burning Blox GigaBlox', 'https://igamewin.com/storage/igamewin/8970.webp', 1, 'jelly', 1, 'slot', 3, 'igamewin'),
(519, 'yggdrasil/DigginforDiamondsTheBigBonanza', 'Diggin for Diamonds The Big Bonanza', 'https://igamewin.com/storage/igamewin/8971.webp', 1, 'jelly', 1, 'slot', 3, 'igamewin'),
(520, 'yggdrasil/WildFishinWildWays', 'Wild Fishin\' Wild Ways', 'https://igamewin.com/storage/igamewin/8972.webp', 1, 'jelly', 1, 'slot', 3, 'igamewin'),
(521, 'yggdrasil/BeastyBloxGigaBlox', 'Beasty Blox GigaBlox', 'https://igamewin.com/storage/igamewin/8973.webp', 1, 'jelly', 1, 'slot', 3, 'igamewin'),
(522, 'softswiss/LuckyDucky', 'Lucky Ducky', 'https://cdn2.softswiss.net/i/s6/softswiss/LuckyDucky.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(523, 'softswiss/WildMoonThieves', 'Wild Moon Thieves', 'https://cdn2.softswiss.net/i/s6/softswiss/WildMoonThieves.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(524, 'softswiss/RotatingElement', 'Rotating Element', 'https://cdn2.softswiss.net/i/s6/softswiss/RotatingElement.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(525, 'softswiss/FortunaTrueways', 'Fortuna TRUEWAYS', 'https://cdn2.softswiss.net/i/s6/softswiss/FortunaTrueways.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(526, 'softswiss/RoyalFruitsMultiLines', 'Royal Fruits MultiLines', 'https://cdn2.softswiss.net/i/s6/softswiss/RoyalFruitsMultiLines.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(527, 'softswiss/VoodooPeople', 'Voodoo People', 'https://cdn2.softswiss.net/i/s6/softswiss/VoodooPeople.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(528, 'softswiss/FishingClub', 'Fishing Club', 'https://cdn2.softswiss.net/i/s6/softswiss/FishingClub.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(529, 'softswiss/AlchemyAcademy', 'Alchemy Academy', 'https://admin-prod.b6z-cdn.com/optimized_images/portrait/softswiss/AlchemyAcademy.jpg', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(530, 'softswiss/TrainToRioGrande', 'Train to Rio Grande', 'https://cdn2.softswiss.net/i/s6/softswiss/TrainToRioGrande.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(531, 'softswiss/WildWestTrueways', 'Wild West TRUEWAYS', 'https://cdn2.softswiss.net/i/s6/softswiss/WildWestTrueways.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(532, 'softswiss/GoldMagnate', 'Gold Magnate', 'https://cdn2.softswiss.net/i/s6/softswiss/GoldMagnate.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(533, 'softswiss/Aviamasters', 'Aviamasters', 'https://cdn2.softswiss.net/i/s6/softswiss/Aviamasters.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(534, 'softswiss/AlienFruits2', 'Alien Fruits 2', 'https://cdn2.softswiss.net/i/s6/softswiss/AlienFruits2.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(535, 'softswiss/PandaLuck', 'Panda Luck', 'https://cdn2.softswiss.net/i/s6/softswiss/PandaLuck.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(536, 'softswiss/BurningChilliX', 'Burning Chilli X', 'https://cdn2.softswiss.net/i/s6/softswiss/BurningChilliX.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(537, 'softswiss/RoyalHighRoad', 'Royal High-Road', 'https://cdn2.softswiss.net/i/s6/softswiss/RoyalHighRoad.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(538, 'softswiss/MonsterHunt', 'Monster Hunt', 'https://cdn2.softswiss.net/i/s6/softswiss/MonsterHunt.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(539, 'softswiss/Gemza', 'Gemza', 'https://cdn2.softswiss.net/i/s6/softswiss/Gemza.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(540, 'softswiss/TrampDay', 'Tramp Day', 'https://cdn2.softswiss.net/i/s6/softswiss/TrampDay.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(541, 'softswiss/Hottest666', 'Hottest 666', 'https://cdn2.softswiss.net/i/s6/softswiss/Hottest666.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(542, 'softswiss/SlotMachine', 'slot Machine', 'https://cdn2.softswiss.net/i/s6/softswiss/SlotMachine.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(543, 'softswiss/BookOfPanda', 'Book of Panda Megaways', 'https://cdn2.softswiss.net/i/s6/softswiss/BookOfPanda.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(544, 'softswiss/AlohaKingElvis', 'Aloha King Elvis', 'https://cdn2.softswiss.net/i/s6/softswiss/AlohaKingElvis.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(545, 'softswiss/LuckyDamaMuerta', 'Lucky Dama Muerta', 'https://cdn2.softswiss.net/i/s6/softswiss/LuckyDamaMuerta.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(546, 'softswiss/SweetRushMegaways', 'sweet Rush Megaways', 'https://cdn2.softswiss.net/i/s6/softswiss/SweetRushMegaways.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(547, 'softswiss/BookOfCatsMegaways', 'Book Of Cats Megaways', 'https://cdn2.softswiss.net/i/s6/softswiss/BookOfCatsMegaways.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(548, 'softswiss/LuckyOak', 'Lucky Oak', 'https://cdn2.softswiss.net/i/s6/softswiss/LuckyOak.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(549, 'softswiss/Lucky8MergeUp', 'Lucky 8 Merge Up', 'https://cdn2.softswiss.net/i/s6/softswiss/Lucky8MergeUp.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(550, 'softswiss/EasterHeist', 'Easter Heist', 'https://cdn2.softswiss.net/i/s6/softswiss/EasterHeist.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(551, 'softswiss/MiceAndMagic', 'Mice & Magic Wonder Spin', 'https://cdn2.softswiss.net/i/s6/softswiss/MiceAndMagic.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(552, 'softswiss/AlienFruits', 'Alien Fruits', 'https://cdn2.softswiss.net/i/s6/softswiss/AlienFruits.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(553, 'softswiss/CloverBonanza', 'Clover Bonanza', 'https://cdn2.softswiss.net/i/s6/softswiss/CloverBonanza.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(554, 'softswiss/LuckyCrew', 'Lucky Crew', 'https://cdn2.softswiss.net/i/s6/softswiss/LuckyCrew.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(555, 'softswiss/LuckyFarmBonanza', 'Lucky Farm Bonanza', 'https://cdn2.softswiss.net/i/s6/softswiss/LuckyFarmBonanza.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(556, 'softswiss/Soccermania', 'soccermania', 'https://cdn2.softswiss.net/i/s6/softswiss/Soccermania.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(557, 'softswiss/SavageBuffaloSpiritMegaways', 'savage Buffalo Spirit Megaways', 'https://cdn2.softswiss.net/i/s6/softswiss/SavageBuffaloSpiritMegaways.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(558, 'softswiss/BonanzaBillion', 'Bonanza Billion', 'https://cdn2.softswiss.net/i/s6/softswiss/BonanzaBillion.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(559, 'softswiss/HitTheRoute', 'Hit The Route', 'https://cdn2.softswiss.net/i/s6/softswiss/HitTheRoute.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(560, 'softswiss/GiftRush', 'Gift Rush', 'https://cdn2.softswiss.net/i/s6/softswiss/GiftRush.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(561, 'softswiss/MissCherryFruits', 'Miss Cherry Fruits', 'https://cdn2.softswiss.net/i/s6/softswiss/MissCherryFruits.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(562, 'softswiss/WildCashDice', 'Wild Cash Dice', 'https://cdn2.softswiss.net/i/s6/softswiss/WildCashDice.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(563, 'softswiss/DiceBonanza', 'Dice Bonanza', 'https://cdn2.softswiss.net/i/s6/softswiss/DiceBonanza.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(564, 'softswiss/WildCashX9990', 'Wild Cash x9990', 'https://cdn2.softswiss.net/i/s6/softswiss/WildCashX9990.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(565, 'softswiss/JohnnyCash', 'Johnny Cash', 'https://cdn2.softswiss.net/i/s6/softswiss/JohnnyCash.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(566, 'softswiss/AztecMagicMegaways', 'Aztec Magic Megaways', 'https://cdn2.softswiss.net/i/s6/softswiss/AztecMagicMegaways.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(567, 'softswiss/BeastBand', 'Beast Band', 'https://cdn2.softswiss.net/i/s6/softswiss/BeastBand.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(568, 'softswiss/DragonsGold100', 'Dragon\'s Gold 100', 'https://cdn2.softswiss.net/i/s6/softswiss/DragonsGold100.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(569, 'softswiss/LuckyLadyMoon', 'Lady Wolf Moon', 'https://cdn2.softswiss.net/i/s6/softswiss/LuckyLadyMoon.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(570, 'softswiss/WildChicago', 'Wild Chicago', 'https://cdn2.softswiss.net/i/s6/softswiss/WildChicago.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(571, 'softswiss/DiceMillion', 'Dice Million', 'https://cdn2.softswiss.net/i/s6/softswiss/DiceMillion.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(572, 'softswiss/Road2Riches', 'Road 2 Riches', 'https://cdn2.softswiss.net/i/s6/softswiss/Road2Riches.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(573, 'softswiss/JokerQueen', 'Joker Queen', 'https://cdn2.softswiss.net/i/s6/softswiss/JokerQueen.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(574, 'softswiss/FruitMillion', 'Fruit Million', 'https://cdn2.softswiss.net/i/s6/softswiss/FruitMillion.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(575, 'softswiss/BigAtlantisFrenzy', 'Big Atlantis Frenzy', 'https://cdn2.softswiss.net/i/s6/softswiss/BigAtlantisFrenzy.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(576, 'softswiss/HalloweenBonanza', 'Halloween Bonanza', 'https://cdn2.softswiss.net/i/s6/softswiss/HalloweenBonanza.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(577, 'softswiss/SavageBuffaloSpirit', 'savage Buffalo Spirit', 'https://cdn2.softswiss.net/i/s6/softswiss/SavageBuffaloSpirit.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(578, 'softswiss/ElvisFrogTrueways', 'Elvis Frog TRUEWAYS', 'https://cdn2.softswiss.net/i/s6/softswiss/ElvisFrogTrueways.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(579, 'softswiss/PennyPelican', 'Penny Pelican', 'https://cdn2.softswiss.net/i/s6/softswiss/PennyPelican.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(580, 'softswiss/CandyMonsta', 'Candy Monsta', 'https://cdn2.softswiss.net/i/s6/softswiss/CandyMonsta.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(581, 'softswiss/DomnitorsTreasure', 'Domnitor\'s Treasure', 'https://cdn2.softswiss.net/i/s6/softswiss/DomnitorsTreasure.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(582, 'softswiss/WildCash', 'Wild Cash', 'https://cdn2.softswiss.net/i/s6/softswiss/WildCash.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(583, 'softswiss/LuckAndMagic', 'Luck & Magic', 'https://cdn2.softswiss.net/i/s6/softswiss/LuckAndMagic.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(584, 'softswiss/AztecMagicBonanza', 'Aztec Magic Bonanza', 'https://cdn2.softswiss.net/i/s6/softswiss/AztecMagicBonanza.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(585, 'softswiss/GoldRushWithJohnny', 'Gold Rush with Johnny Cash', 'https://cdn2.softswiss.net/i/s6/softswiss/GoldRushWithJohnny.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(586, 'softswiss/Gangsterz', 'Gangsterz', 'https://cdn2.softswiss.net/i/s6/softswiss/Gangsterz.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(587, 'softswiss/BeerBonanza', 'Beer Bonanza', 'https://cdn2.softswiss.net/i/s6/softswiss/BeerBonanza.webp', 1, 'bgaming', 1, 'slot', 3, 'igamewin'),
(588, 'fortune-gems-2', 'Fortune Gems 2', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/LGmOw0w4iklkLKXz81LfNjNFjDQw5IlZgRSULqy2.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(589, 'fortune-gems-3', 'Fortune Gems 3', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/8lYBJBMzSLs2Rb6DTsHe4h8jmBfVeeUElsE8qbWa.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(590, 'fortune-gems', 'Fortune Gems', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/7hnsYn70DF8p9aAUBr9tPoqMjSDbBxzvNhXdrgle.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(591, 'crazy-seven', 'Crazy Seven', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/W0rhf4hboBqVZVD8TMfV7TYULMgRZlVkIUXw1Fqp.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(592, 'charge-buffalo', 'Charge Buffalo', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/MPtl94BJIgoZGkDzs7iNMHBnkQKKWRJfsxEAW8jl.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(593, 'mega-ace', 'Mega Ace', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/KhQJkNq2D5g7XaZQcgmHokHLENlr5nHenQqghQIp.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(594, 'super-rich', 'Super Rich', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/tVWxwz3tQMKa3TPfMjq9GIm7pwiyEKHGWmDMlO0P.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(595, 'boxingking', 'BoxingKing', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/M5LoqW4yYYVmbMs8jrlBWppsFhMDSWqE9yqINrgc.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(596, 'golden-bank', 'Golden Bank', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/CzjCNYAOnopzNiDJgdfg7I6ZqWoO2bwqxGRMV8t5.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(597, 'aztec-priestess', 'Aztec Priestess', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/a7vxY4coDk5pFrwsZZ2kY8NsM1Bnb1rNK8kLXWBo.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(598, 'ali-baba', 'Ali Baba', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/trieiElNLzrCM5dBtXg1yteriX4r8kQxru2xrtOO.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(599, 'lucky-coming', 'Lucky Coming', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/84zKPNK3RzuNY5tJh9E2jwIV5kzpxZBv4QoRfx9E.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(600, 'crazy-fafafa', 'Crazy FaFaFa', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/xMq0C95WRtknLJC8ISOjiLD3p79oeaw2dcUqjZcD.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(601, 'fortune-tree', 'Fortune Tree', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/1nJZS31DrT0NJqDfcfVDR5DGS12TiKniUahJ4efj.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(602, 'book-of-gold', 'Book of Gold', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/Qw37suZFMwVp2VJr5JwxD88mEAEln7oEtCkRQBLc.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(603, 'jungle-king', 'Jungle King', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/znfDyGil7KHqljcKEyK5eaUAeA0l0A0DWSMeT2Ma.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(604, 'magic-lamp', 'Magic Lamp', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/nLgQLeo2bdl3ZV33xKuWCq36m5IADrGXWjpnECcr.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(605, 'devil-fire-2', 'Devil Fire 2', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/3flwlSPsPtpqvPxZh2MKZuUNhGFvNzYO8YPucdi0.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(606, 'gold-rush', 'Gold Rush', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/SutNHWQCT0brUMPFoGtHWyhxDaV4faH5UJNQK2nF.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(607, 'twin-wins', 'TWIN WINS', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/fLafPjEM19jK7sdCoMJsXtzuRp4wDrvwg56vpGKn.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(608, 'bonus-hunter', 'Bonus Hunter', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/sGwnH7w0dmV98sYjXkGjH20zhziGYkiWqD3pvICz.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(609, 'world-cup', 'World Cup', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/RubvW163jBzIJIj7Ls8DseMYyS39cNnlbcwLqefX.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(610, 'pharaoh-treasure', 'Pharaoh Treasure', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/rwR2jADCmzvGxtGvgHkV1Dd9VC4ibn85Wa4vbrNq.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(611, 'fortune-monkey', 'Fortune Monkey', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/1c09luDhnuarYPWmhNZGFLbKvMkksQblvHe5ekrM.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(612, 'golden-queen', 'Golden Queen', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/Aw9r80iVAeb4r93PrkruL8NskWqaEB4AKGCdGNsi.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(613, 'legacy-of-egypt', 'Legacy of Egypt', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/wmngGe7gHkKjth12VLoQy60S5E68qGD8SkZDrQW3.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(614, 'fa-fa-fa', 'Fa Fa Fa', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/YVH4ILoaSoPVtFWrDHWR5M4xecy4SrL8m1OyNY6q.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(615, 'samba', 'Samba', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/uqju8fzqNHgGOzBMfGAk86UwV3iSRhh2dJ9Ig434.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(616, 'pirate-queen', 'Pirate Queen', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/4ubG7KPOLQdHN5xdrX4gI8gWrY9ysIGlxZ5LcpmW.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(617, 'roma-x', 'Roma X', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/BpFXjfHC5tyw1VgLnaD0ndSQR5HCTPL1t7g7Mpjj.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(618, 'bone-fortune', 'Bone Fortune', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/0NMm5znugdsgOagdTNGinTDLOCWmBljNVyKBuccK.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(619, 'mayan-empire', 'Mayan Empire', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/GRydicVLIcV1EliCXdwpTFUPStmb2tdOBusaYm9R.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(620, 'devil-fire', 'Devil Fire', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/DxIOnb8tRRFzDYCRnNfDB96W1c5hW05FcJnYcQe3.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(621, 'god-of-martial', 'God Of Martial', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/9VNpMeB5LhtPyXMHAqUEIS2934BmdDwnfS5aork4.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(622, 'cricket-king-18', 'Cricket King 18', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/Yc0iRAnTEZQ1z1zRIKTGNdRrHRX7IwlekGes8kAs.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(623, 'xiyangyang', 'XiYangYang', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/rv03MnyE113hguP39QJczWJ9aLo8KZuhXJAmtdSi.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(624, 'bao-boon-chin', 'Bao boon chin', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/anLonuWIeJpa4dHWHFuPuPdvjgGTGuaqj9Yg5197.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(625, 'fortunepig', 'Fortune Pig', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/qcHiZHhXxf3sS8tjqBIQmleM0dZP6Zd8aRoTTiRm.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(626, 'thor-x', 'Thor X', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/hIqrVrY2nxEAKQa7usmdsB5wzDau4xb8sj62Mncs.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(627, 'the-pig-house', 'The Pig House', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/PG6prYy7tSW1EJq6nhSxHwzoGJCyaUD5upKRus0E.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(628, 'agent-ace', 'Agent Ace', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/4iJOHHJMtF4wC89eaUiMLpQrTZWh7Ox15lgZSBV8.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(629, 'night-city', 'Night City', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/l9tglMO9cITw8GJGwWjGKfyGmMDFW3Y9muWnNsH8.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(630, 'fengshen', 'Fengshen', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/2zyjnzyHpfxBBLLSJpK79perLIQQklZHLBJ4tGf1.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(631, 'sin-city', 'Sin City', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/ucjaOJZCks4bkX8lXguqnCz90DSwMtCYyW2hnubj.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(632, 'chin-shi-huang', 'Chin Shi Huang', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/zzmyRGegMynQA2xjpexoeNtH7JHZPmIQJE2qzljd.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(633, 'witches-night', 'Witches Night', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/iVleim1PQh0ru4zigjdFheWL4okAc8869Nt3unkK.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(634, 'dabanggg', 'Dabanggg', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/6783DU3wFo7b6LxkeDkOLOCLJ15XzCuLc8fNskGA.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(635, 'sweet-land', 'Sweet Land', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/6gjWT5M7ESdWCYcF1mF8zRxlffhin11stP3oZi2q.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(636, 'cricket-sah-75', 'Cricket Sah 75', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/r6H6rqMvIQavFhfFaX831OIUAjNFgSmollvgiY3l.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(637, 'zeus', 'Zeus', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/ev52lnWrF6soryGTnt5qafnuPOdHzhDjXoPlTPqf.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(638, 'neko-fortune', 'Neko Fortune', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/VZRGHowsPgKVO4Wx1Cg1zaK6UBmN1MVjMHzBuHTA.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(639, 'king-arthur', 'King Arthur', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/U04cnvDwpBW97Okxz7KvZf7eOdlrB4i4gB3iLOce.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(640, 'happy-taxi', 'Happy Taxi', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/d3jhadDsYzjki9GA6izGTr7fCV1XKU66NYo3OGk8.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(641, 'shanghai-beauty', 'Shanghai Beauty', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/XJsWYaFhZtz4szT4NuPihSsPWts5Lw3aPuYdP2Un.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(642, 'party-night', 'Party Night', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/HUOfU0QDJ01vsAGZM01hPtA4el1bmefvZCPadPrs.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(643, 'super-ace-deluxe', 'Super Ace Deluxe', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/HskVGEVL6UgOWi8rabMgSoOviMD4pFZNuMU3pdvd.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(644, 'super-ace', 'Super Ace', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/7ycivbeSFZ2FzMIi4UfVi4vfmALw2iwP3gEaCsmO.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(645, 'bangla-beauty', 'Bangla Beauty', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/3zYqXEykzJtrTLVBtLVQqHx2NIoy7BgzguIWiGwa.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(646, 'arena-fighter', 'Arena Fighter', 'https://storage.googleapis.com/tada-cdn-asia/All-In-One/production/img/jiliPlusPlayer/games/c5VgTbR3axH1Xv9noEJdJygBF8yn8dL2pGZ2f76w.png', 1, 'slot-jili', 1, 'slot', 3, 'igamewin'),
(647, 'fourbeauty', 'Four Beauties', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/046.Four Beauties.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(648, 'legend5x25', 'Legend of the King', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/048.Legend of the King.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(649, 'magician', 'Magician', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/065.Magician.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(650, 'hiphop5x25', 'Street Dance of China', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/109.StreetDanceShow.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(651, 'wildchaser5x20', 'Battle Field', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/120.BattleField.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(652, 'sailor', 'Sailor Princess', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9660.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(653, 'shiningstars', 'ShiningStars', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/11268.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(654, 'tgow2', 'Cai Shen Dao', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/11554.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(655, 'peeping', 'Peeping', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/11556.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(656, 'dragonball', 'Saiyan Battle', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/001.Saiyan Battle.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(657, 'tgow', 'Wealthy God Arriving', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/012.Wealthy God Arriving.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(658, 'tlod', 'Investiture of Gods', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/018.Investiture of Gods.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(659, 'whitesnake', 'Tales of White Snake', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/020.Tales of White Snake.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(660, 'dnp', 'DragonPhoenix Prosper', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/022.DragonPhoenix Prosper.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(661, 'fls', 'FULUSHOU', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/025.FULUSHOU.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(662, 'fourss', 'Four Holy Beasts', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/026.Four Holy Beasts.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(663, 'casino', '3D Slot', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/028.3D Slot.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(664, 'rocknight', 'RocknRoll Night', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/031.RocknRoll Night.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(665, 'bluesea', 'Blue Sea', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/032.Blue Sea.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(666, 'klnz5x20', 'Happy Farm', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/033.Happy Farm.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(667, 'circus', 'Crazy Circus', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/034.Crazy Circus.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(668, 'dash', 'Four Wheels & Bro', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/035.Four Wheels & Bro.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(669, 'sq5x243', '4X4 BATTLE', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/036.4X4 BATTLE.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(670, 'estate5x25', 'Monopoly', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/039.Monopoly.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(671, 'piratetreasure', 'Pirate_Treasure', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/042.PirateTreasure.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(672, 'merryxmas', 'Merry Xmas', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/044.Merry Xmas.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(673, 'sweethouse', 'Candy House', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/047.Candy House.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(674, 'rocket6x25', 'Happiness Overflow', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/049.Happiness Overflow.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(675, 'opera', 'Beijing opera', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/051.Beijing opera.jpeg', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(676, 'bigred', 'Big Red', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/055.Big Red.jpeg', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(677, 'wrathofthor', 'Wrath of Thor', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/056.Wrath of Thor.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(678, 'guhuozai', 'Blood Street', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/058.Blood Street.jpeg', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(679, 'camgirl5x25', 'Sexy Camgirl', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/062.Sexy Camgirl.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(680, 'hotpotfeast', 'Hotpot Feast', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/064.Hotpot Feast.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(681, 'armorCrisis5x25', 'Armor Crisis', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/067.Armor Crisis.jpeg', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(682, 'galaxywars', 'Galaxy Wars', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/068.Galaxy Wars.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin');
INSERT INTO `games` (`id`, `game_code`, `game_name`, `banner`, `status`, `provider`, `popular`, `type`, `game_type`, `distribution`) VALUES
(683, 'easyrider', 'Easy Rider', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/069.Easy Rider.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(684, 'bwzq5x25', 'Joust for a spouse', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/070.Joust for a spouse.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(685, 'shokudo', 'shokudo', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/073.shokudo.jpeg', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(686, 'oceanpark5x50', 'Ocean Park', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/075.Ocean Park.jpeg', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(687, 'garden', 'Little Big Garden', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/079.Little Big Garden.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(688, 'superstar5x50', 'Star Generation', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/083.Star Generation.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(689, 'shopping5x243', 'National Carnival', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/090.National Carnival.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(690, 'clash', 'Clash of Three kingdoms', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/088.Clash of Three kingdoms.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(691, 'cheekyemojis', 'Cheeky Emojis', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/091.Cheeky Emojis.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(692, 'icefire', 'Ice And Fire', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/093.Ice And Fire.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(693, 'onenight5x243', 'Truffle Butter', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/096.Truffle Butter.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(694, 'secretdate', 'Secret Date', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/104.Secret Date.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(695, 'cute5x50', 'Castle Guardian', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/107.CastleGurdian.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(696, 'museum', 'Wondrous Museum', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/110.WondrousMuseum.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(697, 'mysticalstones', 'Mystical Stones', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/111.MysticalStones.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(698, 'westwild', 'West Wild', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/116.WestWild.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(699, 'bloodmoon', 'Blood Wolf legend', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/118.BloodWolf.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(700, 'sgkill5x20', 'Three Kingdoms', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/122.ThreeKingdoms.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(701, 'candycrush', 'Candy Kingdom', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/118.CandyKingdom.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(702, 'muaythai', 'Muaythai', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9659.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(703, 'nezha', 'Nezha Legend', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/_9662.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(704, 'bird', 'Bird Island', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10900.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(705, 'chess', 'Dragon Auto Chess', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10901.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(706, 'honor', 'Field Of Honor', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10902.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(707, 'rocknight2', 'Rock Night2', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10903.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(708, 'girlgroup5x25', 'Sexy Girls', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10906.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(709, 'boss5x20', 'Rich Asians', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10907.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(710, 'treasures', 'Secret Treasures', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/10909.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(711, 'empire5x40', 'The Magic Blade', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12033.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(712, 'maidhotel5x25', 'Maid Hotel', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12035.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin'),
(713, 'secretary3x9', 'Sexy Secretary', 'https://resource.fdsigaming.com/thumbnail/slot/dtech/12036.png', 1, 'slot-dreamtech', 1, 'slot', 3, 'igamewin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_play`
--

CREATE TABLE `historico_play` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nome_game` text NOT NULL,
  `bet_money` decimal(10,2) NOT NULL DEFAULT 0.00,
  `win_money` decimal(10,2) NOT NULL DEFAULT 0.00,
  `txn_id` text NOT NULL,
  `created_at` datetime NOT NULL,
  `status_play` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_vip`
--

CREATE TABLE `historico_vip` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bonus` float NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `igamewin`
--

CREATE TABLE `igamewin` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL,
  `rtp` int(11) NOT NULL DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `igamewin`
--

INSERT INTO `igamewin` (`id`, `url`, `agent_code`, `agent_token`, `ativo`, `rtp`) VALUES
(1, 'https://igamewin.com/api/v1', 'alexcliente', 'd57bf9cc941811f0bc8ebc2411881493', 1, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ip_bans`
--

CREATE TABLE `ip_bans` (
  `id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT 'SQL Injection attempt',
  `banned_at` datetime NOT NULL DEFAULT current_timestamp(),
  `expires_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `kingsslots`
--

CREATE TABLE `kingsslots` (
  `id` int(11) NOT NULL,
  `agent_token` varchar(255) NOT NULL,
  `agent_secret_key` varchar(255) NOT NULL,
  `agent_code` varchar(100) NOT NULL,
  `access_token` text DEFAULT NULL,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `api_url` varchar(255) DEFAULT 'https://kingslotsapi.shop/api/v1',
  `status` tinyint(1) DEFAULT 1 COMMENT '1=ativo, 0=inativo',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mac_bans`
--

CREATE TABLE `mac_bans` (
  `id` int(11) NOT NULL,
  `mac_address` varchar(17) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT 'SQL Injection attempt',
  `banned_at` datetime NOT NULL DEFAULT current_timestamp(),
  `expires_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `metodos_pagamentos`
--

CREATE TABLE `metodos_pagamentos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `pix_id` varchar(255) DEFAULT NULL,
  `flag` tinyint(1) DEFAULT NULL,
  `pix_account` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `metodos_pagamentos`
--

INSERT INTO `metodos_pagamentos` (`id`, `user_id`, `realname`, `pix_id`, `flag`, `pix_account`, `state`, `created_at`) VALUES
(4, 15467, 'Jean', '19971150508', 1, NULL, 1, '2025-09-21 03:29:45'),
(5, 15470, 'Marco Antônio Wicienski ', '05462904002', 1, NULL, 1, '2025-09-21 19:57:48'),
(6, 15469, 'Taywanna ', '00609829262', 1, NULL, 1, '2025-09-21 20:17:49'),
(7, 15477, 'Kauan vinicius', '13696816906', 1, NULL, 1, '2025-09-21 23:03:39'),
(8, 15491, 'wellerson', '18566259742', 1, NULL, 1, '2025-09-30 03:05:55');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pay_valores_cassino`
--

CREATE TABLE `pay_valores_cassino` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tipo` int(11) NOT NULL DEFAULT 0 COMMENT '0: CPA / 1: REV / 2: GAMES',
  `data_time` datetime NOT NULL,
  `game` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pgclone`
--

CREATE TABLE `pgclone` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `agent_code` text DEFAULT NULL,
  `agent_token` text DEFAULT NULL,
  `agent_secret` text DEFAULT NULL,
  `ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `pgclone`
--

INSERT INTO `pgclone` (`id`, `url`, `agent_code`, `agent_token`, `agent_secret`, `ativo`) VALUES
(1, 'https://asdads.shop/', '', 'IaJHSVpyK0hr5JQX93QRYVBssKubT9Jj', 'uYdeYB8ntWbyXk7LvPdDYVvoBuoXENeP', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `popups`
--

CREATE TABLE `popups` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `redirect_url` text DEFAULT NULL,
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `popups`
--

INSERT INTO `popups` (`id`, `titulo`, `criado_em`, `redirect_url`, `img`, `status`) VALUES
(1, '#LEGALIZADA!', '2024-09-05 05:34:42', 'https://papagaiopgbet.com/', 'bonusgratis.png', 1),
(2, 'PROMOÇÃO BONUS', '2024-09-05 05:34:42', '', 'vOQxL2ADrnJjL48cQCrxi6ItpzdVaYJmpyEBtN3b.webp', 0),
(3, 'SAQUES IMEDIATOS', '2024-09-05 05:34:42', '', 'BsDFnZKknLWLsV5MV5OceVJmOYJPsq9FdW7T9Bwv.webp', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `promocoes`
--

CREATE TABLE `promocoes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `promocoes`
--

INSERT INTO `promocoes` (`id`, `titulo`, `criado_em`, `img`, `status`) VALUES
(1, 'Banner 1', '2024-06-28 18:10:47', '1756349381_aposta.png', 1),
(2, 'Banner 2', '2024-06-28 18:08:02', '1756349403_bonus05.png', 1),
(3, 'Banner 3', '2024-06-28 18:08:02', '1756349414_bonus15.png', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `provedores`
--

CREATE TABLE `provedores` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `provedores`
--

INSERT INTO `provedores` (`id`, `code`, `name`, `type`, `status`) VALUES
(1, 'PGSOFT', 'PGSoft', 'slot', 1),
(2, 'SPRIBE', 'Spribe', 'slot', 1),
(3, 'PRAGMATIC', 'PP', 'slot', 1),
(4, 'slot-cq9', 'CQ9', 'slot', 1),
(5, 'slot-jdb', 'JDB', 'slot', 1),
(6, 'fishing-jdb', 'FishingJDB', 'slot', 1),
(7, 'slot-hacksaw', 'HACKSAW', 'slot', 1),
(8, 'slot-evoplay', 'EVOPLAY', 'slot', 1),
(9, 'jelly', 'Jelly', 'slot', 1),
(10, 'bgaming', 'BGaming', 'slot', 1),
(11, 'original', 'Original', 'slot', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `raspadinha_config`
--

CREATE TABLE `raspadinha_config` (
  `id` int(11) NOT NULL,
  `config_key` varchar(100) NOT NULL,
  `config_value` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `raspadinha_config`
--

INSERT INTO `raspadinha_config` (`id`, `config_key`, `config_value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'preco_cartela', '10', 'Preço da cartela da raspadinha em reais', '2025-10-11 03:11:29', '2025-10-23 05:15:43'),
(2, 'scratch_card_slug', 'centavo-da-sorte', 'Slug identificador da raspadinha', '2025-10-11 03:11:29', '2025-10-11 03:11:29'),
(3, 'ativo', '1', 'Status da raspadinha (1=ativo, 0=inativo)', '2025-10-11 03:11:29', '2025-10-11 03:11:29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `scratch_prizes`
--

CREATE TABLE `scratch_prizes` (
  `id` int(11) NOT NULL,
  `scratch_card_id` int(11) DEFAULT NULL,
  `scratch_card_slug` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `type` enum('item','voucher') NOT NULL,
  `probability` decimal(5,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `scratch_prizes`
--

INSERT INTO `scratch_prizes` (`id`, `scratch_card_id`, `scratch_card_slug`, `name`, `amount`, `image`, `type`, `probability`, `created_at`) VALUES
(35, NULL, 'centavo-da-sorte', '1.000 Reais', 100000.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/1K.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(36, NULL, 'centavo-da-sorte', '700 Reais', 70000.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/700.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(37, NULL, 'centavo-da-sorte', '500 Reais', 50000.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/500-REAIS.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(38, NULL, 'centavo-da-sorte', '200 Reais', 20000.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/200-REAIS.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(39, NULL, 'centavo-da-sorte', 'Smartwatch D20 Shock', 15000.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/item_smartwatch_d20_shock.png?updatedAt=1757352245233', 'item', 0.00, '2025-08-03 05:27:44'),
(40, NULL, 'centavo-da-sorte', '100 Reais', 10000.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/100-reais.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(41, NULL, 'centavo-da-sorte', 'PowerBank', 6000.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/PowerBank%20(%2060.00%20).png?updatedAt=1757374031442', 'item', 0.00, '2025-08-03 05:27:44'),
(42, NULL, 'centavo-da-sorte', '50 Reais', 5000.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/50-reais.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(43, NULL, 'centavo-da-sorte', '20 Reais', 2000.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/20-reais.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(44, NULL, 'centavo-da-sorte', '15 Reais', 1500.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/15-reais.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(45, NULL, 'centavo-da-sorte', '10 Reais', 1000.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/10-reais.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(46, NULL, 'centavo-da-sorte', '5 Reais', 500.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/5-reais.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(47, NULL, 'centavo-da-sorte', '4 Reais', 400.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/4%20reais.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(48, NULL, 'centavo-da-sorte', '3 Reais', 300.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/3%20reais.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(49, NULL, 'centavo-da-sorte', '2 Reais', 200.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/2-reais.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(50, NULL, 'centavo-da-sorte', '1 Real', 100.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/1-real.png', 'voucher', 0.00, '2025-08-03 05:27:44'),
(51, NULL, 'centavo-da-sorte', '0,50 Centavos', 50.00, 'https://ik.imagekit.io/3kbnnws8u/PRIZES/50-CENTAVOS-2.png', 'voucher', 0.00, '2025-08-03 05:27:44');

-- --------------------------------------------------------

--
-- Estrutura para tabela `security_attempts`
--

CREATE TABLE `security_attempts` (
  `id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `type` varchar(50) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT 1,
  `first_attempt` datetime NOT NULL DEFAULT current_timestamp(),
  `last_attempt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `security_bans`
--

CREATE TABLE `security_bans` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` enum('ip','mac') NOT NULL,
  `reason` text NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `security_config`
--

CREATE TABLE `security_config` (
  `id` int(11) NOT NULL,
  `config_key` varchar(100) NOT NULL,
  `config_value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `security_config`
--

INSERT INTO `security_config` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`) VALUES
(1, 'max_attempts', '3', '2025-07-18 16:07:07', '2025-07-18 16:07:07'),
(2, 'ban_duration', '24', '2025-07-18 16:07:07', '2025-07-18 16:07:07'),
(3, 'enable_mac_banning', '1', '2025-07-18 16:07:07', '2025-07-18 16:07:07'),
(4, 'enable_auto_ban', '1', '2025-07-18 16:07:07', '2025-07-18 16:07:07'),
(5, 'log_level', 'all', '2025-07-18 16:07:07', '2025-07-18 16:07:07'),
(6, 'enable_notifications', '0', '2025-07-18 16:07:07', '2025-07-18 16:07:07'),
(7, 'notification_email', '', '2025-07-18 16:07:07', '2025-07-18 16:07:07'),
(8, 'whitelist_ips', '127.0.0.1\n::1\nlocalhost\n31.97.159.248\n212.85.13.226', '2025-07-18 16:07:07', '2025-10-05 22:03:06'),
(9, 'blacklist_patterns', 'UNION SELECT\nDROP TABLE\nINSERT INTO\nDELETE FROM\nUPDATE users\nALTER TABLE', '2025-07-18 16:07:07', '2025-07-18 16:07:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `security_logs`
--

CREATE TABLE `security_logs` (
  `id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `mac_address` varchar(17) DEFAULT NULL,
  `event_type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `solicitacao_saques`
--

CREATE TABLE `solicitacao_saques` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `transacao_id` text NOT NULL,
  `transaction_id_gateway` varchar(191) DEFAULT NULL,
  `gateway_type` varchar(50) DEFAULT 'codexpay',
  `valor` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tipo` text NOT NULL,
  `pix` text NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `data_cad` date NOT NULL,
  `data_hora` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `data_att` datetime DEFAULT NULL,
  `tipo_saque` int(11) NOT NULL DEFAULT 0 COMMENT '0: cassino / 1: afiliados'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `split_config`
--

CREATE TABLE `split_config` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `split_logs`
--

CREATE TABLE `split_logs` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `split_email` varchar(255) NOT NULL,
  `original_amount` decimal(10,2) NOT NULL,
  `split_percentage` decimal(5,2) NOT NULL,
  `split_amount` decimal(10,2) NOT NULL,
  `status` enum('pending','processed','failed') NOT NULL DEFAULT 'pending',
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tema`
--

CREATE TABLE `tema` (
  `id` int(11) NOT NULL,
  `cor_padrao` varchar(45) DEFAULT NULL,
  `custom_css` longtext DEFAULT NULL,
  `texto` varchar(45) DEFAULT NULL,
  `status_topheader` int(11) NOT NULL DEFAULT 0,
  `cor_topheader` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tema`
--

INSERT INTO `tema` (`id`, `cor_padrao`, `custom_css`, `texto`, `status_topheader`, `cor_topheader`) VALUES
(0, '#9BCD10', '', '#FFFFFF', 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tokens_recuperacoes`
--

CREATE TABLE `tokens_recuperacoes` (
  `id_usuario` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `transacoes`
--

CREATE TABLE `transacoes` (
  `id` int(11) NOT NULL,
  `transacao_id` varchar(255) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `tipo` enum('deposito','saque') DEFAULT NULL,
  `data_hora` varchar(255) DEFAULT NULL,
  `qrcode` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `status` enum('pago','processamento','expirado') DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `afiliado_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `transacoes_raspadinha`
--

CREATE TABLE `transacoes_raspadinha` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `scratch_card_slug` varchar(100) NOT NULL,
  `tipo_transacao` enum('compra','premio') NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `saldo_antes` decimal(10,2) NOT NULL,
  `saldo_depois` decimal(10,2) NOT NULL,
  `is_winner` tinyint(1) DEFAULT 0,
  `premio_nome` varchar(255) DEFAULT NULL,
  `premio_amount` decimal(10,2) DEFAULT NULL,
  `premio_tipo` enum('item','voucher') DEFAULT NULL,
  `jogo_grid` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `saldo_afiliados` decimal(10,2) DEFAULT 0.00,
  `real_name` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `spassword` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `data_cad` datetime DEFAULT NULL,
  `invite_code` varchar(255) NOT NULL,
  `invitation_code` varchar(255) DEFAULT NULL,
  `senha_saque` int(11) NOT NULL DEFAULT 0,
  `senhaparasacar` varchar(255) DEFAULT NULL,
  `pessoas_convidadas` int(11) NOT NULL DEFAULT 0,
  `statusaff` int(11) NOT NULL DEFAULT 0,
  `tipo_pagamento` int(11) NOT NULL DEFAULT 0,
  `banido` int(11) DEFAULT 0,
  `historico` text DEFAULT NULL,
  `favoritos` text DEFAULT NULL,
  `lvl_vip` int(11) DEFAULT 1,
  `rtp` int(11) DEFAULT 50,
  `modo_demo` int(11) DEFAULT 0,
  `active_percentage` tinyint(4) DEFAULT 0,
  `lvl1_percentage` int(11) DEFAULT 0,
  `lvl2_percentage` int(11) DEFAULT 0,
  `lvl3_percentage` int(11) DEFAULT 0,
  `prox_salario` date DEFAULT NULL,
  `prox_salario_valor` decimal(10,2) DEFAULT NULL,
  `comissao_percentual` decimal(5,2) NOT NULL DEFAULT 0.00,
  `saque_minimo` decimal(10,2) NOT NULL DEFAULT 100.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios_online`
--

CREATE TABLE `usuarios_online` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `ip_visita` varchar(45) NOT NULL,
  `ultima_acao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pagina_atual` varchar(255) NOT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `refer_visita` text DEFAULT NULL,
  `nav_os` text DEFAULT NULL,
  `mac_os` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_levels`
--

CREATE TABLE `vip_levels` (
  `id` int(11) NOT NULL,
  `id_vip` int(11) NOT NULL,
  `meta` float NOT NULL,
  `bonus` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `vip_levels`
--

INSERT INTO `vip_levels` (`id`, `id_vip`, `meta`, `bonus`) VALUES
(1, 1, 50, 5),
(2, 2, 200, 7),
(3, 3, 300, 15),
(4, 4, 500, 35),
(5, 5, 1000, 45),
(6, 6, 2000, 80),
(7, 7, 3000, 100),
(8, 8, 5000, 120),
(9, 9, 15000, 150),
(10, 10, 20000, 200),
(11, 11, 25000, 300),
(12, 12, 30000, 400),
(13, 13, 50000, 500),
(14, 14, 100000000, 3000),
(15, 15, 100000, 1000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `visita_site`
--

CREATE TABLE `visita_site` (
  `id` int(11) NOT NULL,
  `nav_os` text DEFAULT NULL,
  `mac_os` text DEFAULT NULL,
  `ip_visita` text DEFAULT NULL,
  `refer_visita` text DEFAULT NULL,
  `data_cad` date DEFAULT NULL,
  `hora_cad` time DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `pais` text DEFAULT NULL,
  `cidade` text DEFAULT NULL,
  `estado` text DEFAULT NULL,
  `ads_tipo` text DEFAULT NULL,
  `inviter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `webhook`
--

CREATE TABLE `webhook` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `bot_id` varchar(255) NOT NULL,
  `chat_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `webhook`
--

INSERT INTO `webhook` (`id`, `nome`, `bot_id`, `chat_id`, `status`) VALUES
(1, 'Cadastros e Pixs', 'Insira o ID', 'Insira o Chat ID', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `afiliados_config`
--
ALTER TABLE `afiliados_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `apipragmatic`
--
ALTER TABLE `apipragmatic`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bau`
--
ALTER TABLE `bau`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `codexpay`
--
ALTER TABLE `codexpay`
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cupom`
--
ALTER TABLE `cupom`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cupom_usados`
--
ALTER TABLE `cupom_usados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `financeiro`
--
ALTER TABLE `financeiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fiverscan`
--
ALTER TABLE `fiverscan`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `floats`
--
ALTER TABLE `floats`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `historico_play`
--
ALTER TABLE `historico_play`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `historico_vip`
--
ALTER TABLE `historico_vip`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `igamewin`
--
ALTER TABLE `igamewin`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`),
  ADD KEY `expires_at` (`expires_at`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `idx_ip_bans_active` (`is_active`,`expires_at`);

--
-- Índices de tabela `kingsslots`
--
ALTER TABLE `kingsslots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `mac_bans`
--
ALTER TABLE `mac_bans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mac_address` (`mac_address`),
  ADD KEY `expires_at` (`expires_at`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `idx_mac_bans_active` (`is_active`,`expires_at`);

--
-- Índices de tabela `metodos_pagamentos`
--
ALTER TABLE `metodos_pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pay_valores_cassino`
--
ALTER TABLE `pay_valores_cassino`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pgclone`
--
ALTER TABLE `pgclone`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `promocoes`
--
ALTER TABLE `promocoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `provedores`
--
ALTER TABLE `provedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `raspadinha_config`
--
ALTER TABLE `raspadinha_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Índices de tabela `scratch_prizes`
--
ALTER TABLE `scratch_prizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scratch_card_id` (`scratch_card_id`),
  ADD KEY `idx_scratch_prizes_slug` (`scratch_card_slug`);

--
-- Índices de tabela `security_attempts`
--
ALTER TABLE `security_attempts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_type` (`ip`,`type`),
  ADD KEY `last_attempt` (`last_attempt`);

--
-- Índices de tabela `security_bans`
--
ALTER TABLE `security_bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `value_type` (`value`,`type`),
  ADD KEY `active` (`active`);

--
-- Índices de tabela `security_config`
--
ALTER TABLE `security_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Índices de tabela `security_logs`
--
ALTER TABLE `security_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `event_type` (`event_type`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `idx_security_logs_ip_time` (`ip`,`created_at`);

--
-- Índices de tabela `solicitacao_saques`
--
ALTER TABLE `solicitacao_saques`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `split_config`
--
ALTER TABLE `split_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `split_logs`
--
ALTER TABLE `split_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `split_email` (`split_email`),
  ADD KEY `status` (`status`);

--
-- Índices de tabela `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `transacoes`
--
ALTER TABLE `transacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `transacoes_raspadinha`
--
ALTER TABLE `transacoes_raspadinha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_scratch_card_slug` (`scratch_card_slug`),
  ADD KEY `idx_tipo_transacao` (`tipo_transacao`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios_online`
--
ALTER TABLE `usuarios_online`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vip_levels`
--
ALTER TABLE `vip_levels`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `visita_site`
--
ALTER TABLE `visita_site`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `webhook`
--
ALTER TABLE `webhook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `afiliados_config`
--
ALTER TABLE `afiliados_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `bau`
--
ALTER TABLE `bau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `cupom_usados`
--
ALTER TABLE `cupom_usados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `financeiro`
--
ALTER TABLE `financeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `floats`
--
ALTER TABLE `floats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=714;

--
-- AUTO_INCREMENT de tabela `historico_play`
--
ALTER TABLE `historico_play`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historico_vip`
--
ALTER TABLE `historico_vip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `igamewin`
--
ALTER TABLE `igamewin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ip_bans`
--
ALTER TABLE `ip_bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `kingsslots`
--
ALTER TABLE `kingsslots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mac_bans`
--
ALTER TABLE `mac_bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `metodos_pagamentos`
--
ALTER TABLE `metodos_pagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `pay_valores_cassino`
--
ALTER TABLE `pay_valores_cassino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pgclone`
--
ALTER TABLE `pgclone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `promocoes`
--
ALTER TABLE `promocoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `provedores`
--
ALTER TABLE `provedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `raspadinha_config`
--
ALTER TABLE `raspadinha_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `scratch_prizes`
--
ALTER TABLE `scratch_prizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de tabela `security_attempts`
--
ALTER TABLE `security_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `security_bans`
--
ALTER TABLE `security_bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `security_config`
--
ALTER TABLE `security_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `security_logs`
--
ALTER TABLE `security_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `solicitacao_saques`
--
ALTER TABLE `solicitacao_saques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `split_config`
--
ALTER TABLE `split_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `split_logs`
--
ALTER TABLE `split_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `transacoes`
--
ALTER TABLE `transacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `transacoes_raspadinha`
--
ALTER TABLE `transacoes_raspadinha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15494;

--
-- AUTO_INCREMENT de tabela `usuarios_online`
--
ALTER TABLE `usuarios_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2890;

--
-- AUTO_INCREMENT de tabela `vip_levels`
--
ALTER TABLE `vip_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `visita_site`
--
ALTER TABLE `visita_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- --------------------------------------------------------
--
-- Estrutura para tabela `pixup`
--

CREATE TABLE IF NOT EXISTS `pixup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT 'https://api.pixupbr.com',
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `pixup`
--

INSERT INTO `pixup` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(1, 'https://api.pixupbr.com', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bspay`
--

CREATE TABLE IF NOT EXISTS `bspay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT 'https://api.bspay.co',
  `client_id` text DEFAULT NULL,
  `client_secret` text DEFAULT NULL,
  `atualizado` varchar(45) DEFAULT NULL,
  `ativo` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `bspay`
--

INSERT INTO `bspay` (`id`, `url`, `client_id`, `client_secret`, `atualizado`, `ativo`) VALUES
(1, 'https://api.bspay.co', '', '', NULL, 0);

-- --------------------------------------------------------