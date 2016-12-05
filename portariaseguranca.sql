-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 05-Dez-2016 às 21:32
-- Versão do servidor: 5.7.16
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portariaseguranca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `entradas`
--

CREATE TABLE `entradas` (
  `identradas` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT NULL,
  `morador_idmorador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `entradas`
--

INSERT INTO `entradas` (`identradas`, `data`, `morador_idmorador`) VALUES
(11, '2016-12-05 11:32:13', 1),
(12, '2016-12-05 11:32:22', 1),
(13, '2016-12-05 11:33:47', 1),
(14, '2016-12-05 11:34:02', 1),
(15, '2016-12-05 11:34:47', 1),
(16, '2016-12-05 11:37:49', 1),
(17, '2016-12-05 11:43:04', 1),
(18, '2016-12-05 11:49:05', 1),
(19, '2016-12-05 11:51:12', 1),
(20, '2016-12-05 11:51:23', 1),
(21, '2016-12-05 12:00:50', 1),
(22, '2016-12-05 14:04:11', 1),
(23, '2016-12-05 18:08:38', 1),
(24, '2016-12-05 18:23:37', 1),
(25, '2016-12-05 19:39:00', 1),
(26, '2016-12-05 20:24:04', 1),
(27, '2016-12-05 21:19:32', 3),
(28, '2016-12-05 21:19:45', 3),
(29, '2016-12-05 21:23:04', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `morador`
--

CREATE TABLE `morador` (
  `idmorador` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `bloco` varchar(45) DEFAULT NULL,
  `lote` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `morador`
--

INSERT INTO `morador` (`idmorador`, `nome`, `sobrenome`, `cpf`, `bloco`, `lote`) VALUES
(1, 'pedrones', 'bertucci', '04017257070', 'c', '12'),
(2, 'diogo', 'silva', '1122334455', 'a', '28'),
(3, 'ramon', 'lummertz', '00659422050', 'a', '25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `saida`
--

CREATE TABLE `saida` (
  `idsaida` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT NULL,
  `morador_idmorador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `saida`
--

INSERT INTO `saida` (`idsaida`, `data`, `morador_idmorador`) VALUES
(1, '2016-12-14 15:24:20', 1),
(2, '2016-12-05 11:57:23', 1),
(3, '2016-12-05 18:08:51', 1),
(4, '2016-12-05 18:23:44', 1),
(5, '2016-12-05 19:39:13', 1),
(6, '2016-12-05 21:20:47', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`idusers`, `nome`, `sobrenome`, `user`, `senha`) VALUES
(13, 'Pedro ', 'Bertucci', 'admin', '1234'),
(14, 'pedro', 'antonio', 'pedro123', '112233445566');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`identradas`),
  ADD KEY `fk_entradas_morador_idx` (`morador_idmorador`);

--
-- Indexes for table `morador`
--
ALTER TABLE `morador`
  ADD PRIMARY KEY (`idmorador`);

--
-- Indexes for table `saida`
--
ALTER TABLE `saida`
  ADD PRIMARY KEY (`idsaida`),
  ADD KEY `fk_saida_morador1_idx` (`morador_idmorador`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entradas`
--
ALTER TABLE `entradas`
  MODIFY `identradas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `morador`
--
ALTER TABLE `morador`
  MODIFY `idmorador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `saida`
--
ALTER TABLE `saida`
  MODIFY `idsaida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `fk_entradas_morador` FOREIGN KEY (`morador_idmorador`) REFERENCES `morador` (`idmorador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `saida`
--
ALTER TABLE `saida`
  ADD CONSTRAINT `fk_saida_morador1` FOREIGN KEY (`morador_idmorador`) REFERENCES `morador` (`idmorador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
