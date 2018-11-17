-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Nov-2018 às 18:03
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamif`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alternativas`
--

CREATE TABLE `alternativas` (
  `al_idalternativa` int(11) NOT NULL,
  `al_texto` varchar(300) DEFAULT NULL,
  `al_idquestao` int(11) DEFAULT NULL,
  `al_correta` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alternativas`
--

INSERT INTO `alternativas` (`al_idalternativa`, `al_texto`, `al_idquestao`, `al_correta`) VALUES
(1, '2', 1, 1),
(2, '3', 1, 0),
(3, '4', 1, 0),
(4, '5', 1, 0),
(5, '4', 2, 1),
(6, '5', 2, 0),
(7, '6', 2, 0),
(8, '7', 2, 0),
(9, '6', 3, 1),
(10, '7', 3, 0),
(11, '8', 3, 0),
(12, '9', 3, 0),
(13, '8', 4, 1),
(14, '9', 4, 0),
(15, '10', 4, 0),
(16, '11', 4, 0),
(17, '307 mil', 5, 0),
(18, '3,07 milhões', 5, 0),
(19, '307 milhões', 5, 1),
(20, '3,07 bilhões', 5, 0),
(21, '5', 6, 0),
(22, '75', 6, 1),
(23, '500', 6, 0),
(24, '7500', 6, 0),
(25, 'É?', 7, 0),
(26, 'Isto mesmo', 7, 1),
(27, 'hehe', 7, 0),
(28, 'haha', 7, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `al_idusuario` int(11) NOT NULL,
  `al_matricula` varchar(45) DEFAULT NULL,
  `al_turma` int(11) DEFAULT NULL,
  `al_pontos` int(10) NOT NULL,
  `al_nivel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`al_idusuario`, `al_matricula`, `al_turma`, `al_pontos`, `al_nivel`) VALUES
