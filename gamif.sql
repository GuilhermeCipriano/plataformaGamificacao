-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Out-2018 às 13:27
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
(28, 'R$442,00', 9, 0),
(29, '1945', 10, 1),
(30, '1918', 10, 0),
(31, '1946', 10, 0),
(32, '1919', 10, 0),
(33, '1914', 12, 0),
(34, '1915', 12, 0),
(35, '1939', 12, 1),
(36, '1940', 12, 0),
(41, '307 mil', 14, 0),
(42, '3,07 milhões', 14, 0),
(43, '307  milhões', 14, 1),
(44, '3,07 bilhões', 14, 0),
(45, '5', 15, 0),
(46, '75', 15, 1),
(47, '500', 15, 0),
(48, '7500', 15, 0),
(49, '12', 16, 0),
(50, '14', 16, 0),
(51, '16', 16, 1),
(52, '20', 16, 0),
(53, '299', 17, 0),
(54, '399', 17, 0),
(55, '631', 17, 0),
(56, '641', 17, 1),
(57, 'Caixa A: bola, foto - caixa B: dado, figurinha', 18, 0),
(58, 'Caixa A: dado, foto - caixa B: figurinha, bola', 18, 0),
(59, 'Caixa A: figurinha, foto - caixa B: dado, bola', 18, 1),
(60, ' Caixa A: figurinha, bola – caixa B: dado, foto', 18, 0),
(61, '18', 19, 0),
(62, '194', 19, 0),
(63, '204', 19, 1),
(64, '228', 19, 0),
(65, '5', 21, 0),
(66, '20', 21, 0),
(67, '10', 21, 0),
(68, '15', 21, 1),
(69, 'Inserção de Alternativas 1', 22, 0),
(70, 'Inserção de Alternativas 2', 22, 1),
(71, 'Inserção de Alternativas 3', 22, 0),
(72, 'Inserção de Alternativas 4', 22, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `al_idusuario` int(11) NOT NULL,
  `al_matricula` varchar(45) DEFAULT NULL,
  `al_turma` int(11) DEFAULT NULL,
  `al_pontos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`al_idusuario`, `al_matricula`, `al_turma`, `al_pontos`) VALUES
(7, '2016301528', 1, 1),
(8, '2016301546', 1, 2),
(9, '2014300094', 2, 3),
(10, '2016301573', 2, 4),
(11, '2016301591', 3, 5),
(12, '2016301617', 3, 6),
(13, '2016301635', 4, 7),
(14, '2016301653', 4, 8),
(15, '2016301671', 1, 11),
(16, '2016301690', 1, 10),
(17, '2016301715', 1, 0),
(18, '2016301733', 2, 0),
(19, '2016301751', 2, 0),
(20, '2015300544', 3, 0),
(21, '2016301789', 3, 0),
(22, '2016301804', 4, 0),
(23, '2016301822', 4, 0),
(24, '2016301537', 1, 0),
(25, '2016301555', 1, 0),
(26, '2016301564', 2, 0),
(27, '2016301582', 2, 0),
(28, '2016301608', 3, 0),
(29, '2016301626', 3, 15),
(30, '2016301644', 4, 0),
(31, '2016301662', 4, 0),
(32, '2016301680', 1, 0),
(33, '2016301706', 1, 0),
(34, '2016301724', 2, 0),
(35, '2016301742', 2, 0),
(36, '2016301760', 3, 0),
(37, '2016301770', 3, 0),
(38, '2016301798', 4, 0),
(39, '2016301813', 4, 0),
(40, '2016301831', 1, 0),
(45, '344212', 8, 0);

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
(46, '2342112', 2);

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
(3, 3, 6, 4, 1, 20, 'João foi ao supermercado e comprou R$ 115,15 em mercadorias. Quando retornou à casa, ele viu que seu filho também havia ido ao mercado e comprado os mesmos produtos. Quanto os dois gastaram juntos?', 0),
(4, 3, 6, 1, 1, 10, 'Na adição, existe uma propriedade relacionada à  existência de um elemento inverso para cada número. Supondo que o número 130 seja somado ao número x e que o resultado dessa soma for igual a zero, assinale a alternativa correta:', 1),
(5, 3, 6, 1, 1, 5, 'Um fazendeiro mediu sua terra, de formato retangular, para cercá-la inteiramente com uma cerca de madeira. Quantos metros de cerca ele deverá fazer para sua fazenda que possui 1500 metros de largura por 2789 metros de comprimento?', 1),
(6, 3, 6, 1, 1, 10, 'A respeito das propriedades da adição, assinale a alternativa correta:', 1),
(7, 3, 6, 1, 1, 5, 'Em uma caixa há 126 laranjas e 269 peras. Quantas frutas há na caixa?', 1),
(8, 3, 6, 1, 1, 5, 'Para comemorar o aniversário de Paulo, sua mãe comprou 160 latinhas de refrigerante. Dias antes da festa o avô de Paulo comprou mais 145 latinhas de refrigerante sabor laranja. Quantas latinhas de refrigerante foram compradas para o aniversário de Paulo?', 1),
(9, 3, 6, 1, 1, 10, 'Durante o ano, Caio conseguiu juntar o valor de R$ 327,00 atravéss das mesadas que recebe. Caio também ganhou de seu tio o valor de R$ 125,00. Quanto Caio tem em dinheiro?', 1),
(10, 13, 6, 1, 1, 5, 'Fim da Segunda Guerra Mundial', 1),
(11, 13, 9, 1, 1, 10, 'Início da Segunda Guerra Mundial', 1),
(12, 13, 9, 1, 1, 10, 'Início da Segunda Guerra Mundial', 1),
(14, 16, 6, 1, 1, 5, 'Na ocasião das Olimpíadas de Pequim, o jornalzinho de um colégio publicou uma notícia com a seguinte manchete: “População da China é a maior do mundo com 1,307 bilhão de habitantes”. De acordo com essa informação, a população da China supera 1 bilhão de habitantes em:', 1),
(15, 16, 6, 1, 1, 5, '[2011 - Prova BRASIL]  O litoral brasileiro tem cerca de 7 500 quilômetros de extensão. Esse número possui quantas centenas?', 1),
(16, 16, 6, 1, 1, 5, 'Beatriz encontrou, na loja pague pouco, a seguinte promoção:  Promoção leve 4 pague 3  Ela aproveitou a promoção e pagou 12 canetas. O número de canetas que Beatriz levou foi:', 1),
(17, 16, 6, 1, 1, 5, '[2011 - Prova BRASIL]  Adriana vai fazer esta subtração: 679 – 38. O resultado dessa operação será', 1),
(18, 17, 6, 2, 1, 10, 'O quarto de Felipe estava uma bagunça e sua mãe mandou que ele o arrumasse. O menino adora Matemática e resolveu guardar seus brinquedos de uma forma diferente. Ele pegou duas caixas de papelão e escreveu: caixa A – Figuras Planas e caixa B – Figuras Espaciais. Ajude Felipe a colocar os brinquedos que lembram figuras planas na caixa A e os brinquedos que lembram figuras espaciais na caixa B. Marque a alternativa em que os brinquedos estão nas caixas certas.', 1),
(19, 16, 7, 1, 1, 5, 'Uma Escola tem 18 turmas e cada comporta, no máximo 34 alunos. Para o ano de 2014, foram preenchidas todas as vagas, e a direção da escola conseguiu organizar as turmas em três períodos, com quantidades iguais de alunos e sem sobrar nenhum.  O total de alunos de cada período é:', 1),
(21, 13, 6, 3, 1, 15, 'Pergunta de teste, retorno deverá ser 15', 1),
(22, 1, 7, 2, 1, 10, 'Inserção SQL para testes', 1);

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
(111, 29, 9, '2018-10-22 19:22:07', 5),
(112, 29, 25, '2018-10-22 19:23:04', 9),
(113, 1, 11, '2018-10-23 11:07:39', 5);

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
  `us_idtipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`us_idusuario`, `us_nome`, `us_email`, `us_senha`, `us_datanascimento`, `us_idtipo`) VALUES
