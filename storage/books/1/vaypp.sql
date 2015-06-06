-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 28/04/2015 às 13:42
-- Versão do servidor: 5.5.41-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `vaypp`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_albuns_posts`
--

CREATE TABLE IF NOT EXISTS `vpp_albuns_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `img_post` varchar(100) DEFAULT NULL,
  `data_envio` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Fazendo dump de dados para tabela `vpp_albuns_posts`
--

INSERT INTO `vpp_albuns_posts` (`id`, `id_user`, `id_post`, `img_post`, `data_envio`) VALUES
(3, 4, 19, NULL, NULL),
(5, 4, 21, '9c254d8a2d048b9a21415ef4d64477fe_vp.jpg', NULL),
(9, 4, 28, '7445517dda51272645561f8e7d8fba75_vp.jpg', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_amigos`
--

CREATE TABLE IF NOT EXISTS `vpp_amigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_from` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `data_rec` datetime NOT NULL,
  `data_acc` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Fazendo dump de dados para tabela `vpp_amigos`
--

INSERT INTO `vpp_amigos` (`id`, `id_from`, `id_to`, `status`, `data_rec`, `data_acc`) VALUES
(1, 32, 4, 1, '2015-01-13 02:01:04', '2015-01-21 02:20:33'),
(2, 4, 32, 1, '2015-01-13 02:01:04', '2015-01-21 02:20:33'),
(5, 4, 33, 1, '2015-01-13 03:02:20', '2015-02-05 01:41:36'),
(6, 33, 4, 1, '2015-01-13 03:02:20', '2015-02-05 01:41:36'),
(9, 3, 4, 2, '2015-01-16 02:04:57', '0000-00-00 00:00:00'),
(10, 4, 3, 0, '2015-01-16 02:04:57', '0000-00-00 00:00:00'),
(11, 5, 3, 1, '2015-01-16 02:11:36', '2015-01-21 02:32:44'),
(12, 3, 5, 1, '2015-01-16 02:11:36', '2015-01-21 02:32:44'),
(27, 21, 4, 1, '2015-01-20 02:27:20', '2015-01-21 01:44:55'),
(28, 4, 21, 1, '2015-01-20 02:27:20', '2015-01-21 01:44:55'),
(29, 32, 33, 1, '2015-02-05 01:48:31', '2015-02-05 01:48:45'),
(30, 33, 32, 1, '2015-02-05 01:48:31', '2015-02-05 01:48:45'),
(31, 4, 1, 2, '2015-03-12 01:52:10', '2015-03-12 01:53:43'),
(32, 1, 4, 0, '2015-03-12 01:52:10', '2015-03-12 01:53:43'),
(33, 49, 4, 1, '2015-03-12 02:00:34', '2015-03-12 02:01:01'),
(34, 4, 49, 1, '2015-03-12 02:00:34', '2015-03-12 02:01:01'),
(35, 50, 49, 1, '2015-03-26 20:17:23', '0000-00-00 00:00:00'),
(36, 49, 50, 1, '2015-03-26 20:17:24', '0000-00-00 00:00:00'),
(37, 50, 33, 1, '2015-03-26 21:46:34', '0000-00-00 00:00:00'),
(38, 33, 50, 1, '2015-03-26 21:46:34', '0000-00-00 00:00:00'),
(43, 52, 4, -1, '2015-03-31 18:00:51', '0000-00-00 00:00:00'),
(44, 4, 52, -1, '2015-03-31 18:00:51', '0000-00-00 00:00:00'),
(45, 52, 32, -1, '2015-03-31 18:01:01', '0000-00-00 00:00:00'),
(46, 32, 52, -1, '2015-03-31 18:01:01', '0000-00-00 00:00:00'),
(47, 52, 49, 1, '2015-03-31 18:07:52', '0000-00-00 00:00:00'),
(48, 49, 52, 1, '2015-03-31 18:07:52', '0000-00-00 00:00:00'),
(51, 53, 16, 1, '2015-03-31 19:10:35', '0000-00-00 00:00:00'),
(52, 16, 53, 1, '2015-03-31 19:10:35', '0000-00-00 00:00:00'),
(53, 53, 33, 1, '2015-03-31 19:10:42', '0000-00-00 00:00:00'),
(54, 33, 53, 1, '2015-03-31 19:10:42', '0000-00-00 00:00:00'),
(55, 53, 49, 1, '2015-03-31 19:10:52', '0000-00-00 00:00:00'),
(56, 49, 53, 1, '2015-03-31 19:10:52', '0000-00-00 00:00:00'),
(57, 53, 50, 1, '2015-03-31 19:11:19', '0000-00-00 00:00:00'),
(58, 50, 53, 1, '2015-03-31 19:11:19', '0000-00-00 00:00:00'),
(59, 53, 52, 1, '2015-03-31 19:11:34', '0000-00-00 00:00:00'),
(60, 52, 53, 1, '2015-03-31 19:11:34', '0000-00-00 00:00:00'),
(61, 52, 33, 1, '2015-04-01 22:19:06', '0000-00-00 00:00:00'),
(62, 33, 52, 1, '2015-04-01 22:19:06', '0000-00-00 00:00:00'),
(63, 50, 52, 1, '2015-04-02 15:02:35', '0000-00-00 00:00:00'),
(64, 52, 50, 1, '2015-04-02 15:02:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_amigos_bloks`
--

CREATE TABLE IF NOT EXISTS `vpp_amigos_bloks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_user_block` int(11) NOT NULL,
  `data_block` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_auth`
--

CREATE TABLE IF NOT EXISTS `vpp_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `senha` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Fazendo dump de dados para tabela `vpp_auth`
--

INSERT INTO `vpp_auth` (`id`, `email`, `senha`, `status`) VALUES
(1, 'romario@gmail.com', '$1$NE3.Sn/.$F5zVXtc8zT9E0G4uaDftB1', 0),
(2, 'cass@gmail.com', '$1$NE3.Sn/.$F5zVXtc8zT9E0G4uaDftB1', 0),
(3, 'roma@gmail.com', '$1$EA/.7s0.$EDyeSZasqGJv/Mwt.80Mn/', 0),
(4, 'romario.wb@gmail.com', '$1$CU..j64.$jKbrYqaiCOhQWLkMTvHGv0', 0),
(5, 'nigga@gmail.com', '$1$0H3.H94.$JCgXkEvxgyMdwNC/4BmHk/', 0),
(6, 'never@gmail.com', '$1$gk4.pP0.$AYCVI2zgW2jpn1YXlHqRd.', 0),
(7, 'jb@gmail.com', '$1$6Y0.VW/.$B.54u/iA.li8dFN04ZXKL.', 0),
(8, 'g@gmail.com', '$1$4f1.5e..$E1PSaererOxECTo8jlTUu1', 0),
(9, 'aff@gmail.com', '$1$rb2.Y/5.$7SNxopnSmg5MNAsPccT0U.', 0),
(10, 'zuar@gmail.com', '$1$LD4.2H1.$3q7B4xBbdnrS0XgRVERGE/', 0),
(11, 'rug@gmail.com', '$1$ia5.DB..$ce6S2OeNfKlFSoTshuFag.', 0),
(12, 'mauro@gmail.com', '$1$z41.A0/.$BRsbEGo6XLdfLjvmob9nV.', 0),
(13, 'jony@gmail.com', '$1$//0.ab1.$SlW6151GI9IISe4SNOAO2/', 0),
(14, 'merda@gmail.com', '$1$wq1.332.$D36W3n0c7vT1Irk5ssdLh0', 0),
(15, 'cat@gmail.com', '$1$9w..c55.$Ku/J9eeEvk3XZoQM/ya360', 0),
(16, 'az@gmail.com', '$1$Zh2.u./.$1rANyG2sYeVbDNDZB41B71', 0),
(17, 'caca@gmail.com', '$1$fH2.670.$tLPEYYxvRGo.XRNxZ4u6V0', 0),
(18, 'vai@gmail.com', '$1$bg4.I51.$I.kUjlOHSR4rHbqxAgsQK/', 0),
(19, 'pow@gmail.com', '$1$ca5./n0.$GfIRjgYyX0MR1AUKUXBRU1', 0),
(20, 'dj@gmail.com', '$1$xx5.mt..$G33QwuPvUY5omWDGSKyLW.', 0),
(21, 'jap@gmail.com', '$1$19/..R/.$wCGU4VPOx17HhYdU6L7lR.', 0),
(22, 'vava@gmail.com', '$1$IV..xD3.$gvtPChD3KOmIuW/izhL801', 0),
(23, 'cagao@gmail.com', '$1$VX1.4M5.$/8lA2bB5Iq/9YH6FfvJGV/', 0),
(24, 'gim@gmail.com', '$1$5H2.of/.$h2OSUG/PafkVaBwlEjgxy1', 0),
(25, 'master@gmail.com', '$1$tN/.yy/.$6yeborOkECRnsn8jx1VU6.', 0),
(26, 'vid@gmail.com', '$1$mX..1h1.$0sYy4HzX26Q7QyYi8au.r.', 0),
(27, 'run@gmailk.com', '$1$R6..Gm4.$yDDTM8J9P2MO0kBhwE2.p0', 0),
(28, 'vaypp@gmail.com', '$1$Qf0.ZT5.$yn0ufhDCqQcfTacTJmJGz1', 0),
(29, 'hitle@g.com', '$1$b1/.IG2.$KQlmTsXi6rqoFuB65z9CZ0', 0),
(30, 'mix@gmail.com', '$1$XN4.U75.$qiOyDRsnKSEn9K2dujguX0', 0),
(31, 'jax@g.com', '$1$zK..AG3.$mqXLGza8Z5hPx.PCE8FdB/', 0),
(32, 'guest@gmail.com', '$1$QJ/.Z/3.$sEfL5MYjpe7AGBZVjbhJY/', 0),
(33, 'japo@gmail.com', '$1$Uk2.Nb3.$3zR7zZPKgaIeGCwJdkmFE/', 0),
(49, 'saade@gmail.com', '$1$MR2.l04.$CIgfRgZKUoLu9RCDf8ppc.', 0),
(50, 'eniebercunha@gmail.com', '$1$rE1vUtx/$OFd2ZZuV/Nk056T7jrf7v/', 0),
(51, 'testdev@gmail.com', '$1$GvmxDWMz$bb5TqKfMdOLKRVjFd317z/', 0),
(52, 'testenone@gmail.com', '$1$lqro/XNZ$6g7nH7ThGLNyo3bjNSEVU/', 0),
(53, 'ad@hot.com', '$1$tL46/Ivb$iI1asor643MneThfQC8lK1', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_bp`
--

CREATE TABLE IF NOT EXISTS `vpp_bp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_to` int(11) NOT NULL,
  `id_from` int(11) NOT NULL,
  `txt_bp` text NOT NULL,
  `data` datetime NOT NULL,
  `read_msg` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_bp_rej`
--

CREATE TABLE IF NOT EXISTS `vpp_bp_rej` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_comments`
--

CREATE TABLE IF NOT EXISTS `vpp_comments` (
  `id_coment` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `txt_comment` text NOT NULL,
  `data_comment` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id_coment`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=267 ;

--
-- Fazendo dump de dados para tabela `vpp_comments`
--

INSERT INTO `vpp_comments` (`id_coment`, `id_post`, `id_user`, `txt_comment`, `data_comment`, `status`, `type`) VALUES
(3, 21, 4, 'Teste comentÃ¡rio "SOU GATO!".', '2015-02-05 01:18:33', 0, 0),
(4, 11, 4, 'Testando comentÃ¡rio no JAPONES', '2015-02-05 01:34:11', 0, 0),
(28, 28, 4, 'BuzÃ£o...', '2015-02-05 02:17:53', 0, 0),
(29, 28, 33, 'WTF', '2015-02-05 02:18:01', 0, 0),
(30, 28, 4, 'Teste', '2015-02-05 02:21:39', 0, 0),
(31, 28, 4, 'Vamos AlÃ©m do Que Podemos ver! sabe porque? Enxergamos...', '2015-02-05 02:29:01', 0, 0),
(32, 29, 4, 'NÃ£o ganhe o mundo e perca sua alma; sabedoria Ã© melhor que prata e ouro.\n\nBob Mito', '2015-02-05 02:33:48', 0, 0),
(33, 29, 33, 'Amor: 4 Letras, 2 Vogais, 2 Consoantes e 2 Idiotas\nBob Marley', '2015-02-05 02:35:11', 0, 0),
(34, 21, 4, 'Que Beleza!', '2015-02-05 02:37:12', 0, 0),
(35, 11, 4, 'Jap Japo kkk', '2015-02-05 02:37:33', 0, 0),
(36, 29, 4, 'Durma', '2015-02-06 02:20:04', 0, 0),
(43, 35, 4, 'teste2', '2015-02-11 01:47:12', 0, 0),
(45, 35, 4, '123', '2015-02-11 01:50:35', 0, 0),
(46, 34, 4, '1', '2015-02-11 01:58:22', 0, 0),
(47, 33, 4, 'hehehe', '2015-02-11 01:58:26', 0, 0),
(48, 32, 4, 'rsrsrsrs', '2015-02-11 01:58:31', 0, 0),
(49, 32, 4, 'asdasdasd', '2015-02-11 01:58:32', 0, 0),
(50, 31, 4, 'SPAM', '2015-02-11 01:58:37', 0, 0),
(53, 29, 4, 'SPAM', '2015-02-11 01:58:45', 0, 0),
(57, 38, 3, 'WT', '2015-02-19 02:52:13', 0, 0),
(58, 38, 3, 'hohoho', '2015-02-19 02:52:18', 0, 0),
(59, 37, 4, 'teste', '2015-02-19 15:45:34', 0, 0),
(60, 37, 4, 'hehe', '2015-02-28 14:13:21', 0, 0),
(61, 35, 50, 'olÃ¡', '2015-03-31 01:12:30', 0, 0),
(62, 35, 50, 'olÃ©\nolÃ©', '2015-03-31 01:12:50', 0, 0),
(63, 39, 50, 'olÃ¡', '2015-03-31 01:17:08', 0, 0),
(64, 35, 50, 'xicara de chÃ¡\n', '2015-03-31 02:23:51', 0, 0),
(65, 35, 50, 'olas\n\n', '2015-03-31 02:44:00', 0, 0),
(66, 41, 50, 'cara\n', '2015-03-31 21:29:56', 0, 0),
(67, 40, 50, 'test\n', '2015-03-31 21:30:01', 0, 0),
(68, 35, 50, 'osst\n', '2015-03-31 21:30:14', 0, 0),
(69, 34, 50, 'sa\n', '2015-03-31 21:44:00', 0, 0),
(70, 39, 50, 'cadar\n', '2015-04-01 16:04:28', 0, 0),
(71, 41, 50, 'olÃ¡\n', '2015-04-01 16:43:09', 0, 0),
(72, 41, 50, 'olÃ¡', '2015-04-01 16:55:00', 0, 0),
(73, 41, 53, 'carar', '2015-04-01 20:41:28', 0, 0),
(74, 41, 53, 'carar', '2015-04-01 20:41:30', 0, 0),
(75, 41, 53, 'carar', '2015-04-01 20:41:34', 0, 0),
(76, 41, 53, 'carar', '2015-04-01 20:41:34', 0, 0),
(77, 41, 53, 'carar', '2015-04-01 20:41:43', 0, 0),
(78, 41, 53, 'Asd\n', '2015-04-01 20:41:50', 0, 0),
(79, 41, 53, 'kara\n', '2015-04-01 20:42:14', 0, 0),
(80, 39, 53, 'cara', '2015-04-01 20:43:55', 0, 0),
(81, 39, 53, 'cara', '2015-04-01 20:44:30', 0, 0),
(82, 39, 53, 'cara\n', '2015-04-01 20:46:16', 0, 0),
(83, 39, 53, 'Pool\n', '2015-04-01 20:46:37', 0, 0),
(84, 39, 53, 'Pool\n', '2015-04-01 20:46:41', 0, 0),
(85, 39, 53, 'Pool\n', '2015-04-01 20:46:42', 0, 0),
(86, 39, 53, 'Pool\n', '2015-04-01 20:46:43', 0, 0),
(87, 39, 53, 'Pool\n', '2015-04-01 20:46:43', 0, 0),
(88, 39, 53, 'Pool\n', '2015-04-01 20:46:43', 0, 0),
(89, 41, 53, 'muito bom', '2015-04-01 20:47:25', 0, 0),
(90, 41, 53, 'muito bom', '2015-04-01 20:47:26', 0, 0),
(91, 41, 53, 'ola', '2015-04-01 20:58:22', 0, 0),
(92, 40, 52, 'ha ha\n', '2015-04-01 21:50:56', 0, 0),
(93, 46, 50, 'das', '2015-04-02 16:40:55', 0, 0),
(94, 41, 50, 'teste', '2015-04-02 16:46:07', 0, 0),
(95, 46, 50, 'ola\n', '2015-04-02 16:57:21', 0, 0),
(96, 46, 52, 'vai?', '2015-04-02 17:09:06', 0, 0),
(97, 46, 52, 'cara', '2015-04-02 17:30:21', 0, 0),
(98, 46, 52, 'casta', '2015-04-02 17:30:31', 0, 0),
(99, 34, 52, 'oi', '2015-04-03 15:20:03', 0, 0),
(100, 46, 52, 'ola', '2015-04-03 16:42:56', 0, 0),
(101, 46, 53, 'as\n', '2015-04-03 20:50:38', 0, 0),
(102, 46, 53, 'ass', '2015-04-03 20:50:45', 0, 0),
(103, 46, 50, 'asdf', '2015-04-03 21:05:40', 0, 0),
(104, 40, 50, 'asdf', '2015-04-03 21:05:52', 0, 0),
(105, 46, 50, 'as', '2015-04-03 21:16:46', 0, 0),
(106, 47, 50, 'Ã© mess', '2015-04-03 21:53:33', 0, 0),
(107, 47, 50, 'asdfg', '2015-04-04 02:40:57', 0, 0),
(108, 47, 50, 'teste', '2015-04-04 03:35:36', 0, 0),
(109, 47, 50, 'as', '2015-04-04 03:35:51', 0, 0),
(110, 47, 50, 'casas', '2015-04-04 03:36:37', 0, 0),
(111, 47, 50, 'casrsadfad', '2015-04-04 04:32:29', 0, 0),
(112, 46, 52, 'asdfafdaf', '2015-04-04 14:16:34', 0, 0),
(113, 46, 52, 'as', '2015-04-04 14:56:59', 0, 0),
(114, 46, 52, 'asdf', '2015-04-04 14:57:03', 0, 0),
(115, 47, 53, 'sdfgsdfg ', '2015-04-05 02:05:41', 0, 0),
(116, 46, 53, 'asdf', '2015-04-05 02:06:09', 0, 0),
(117, 47, 53, 'sdfgcsf', '2015-04-05 02:06:27', 0, 0),
(118, 47, 53, 'asdfasdfasd', '2015-04-05 02:07:20', 0, 0),
(119, 47, 53, 'asdfasdfasd', '2015-04-05 02:07:23', 0, 0),
(120, 47, 53, 'asdf', '2015-04-05 02:08:03', 0, 0),
(121, 47, 53, 'asd', '2015-04-05 02:14:01', 0, 0),
(122, 47, 53, 'asdf', '2015-04-05 02:17:12', 0, 0),
(123, 47, 53, 'cara', '2015-04-05 02:22:12', 0, 0),
(124, 47, 53, 'asd', '2015-04-05 02:52:13', 0, 0),
(125, 47, 53, 'sdfx', '2015-04-05 02:52:30', 0, 0),
(126, 47, 53, 'adcce', '2015-04-05 02:52:46', 0, 0),
(127, 47, 53, 'adsf', '2015-04-05 02:54:05', 0, 0),
(128, 47, 53, 'asdgc', '2015-04-05 02:54:31', 0, 0),
(129, 47, 53, 'fasdfc', '2015-04-05 02:54:39', 0, 0),
(130, 47, 53, 'asdvcxz', '2015-04-05 03:34:53', 0, 0),
(131, 47, 53, 'asd', '2015-04-05 04:24:47', 0, 0),
(132, 47, 53, 'asdfasdf', '2015-04-05 04:41:45', 0, 0),
(133, 47, 53, 'sddf', '2015-04-05 05:15:26', 0, 0),
(134, 47, 53, 'asd', '2015-04-05 05:22:28', 0, 0),
(135, 47, 53, 'asdf', '2015-04-05 05:23:11', 0, 0),
(136, 47, 53, 'asdf', '2015-04-05 05:23:13', 0, 0),
(137, 46, 53, 'asdf', '2015-04-05 11:20:59', 0, 0),
(138, 46, 53, 'sdfgsdbc', '2015-04-05 11:36:39', 0, 0),
(139, 47, 53, 'sdfg', '2015-04-05 15:16:25', 0, 0),
(140, 47, 53, 'sdfg', '2015-04-05 15:16:26', 0, 0),
(141, 47, 53, 'asdf', '2015-04-05 22:06:22', 0, 0),
(142, 47, 53, 'asdf', '2015-04-05 22:06:23', 0, 0),
(143, 47, 53, 'asdfasdf', '2015-04-05 22:12:42', 0, 0),
(144, 47, 53, 'asdfasdf', '2015-04-05 22:14:26', 0, 0),
(145, 47, 53, 'asdf', '2015-04-05 22:19:36', 0, 0),
(159, 47, 52, 'sadfasg', '2015-04-05 23:09:28', 0, 0),
(160, 47, 52, 'asdfasf', '2015-04-05 23:10:48', 0, 0),
(161, 47, 52, 'fasdf', '2015-04-05 23:10:57', 0, 0),
(162, 47, 52, 'asdfasd', '2015-04-05 23:19:09', 0, 0),
(163, 47, 52, 'asdf', '2015-04-05 23:22:46', 0, 0),
(164, 47, 52, 'aasdfasf', '2015-04-05 23:25:28', 0, 0),
(165, 47, 52, 'asdf', '2015-04-05 23:27:34', 0, 0),
(166, 47, 52, 'asdfasdf', '2015-04-05 23:53:47', 0, 0),
(167, 47, 52, 'fasdfasd', '2015-04-05 23:54:37', 0, 0),
(168, 47, 52, 'fsadfasdf', '2015-04-05 23:56:43', 0, 0),
(169, 47, 52, 'afasdf', '2015-04-05 23:56:47', 0, 0),
(170, 47, 52, 'asdfasdf', '2015-04-05 23:57:16', 0, 0),
(171, 47, 52, 'afsda', '2015-04-05 23:59:47', 0, 0),
(172, 47, 52, 'asdfa', '2015-04-06 00:01:42', 0, 0),
(173, 47, 50, 'afasdf', '2015-04-06 00:21:21', 0, 0),
(174, 40, 50, 'asdfasdf', '2015-04-06 00:21:31', 0, 0),
(175, 47, 50, 'pk\n', '2015-04-06 00:23:25', 0, 0),
(176, 47, 50, 'asdfv', '2015-04-06 02:48:13', 0, 0),
(177, 47, 50, 'asdfasdfsdafasdf', '2015-04-06 12:40:11', 0, 0),
(178, 47, 50, 'asdf\n', '2015-04-06 12:40:58', 0, 0),
(179, 47, 50, 'asdfasasf', '2015-04-06 12:41:41', 0, 0),
(180, 47, 50, 'asdfasdf', '2015-04-06 13:08:06', 0, 0),
(181, 47, 50, 'asdfasdf', '2015-04-06 13:08:33', 0, 0),
(182, 47, 50, 'asdfasd', '2015-04-06 13:10:12', 0, 0),
(183, 39, 50, 'asdfas', '2015-04-06 13:12:14', 0, 0),
(184, 40, 50, 'asdfas', '2015-04-06 13:12:27', 0, 0),
(185, 47, 50, 'asfdasd', '2015-04-06 13:13:23', 0, 0),
(186, 47, 50, 'asdfasdf', '2015-04-06 13:17:02', 0, 0),
(187, 47, 50, 'fasdfasd', '2015-04-06 13:19:11', 0, 0),
(188, 47, 50, 'asdfasdf', '2015-04-06 13:20:03', 0, 0),
(189, 47, 50, 'asdfasdf', '2015-04-06 13:20:31', 0, 0),
(190, 47, 50, 'asdfasd', '2015-04-06 13:21:40', 0, 0),
(191, 47, 50, 'asdfasdfa', '2015-04-06 13:23:08', 0, 0),
(192, 47, 50, 'asdfasdf', '2015-04-06 13:24:26', 0, 0),
(193, 46, 50, 'asdfasdf', '2015-04-06 13:25:13', 0, 0),
(194, 47, 50, 'adsfasdfasdf', '2015-04-06 13:25:45', 0, 0),
(195, 46, 50, 'fasdf', '2015-04-06 13:26:11', 0, 0),
(196, 46, 50, 'asdfasd', '2015-04-06 13:27:07', 0, 0),
(197, 46, 50, 'fasfas', '2015-04-06 13:27:33', 0, 0),
(198, 46, 50, 'asdfasdf', '2015-04-06 13:28:22', 0, 0),
(199, 47, 50, 'asdfasdf', '2015-04-06 13:30:16', 0, 0),
(200, 47, 50, 'asdfasd', '2015-04-06 13:30:40', 0, 0),
(201, 47, 50, 'asdfasdf', '2015-04-06 13:31:39', 0, 0),
(202, 47, 50, 'gsfdgsdf', '2015-04-06 13:32:07', 0, 0),
(203, 47, 50, 'asdfasd', '2015-04-06 13:36:20', 0, 0),
(204, 47, 50, 'asdfasd', '2015-04-06 13:38:43', 0, 0),
(205, 47, 50, 'asdf', '2015-04-06 13:59:48', 0, 0),
(206, 47, 50, 'asdfasdf', '2015-04-06 14:01:50', 0, 0),
(207, 47, 50, 'asdfasdf', '2015-04-06 14:04:14', 0, 0),
(208, 47, 50, 'asfsad', '2015-04-06 14:05:28', 0, 0),
(209, 47, 50, 'asdfasd', '2015-04-06 14:05:47', 0, 0),
(210, 47, 50, 'asdfasf', '2015-04-06 14:07:04', 0, 0),
(211, 47, 50, 'fasdfsdf ', '2015-04-06 14:07:29', 0, 0),
(212, 47, 50, 'asdfas', '2015-04-06 14:08:11', 0, 0),
(213, 47, 50, 'asdfasdf', '2015-04-06 14:08:48', 0, 0),
(214, 47, 50, 'asdfasd', '2015-04-06 14:09:12', 0, 0),
(215, 47, 50, 'asdfasdf', '2015-04-06 14:09:43', 0, 0),
(216, 47, 50, 'asdfasdf', '2015-04-06 14:10:16', 0, 0),
(217, 47, 50, 'dfasdfsadf ', '2015-04-06 14:13:28', 0, 0),
(218, 47, 50, 'asdfasdfasdf', '2015-04-06 14:17:49', 0, 0),
(219, 47, 50, 'asdfasdfasdfasdfasdfasdfaaaaaaaaaaaaaaaaa', '2015-04-06 14:19:47', 0, 0),
(220, 47, 50, 'asdfasdfasdf', '2015-04-06 14:20:09', 0, 0),
(221, 47, 50, 'afdadsdfasdaaaaaaaaegasdffffffffffffffffffffdaaffffffffffffffffffffffffffffffffffffffaaaaaaa', '2015-04-06 14:21:07', 0, 0),
(222, 47, 50, 'asdfasdfa', '2015-04-06 14:21:53', 0, 0),
(223, 47, 50, 'asdfasdfasdf', '2015-04-06 14:24:46', 0, 0),
(224, 47, 50, 'asdfasdfas', '2015-04-06 14:25:18', 0, 0),
(225, 47, 50, 'afdasdfadfasdfasd', '2015-04-06 14:27:15', 0, 0),
(226, 47, 50, 'fasfasdf', '2015-04-06 14:27:43', 0, 0),
(227, 47, 50, 'asdfasdfasdfasdf', '2015-04-06 14:28:51', 0, 0),
(228, 47, 50, 'asfasdfasdf', '2015-04-06 14:29:24', 0, 0),
(229, 47, 50, 'fasdfasdf', '2015-04-06 14:31:00', 0, 0),
(230, 47, 50, 'asfdasdf', '2015-04-06 14:31:34', 0, 0),
(231, 47, 50, 'asdfasdf', '2015-04-06 14:32:32', 0, 0),
(232, 47, 50, 'adsfasdfasdf', '2015-04-06 14:33:27', 0, 0),
(233, 47, 50, 'asfdasdfasdfasd', '2015-04-06 14:34:27', 0, 0),
(234, 47, 50, 'fasdfasdfasdfasd', '2015-04-06 14:34:51', 0, 0),
(235, 47, 50, 'asdfasdfasdgfasdgasdgasdgasdg', '2015-04-06 14:37:30', 0, 0),
(236, 47, 50, 'asdfasdfasdfagqw', '2015-04-06 14:38:05', 0, 0),
(237, 47, 50, 'asdfasdfahgqc', '2015-04-06 14:38:37', 0, 0),
(238, 47, 50, 'asdfasdfsad', '2015-04-06 14:39:29', 0, 0),
(239, 47, 50, 'asdfasdfasdf', '2015-04-06 14:41:16', 0, 0),
(240, 47, 50, 'asdfasdfasdgq3wgscagasgassssss', '2015-04-06 14:43:00', 0, 0),
(241, 47, 50, 'fasdasdfasdf', '2015-04-06 14:44:22', 0, 0),
(242, 47, 50, 'adfasdfasdfasdfads', '2015-04-06 14:46:32', 0, 0),
(243, 47, 50, 'dasfasdfasdasdf', '2015-04-06 14:47:48', 0, 0),
(244, 47, 50, 'asdfasdfasdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhs', '2015-04-06 14:52:41', 0, 0),
(245, 47, 50, 'sfgsdfgsfdh', '2015-04-06 14:59:20', 0, 0),
(246, 47, 50, 'afasdfasdsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2015-04-06 15:00:08', 0, 0),
(247, 47, 50, 'asdfasdfasdgasd', '2015-04-06 15:02:09', 0, 0),
(248, 47, 50, 'asdfasdfasd', '2015-04-06 15:05:44', 0, 0),
(249, 47, 50, 'afasdfasdf', '2015-04-06 15:06:02', 0, 0),
(250, 47, 50, 'afdsasdfasdfasd', '2015-04-06 15:07:11', 0, 0),
(251, 47, 50, 'asdfasdfads', '2015-04-06 15:11:17', 0, 0),
(252, 47, 50, 'fasdfasdfasdfasdfasd', '2015-04-06 15:13:32', 0, 0),
(253, 47, 50, 'asdfasdf', '2015-04-06 15:15:54', 0, 0),
(254, 47, 50, 'fasdfasdfasd', '2015-04-06 15:16:34', 0, 0),
(255, 47, 50, 'asdfasdfasd', '2015-04-06 15:17:13', 0, 0),
(256, 47, 50, 'asdafsdfsda', '2015-04-06 15:18:30', 0, 0),
(257, 47, 50, 'adsfasdfasdf', '2015-04-06 15:20:43', 0, 0),
(258, 47, 53, 'asdfasd', '2015-04-06 16:03:22', 0, 0),
(259, 47, 53, 'asdfasdf', '2015-04-06 16:04:21', 0, 0),
(260, 47, 53, 'asdfasdf', '2015-04-06 16:04:23', 0, 0),
(261, 47, 53, 'asdfasdf', '2015-04-06 16:04:23', 0, 0),
(262, 47, 53, 'asdfasdf', '2015-04-06 16:04:23', 0, 0),
(263, 47, 53, 'asdfasdf', '2015-04-06 16:04:23', 0, 0),
(264, 47, 53, 'sfgsgdfsd', '2015-04-06 16:04:41', 0, 0),
(265, 31, 50, 'fasdfsad', '2015-04-16 18:06:31', 0, 0),
(266, 47, 50, 'asdf', '2015-04-16 18:06:48', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_comments_likes`
--

CREATE TABLE IF NOT EXISTS `vpp_comments_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_coment` int(11) NOT NULL,
  `type` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_fila_emails`
--

CREATE TABLE IF NOT EXISTS `vpp_fila_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `data_hora` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Fazendo dump de dados para tabela `vpp_fila_emails`
--

INSERT INTO `vpp_fila_emails` (`id`, `email`, `data_hora`, `status`) VALUES
(1, 'romario.wb@gmail.com', '2014-12-31 03:24:12', 1),
(2, 'romario_b-boy@hotmail.com', '2014-12-31 03:24:45', 1),
(3, 'roma@gmail.com', '2014-12-31 03:38:04', 1),
(4, 'romario@gmail.com', '2014-12-31 03:46:56', 1),
(5, 'josesmith2010@gmail.com', '2014-12-31 03:47:29', 1),
(6, 'renatasantos789@gmail.com', '2014-12-31 11:18:50', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_likes`
--

CREATE TABLE IF NOT EXISTS `vpp_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `data_like` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=268 ;

--
-- Fazendo dump de dados para tabela `vpp_likes`
--

INSERT INTO `vpp_likes` (`id`, `id_post`, `id_user`, `data_like`) VALUES
(24, 21, 21, '2015-01-30 02:14:10'),
(30, 21, 4, '2015-01-30 02:38:57'),
(38, 28, 4, '2015-02-05 02:28:19'),
(40, 29, 33, '2015-02-05 02:40:56'),
(42, 29, 4, '2015-02-06 02:25:27'),
(48, 37, 4, '2015-03-09 03:11:38'),
(55, 32, 50, '2015-03-31 01:15:37'),
(56, 31, 50, '2015-03-31 01:15:39'),
(154, 41, 53, '2015-04-01 22:18:51'),
(158, 33, 52, '2015-04-01 22:20:24'),
(159, 32, 52, '2015-04-01 22:20:25'),
(160, 31, 52, '2015-04-01 22:20:27'),
(161, 29, 52, '2015-04-01 22:20:29'),
(162, 34, 53, '2015-04-01 22:27:17'),
(163, 33, 53, '2015-04-01 22:27:19'),
(164, 32, 53, '2015-04-01 22:27:21'),
(165, 31, 53, '2015-04-01 22:27:23'),
(167, 29, 53, '2015-04-01 22:27:38'),
(168, 29, 50, '2015-04-02 10:34:39'),
(170, 39, 50, '2015-04-02 10:35:48'),
(171, 35, 50, '2015-04-02 10:35:50'),
(172, 34, 50, '2015-04-02 10:35:52'),
(191, 35, 52, '2015-04-02 11:02:48'),
(194, 34, 52, '2015-04-02 11:02:55'),
(197, 33, 50, '2015-04-02 12:40:47'),
(227, 40, 52, '2015-04-02 17:08:56'),
(232, 40, 53, '2015-04-03 05:40:09'),
(240, 41, 52, '2015-04-03 20:01:28'),
(243, 46, 53, '2015-04-03 20:50:19'),
(245, 41, 50, '2015-04-03 21:10:51'),
(254, 47, 52, '2015-04-05 23:06:54'),
(260, 40, 50, '2015-04-06 13:11:11'),
(261, 46, 50, '2015-04-06 13:25:09'),
(267, 47, 50, '2015-04-16 18:06:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_lojas`
--

CREATE TABLE IF NOT EXISTS `vpp_lojas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nome_loja` varchar(60) NOT NULL,
  `descricao` text,
  `data_start` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_lojas_imgs`
--

CREATE TABLE IF NOT EXISTS `vpp_lojas_imgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_lojas_produtos`
--

CREATE TABLE IF NOT EXISTS `vpp_lojas_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `preco` decimal(10,0) NOT NULL,
  `descricao` text,
  `data_pub` datetime NOT NULL,
  `status_pub` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_notificacoes`
--

CREATE TABLE IF NOT EXISTS `vpp_notificacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_perfil`
--

CREATE TABLE IF NOT EXISTS `vpp_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_auth` int(11) NOT NULL,
  `nome` varchar(60) CHARACTER SET utf8 NOT NULL,
  `sobrenome` varchar(60) NOT NULL,
  `img_perfil` varchar(100) DEFAULT NULL,
  `img_capa` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `genero` varchar(10) NOT NULL,
  `status_time` timestamp NULL DEFAULT NULL,
  `data_cad` datetime NOT NULL,
  `html_attr` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_auth` (`id_auth`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Fazendo dump de dados para tabela `vpp_perfil`
--

INSERT INTO `vpp_perfil` (`id`, `id_auth`, `nome`, `sobrenome`, `img_perfil`, `img_capa`, `data_nascimento`, `genero`, `status_time`, `data_cad`, `html_attr`) VALUES
(3, 2, 'Cass', 'emo', NULL, '', '0000-00-00', '', '2014-11-28 01:31:24', '2014-11-27 23:31:24', ''),
(4, 3, 'Rhuan', 'Kayller', 'fbac480042553aa8e044f8b41ebedf5e_vp.jpg', '', '1969-12-31', 'm', '2014-11-28 01:39:58', '2014-11-27 23:39:58', ''),
(5, 4, 'Romário', 'Santos', '39a1199b06d5fd565dfa3c22945afdba_vp.jpg', '8579d2faae14a5dd7c832abcb9bbe311_vp.jpg', '1994-05-12', 'm', '2014-11-28 01:44:39', '2014-11-27 23:44:39', '{"photoperfil":"cropperfil", "fa":"circle"}'),
(6, 5, 'Nigga', 'never', '3c02bb489d8c00fd3210dc471a749b92_vp.jpg', '', '1989-08-19', 'm', '2014-11-28 03:27:21', '2014-11-28 01:27:21', ''),
(7, 6, 'Never', 'never', NULL, '', '1970-01-01', '', '2014-11-28 03:29:02', '2014-11-28 01:29:02', ''),
(8, 7, 'Joc', 'jb', NULL, '', '1990-03-19', '', '2014-11-28 03:32:01', '2014-11-28 01:32:01', ''),
(9, 8, 'g', 'g', NULL, '', '1993-11-18', '', '2014-11-28 03:36:54', '2014-11-28 01:36:54', ''),
(10, 9, 'aff', 'a', NULL, '', '1975-12-15', '', '2014-11-28 03:47:26', '2014-11-28 01:47:26', ''),
(11, 10, 'Zuado', 'zuas', NULL, '', '1995-11-18', '', '2014-12-04 16:23:21', '2014-12-04 14:23:21', ''),
(12, 11, 'Rugao', 'rug', NULL, '', '1932-12-18', '', '2014-12-04 16:31:26', '2014-12-04 14:31:26', ''),
(13, 12, 'Maurete', 'mauro', NULL, '', '1995-10-10', '', '2014-12-04 16:42:30', '2014-12-04 14:42:30', ''),
(14, 13, 'Jony', 'jon', NULL, '', '1993-12-20', '', '2014-12-04 16:43:29', '2014-12-04 14:43:29', ''),
(15, 14, 'Merd', 'me', NULL, '', '1994-05-05', '', '2014-12-04 16:56:00', '2014-12-04 14:56:00', ''),
(16, 15, 'cat', 'ca', NULL, '', '1990-10-20', '', '2014-12-04 16:58:36', '2014-12-04 14:58:36', ''),
(17, 16, 'Aza', 'az', NULL, '', '1915-12-02', '', '2014-12-04 17:00:47', '2014-12-04 15:00:47', ''),
(18, 17, 'Caceta', 'ca', NULL, '', '1955-10-12', '', '2014-12-04 17:01:45', '2014-12-04 15:01:45', ''),
(19, 18, 'vai', 'v', NULL, '', '1992-10-20', '', '2014-12-04 17:02:41', '2014-12-04 15:02:41', ''),
(20, 19, 'Pow', 'po', NULL, '', '1915-10-12', '', '2014-12-04 17:05:46', '2014-12-04 15:05:46', ''),
(21, 20, 'DJ', 'dj', NULL, '', '1995-11-30', '', '2014-12-04 17:07:43', '2014-12-04 15:07:43', ''),
(22, 21, 'Japones', 'jap', NULL, 'cea64821282586a1e8cd3b27489f9624_vp.jpg', '1995-10-10', 'm', '2014-12-04 17:08:36', '2014-12-04 15:08:36', ''),
(23, 22, 'vavav', 'vava', NULL, '', '1995-06-20', '', '2014-12-04 17:18:04', '2014-12-04 15:18:04', ''),
(24, 23, 'cagao', 'ca', NULL, '', '1958-06-20', '', '2014-12-04 17:19:22', '2014-12-04 15:19:22', ''),
(25, 24, 'gim', 'gim', NULL, '', '1958-06-20', '', '2014-12-04 17:21:58', '2014-12-04 15:21:58', ''),
(26, 25, 'master', 'm', NULL, '', '1994-05-10', '', '2014-12-04 17:22:27', '2014-12-04 15:22:27', ''),
(27, 26, 'Vid', 'vid', NULL, '', '1991-10-10', '', '2014-12-04 17:26:04', '2014-12-04 15:26:04', ''),
(28, 27, 'run', 'run', NULL, '', '1933-12-18', '', '2014-12-04 17:27:01', '2014-12-04 15:27:01', ''),
(29, 28, 'vaypp', 'vay', NULL, '', '1932-10-10', '', '2014-12-04 17:32:03', '2014-12-04 15:32:03', ''),
(30, 29, 'hitle', 't', NULL, '', '2000-12-12', '', '2014-12-04 17:34:43', '2014-12-04 15:34:43', ''),
(31, 30, 'mix', 'mix', NULL, '', '1932-11-19', '', '2014-12-04 17:43:42', '2014-12-04 15:43:42', ''),
(32, 31, 'jax', 'ja', NULL, '', '1919-03-03', '', '2014-12-04 17:44:26', '2014-12-04 15:44:26', ''),
(33, 32, 'Steve', 'Jobs', '714ed3ad7c6f9436690ce19b36fe532a_vp.jpg', '', '2009-11-16', 'm', '2015-01-13 03:28:13', '2015-01-13 01:28:13', ''),
(34, 33, 'Ana', 'Carolina', '85baacc3db0f9e783192b8858c54aa26_vp.jpg', '', '1955-12-25', 'm', '2015-01-13 04:56:13', '2015-01-13 02:56:13', ''),
(50, 49, 'Saade', 'sa', 'guilherme_saade.jpg', '', '1994-05-10', '', '2015-03-11 05:41:29', '2015-03-11 02:41:29', ''),
(51, 50, 'Enieber', 'Cunha', NULL, '', '1996-10-19', '', NULL, '0000-00-00 00:00:00', ''),
(52, 52, 'teste', 'none', NULL, '', '1950-01-01', '', '2015-03-31 20:56:12', '2015-03-31 17:56:12', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_posts`
--

CREATE TABLE IF NOT EXISTS `vpp_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `qtd_likes` int(11) NOT NULL,
  `txt_post` text NOT NULL,
  `data_post` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Fazendo dump de dados para tabela `vpp_posts`
--

INSERT INTO `vpp_posts` (`id`, `id_user`, `qtd_likes`, `txt_post`, `data_post`, `status`) VALUES
(1, 4, 0, 'teste', '2015-01-22 01:58:48', 1),
(2, 4, 0, 'VSF', '2015-01-22 01:59:03', 1),
(3, 4, 0, 'VCG', '2015-01-22 01:59:51', 1),
(4, 4, 0, 'Romario <br />\nsantos', '2015-01-22 02:00:02', 1),
(6, 3, 0, 'WTF! FD', '2015-01-22 02:07:59', 1),
(7, 3, 0, 'ASdasd asdasd<br />\n asd<br />\n a<br />\nsd<br />\nasd<br />\nasd<br />\na<br />\nsd', '2015-01-22 02:08:07', 1),
(9, 4, 0, 'VD', '2015-01-27 01:30:13', 1),
(11, 21, 0, 'Testa japa POSTANDO kkkkk', '2015-01-27 03:31:17', 1),
(16, 4, 0, 'Antes, a questÃ£o era descobrir se a vida precisava de ter algum significado para ser vivida. Agora, ao contrÃ¡rio, ficou evidente que ela serÃ¡ vivida melhor se nÃ£o tiver significado.\n\nPeguei no pensador UOL', '2015-01-29 01:08:05', 1),
(21, 4, 0, 'SOU GATO!', '2015-01-29 02:18:33', 1),
(28, 4, 0, 'VA', '2015-02-05 02:17:39', 1),
(29, 33, 0, '"Enquanto a cor da pele for mais importante que o brilho dos olhos, haverÃ¡ guerra." ~Bob Mito', '2015-02-05 02:30:50', 1),
(31, 33, 0, 'NOVO TESTE', '2015-02-10 02:53:44', 1),
(32, 33, 0, 'teste 2', '2015-02-10 02:56:02', 1),
(33, 33, 0, 'VACA', '2015-02-10 03:12:55', 1),
(34, 33, 0, 'Fez', '2015-02-10 03:14:59', 1),
(35, 33, 0, 'New', '2015-02-10 03:15:51', 1),
(37, 4, 0, 'Queria ser um baseado \nPara nascer em seus dedos, morrer em seus lÃ¡bios, \nE fazer sua cabeÃ§a.\n~ Bob Marley', '2015-02-19 01:42:14', 1),
(38, 3, 0, 'Tatata', '2015-02-19 02:52:05', 1),
(39, 50, 0, 'cara q louco?', '2015-03-31 01:16:56', 1),
(40, 52, 0, 'Welcome new era', '2015-03-31 19:06:53', 1),
(41, 50, 0, 'Bem venidos', '2015-03-31 19:23:13', 2),
(42, 53, 0, 'olÃ¡', '2015-03-31 19:23:43', 1),
(43, 53, 0, 'adassa', '2015-03-31 19:24:28', 1),
(44, 53, 0, 'olÃ¡', '2015-04-01 19:18:18', 1),
(45, 53, 0, 'Cara da certo!!', '2015-04-01 20:47:11', 1),
(46, 50, 0, 'teste em tempo real', '2015-04-02 14:55:00', 1),
(47, 50, 0, 'cara que trem chato...', '2015-04-03 21:53:21', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_posts_filter`
--

CREATE TABLE IF NOT EXISTS `vpp_posts_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_rej` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_relacionamento`
--

CREATE TABLE IF NOT EXISTS `vpp_relacionamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_user_par` int(11) NOT NULL,
  `data_update` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vpp_share`
--

CREATE TABLE IF NOT EXISTS `vpp_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `data_share` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