(62, '1324131', 1, 20, 1),
(63, '132451421', 1, 35, 1),
(68, '312312', 1, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `area`
--

CREATE TABLE `area` (
  `ar_idarea` int(11) NOT NULL,
  `ar_descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `area`
--

INSERT INTO `area` (`ar_idarea`, `ar_descricao`) VALUES
(1, 'Artes'),
(2, 'Ciências'),
(3, 'Geografia'),
(4, 'História'),
(5, 'Inglês'),
(6, 'Matemática'),
(7, 'Português');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `ca_idcategoria` int(11) NOT NULL,
  `ca_idarea` int(11) NOT NULL,
  `ca_descricao` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`ca_idcategoria`, `ca_idarea`, `ca_descricao`) VALUES
(1, 6, 'Fração'),
(2, 6, 'Potenciação'),
(3, 6, 'Adição'),
(8, 6, 'Subtração'),
(9, 6, 'Divisão'),
(10, 6, 'Multiplicação'),
(11, 6, 'Função Afim'),
(12, 6, 'Teorema de Pitágoras'),
(13, 4, 'Segunda Guerra Mundial'),
(14, 3, 'Fontes Renováveis'),
(15, 3, 'Petróleo'),
(16, 6, 'Números e Operações'),
(17, 6, 'Espaço e Forma'),
(18, 3, 'Fontes Renováveis');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivel`
--

CREATE TABLE `nivel` (
  `ni_idnivel` int(11) NOT NULL,
  `ni_descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nivel`
--

INSERT INTO `nivel` (`ni_idnivel`, `ni_descricao`) VALUES
(1, 'Nível 1'),
(2, 'Nível 2'),
(3, 'Nível 3'),
(4, 'Nível 4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `pr_idusuario` int(11) NOT NULL,
  `pr_matricula` varchar(20) DEFAULT NULL,
  `pr_area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`pr_idusuario`, `pr_matricula`, `pr_area`) VALUES
(1, '348931', 4),
(2, '1122', 3),
(6, '45632', 6),
(46, '2342112', 2),
(51, '132435321', 6),
(52, '13453412', 1),
(53, '92133421', 2),
(69, '1231231', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `questao`
--

CREATE TABLE `questao` (
  `qu_idquestao` int(11) NOT NULL,
  `qu_idcategoria` int(11) DEFAULT NULL,
  `qu_ano` int(11) DEFAULT NULL,
  `qu_idnivel` int(11) DEFAULT NULL,
  `qu_idusuario` int(11) DEFAULT NULL,
  `qu_pontosquestao` int(3) NOT NULL,
  `qu_textoquestao` varchar(2000) DEFAULT NULL,
  `qu_ativo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questao`
--

INSERT INTO `questao` (`qu_idquestao`, `qu_idcategoria`, `qu_ano`, `qu_idnivel`, `qu_idusuario`, `qu_pontosquestao`, `qu_textoquestao`, `qu_ativo`) VALUES
(1, 3, 6, 2, 53, 10, '1+1', 1),
(2, 3, 6, 1, 53, 5, '2+2', 1),
(3, 3, 6, 1, 53, 5, '3+3', 1),
(4, 3, 6, 1, 53, 5, '4+4', 1),
(5, 3, 6, 1, 52, 5, 'Na ocasião das Olimpíadas de Pequim, o jornalzinho de um colégio publicou uma notícia com a seguinte manchete: “População da China é a maior do mundo com 1,307 bilhão de habitantes”. De acordo com essa informação, a população da China supera 1 bilhão de habitantes em:', 1),
(6, 3, 6, 1, 52, 5, 'O litoral brasileiro tem cerca de 7 500 quilômetros de extensão. Esse número possui quantas centenas?', 1),
(7, 3, 6, 3, 52, 15, 'Pergunta apenas para teste?', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE `resposta` (
  `re_idresposta` int(11) NOT NULL,
  `re_idusuario` int(11) DEFAULT NULL,
  `re_idalternativa` int(11) DEFAULT NULL,
  `re_dataresposta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `re_idquestao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`re_idresposta`, `re_idusuario`, `re_idalternativa`, `re_dataresposta`, `re_idquestao`) VALUES
(2, 62, 9, '2018-11-13 13:25:51', 3),
(3, 62, 14, '2018-11-13 13:25:55', 4),
(4, 62, 19, '2018-11-14 16:55:09', 5),
(5, 62, 23, '2018-11-14 16:55:18', 6),
(6, 63, 5, '2018-11-15 16:42:43', 2),
(7, 63, 10, '2018-11-15 16:42:47', 3),
(8, 63, 13, '2018-11-15 16:42:58', 4),
(9, 63, 19, '2018-11-15 16:43:42', 5),
(10, 63, 23, '2018-11-15 16:44:09', 6),
(11, 62, 5, '2018-11-17 16:43:11', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `tu_idturma` int(11) NOT NULL,
  `tu_descricao` varchar(50) DEFAULT NULL,
  `tu_anoletivo` int(11) DEFAULT NULL,
  `tu_anoescolar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`tu_idturma`, `tu_descricao`, `tu_anoletivo`, `tu_anoescolar`) VALUES
(1, 'A', 2018, 6),
(2, 'B', 2018, 6),
(3, 'C', 2018, 6),
(4, 'D', 2018, 6),
(5, 'A', 2018, 7),
(6, 'B', 2018, 7),
(7, 'C', 2018, 7),
(8, 'D', 2018, 7),
(9, 'B', 2018, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `us_idusuario` int(11) NOT NULL,
  `us_nome` varchar(200) DEFAULT NULL,
  `us_email` varchar(200) DEFAULT NULL,
  `us_senha` varchar(100) DEFAULT NULL,
  `us_datanascimento` date DEFAULT NULL,
  `us_idtipo` int(11) DEFAULT NULL,
  `us_ativo` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`us_idusuario`, `us_nome`, `us_email`, `us_senha`, `us_datanascimento`, `us_idtipo`, `us_ativo`) VALUES
(52, 'admin', 'admin@admin.com', '$2y$10$6F28ef6zu5IXxWQ.luMZ8ujKQ8LkW3JHQVcuSpAYkvdY9sqVPueDm', '2017-11-29', 3, 1),
(53, 'Jefferson Chaves', 'jefferson.chaves@ifc.edu.br', 'jeff123', '1990-03-21', 2, 1),
(62, 'Guilherme', 'guilherme.cp@live.com', '$2y$10$OLJEK6qzKaE4WQSiUfc.PuJnC0bXMI9Et9AESaRVlE1rXwILKy.ny', '2005-10-25', 1, 1),
(63, 'Marlon Guarnieri', 'marlonguarnieri@gmail.com', '$2y$10$3AUanLYu9b.E/RmkHAAKxuB82N.kyXql92e1WnhM/utFjFtZEkko2', '2012-06-22', 1, 1),
(68, 'Jubileu', 'jubileu@jubilado.com', '$2y$10$N1xrArhLkOBOs7wPRapbROLr6gJUmFwyoldaHitXSa1MPofurrAaS', '2010-05-21', 1, 1),
(69, 'Fábio Longo de Moura', 'fabio@ifc.edu.br', '$2y$10$5tkrK4UQY1AexvpjVOr0Ge.4zbI.ZE7B3HS0p1owYXMmd9aazw.2a', '1996-07-28', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternativas`
--
ALTER TABLE `alternativas`
  ADD PRIMARY KEY (`al_idalternativa`),
  ADD KEY `al_idquestao` (`al_idquestao`) USING BTREE;

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`al_idusuario`),
  ADD UNIQUE KEY `al_matricula` (`al_matricula`),
  ADD KEY `al_turma_idx` (`al_turma`),
  ADD KEY `fk_nivelaluno` (`al_nivel`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`ar_idarea`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ca_idcategoria`),
  ADD KEY `ca_idarea` (`ca_idarea`);

--
-- Indexes for table `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`ni_idnivel`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`pr_idusuario`),
  ADD KEY `pr_area_idx` (`pr_area`);

--
-- Indexes for table `questao`
--
ALTER TABLE `questao`
  ADD PRIMARY KEY (`qu_idquestao`),
  ADD KEY `qu_nivel_id` (`qu_idnivel`) USING BTREE,
  ADD KEY `qu_idusuario` (`qu_idusuario`),
  ADD KEY `qu_idcategoria` (`qu_idcategoria`) USING BTREE;

--
-- Indexes for table `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`re_idresposta`),
  ADD KEY `re_usuario_idx` (`re_idusuario`),
  ADD KEY `re_questao_idx` (`re_idquestao`),
  ADD KEY `re_idalternativa` (`re_idalternativa`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`tu_idturma`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`us_idusuario`),
  ADD UNIQUE KEY `us_email` (`us_email`),
  ADD KEY `fk_tipo_usuario` (`us_idtipo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternativas`
--
ALTER TABLE `alternativas`
  MODIFY `al_idalternativa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `al_idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `ar_idarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ca_idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nivel`
--
ALTER TABLE `nivel`
  MODIFY `ni_idnivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questao`
--
ALTER TABLE `questao`
  MODIFY `qu_idquestao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `resposta`
--
ALTER TABLE `resposta`
  MODIFY `re_idresposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `tu_idturma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `us_idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `alternativas`
--
ALTER TABLE `alternativas`
  ADD CONSTRAINT `al_questao` FOREIGN KEY (`al_idquestao`) REFERENCES `questao` (`qu_idquestao`);

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `al_turma` FOREIGN KEY (`al_turma`) REFERENCES `turma` (`tu_idturma`) ON UPDATE CASCADE,
  ADD CONSTRAINT `al_usuario` FOREIGN KEY (`al_idusuario`) REFERENCES `usuario` (`us_idusuario`),
  ADD CONSTRAINT `fk_nivelaluno` FOREIGN KEY (`al_nivel`) REFERENCES `nivel` (`ni_idnivel`);

--
-- Limitadores para a tabela `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `ca_idarea` FOREIGN KEY (`ca_idarea`) REFERENCES `area` (`ar_idarea`);

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `pr_area` FOREIGN KEY (`pr_area`) REFERENCES `area` (`ar_idarea`),
  ADD CONSTRAINT `pr_usuario` FOREIGN KEY (`pr_idusuario`) REFERENCES `usuario` (`us_idusuario`);

--
-- Limitadores para a tabela `questao`
--
ALTER TABLE `questao`
  ADD CONSTRAINT `qu_idcategoria` FOREIGN KEY (`qu_idcategoria`) REFERENCES `categoria` (`ca_idcategoria`),
  ADD CONSTRAINT `qu_idnivel` FOREIGN KEY (`qu_idnivel`) REFERENCES `nivel` (`ni_idnivel`),
  ADD CONSTRAINT `qu_idusuario` FOREIGN KEY (`qu_idusuario`) REFERENCES `professor` (`pr_idusuario`);

--
-- Limitadores para a tabela `resposta`
--
ALTER TABLE `resposta`
  ADD CONSTRAINT `re_idalternativa` FOREIGN KEY (`re_idalternativa`) REFERENCES `alternativas` (`al_idalternativa`),
  ADD CONSTRAINT `re_questao` FOREIGN KEY (`re_idquestao`) REFERENCES `questao` (`qu_idquestao`),
  ADD CONSTRAINT `re_usuario` FOREIGN KEY (`re_idusuario`) REFERENCES `usuario` (`us_idusuario`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_tipo_usuario` FOREIGN KEY (`us_idtipo`) REFERENCES `tipo_usuario` (`tu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
