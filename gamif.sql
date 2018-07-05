-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Jul-2018 às 20:54
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
  `al_texto` varchar(300) DEFAULT NULL,
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
(39, '90', 'B', 81, 1),
(40, 'Raiz de  9', 'C', 81, 0),
(41, '80', 'D', 81, 0),
(42, 'If this feeling flows both ways ', 'A', 84, 0),
(43, 'Have you got color in your cheeks', 'B', 84, 0),
(44, 'Crawling back to you', 'C', 84, 0),
(45, 'Sad to see you go', 'D', 84, 0),
(46, 'mau humorada, mau.', 'A', 85, 0),
(47, 'mÃ¡-humorada, mal.', 'B', 85, 0),
(48, 'mal humorada, mau.', 'C', 85, 0),
(49, 'mal-humorada, mal.', 'D', 85, 1),
(50, 'gejum, jeito, gesto, jenipapo', 'A', 86, 0),
(51, 'jejum, geito, jesto genipapo', 'B', 86, 0),
(52, ' jejum, jeito, gesto, jenipapo', 'C', 86, 1),
(53, 'gejum, geito, jesto, jenipapo', 'D', 86, 0),
(54, 'Porque, Por quÃª, por que e porquÃª.', 'A', 87, 0),
(55, 'Por quÃª, PorquÃª, porque e por que.', 'B', 87, 0),
(56, 'PorquÃª, Por que, Por quÃª e porque.', 'C', 87, 0),
(57, ' Por que, Porque, por quÃª e porquÃª.', 'D', 87, 1),
(58, ' CiÃªncia que tem por objeto de estudo as moedas e', 'A', 88, 1),
(59, 'CiÃªncia que estuda objetos e artefatos do antigo ', 'B', 88, 0),
(60, 'CiÃªncia que estuda patriÃ´nios histÃ³ricos.', 'C', 88, 0),
(61, 'CiÃªncia que estuda montanhas, vales cumes e de ma', 'D', 88, 0),
(62, 'Denis acompanhou Arnaldo pelas ruas do Rio de Jane', 'A', 89, 0),
(63, 'Denis guiou Arnaldo pelas ruas do Rio de Janeiro.', 'B', 89, 1),
(64, 'Denis gritou Arnaldo pelas ruas do Rio de Janeiro.', 'C', 89, 0),
(65, 'Denis seguiu Arnaldo pelas ruas do Rio de Janeiro.', 'D', 89, 0),
(66, 'Encostar', 'A', 90, 0),
(67, 'Inverter', 'B', 90, 0),
(68, ' Iludir', 'C', 90, 1),
(69, 'Engordar', 'D', 90, 0),
(70, 'Enfrente e enfrente', 'A', 91, 0),
(71, 'Em frente e em frenta', 'B', 91, 0),
(72, 'Em frente e enfrente', 'C', 91, 1),
(73, 'Enfrente e em frenta', 'D', 91, 0),
(74, 'Corado', 'A', 92, 0),
(75, 'Avermelhado', 'B', 92, 0),
(76, 'GrenÃ¡', 'C', 92, 0),
(77, 'Brilhante', 'D', 92, 1),
(78, ' Couves-flor, girassÃ³is, pudim, giz e lÃ¡pises.', 'A', 93, 0),
(79, ' Couves-flores, girassÃ³is, pudins, gizes e lÃ¡pis', 'B', 93, 1),
(80, ' Couves-flores, girassÃ³is, pudim, giz lÃ¡pises.', 'C', 93, 0),
(81, 'Couves-flor, girassols, pudins, gizes e lÃ¡pis.', 'D', 93, 0),
(82, ' Ã€, meia, A e meio.', 'A', 94, 0),
(83, ' A, meio, HÃ¡ e meia.', 'B', 94, 0),
(84, 'Ã€, meia, A e meio.', 'C', 94, 0),
(85, ' Ã€, meia, A e meio.', 'D', 94, 0),
(86, 'BrasÃ­lia', 'A', 95, 1),
(87, 'SÃ£o Paulo', 'B', 95, 0),
(88, 'Rio de Janeiro', 'C', 95, 0),
(89, 'Salvador', 'D', 95, 0),
(90, 'DÃ³, rÃ©, mi, fa, so, la, si.', 'A', 96, 1),
(91, 'dÃ³, rÃ©, fa, so, la, si, mi', 'B', 96, 0),
(92, 'dÃ³, rÃ©, mi, si, so, fa, la', 'C', 96, 0),
(93, 'dÃ³, rÃ©, la, so, fa, si, mi', 'D', 96, 0),
(94, 'A, ante, até, após, com, contra, de, desde, em, entre, para, perante, por, sem, sob, sobre e trás', 'A', 97, 1),
(95, 'A, o, as, os', 'B', 97, 0),
(96, 'Um, uma, uns, umas', 'C', 97, 0),
(97, 'os, as, se, lhes', 'D', 97, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `al_idusuario` int(11) NOT NULL,
  `al_matricula` varchar(45) DEFAULT NULL,
  `al_ano` int(11) DEFAULT NULL,
  `al_turma` int(11) DEFAULT NULL,
  `al_pontos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`al_idusuario`, `al_matricula`, `al_ano`, `al_turma`, `al_pontos`) VALUES
(3, '6434', 6, 3, 0),
(4, '999123', 9, 4, 0),
(5, '793231', 8, 4, 0),
(8, '23456', 8, 2, 0);

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
  `qu_pontosquestao` int(3) NOT NULL,
  `qu_textoquestao` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questao`
--

INSERT INTO `questao` (`qu_idquestao`, `qu_idarea`, `qu_ano`, `qu_idnivel`, `qu_idusuario`, `qu_pontosquestao`, `qu_textoquestao`) VALUES
(1, 3, 9, 1, 2, 0, 'Qual e o monte mais alto do mundo?'),
(81, 6, 7, 3, 2, 0, '9x9'),
(84, 5, 8, 3, 2, 0, 'Do I Wanna Know?'),
(85, 7, 6, 1, 2, 0, 'Complete: Andriele estÃ¡ ___, pois dormiu ___ durante a noite.'),
(86, 7, 6, 1, 2, 0, 'Qual conjunto de palavras estÃ¡ correto?'),
(87, 7, 6, 1, 2, 0, 'Na ordem da conversa, qual a colocaÃ§Ã£o correta? JoÃ£o: ___ Ã© separado? Bia: ____ nÃ£o Ã© junto! JoÃ£o: Mas ___? Bia: O ____ eu nÃ£o sei.'),
(88, 7, 6, 1, 2, 0, 'Qual a definiÃ§Ã£o da palavra \"NumismÃ¡tica\"?'),
(89, 7, 6, 1, 2, 0, 'Denis \"ciceroneou\" Arnaldo pelas ruas do Rio de Janeiro. Qual frase que modificada a palavra tem o mesmo sentido?'),
(90, 7, 6, 1, 2, 0, '\"Engodar\" Ã© o mesmo que:'),
(91, 7, 6, 1, 2, 0, 'Complete: Siga ___ e ___ seus medos.'),
(92, 7, 6, 1, 2, 0, 'Qual destas palavras nÃ£o Ã© sinÃ´nimo de \"Rubicundo\"?'),
(93, 7, 6, 1, 2, 0, 'Qual o plural correto de Couve-flor, girassol, pudim, giz e lÃ¡pis ?'),
(94, 7, 6, 1, 2, 0, 'Complete corretamente a oraÃ§Ã£o: ___ noiva chegou ___ atrasada, o casamento comeÃ§ou ___ quinze minutos e vai terminar meio-dia e ___.'),
(95, 3, 7, 2, 2, 10, 'Capital do Brasil?'),
(96, 1, 9, 2, 2, 5, 'Quais sÃ£o as notas musicais na ordem correta?'),
(97, 7, 9, 2, 7, 5, 'Quais das palavras abaixo são preposições?');

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
  MODIFY `al_idalternativa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

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
  MODIFY `qu_idquestao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

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
