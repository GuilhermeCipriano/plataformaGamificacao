-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jun-2018 às 16:42
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

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
  `al_texto` varchar(50) DEFAULT NULL,
  `al_tipo` varchar(1) DEFAULT NULL,
  `al_idquestao` int(11) DEFAULT NULL,
  `al_correta` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alternativas`
--

INSERT INTO `alternativas` (`al_idalternativa`, `al_texto`, `al_tipo`, `al_idquestao`, `al_correta`) VALUES
(1, 'Monte Everest', 'A', 1, 1),
(2, 'Monte Fuji', 'B', 1, 0),
(3, 'Monte K2', 'C', 1, 0),
(4, 'Kangchenjunga', 'D', 1, 0),
(38, '81', 'A', 81, 1),
(39, '90', 'B', 81, 0),
(40, 'Raiz de  9', 'C', 81, 1),
(41, '80', 'D', 81, 0),
(42, 'If this feeling flows both ways ', 'A', 84, 0),
(43, 'Have you got color in your cheeks', 'B', 84, 0),
(44, 'Crawling back to you', 'C', 84, 0),
(45, 'Sad to see you go', 'D', 84, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `al_idusuario` int(11) NOT NULL,
  `al_matricula` varchar(45) DEFAULT NULL,
  `al_ano` int(11) DEFAULT NULL,
  `al_turma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`al_idusuario`, `al_matricula`, `al_ano`, `al_turma`) VALUES
(3, '6434', 6, 3),
(4, '999123', 9, 4),
(5, '793231', 8, 4),
(8, '23456', 8, 2);

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
(6, '45632', 5),
(7, '1345', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `questao`
--

CREATE TABLE `questao` (
  `qu_idquestao` int(11) NOT NULL,
  `qu_idarea` int(11) DEFAULT NULL,
  `qu_ano` int(11) DEFAULT NULL,
  `qu_idnivel` int(11) DEFAULT NULL,
  `qu_idusuario` int(11) DEFAULT NULL,
  `qu_textoquestao` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questao`
--

INSERT INTO `questao` (`qu_idquestao`, `qu_idarea`, `qu_ano`, `qu_idnivel`, `qu_idusuario`, `qu_textoquestao`) VALUES
(1, 3, 9, 1, 2, 'Qual e o monte mais alto do mundo?'),
(81, 6, 7, 3, 1, '9x9'),
(84, 5, 8, 3, 2, 'Do I Wanna Know?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE `resposta` (
  `re_idresposta` int(11) NOT NULL,
  `re_idusuario` int(11) DEFAULT NULL,
  `re_idalternativa` int(11) DEFAULT NULL,
  `re_dataresposta` date DEFAULT NULL,
  `re_idquestao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `tu_idturma` int(11) NOT NULL,
  `tu_descricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`tu_idturma`, `tu_descricao`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `us_idusuario` int(11) NOT NULL,
  `us_nome` varchar(200) DEFAULT NULL,
  `us_email` varchar(200) DEFAULT NULL,
  `us_senha` varchar(100) DEFAULT NULL,
  `us_datanascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`us_idusuario`, `us_nome`, `us_email`, `us_senha`, `us_datanascimento`) VALUES
(1, 'Jefferson Chaves', 'jefferson.chaves@ifc.edu.br', 'jeff123', '1990-05-01'),
(2, 'Rafael De Moura Speroni', 'rafael.speroni@ifc.edu.br', 'rafael123', '1985-10-15'),
(3, 'Marlon Guarnieri', 'marlon.guarnieri@gmail.com', 'marlon123', '2000-07-15'),
(4, 'Guilherme Cipriano', 'guilherme.cp@live.com', 'guilherme123', '2000-11-13'),
(5, 'Andriele Cristina Vogel', 'andrielecristina@gmail.com', 'andriele123', '2000-11-07'),
(6, 'Jonathan Ache Dias', 'jonathan.dias@ifc.edu.br', 'jonathan123', '1990-05-17'),
(7, 'Edvanderson Ramalho Dos Santos', 'edvanderson@ifc.edu.br', 'eddie123', '1964-11-13'),
(8, 'Mateus Erkmann', 'hipergeniusx@gmail.com', 'russo123', '1998-03-28');

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
  ADD KEY `al_turma_idx` (`al_turma`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`ar_idarea`);

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
  ADD KEY `qu_idarea` (`qu_idarea`) USING BTREE,
  ADD KEY `qu_idusuario` (`qu_idusuario`);

--
-- Indexes for table `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`re_idresposta`),
  ADD KEY `re_usuario_idx` (`re_idusuario`),
  ADD KEY `re_questao_idx` (`re_idquestao`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`tu_idturma`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`us_idusuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternativas`
--
ALTER TABLE `alternativas`
  MODIFY `al_idalternativa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `al_idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `ar_idarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nivel`
--
ALTER TABLE `nivel`
  MODIFY `ni_idnivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questao`
--
ALTER TABLE `questao`
  MODIFY `qu_idquestao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `resposta`
--
ALTER TABLE `resposta`
  MODIFY `re_idresposta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `tu_idturma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `us_idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `al_usuario` FOREIGN KEY (`al_idusuario`) REFERENCES `usuario` (`us_idusuario`);

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
  ADD CONSTRAINT `qu_idarea` FOREIGN KEY (`qu_idarea`) REFERENCES `area` (`ar_idarea`),
  ADD CONSTRAINT `qu_idnivel` FOREIGN KEY (`qu_idnivel`) REFERENCES `nivel` (`ni_idnivel`),
  ADD CONSTRAINT `qu_idusuario` FOREIGN KEY (`qu_idusuario`) REFERENCES `professor` (`pr_idusuario`);

--
-- Limitadores para a tabela `resposta`
--
ALTER TABLE `resposta`
  ADD CONSTRAINT `re_questao` FOREIGN KEY (`re_idquestao`) REFERENCES `questao` (`qu_idquestao`),
  ADD CONSTRAINT `re_usuario` FOREIGN KEY (`re_idusuario`) REFERENCES `usuario` (`us_idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
