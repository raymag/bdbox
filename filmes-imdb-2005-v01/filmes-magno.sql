-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Maio-2018 às 03:59
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `idFilme` int(11) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Genero` set('comedy','sci-fi','horror','romance','action','thriller','drama','mystery','crime','animation','adventure','fantasy','superhero') DEFAULT NULL,
  `Duracao` time DEFAULT NULL,
  `FaixaEtaria` enum('10','12','18') DEFAULT NULL,
  `DataEstreia` date DEFAULT NULL,
  `Arrecadacao` float DEFAULT NULL,
  `Nota` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`idFilme`, `Titulo`, `Genero`, `Duracao`, `FaixaEtaria`, `DataEstreia`, `Arrecadacao`, `Nota`) VALUES
(1, 'Batman Begins', 'action,adventure', '02:20:00', '10', '2005-06-17', 206852000, '8.3'),
(7, 'Star Wars: Episódio III - A Vingança dos Sith', 'action,adventure,fantasy', '02:20:00', '10', '2005-05-19', 380263000, '7.6'),
(10, 'V de Vingança', 'sci-fi,action,drama', '02:12:00', '18', '2005-12-11', 70511000, '8.2'),
(11, 'Guerra dos Mundos', 'sci-fi,thriller,adventure', '01:56:00', '12', '2005-06-29', 234280000, '6.5'),
(12, 'Golpe Baixo', 'comedy,crime', '01:53:00', '18', '2005-06-03', 158119000, '6.4'),
(13, 'Constantine', 'thriller,drama,fantasy', '02:01:00', '18', '2005-03-11', 75976200, '7.0'),
(14, 'O Senhor das Armas', 'thriller,drama,crime', '02:02:00', '18', '2005-10-14', 24149600, '7.6'),
(15, 'King Kong', 'action,drama,adventure', '03:07:00', '12', '2005-12-16', NULL, '7.2'),
(16, 'Sr. & Sra. Smith', 'comedy,action,crime', '02:00:00', '12', '2005-06-10', 186336000, '6.5'),
(17, 'A Lenda do Zorro', 'action,adventure', '02:09:00', '12', '2005-10-28', 46464000, '5.9'),
(18, 'Os Gatões: Uma Nova Balada', 'comedy,adventure', '01:44:00', '12', '2005-09-23', 80270200, '5.1'),
(19, 'Madagascar', 'comedy,adventure', '01:26:00', '12', '2005-06-24', 193596000, '6.9'),
(20, 'Quarteto Fantástico', 'action,adventure', '01:46:00', '10', '2005-07-08', 154696000, '5.7'),
(21, 'Revólver', 'action,drama,crime', '01:51:00', '18', '2005-09-22', 752420, '6.5'),
(22, 'A Noiva Cadáver', 'drama', '01:17:00', '10', '2005-10-21', 53359100, '7.4'),
(23, 'A Intérprete', 'thriller,mystery,crime', '02:08:00', '12', '2005-04-21', 72708200, '6.4'),
(24, 'Harry Potter e o Cálice de Fogo', 'adventure,fantasy', '02:37:00', '10', '2005-11-25', 290013000, '7.7'),
(25, 'E Se Fosse Verdade...', 'comedy,romance,fantasy', '01:35:00', '10', '2005-12-23', 48318100, '6.7'),
(26, 'Sin City: A Cidade do Pecado', 'thriller,crime', '02:04:00', '18', '2005-07-29', NULL, '8.0'),
(27, 'Carga Explosiva 2', 'action,thriller,crime', '01:27:00', '', '2005-10-21', 43095600, '6.3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`idFilme`),
  ADD UNIQUE KEY `Titulo` (`Titulo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmes`
--
ALTER TABLE `filmes`
  MODIFY `idFilme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
