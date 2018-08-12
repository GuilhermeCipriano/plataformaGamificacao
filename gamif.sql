-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Ago-2018 às 01:49
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
  `al_idquestao` int(11) DEFAULT NULL,
  `al_correta` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alternativas`
--

INSERT INTO `alternativas` (`al_idalternativa`, `al_texto`, `al_idquestao`, `al_correta`) VALUES
(1, 'R$ 230,30', 3, 1),
(2, 'R$ 230', 3, 0),
(3, 'R$ 200,30', 3, 0),
(4, ' R$ 220,30', 3, 0),
(5, 'É impossível que a soma seja igual a zero, pois sempre que se somam dois nÃºmeros o resultado deve ser maior que eles.', 4, 0),
(6, 'É possível que a soma seja igual a zero, bastando para isso que x seja o elemento neutro da adição.', 4, 0),
(7, 'É impossível que a soma seja igual a zero, pois, dados os números x e y, com x menor que y, o menor resultado possível para essa soma é o próprio x, quando y = 0. Assim x + 0 = x.', 4, 0),
(8, 'É possí­vel que a soma obtenha zero como resultado, bastando para isso que x seja o inverso aditivo de 130.', 4, 1),
(9, '8000 metros', 5, 0),
(10, '4289 metros', 5, 0),
(11, '8578 metros', 5, 1),
(12, '9000 metros', 5, 0),
(13, ' Elemento inverso é o número zero, e a soma de qualquer parcela com esse elemento resulta na própria parcela.', 6, 0),
(14, 'Associatividade é a propriedade que permite trocar a ordem de uma soma: a + b = b + a.', 6, 0),
(15, 'O elemento neutro da adição é igual a 1.', 6, 0),
(16, 'O elemento neutro da adição é o zero.', 6, 1),
(17, '300', 7, 0),
(18, '395', 7, 1),
(19, '405', 7, 0),
(20, '400', 7, 0),
(21, '205', 8, 0),
(22, '305', 8, 1),
(23, '445', 8, 0),
(24, '245', 8, 0),
(25, 'R$452,00', 9, 1),
(26, 'R$402,00', 9, 0),
(27, 'R$392,00', 9, 0),
(28, 'R$442,00', 9, 0);

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
(7, '2016301528', 6, 1, 1),
(8, '2016301546', 6, 1, 2),
(9, '2014300094', 6, 2, 3),
(10, '2016301573', 6, 2, 4),
(11, '2016301591', 6, 3, 5),
(12, '2016301617', 6, 3, 6),
(13, '2016301635', 6, 4, 7),
(14, '2016301653', 6, 4, 8),
(15, '2016301671', 7, 1, 11),
(16, '2016301690', 7, 1, 10),
(17, '2016301715', 7, 1, 0),
(18, '2016301733', 7, 2, 0),
(19, '2016301751', 7, 2, 0),
(20, '2015300544', 7, 3, 0),
(21, '2016301789', 7, 3, 0),
(22, '2016301804', 7, 4, 0),
(23, '2016301822', 7, 4, 0),
(24, '2016301537', 8, 1, 0),
(25, '2016301555', 8, 1, 0),
(26, '2016301564', 8, 2, 0),
(27, '2016301582', 8, 2, 0),
(28, '2016301608', 8, 3, 0),
(29, '2016301626', 8, 3, 0),
(30, '2016301644', 8, 4, 0),
(31, '2016301662', 8, 4, 0),
(32, '2016301680', 9, 1, 0),
(33, '2016301706', 9, 1, 0),
(34, '2016301724', 9, 2, 0),
(35, '2016301742', 9, 2, 0),
(36, '2016301760', 9, 3, 0),
(37, '2016301770', 9, 3, 0),
(38, '2016301798', 0, 4, 0),
(39, '2016301813', 9, 4, 0),
(40, '2016301831', 7, 1, 0);

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
(12, 6, 'Teorema de Pitágoras');

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
(6, '45632', 6);

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
  `qu_textoquestao` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `questao`
--

INSERT INTO `questao` (`qu_idquestao`, `qu_idcategoria`, `qu_ano`, `qu_idnivel`, `qu_idusuario`, `qu_pontosquestao`, `qu_textoquestao`) VALUES
(3, 3, 6, 4, 1, 5, 'João foi ao supermercado e comprou R$ 115,15 em mercadorias. Quando retornou à casa, ele viu que seu filho também havia ido ao mercado e comprado os mesmos produtos. Quanto os dois gastaram juntos?'),
(4, 3, 6, 1, 1, 10, 'Na adição, existe uma propriedade relacionada à  existência de um elemento inverso para cada número. Supondo que o número 130 seja somado ao número x e que o resultado dessa soma for igual a zero, assinale a alternativa correta:'),
(5, 3, 6, 1, 1, 5, 'Um fazendeiro mediu sua terra, de formato retangular, para cercá-la inteiramente com uma cerca de madeira. Quantos metros de cerca ele deverá fazer para sua fazenda que possui 1500 metros de largura por 2789 metros de comprimento?'),
(6, 3, 6, 1, 1, 10, 'A respeito das propriedades da adição, assinale a alternativa correta:'),
(7, 3, 6, 1, 1, 5, 'Em uma caixa há 126 laranjas e 269 peras. Quantas frutas há na caixa?'),
(8, 3, 6, 1, 1, 5, 'Para comemorar o aniversário de Paulo, sua mãe comprou 160 latinhas de refrigerante. Dias antes da festa o avô de Paulo comprou mais 145 latinhas de refrigerante sabor laranja. Quantas latinhas de refrigerante foram compradas para o aniversário de Paulo?'),
(9, 3, 6, 1, 1, 10, 'Durante o ano, Caio conseguiu juntar o valor de R$ 327,00 atravéss das mesadas que recebe. Caio também ganhou de seu tio o valor de R$ 125,00. Quanto Caio tem em dinheiro?');

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
(88, 8, 8, '2018-08-12 20:56:24', 4),
(89, 8, 21, '2018-08-12 20:56:28', 8),
(90, 8, 27, '2018-08-12 20:56:32', 9),
(91, 29, 8, '2018-08-12 20:56:50', 4),
(92, 29, 22, '2018-08-12 20:56:55', 8),
(93, 29, 25, '2018-08-12 20:57:04', 9);

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
(1, 'Jefferson Chaves', 'jefferson.chaves@ifc.edu.br', 'jeff123', '1993-08-02'),
(2, 'Rafael De Moura Speroni', 'rafael.speroni@ifc.edu.br', 'rafael123', '1985-10-15'),
(6, 'Jonathan Ache Dias', 'jonathan.dias@ifc.edu.br', 'jonathan123', '1990-05-17'),
(7, 'Adram Adonai Tschá', 'adramadonai@gmail.com', 'adram123', '2000-01-01'),
(8, 'Andriele Cristina Vogel', 'andrielletrabalho@gmail.com', 'andriele', '2000-01-02'),
(9, 'Bruno Almeida de Morais', 'brunomoraisalmeida3436@gmail.com', 'bruno', '2000-01-03'),
(10, 'Cecília de Borba', 'ceciliaborba.sfs@gmail.com', 'cecilia', '2000-01-04'),
(11, 'Elisa Cristina Camargo Laufer', 'elisa.cristina.laufer@gmail.com', 'elisa', '2000-01-05'),
(12, 'Gean Carlos Santos da Silva', 'torinoge@gmail.com', 'gean', '2000-01-06'),
(13, 'Guilherme Henrique Boing', 'guihboing@gmail.com', 'guilherme', '2000-01-07'),
(14, 'Henrique Luiz Hartmann', 'alemaohartmann@gmail.com', 'henrique', '2000-01-08'),
(15, 'Jalieny Ouriques', 'Jjali.ouriques.90@gmail.com', 'jalieny', '2000-01-09'),
(16, 'João Vitor dos Santos', 'joaovitorjec@gmail.com', 'joao', '2000-01-10'),
(17, 'Leonardo Adriano Vieira', 'leonardovieirabfh@gmail.com', 'leonardo', '2000-01-11'),
(18, 'Luan Alflen', 'luan.alflen4@gmail.com', 'luan', '2000-01-12'),
(19, 'Marlon Cesar Kotviski Guarnieri da Silva', 'marlonguarnieri@gmail.com', 'marlon', '2000-01-13'),
(20, 'Pedro José Gomes Neto', 'pedrogomesjoseneto@gmail.com', 'pedro', '2000-01-14'),
(21, 'Tainá Cristina Vollmann Monteiro', 'tainavollmann@gmail.com', 'taina', '2000-01-14'),
(22, 'Tainara Eleutério de Souza', 'tainaraeleu@gmail.com', 'tainara', '2000-01-16'),
(23, 'Victor Hugo Prado Gomes', 'vitorvex@gmail.com', 'victor', '2000-01-17'),
(24, 'André Luiz Pacheco da Costa', 'anddreluiz1@gmail.com', 'andre', '2000-01-18'),
(25, 'Asaph Varela da Silva', 'asaph_varela@hotmail.com', 'asaph', '2000-01-19'),
(26, 'Bryan Matheus Kruger', 'trkimbituva@yahoo.com.br', 'bryan', '2000-01-20'),
(27, 'Christian Henrique da Silva Machado', 'christianrick2000@gmail.com', 'christian', '2000-01-21'),
(28, 'Felipe Oliveira Borba', 'felipepborba@hotmail.com', 'felipe', '2000-01-22'),
(29, 'Guilherme Cipriano', 'guilherme.cp@live.com', 'cipriano', '2000-01-23'),
(30, 'Heloiza de Fátima Kutenski', 'heloizafatimakutenski@gmail.com', 'heloiza', '2000-01-24'),
(31, 'Hugo Gutzmann Pulga', 'facahugo@gmail.com', 'hugo', '2000-01-25'),
(32, 'Jéssica Yohana Otto', 'jessicayohanaotto@gmail.com', 'jessica', '2000-01-26'),
(33, 'Lauro Antônio do Nascimento', 'nascimento@apsfs.sc.gov.br', 'lauro', '2000-01-27'),
(34, 'Leonardo Edenir Rodrigues Graciano', 'leonardo.edenirgraciano@gmail.com', 'leonardo1', '2000-01-27'),
(35, 'Maria Luiza de Souza de Oliveira', 'souzamalu2016@gmail.com', 'maria', '2000-01-28'),
(36, 'Mateus Moller Erkmann ', 'erkmann08@gmail.com', 'mateus', '2000-01-29'),
(37, 'Suelen Cruz Barcelos', 'suh.barcellos82@gmail.com', 'suelen', '2000-01-30'),
(38, 'Tainá Langa', 'langataina@gmail.com', 'taina', '2000-01-31'),
(39, 'Thiago Henrique Walter', 'thiagohwalter@gmail.com', 'thiago', '2000-02-01'),
(40, 'Vinicius Soledade da Silva', 'viniciussoledade13@gmail.com', 'vinicius', '2000-02-02');

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
  ADD UNIQUE KEY `us_email` (`us_email`);

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
  MODIFY `al_idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `ar_idarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ca_idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nivel`
--
ALTER TABLE `nivel`
  MODIFY `ni_idnivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questao`
--
ALTER TABLE `questao`
  MODIFY `qu_idquestao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `resposta`
--
ALTER TABLE `resposta`
  MODIFY `re_idresposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `tu_idturma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `us_idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
