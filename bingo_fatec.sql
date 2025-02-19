-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/02/2025 às 10:38
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bingo_fatec`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cartela`
--

CREATE TABLE `cartela` (
  `id` int(25) NOT NULL,
  `usuario` bigint(255) NOT NULL,
  `c1` varchar(255) NOT NULL,
  `c2` varchar(255) NOT NULL,
  `c3` varchar(255) NOT NULL,
  `c4` varchar(255) NOT NULL,
  `c5` varchar(255) NOT NULL,
  `c6` varchar(255) NOT NULL,
  `c7` varchar(255) NOT NULL,
  `c8` varchar(255) NOT NULL,
  `c9` varchar(255) NOT NULL,
  `c10` varchar(255) NOT NULL,
  `c11` varchar(255) NOT NULL,
  `c12` varchar(255) NOT NULL,
  `c13` varchar(255) NOT NULL,
  `c14` varchar(255) NOT NULL,
  `c15` varchar(255) NOT NULL,
  `c16` varchar(255) NOT NULL,
  `c17` varchar(255) NOT NULL,
  `c18` varchar(255) NOT NULL,
  `c19` varchar(255) NOT NULL,
  `c20` varchar(255) NOT NULL,
  `c21` varchar(255) NOT NULL,
  `c22` varchar(255) NOT NULL,
  `c23` varchar(255) NOT NULL,
  `c24` varchar(255) NOT NULL,
  `c25` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cartela`
--

INSERT INTO `cartela` (`id`, `usuario`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`, `c11`, `c12`, `c13`, `c14`, `c15`, `c16`, `c17`, `c18`, `c19`, `c20`, `c21`, `c22`, `c23`, `c24`, `c25`) VALUES
(1, 0, 'Descobre bugs facilmente', 'Gosta de design front-end', 'Trabalha bem em equipe', 'Já ficou até tarde codando', 'Quer ser full-stack', 'Prefere JavaScript a Python', 'Prefere back-end', 'Já formatou um computador', 'Conta no GitHub ativa', 'Já participou de hackathon', 'Já usou ChatGPT para programar', 'Já fez aplicativo mobile', 'ERROR 404 - Legend not Found', 'Prefere café a energético', 'Usa o Linux como principal', 'Perdeu arquivos importantes', 'Estuda sozinho', 'Ama eventos de tecnologia', 'Já usou Laravel ou React', 'Ama SQL e banco de dados', 'Já implementou uma API REST', 'Prefere aulas práticas a teóricas', 'Gosta de resolver bugs', 'Ama lógica', 'Ama programação orientada a objetos'),
(2, 1571432412006, 'Trabalha bem em equipe', 'Prefere aulas práticas a teóricas', 'Ama lógica', 'Ama SQL e banco de dados', 'Já usou Laravel ou React', 'Conta no GitHub ativa', 'Já fez aplicativo mobile', 'Usa o Linux como principal', 'Gosta de resolver bugs', 'Prefere café a energético', 'Gosta de design front-end', 'Já usou ChatGPT para programar', 'Error 404 - Legend not Found', 'Já ficou até tarde codando', 'Já implementou uma API REST', 'Descobre bugs facilmente', 'Já participou de hackathon', 'Prefere back-end', 'Ama eventos de tecnologia', 'Quer ser full-stack', 'matou um computador', 'Estuda sozinho', 'Prefere JavaScript a Python', 'Ama programação orientada a objetos', 'Perdeu arquivos importantes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `marcados`
--

CREATE TABLE `marcados` (
  `id` bigint(35) NOT NULL,
  `usuario` bigint(35) NOT NULL,
  `cartela` int(11) NOT NULL,
  `c1` tinyint(1) DEFAULT 0,
  `c2` tinyint(1) DEFAULT 0,
  `c3` tinyint(1) DEFAULT 0,
  `c4` tinyint(1) DEFAULT 0,
  `c5` tinyint(1) DEFAULT 0,
  `c6` tinyint(1) DEFAULT 0,
  `c7` tinyint(1) DEFAULT 0,
  `c8` tinyint(1) DEFAULT 0,
  `c9` tinyint(1) DEFAULT 0,
  `c10` tinyint(1) DEFAULT 0,
  `c11` tinyint(1) DEFAULT 0,
  `c12` tinyint(1) DEFAULT 0,
  `c13` tinyint(1) DEFAULT 0,
  `c14` tinyint(1) DEFAULT 0,
  `c15` tinyint(1) DEFAULT 0,
  `c16` tinyint(1) DEFAULT 0,
  `c17` tinyint(1) DEFAULT 0,
  `c18` tinyint(1) DEFAULT 0,
  `c19` tinyint(1) DEFAULT 0,
  `c20` tinyint(1) DEFAULT 0,
  `c21` tinyint(1) DEFAULT 0,
  `c22` tinyint(1) DEFAULT 0,
  `c23` tinyint(1) DEFAULT 0,
  `c24` tinyint(1) DEFAULT 0,
  `c25` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `marcados`
--

INSERT INTO `marcados` (`id`, `usuario`, `cartela`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`, `c11`, `c12`, `c13`, `c14`, `c15`, `c16`, `c17`, `c18`, `c19`, `c20`, `c21`, `c22`, `c23`, `c24`, `c25`) VALUES
(1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1571432412006, 2, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `login` bigint(15) NOT NULL,
  `cartela` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `cartela`) VALUES
(1, 1571432412011, 1),
(2, 1571432412006, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cartela`
--
ALTER TABLE `cartela`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `marcados`
--
ALTER TABLE `marcados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cartela`
--
ALTER TABLE `cartela`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `marcados`
--
ALTER TABLE `marcados`
  MODIFY `id` bigint(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
