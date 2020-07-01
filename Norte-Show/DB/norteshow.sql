-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Jul-2020 às 22:49
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `norteshow`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `whatsapp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `email`, `nome`, `whatsapp`) VALUES
(1, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski Crammer', '984375127'),
(2, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(3, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(4, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(5, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(6, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(7, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(8, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(9, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(10, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(11, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(12, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(13, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(14, 'jh_cis.out@hotmail.com', 'Jheyson Cisnoski', '984375127'),
(15, 'crammer@hotmail.com', 'crammer', '6934182831');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
