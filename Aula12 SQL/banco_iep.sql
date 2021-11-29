-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Nov-2021 às 12:24
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_iep`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `cd_aluno` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` int(3) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `dt_cadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`cd_aluno`, `nome`, `idade`, `sexo`, `dt_cadastro`) VALUES
(1, 'Heitor', 25, 'M', '2021-11-20'),
(3, 'Maria', 18, 'F', '2021-11-20'),
(4, 'Eduarda', 18, 'F', '2021-11-20'),
(5, 'João', 33, 'M', '2021-11-20'),
(6, 'Isabela', 28, 'F', '2021-11-20'),
(7, 'Lucas', 41, 'M', '2021-11-20'),
(8, 'Emanuelle', 19, 'F', '2021-11-20'),
(9, 'Julio', 26, 'M', '2021-11-20'),
(10, 'Sylvio', 17, 'M', '2021-11-20'),
(11, 'Thabata', 52, 'F', '2021-11-20'),
(12, 'Amanda', 33, 'F', '2021-11-20'),
(13, 'Ariene', 31, 'F', '2021-11-20'),
(14, 'Grabiel', 21, 'M', '2021-11-20');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`cd_aluno`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `cd_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