(1, 'Jefferson Chaves', 'jefferson.chaves@ifc.edu.br', 'jeff123', '1993-08-02', 3),
(2, 'Rafael De Moura Speroni', 'rafael.speroni@ifc.edu.br', 'rafael123', '1985-10-15', 2),
(6, 'Jonathan Ache Dias', 'jonathan.dias@ifc.edu.br', 'jonathan123', '1990-05-17', 2),
(7, 'Adram Adonai Tschá', 'adramadonai@gmail.com', 'adram123', '2000-01-01', 1),
(8, 'Andriele Cristina Vogel', 'andrielletrabalho@gmail.com', 'andriele', '2000-01-02', 1),
(9, 'Bruno Almeida de Morais', 'brunomoraisalmeida3436@gmail.com', 'bruno', '2000-01-03', 1),
(10, 'Cecília de Borba', 'ceciliaborba.sfs@gmail.com', 'cecilia', '2000-01-04', 1),
(11, 'Elisa Cristina Camargo Laufer', 'elisa.cristina.laufer@gmail.com', 'elisa', '2000-01-05', 1),
(12, 'Gean Carlos Santos da Silva', 'torinoge@gmail.com', 'gean', '2000-01-06', 1),
(13, 'Guilherme Henrique Boing', 'guihboing@gmail.com', 'guilherme', '2000-01-07', 1),
(14, 'Henrique Luiz Hartmann', 'alemaohartmann@gmail.com', 'henrique', '2000-01-08', 1),
(15, 'Jalieny Ouriques', 'Jjali.ouriques.90@gmail.com', 'jalieny', '2000-01-09', 1),
(16, 'João Vitor dos Santos', 'joaovitorjec@gmail.com', 'joao', '2000-01-10', 1),
(17, 'Leonardo Adriano Vieira', 'leonardovieirabfh@gmail.com', 'leonardo', '2000-01-11', 1),
(18, 'Luan Alflen', 'luan.alflen4@gmail.com', 'luan', '2000-01-12', 1),
(19, 'Marlon Cesar Kotviski Guarnieri da Silva', 'marlonguarnieri@gmail.com', 'marlon', '2000-01-13', 1),
(20, 'Pedro José Gomes Neto', 'pedrogomesjoseneto@gmail.com', 'pedro', '2000-01-14', 1),
(21, 'Tainá Cristina Vollmann Monteiro', 'tainavollmann@gmail.com', 'taina', '2000-01-14', 1),
(22, 'Tainara Eleutério de Souza', 'tainaraeleu@gmail.com', 'tainara', '2000-01-16', 1),
(23, 'Victor Hugo Prado Gomes', 'vitorvex@gmail.com', 'victor', '2000-01-17', 1),
(24, 'André Luiz Pacheco da Costa', 'anddreluiz1@gmail.com', 'andre', '2000-01-18', 1),
(25, 'Asaph Varela da Silva', 'asaph_varela@hotmail.com', 'asaph', '2000-01-19', 1),
(26, 'Bryan Matheus Kruger', 'trkimbituva@yahoo.com.br', 'bryan', '2000-01-20', 1),
(27, 'Christian Henrique da Silva Machado', 'christianrick2000@gmail.com', 'christian', '2000-01-21', 1),
(28, 'Felipe Oliveira Borba', 'felipepborba@hotmail.com', 'felipe', '2000-01-22', 1),
(29, 'Guilherme Cipriano', 'guilherme.cp@live.com', 'cipriano', '2000-01-23', 1),
(30, 'Heloiza de Fátima Kutenski', 'heloizafatimakutenski@gmail.com', 'heloiza', '2000-01-24', 1),
(31, 'Hugo Gutzmann Pulga', 'facahugo@gmail.com', 'hugo', '2000-01-25', 1),
(32, 'Jéssica Yohana Otto', 'jessicayohanaotto@gmail.com', 'jessica', '2000-01-26', 1),
(33, 'Lauro Antônio do Nascimento', 'nascimento@apsfs.sc.gov.br', 'lauro', '2000-01-27', 1),
(34, 'Leonardo Edenir Rodrigues Graciano', 'leonardo.edenirgraciano@gmail.com', 'leonardo1', '2000-01-27', 1),
(35, 'Maria Luiza de Souza de Oliveira', 'souzamalu2016@gmail.com', 'maria', '2000-01-28', 1),
(36, 'Mateus Moller Erkmann ', 'erkmann08@gmail.com', 'mateus', '2000-01-29', 1),
(37, 'Suelen Cruz Barcelos', 'suh.barcellos82@gmail.com', 'suelen', '2000-01-30', 1),
(38, 'Tainá Langa', 'langataina@gmail.com', 'taina', '2000-01-31', 1),
(39, 'Thiago Henrique Walter', 'thiagohwalter@gmail.com', 'thiago', '2000-02-01', 1),
(40, 'Vinicius Soledade da Silva', 'viniciussoledade13@gmail.com', 'vinicius', '2000-02-02', 1),
(45, 'Milena Thiemy Monteiro Shoji', 'milenashoji@gmail.com', 'milena', '2000-03-31', 1),
(46, 'Ivo Marcos Riegeeeel', 'ivo.riegel@ifc.edu.br', 'ivooo', '1991-08-10', 2);

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
  ADD UNIQUE KEY `us_email` (`us_email`),
  ADD KEY `fk_tipo_usuario` (`us_idtipo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternativas`
--
ALTER TABLE `alternativas`
  MODIFY `al_idalternativa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `al_idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
  MODIFY `qu_idquestao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `resposta`
--
ALTER TABLE `resposta`
  MODIFY `re_idresposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `tu_idturma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `us_idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_tipo_usuario` FOREIGN KEY (`us_idtipo`) REFERENCES `tipo_usuario` (`tu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
