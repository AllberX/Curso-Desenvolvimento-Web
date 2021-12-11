-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Dez-2021 às 18:21
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hospital`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `cd_atendimento` int(11) NOT NULL,
  `cd_paciente` int(11) NOT NULL,
  `cd_convenio` int(11) NOT NULL,
  `cd_especialidade` int(11) NOT NULL,
  `dt_atendimento` date NOT NULL,
  `vl_atendimento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`cd_atendimento`, `cd_paciente`, `cd_convenio`, `cd_especialidade`, `dt_atendimento`, `vl_atendimento`) VALUES
(1, 1, 1, 1, '2021-01-01', 125),
(2, 7, 5, 2, '2021-01-01', 45),
(3, 4, 4, 3, '2021-01-01', 90),
(4, 2, 1, 3, '2021-01-01', 200),
(5, 4, 5, 3, '2021-01-02', 190),
(6, 3, 4, 2, '2021-01-02', 220),
(7, 1, 3, 1, '2021-01-02', 159),
(8, 4, 1, 2, '2021-01-03', 45),
(9, 7, 3, 1, '2021-01-03', 121),
(10, 2, 1, 3, '2021-01-04', 137),
(11, 3, 2, 2, '2021-01-04', 133),
(12, 6, 3, 1, '2021-01-04', 79);

-- --------------------------------------------------------

--
-- Estrutura da tabela `convenio`
--

CREATE TABLE `convenio` (
  `cd_convenio` int(11) NOT NULL,
  `nm_convenio` varchar(100) NOT NULL,
  `cooparticipacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `convenio`
--

INSERT INTO `convenio` (`cd_convenio`, `nm_convenio`, `cooparticipacao`) VALUES
(1, 'SUS', 0),
(2, 'Unimed', 20),
(3, 'Santa Casa Saude', 15),
(4, 'Bradesco', 40),
(5, 'Amil', 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `especialidade`
--

CREATE TABLE `especialidade` (
  `cd_especialidade` int(11) NOT NULL,
  `nm_especialidade` varchar(100) NOT NULL,
  `sn_sus` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `especialidade`
--

INSERT INTO `especialidade` (`cd_especialidade`, `nm_especialidade`, `sn_sus`) VALUES
(1, 'Clinico Geral', 'S'),
(2, 'Dermatologista', 'N'),
(3, 'Ortopedista', 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE `paciente` (
  `cd_paciente` int(11) NOT NULL,
  `nm_paciente` varchar(100) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `dt_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`cd_paciente`, `nm_paciente`, `sexo`, `dt_nascimento`) VALUES
(1, 'Heitor', 'M', '1993-04-22'),
(2, 'Alexandre', 'M', '2000-02-01'),
(3, 'Andreia', 'F', '1990-01-15'),
(4, 'Isabela', 'F', '1979-09-27'),
(5, 'Ariene', 'F', '1984-03-22'),
(6, 'Rosana', 'F', '2020-08-02'),
(7, 'Carlos', 'M', '1943-11-01');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`cd_atendimento`);

--
-- Índices para tabela `convenio`
--
ALTER TABLE `convenio`
  ADD PRIMARY KEY (`cd_convenio`);

--
-- Índices para tabela `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`cd_especialidade`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`cd_paciente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `cd_atendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `convenio`
--
ALTER TABLE `convenio`
  MODIFY `cd_convenio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `especialidade`
--
ALTER TABLE `especialidade`
  MODIFY `cd_especialidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `cd_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
