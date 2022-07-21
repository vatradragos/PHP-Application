-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mart. 15, 2022 la 01:53 PM
-- Versiune server: 10.4.21-MariaDB
-- Versiune PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `project`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('622f66616b7be', '622f66616beb1'),
('622f66616d34f', '622f66616d687'),
('622f66616ede4', '622f66616f1f6'),
('622f6661706a7', '622f666170937'),
('622f6661719d2', '622f666172130'),
('622f666173595', '622f66617380b'),
('622f66617441c', '622f666174681'),
('622f666175306', '622f6661755b2'),
('622f66617629c', '622f6661766b5'),
('622f666177718', '622f666177994'),
('622f6b4b099fe', '622f6b4b0a478'),
('622f6b4b0b67f', '622f6b4b0b9b6'),
('622f6b4b0c9ec', '622f6b4b0cda8'),
('622f6b4b0e6cb', '622f6b4b0eb00'),
('622f6b4b10111', '622f6b4b10480'),
('622f6b4b1169c', '622f6b4b121ff'),
('622f6b4b13296', '622f6b4b13514'),
('622f6b4b14117', '622f6b4b14381'),
('622f6b4b1539d', '622f6b4b156de'),
('622f6b4b16e86', '622f6b4b171d8'),
('62305b1cb6abf', '62305b1cb772c'),
('62305b1cb8cf1', '62305b1cb914c'),
('62305b1cbb573', '62305b1cbb94c'),
('62305b1cbd435', '62305b1cbda85'),
('62305b1cbfa2c', '62305b1cc0788'),
('62305b1cc1df2', '62305b1cc25a4'),
('62305b1cc40e6', '62305b1cc452c'),
('62305b1cc5d72', '62305b1cc67f4'),
('62305b1cc80f2', '62305b1cc84c0'),
('62305b1cc9b5b', '62305b1cca232'),
('623069147fba9', '623069148070e'),
('6230691481e5f', '62306914821e9'),
('62306914845bb', '6230691484a69'),
('6230691486154', '6230691486754'),
('6230691488f41', '6230691489316'),
('623069148ba5c', '623069148c7f2'),
('623069148e12c', '623069148e61a'),
('62306914907a5', '6230691490c80'),
('6230691492618', '6230691493124'),
('62306914950e4', '6230691495660'),
('62306cc7c6f2d', '62306cc7c7a8a'),
('62306cc7c902f', '62306cc7c94fd'),
('62306cc7cbb79', '62306cc7cc09d'),
('62306cc7cd3bb', '62306cc7cd7c9'),
('62306cc7cf454', '62306cc7cf9fd'),
('62306cc7d11ad', '62306cc7d16b2'),
('62306cc7d3d2b', '62306cc7d469f'),
('62306cc7d5a3b', '62306cc7d604e'),
('62306cc7d7f39', '62306cc7d83a7'),
('62306cc7d9c52', '62306cc7da200'),
('62306f13331f3', '62306f133475a'),
('62306f133754a', '62306f1337bb2'),
('62306f1339e0b', '62306f133a39b'),
('62306f133cf49', '62306f133ddd1'),
('62306f133fad9', '62306f1340312'),
('62306f1341ae2', '62306f1341eb9'),
('62306f13432a3', '62306f1343c0b'),
('62306f1345599', '62306f1345958'),
('62306f1346b69', '62306f1346f14'),
('62306f1348db1', '62306f1349399'),
('62307601b401e', '62307601b525a'),
('62307601b7c7a', '62307601b9215'),
('62307601bae2b', '62307601bb1c9'),
('62307601bc2fa', '62307601bcebc'),
('62307601be663', '62307601bea45'),
('62307601bfc4a', '62307601bffeb'),
('62307601c21a1', '62307601c2588'),
('62307601c4113', '62307601c469a'),
('62307601c6b3e', '62307601c6f0f'),
('62307601c8128', '62307601c856c');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm'),
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('558510a8a1234', 'sunnygkp10', 'sunnygkp10@gmail.com', 'dl;dsnklfn', 'fmdsfld fdj', '2015-06-20', '09:05:12am'),
('5585509097ae2', 'sunny', 'sunnygkp10@gmail.com', 'kcsncsk', 'l.mdsavn', '2015-06-20', '01:37:52pm'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm'),
('5589858b6c43b', 'nik', 'nik1@gmail.com', 'good', 'good site', '2015-06-23', '06:12:59pm');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('vatradragos@yahoo.com', '622f634788ea5', 11, 10, 11, 0, '2022-03-14 16:00:31'),
('vatradragos@yahoo.com', '622f68103cba0', 10, 10, 10, 0, '2022-03-14 16:21:31'),
('vatradragos@yahoo.com', '623058249d0ad', 10, 10, 10, 0, '2022-03-15 09:24:41'),
('vatradragos@yahoo.com', '62306506871b9', 10, 10, 10, 0, '2022-03-15 10:24:12'),
('vatradragos@yahoo.com', '62306d1b2ca7d', 10, 10, 10, 0, '2022-03-15 10:49:48'),
('vatradragos@yahoo.com', '6230732f04feb', 10, 10, 10, 0, '2022-03-15 11:19:43'),
('austerpaul@yahoo.com', '622f634788ea5', -6, 10, 6, 4, '2022-03-15 12:19:58'),
('austerpaul@yahoo.com', '622f68103cba0', -18, 10, 3, 7, '2022-03-15 12:20:47'),
('austerpaul@yahoo.com', '623058249d0ad', 2, 10, 8, 2, '2022-03-15 12:21:48'),
('austerpaul@yahoo.com', '62306506871b9', -2, 10, 7, 3, '2022-03-15 12:22:40'),
('austerpaul@yahoo.com', '62306d1b2ca7d', -2, 10, 7, 3, '2022-03-15 12:23:27'),
('austerpaul@yahoo.com', '6230732f04feb', 6, 10, 9, 1, '2022-03-15 12:24:07'),
('gavaldaana@yahoo.com', '622f634788ea5', 6, 10, 9, 1, '2022-03-15 12:26:04'),
('gavaldaana@yahoo.com', '622f68103cba0', -6, 10, 6, 4, '2022-03-15 12:26:51'),
('gavaldaana@yahoo.com', '623058249d0ad', 10, 10, 10, 0, '2022-03-15 12:27:34'),
('gavaldaana@yahoo.com', '62306506871b9', 10, 10, 10, 0, '2022-03-15 12:28:18'),
('gavaldaana@yahoo.com', '62306d1b2ca7d', 10, 10, 10, 0, '2022-03-15 12:29:01'),
('gavaldaana@yahoo.com', '6230732f04feb', 10, 10, 10, 0, '2022-03-15 12:29:36'),
('popescuioan@yahoo.com', '622f634788ea5', 2, 10, 8, 2, '2022-03-15 12:32:19'),
('popescuioan@yahoo.com', '622f68103cba0', 10, 10, 10, 0, '2022-03-15 12:33:07'),
('popescuioan@yahoo.com', '623058249d0ad', 6, 10, 9, 1, '2022-03-15 12:33:50'),
('popescuioan@yahoo.com', '62306506871b9', 10, 10, 10, 0, '2022-03-15 12:34:37'),
('popescuioan@yahoo.com', '62306d1b2ca7d', 2, 10, 8, 2, '2022-03-15 12:35:25'),
('popescuioan@yahoo.com', '6230732f04feb', 2, 10, 8, 2, '2022-03-15 12:36:02'),
('smithdiana@yahoo.com', '622f634788ea5', 2, 10, 8, 2, '2022-03-15 12:37:36'),
('smithdiana@yahoo.com', '622f68103cba0', 2, 10, 8, 2, '2022-03-15 12:38:30'),
('smithdiana@yahoo.com', '623058249d0ad', 7, 10, 10, 1, '2022-03-15 12:42:59'),
('smithdiana@yahoo.com', '62306506871b9', 10, 10, 10, 0, '2022-03-15 12:43:41'),
('smithdiana@yahoo.com', '62306d1b2ca7d', 10, 10, 10, 0, '2022-03-15 12:44:18'),
('smithdiana@yahoo.com', '6230732f04feb', 10, 10, 10, 0, '2022-03-15 12:44:52');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('622f66616b7be', 'Three', '622f66616bead'),
('622f66616b7be', 'Four', '622f66616beaf'),
('622f66616b7be', 'Five', '622f66616beb0'),
('622f66616b7be', 'Six', '622f66616beb1'),
('622f66616d34f', 'add hypertext capabilities', '622f66616d684'),
('622f66616d34f', 'enhance the document', '622f66616d686'),
('622f66616d34f', 'both A & B', '622f66616d687'),
('622f66616d34f', 'none of the above', '622f66616d688'),
('622f66616ede4', '1-10', '622f66616f1f6'),
('622f66616ede4', '1-9', '622f66616f1f8'),
('622f66616ede4', '1-8', '622f66616f1f9'),
('622f66616ede4', '1-7', '622f66616f1fa'),
('622f6661706a7', 'Menu Bar', '622f666170933'),
('622f6661706a7', 'ToolBar', '622f666170935'),
('622f6661706a7', 'Location', '622f666170936'),
('622f6661706a7', 'All Of the Above', '622f666170937'),
('622f6661719d2', 'ms paint', '622f66617212c'),
('622f6661719d2', 'photoshop', '622f666172130'),
('622f6661719d2', 'animator pro', '622f666172131'),
('622f6661719d2', 'none of the above', '622f666172132'),
('622f666173595', 'title', '622f666173808'),
('622f666173595', 'body', '622f666173809'),
('622f666173595', 'head', '622f66617380a'),
('622f666173595', 'none of the above', '622f66617380b'),
('622f66617441c', '127-190', '622f666174680'),
('622f66617441c', '128-190', '622f666174681'),
('622f66617441c', '128-191', '622f666174682'),
('622f66617441c', '127-255', '622f666174683'),
('622f666175306', '1-10', '622f6661755ae'),
('622f666175306', '1-9', '622f6661755b0'),
('622f666175306', '1-8', '622f6661755b1'),
('622f666175306', '1-7', '622f6661755b2'),
('622f66617629c', '30 Frames/second', '622f6661766b5'),
('622f66617629c', '20 Frames/second', '622f6661766bb'),
('622f66617629c', '40 Frames/second', '622f6661766bc'),
('622f66617629c', 'None of the above', '622f6661766bd'),
('622f666177718', 'ASCII Text', '622f666177991'),
('622f666177718', 'EBCDIC Text', '622f666177993'),
('622f666177718', 'Hypertext', '622f666177994'),
('622f666177718', 'None of the above', '622f666177995'),
('622f6b4b099fe', 'Attributes', '622f6b4b0a46e'),
('622f6b4b099fe', 'Tags', '622f6b4b0a475'),
('622f6b4b099fe', 'Raw text', '622f6b4b0a476'),
('622f6b4b099fe', 'All the answers are true', '622f6b4b0a478'),
('622f6b4b0b67f', 'Application', '622f6b4b0b9b1'),
('622f6b4b0b67f', 'Cover page', '622f6b4b0b9b4'),
('622f6b4b0b67f', 'Front-end', '622f6b4b0b9b5'),
('622f6b4b0b67f', 'Web Page', '622f6b4b0b9b6'),
('622f6b4b0c9ec', '.htl', '622f6b4b0cda6'),
('622f6b4b0c9ec', '.html', '622f6b4b0cda8'),
('622f6b4b0c9ec', '.hml', '622f6b4b0cda9'),
('622f6b4b0c9ec', '.htnl', '622f6b4b0cdaa'),
('622f6b4b0e6cb', 'HEAD', '622f6b4b0eafa'),
('622f6b4b0e6cb', 'Title', '622f6b4b0eafe'),
('622f6b4b0e6cb', 'Body', '622f6b4b0eaff'),
('622f6b4b0e6cb', 'HTML', '622f6b4b0eb00'),
('622f6b4b10111', 'push', '622f6b4b1047d'),
('622f6b4b10111', 'float', '622f6b4b10480'),
('622f6b4b10111', 'align', '622f6b4b10481'),
('622f6b4b10111', 'wrap', '622f6b4b10482'),
('622f6b4b1169c', 'Never', '622f6b4b121f7'),
('622f6b4b1169c', 'Yes, it’s possible', '622f6b4b121fd'),
('622f6b4b1169c', 'Allways', '622f6b4b121fe'),
('622f6b4b1169c', 'No, it’s not possible', '622f6b4b121ff'),
('622f6b4b13296', 'd-index', '622f6b4b13510'),
('622f6b4b13296', 's-index', '622f6b4b13512'),
('622f6b4b13296', 'x-index', '622f6b4b13513'),
('622f6b4b13296', 'z-index', '622f6b4b13514'),
('622f6b4b14117', 'Allways', '622f6b4b1437e'),
('622f6b4b14117', 'Yes, it’s possible', '622f6b4b14381'),
('622f6b4b14117', 'No, it’s not possible.', '622f6b4b14382'),
('622f6b4b14117', 'Never', '622f6b4b14383'),
('622f6b4b1539d', 'H1', '622f6b4b156de'),
('622f6b4b1539d', 'Heading', '622f6b4b156e0'),
('622f6b4b1539d', 'Head', '622f6b4b156e1'),
('622f6b4b1539d', 'H6', '622f6b4b156e2'),
('622f6b4b16e86', 'border-line, border-style', '622f6b4b171d6'),
('622f6b4b16e86', 'border-style, border-color', '622f6b4b171d8'),
('622f6b4b16e86', 'border-decoration, border', '622f6b4b171d9'),
('622f6b4b16e86', 'border-color, border-radius', '622f6b4b171da'),
('62305b1cb6abf', 'Programming', '62305b1cb772c'),
('62305b1cb6abf', 'Application', '62305b1cb7737'),
('62305b1cb6abf', 'Scripting', '62305b1cb7738'),
('62305b1cb6abf', 'None of them', '62305b1cb773a'),
('62305b1cb8cf1', 'Client', '62305b1cb914c'),
('62305b1cb8cf1', 'Server', '62305b1cb9154'),
('62305b1cb8cf1', 'Object', '62305b1cb9155'),
('62305b1cb8cf1', 'None of them', '62305b1cb9156'),
('62305b1cbb573', 'Select', '62305b1cbb947'),
('62305b1cbb573', 'If', '62305b1cbb94c'),
('62305b1cbb573', 'Switch', '62305b1cbb94e'),
('62305b1cbb573', 'For', '62305b1cbb94f'),
('62305b1cbd435', 'False', '62305b1cbda85'),
('62305b1cbd435', 'True', '62305b1cbda93'),
('62305b1cbd435', 'Probable', '62305b1cbda94'),
('62305b1cbd435', 'Sometimes', '62305b1cbda96'),
('62305b1cbfa2c', 'var', '62305b1cc0788'),
('62305b1cbfa2c', 'if', '62305b1cc0791'),
('62305b1cbfa2c', 'for', '62305b1cc0793'),
('62305b1cbfa2c', 'create', '62305b1cc0794'),
('62305b1cc1df2', 'You should not use any of the JavaScript reserved keyword as variable name', '62305b1cc2597'),
('62305b1cc1df2', 'JavaScript variable names should not start with a numeral (0-9)', '62305b1cc25a3'),
('62305b1cc1df2', 'Both of them', '62305b1cc25a4'),
('62305b1cc1df2', 'None of them', '62305b1cc25a5'),
('62305b1cc40e6', 'true', '62305b1cc452c'),
('62305b1cc40e6', 'false', '62305b1cc4532'),
('62305b1cc40e6', 'never', '62305b1cc4533'),
('62305b1cc40e6', 'allways', '62305b1cc4534'),
('62305b1cc5d72', 'last', '62305b1cc67e7'),
('62305b1cc5d72', 'get', '62305b1cc67f2'),
('62305b1cc5d72', 'pop', '62305b1cc67f4'),
('62305b1cc5d72', 'Non of them', '62305b1cc67f5'),
('62305b1cc80f2', 'toExponential', '62305b1cc84b8'),
('62305b1cc80f2', 'toFixed', '62305b1cc84bd'),
('62305b1cc80f2', 'toLocaleString', '62305b1cc84bf'),
('62305b1cc80f2', 'toPrecision', '62305b1cc84c0'),
('62305b1cc9b5b', 'slice', '62305b1cca232'),
('62305b1cc9b5b', 'split', '62305b1cca244'),
('62305b1cc9b5b', 'replace', '62305b1cca245'),
('62305b1cc9b5b', 'search', '62305b1cca246'),
('623069147fba9', 'navbar-default', '6230691480703'),
('623069147fba9', 'navbar-black', '623069148070c'),
('623069147fba9', 'navbar-dark', '623069148070d'),
('623069147fba9', 'navbar-inverse', '623069148070e'),
('6230691481e5f', 'active', '62306914821e9'),
('6230691481e5f', 'success', '62306914821ee'),
('6230691481e5f', 'warning', '62306914821ef'),
('6230691481e5f', 'danger', '62306914821f0'),
('62306914845bb', 'btn-warning', '6230691484a69'),
('62306914845bb', 'btn-danger', '6230691484a6e'),
('62306914845bb', 'btn-link', '6230691484a6f'),
('62306914845bb', 'btn-info', '6230691484a70'),
('6230691486154', 'nav-tabs', '6230691486746'),
('6230691486154', 'nav-pills', '6230691486752'),
('6230691486154', 'nav-pills nav-stacked', '6230691486754'),
('6230691486154', 'nav-tabs nav-justified', '6230691486755'),
('6230691488f41', 'lg sm', '623069148930f'),
('6230691488f41', 'pagination-lg pagination-sm', '6230691489316'),
('6230691488f41', 'menu-lg menu-sm', '6230691489317'),
('6230691488f41', 'None of them', '6230691489318'),
('623069148ba5c', 'This component can optionally increase the size of headings and add a lot of margin for landing page content.', '623069148c7e9'),
('623069148ba5c', 'To use the Jumbotron: Create a container div with the class of jumbotron.', '623069148c7f2'),
('623069148ba5c', 'Both of them', '623069148c7f3'),
('623069148ba5c', 'None of them', '623069148c7f4'),
('623069148e12c', 'orbit', '623069148e612'),
('623069148e12c', 'slideshow', '623069148e618'),
('623069148e12c', 'scrollspy', '623069148e619'),
('623069148e12c', 'carousel', '623069148e61a'),
('62306914907a5', '6 columns', '6230691490c79'),
('62306914907a5', '12 columns', '6230691490c80'),
('62306914907a5', '3 columns', '6230691490c81'),
('62306914907a5', '21 columns', '6230691490c82'),
('6230691492618', '14', '6230691493124'),
('6230691492618', '16', '623069149312e'),
('6230691492618', '18', '623069149312f'),
('6230691492618', '20', '6230691493131'),
('62306914950e4', 'Fixed width container', '6230691495653'),
('62306914950e4', 'Table format', '623069149565d'),
('62306914950e4', 'To create a Form', '623069149565f'),
('62306914950e4', 'Full width container', '6230691495660'),
('62306cc7c6f2d', 'A programming language', '62306cc7c7a7f'),
('62306cc7c6f2d', 'A library', '62306cc7c7a8a'),
('62306cc7c6f2d', 'A markup language', '62306cc7c7a8b'),
('62306cc7c6f2d', 'A software', '62306cc7c7a8c'),
('62306cc7c902f', 'App', '62306cc7c94fd'),
('62306cc7c902f', 'Log', '62306cc7c9502'),
('62306cc7c902f', 'Import', '62306cc7c9504'),
('62306cc7c902f', 'Script', '62306cc7c9505'),
('62306cc7cbb79', 'Proactive', '62306cc7cc096'),
('62306cc7cbb79', 'Interactive', '62306cc7cc09c'),
('62306cc7cbb79', 'Reacive', '62306cc7cc09d'),
('62306cc7cbb79', 'Efficient', '62306cc7cc09e'),
('62306cc7cd3bb', 'v-if', '62306cc7cd7bf'),
('62306cc7cd3bb', 'v-else', '62306cc7cd7c6'),
('62306cc7cd3bb', 'Non of them', '62306cc7cd7c8'),
('62306cc7cd3bb', 'All of them', '62306cc7cd7c9'),
('62306cc7cf454', 'v-form', '62306cc7cf9f4'),
('62306cc7cf454', 'v-input', '62306cc7cf9fc'),
('62306cc7cf454', 'v-model', '62306cc7cf9fd'),
('62306cc7cf454', 'v-text', '62306cc7cf9fe'),
('62306cc7d11ad', 'Javascript', '62306cc7d16a6'),
('62306cc7d11ad', 'HTML', '62306cc7d16b0'),
('62306cc7d11ad', 'CSS', '62306cc7d16b1'),
('62306cc7d11ad', 'All of them', '62306cc7d16b2'),
('62306cc7d3d2b', 'v-model', '62306cc7d4695'),
('62306cc7d3d2b', 'v-if', '62306cc7d469e'),
('62306cc7d3d2b', 'v-for', '62306cc7d469f'),
('62306cc7d3d2b', 'v-else', '62306cc7d46a0'),
('62306cc7d5a3b', 'script', '62306cc7d6043'),
('62306cc7d5a3b', 'template', '62306cc7d604e'),
('62306cc7d5a3b', 'model', '62306cc7d604f'),
('62306cc7d5a3b', 'vue', '62306cc7d6051'),
('62306cc7d7f39', 'button', '62306cc7d83a7'),
('62306cc7d7f39', 'button-counter', '62306cc7d83ad'),
('62306cc7d7f39', 'v-button', '62306cc7d83ae'),
('62306cc7d7f39', 'Non of them', '62306cc7d83af'),
('62306cc7d9c52', 'No', '62306cc7da1ef'),
('62306cc7d9c52', 'Sometimes', '62306cc7da1fe'),
('62306cc7d9c52', 'Yes', '62306cc7da200'),
('62306cc7d9c52', 'Only in the old version', '62306cc7da202'),
('62306f13331f3', 'A programming language', '62306f133474d'),
('62306f13331f3', 'A library', '62306f133475a'),
('62306f13331f3', 'A markup language', '62306f133475b'),
('62306f13331f3', 'A software', '62306f133475d'),
('62306f133754a', 'App', '62306f1337bb2'),
('62306f133754a', 'Log', '62306f1337bbe'),
('62306f133754a', 'Import', '62306f1337bc0'),
('62306f133754a', 'Script', '62306f1337bc1'),
('62306f1339e0b', 'Proactive', '62306f133a391'),
('62306f1339e0b', 'Interactive', '62306f133a399'),
('62306f1339e0b', 'Reactive', '62306f133a39b'),
('62306f1339e0b', 'Efficient', '62306f133a39d'),
('62306f133cf49', 'v-if', '62306f133ddc5'),
('62306f133cf49', 'v-else', '62306f133ddcf'),
('62306f133cf49', 'Non of them', '62306f133ddd0'),
('62306f133cf49', 'All of them', '62306f133ddd1'),
('62306f133fad9', 'v-form', '62306f1340301'),
('62306f133fad9', 'v-input', '62306f1340311'),
('62306f133fad9', 'v-model', '62306f1340312'),
('62306f133fad9', 'v-text', '62306f1340314'),
('62306f1341ae2', 'Javascript', '62306f1341eb0'),
('62306f1341ae2', 'HTML', '62306f1341eb7'),
('62306f1341ae2', 'CSS', '62306f1341eb8'),
('62306f1341ae2', 'All of them', '62306f1341eb9'),
('62306f13432a3', 'v-model', '62306f1343bfe'),
('62306f13432a3', 'v-if', '62306f1343c0a'),
('62306f13432a3', 'v-for', '62306f1343c0b'),
('62306f13432a3', 'v-else', '62306f1343c0d'),
('62306f1345599', 'script', '62306f1345953'),
('62306f1345599', 'template', '62306f1345958'),
('62306f1345599', 'model', '62306f1345959'),
('62306f1345599', 'vue', '62306f134595a'),
('62306f1346b69', 'button', '62306f1346f14'),
('62306f1346b69', 'button-counter', '62306f1346f19'),
('62306f1346b69', 'v-button', '62306f1346f1b'),
('62306f1346b69', 'Non of them', '62306f1346f1c'),
('62306f1348db1', 'No', '62306f1349390'),
('62306f1348db1', 'Sometimes', '62306f1349397'),
('62306f1348db1', 'Yes', '62306f1349399'),
('62306f1348db1', 'Only in the old version', '62306f134939a'),
('62307601b401e', 'PHP2', '62307601b524a'),
('62307601b401e', 'PHP4', '62307601b5257'),
('62307601b401e', 'PHP3', '62307601b5259'),
('62307601b401e', 'PHP5', '62307601b525a'),
('62307601b7c7a', 'Attributes', '62307601b9205'),
('62307601b7c7a', 'Property', '62307601b9212'),
('62307601b7c7a', 'Instance', '62307601b9213'),
('62307601b7c7a', 'All of them', '62307601b9215'),
('62307601bae2b', 'Overloading', '62307601bb1c6'),
('62307601bae2b', 'Overriding', '62307601bb1c9'),
('62307601bae2b', 'Chained', '62307601bb1ca'),
('62307601bae2b', 'All of them', '62307601bb1cb'),
('62307601bc2fa', 'Pear package', '62307601bcebc'),
('62307601bc2fa', 'Inherited classes', '62307601bcecb'),
('62307601bc2fa', 'Multi-inherited classes', '62307601bcecc'),
('62307601bc2fa', 'None of them', '62307601bcece'),
('62307601be663', 'Server-side', '62307601bea45'),
('62307601be663', 'Client-side', '62307601bea4a'),
('62307601be663', 'Middle-side', '62307601bea4b'),
('62307601be663', 'Out-side', '62307601bea4c'),
('62307601bfc4a', 'ISP Computer', '62307601bffe7'),
('62307601bfc4a', 'Client Computer', '62307601bffea'),
('62307601bfc4a', 'Server Computer', '62307601bffeb'),
('62307601bfc4a', 'It depends on PHP scripts', '62307601bffec'),
('62307601c21a1', 'Out', '62307601c2583'),
('62307601c21a1', 'Write', '62307601c2587'),
('62307601c21a1', 'Echo', '62307601c2588'),
('62307601c21a1', 'Display', '62307601c2589'),
('62307601c4113', 'True', '62307601c469a'),
('62307601c4113', 'False', '62307601c46a5'),
('62307601c4113', 'Depends on website', '62307601c46a6'),
('62307601c4113', 'Depends on server', '62307601c46a8'),
('62307601c6b3e', 'True', '62307601c6f0b'),
('62307601c6b3e', 'False', '62307601c6f0f'),
('62307601c6b3e', 'Depends on website', '62307601c6f11'),
('62307601c6b3e', 'Depends on server', '62307601c6f12'),
('62307601c8128', 'Local', '62307601c855e'),
('62307601c8128', 'Global', '62307601c856a'),
('62307601c8128', 'Static', '62307601c856b'),
('62307601c8128', 'Extern', '62307601c856c');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('622f634788ea5', '622f66616b7be', 'There are ___ levels of heading in HTML:', 4, 1),
('622f634788ea5', '622f66616d34f', 'The purpose of markup is to:', 4, 2),
('622f634788ea5', '622f66616ede4', 'For a particular font its size attribute can be an absolute value ranging form:', 4, 3),
('622f634788ea5', '622f6661706a7', 'The Major components of the Web browser are ___:', 4, 4),
('622f634788ea5', '622f6661719d2', 'Example of picture editing software is:', 4, 5),
('622f634788ea5', '622f666173595', 'The _____ element can be used to identify your html file to the outside world:', 4, 6),
('622f634788ea5', '622f66617441c', 'The decimal range of network address for class b network is between:', 4, 7),
('622f634788ea5', '622f666175306', 'For a particular font its size attribute can be an absolute value ranging from:', 4, 8),
('622f634788ea5', '622f66617629c', 'The ideal rate for animation is:', 4, 9),
('622f634788ea5', '622f666177718', 'HTML is the method where ordinary text can be converted into:', 4, 10),
('622f68103cba0', '622f6b4b099fe', 'An HTML document can contain _____:', 4, 1),
('622f68103cba0', '622f6b4b0b67f', 'A page designed in HTML is called _____:', 4, 2),
('622f68103cba0', '622f6b4b0c9ec', 'An HTML document is saved with the ____ extension.', 4, 3),
('622f68103cba0', '622f6b4b0e6cb', 'The HTML document contains a root tag called ____:', 4, 4),
('622f68103cba0', '622f6b4b10111', 'If we want to place text around an image, which CSS property should we use?', 4, 5),
('622f68103cba0', '622f6b4b1169c', 'Can we align an element by setting margin-left and margin-right?', 4, 6),
('622f68103cba0', '622f6b4b13296', 'Suppose we want to arrange three DIVs so that DIV 3 is placed above DIV1. Now, which CSS property are we going to use to control the stack order?', 4, 7),
('622f68103cba0', '622f6b4b14117', 'Can we define the direction of the text via a CSS property?', 4, 8),
('622f68103cba0', '622f6b4b1539d', 'Choose the correct HTML tag for a large title:', 4, 9),
('622f68103cba0', '622f6b4b16e86', 'If we want to use a nice green dotted border around an image, which css property are we going to use?', 4, 10),
('623058249d0ad', '62305b1cb6abf', 'Javascript is a _____ language.', 4, 1),
('623058249d0ad', '62305b1cb8cf1', 'JavaScript is interpreted by _________.', 4, 2),
('623058249d0ad', '62305b1cbb573', 'Using _______ statement is how you test for a specific condition.', 4, 3),
('623058249d0ad', '62305b1cbd435', 'JavaScript is the same as Java.', 4, 4),
('623058249d0ad', '62305b1cbfa2c', 'What JavaScript keyword declares a variable?', 4, 5),
('623058249d0ad', '62305b1cc1df2', 'Which of the following is true about variable naming conventions in JavaScript?', 4, 6),
('623058249d0ad', '62305b1cc40e6', 'Can you assign a anonymous function to a variable?', 4, 7),
('623058249d0ad', '62305b1cc5d72', 'Which built-in method removes the last element from an array and returns that element?', 4, 8),
('623058249d0ad', '62305b1cc80f2', 'Which of the following function of Number object defines how many total digits to display of a number?', 4, 9),
('623058249d0ad', '62305b1cc9b5b', 'Which of the following function of String object extracts a section of a string and returns a new string?', 4, 10),
('62306506871b9', '623069147fba9', 'Which class is used to create a black navigation bar?', 4, 1),
('62306506871b9', '6230691481e5f', 'Which of the following class applies the hover color to a particular row or cell of a table?', 4, 2),
('62306506871b9', '62306914845bb', 'Which of the following bootstrap style of button indicates caution should be taken with this action?', 4, 3),
('62306506871b9', '6230691486154', 'Which of the following bootstrap styles are used to create a vertical pills navigation?', 4, 4),
('62306506871b9', '6230691488f41', 'Which of the following bootstrap style can be used to to get different size items of .pagination?', 4, 5),
('62306506871b9', '623069148ba5c', 'Which of the following is correct about Bootstrap jumbotron?', 4, 6),
('62306506871b9', '623069148e12c', 'Which plugin is used to cycle through elements, like a slideshow?', 4, 7),
('62306506871b9', '62306914907a5', 'Bootstrap’s grid system allows up to:', 4, 8),
('62306506871b9', '6230691492618', 'Default size of H5 bootstrap heading in px:', 4, 9),
('62306506871b9', '62306914950e4', 'The container-fluid class provides:', 4, 10),
('62306a06e6905', '62306cc7c6f2d', 'What is Vue JS?', 4, 1),
('62306a06e6905', '62306cc7c902f', 'What is the most important component of Vue JS?', 4, 2),
('62306a06e6905', '62306cc7cbb79', 'Vue JS can be described as:', 4, 3),
('62306a06e6905', '62306cc7cd3bb', 'What is the Vue JS conditional rendering?', 4, 4),
('62306a06e6905', '62306cc7cf454', 'To create a form, Vue JS uses:', 4, 5),
('62306a06e6905', '62306cc7d11ad', 'What is Vue JS based on in building applications?', 4, 6),
('62306a06e6905', '62306cc7d3d2b', 'What is the basic component when building a list in Vue JS?', 4, 7),
('62306a06e6905', '62306cc7d5a3b', 'HTML components can be written in witch tags:', 4, 8),
('62306a06e6905', '62306cc7d7f39', 'Between which tags can a button be built?', 4, 9),
('62306a06e6905', '62306cc7d9c52', 'Does Vue JS allow the creation of new tags?', 4, 10),
('62306d1b2ca7d', '62306f13331f3', 'What is Vue JS?', 4, 1),
('62306d1b2ca7d', '62306f133754a', 'What is the most important component of Vue JS?', 4, 2),
('62306d1b2ca7d', '62306f1339e0b', 'Vue JS can be described as:', 4, 3),
('62306d1b2ca7d', '62306f133cf49', 'What is the Vue JS conditional rendering?', 4, 4),
('62306d1b2ca7d', '62306f133fad9', 'To create a form, Vue JS uses:', 4, 5),
('62306d1b2ca7d', '62306f1341ae2', 'What is Vue JS based on in building applications?', 4, 6),
('62306d1b2ca7d', '62306f13432a3', 'What is the basic component when building a list in Vue JS?', 4, 7),
('62306d1b2ca7d', '62306f1345599', 'HTML components can be written in witch tags:', 4, 8),
('62306d1b2ca7d', '62306f1346b69', 'Between which tags can a button be built?', 4, 9),
('62306d1b2ca7d', '62306f1348db1', 'Does Vue JS allow the creation of new tags?', 4, 10),
('6230732f04feb', '62307601b401e', 'Namespaces are offered in:', 4, 1),
('6230732f04feb', '62307601b7c7a', 'Member variables of a class is also known as:', 4, 2),
('6230732f04feb', '62307601bae2b', 'When function have same prototype in base class as well as in derived class the function is called:', 4, 3),
('6230732f04feb', '62307601bc2fa', 'TextUtils and TextUtils_WordCounter classes are those which belongs to:', 4, 4),
('6230732f04feb', '62307601be663', 'PHP is _______ scripting language.', 4, 5),
('6230732f04feb', '62307601bfc4a', 'PHP scripts are executed on _________.', 4, 6),
('6230732f04feb', '62307601c21a1', 'Which of the following statements prints in PHP?', 4, 7),
('6230732f04feb', '62307601c4113', 'In PHP Language variables are case sensitive.', 4, 8),
('6230732f04feb', '62307601c6b3e', 'In PHP a variable needs to be declare before assign.', 4, 9),
('6230732f04feb', '62307601c8128', 'Which of the following is not the scope of Variable in PHP?', 4, 10);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('622f634788ea5', 'Html', 1, 3, 10, 10, 'This is an HTML knowledge evaluation for entry and medium level web developers.', 'html', '2022-03-14 15:46:15'),
('622f68103cba0', 'Css', 1, 3, 10, 10, 'This is an evaluation of CSS knowledge for entry and medium level web developers.', 'css', '2022-03-14 16:06:40'),
('623058249d0ad', 'Javascript', 1, 3, 10, 10, 'This is an evaluation of knowledges of Javascript for entry and medium level Web Developers', 'javascript', '2022-03-15 09:11:00'),
('62306506871b9', 'Bootstrap', 1, 3, 10, 10, 'This is an evaluation of knowledges of Bootstrap for entry and medium level Web Developers', 'bootstrap', '2022-03-15 10:05:58'),
('62306d1b2ca7d', 'Vue Js', 1, 3, 10, 10, 'This is an evaluation of knowledges of Vue JS for entry and medium level Web Developers', 'vue', '2022-03-15 10:40:27'),
('6230732f04feb', 'Php', 1, 3, 10, 10, 'This is an evaluation of knowledges of PHP for entry and medium level Web Developers', 'php', '2022-03-15 11:06:23');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('sunnygkp10@gmail.com', 9, '2015-06-24 03:22:38'),
('avantika420@gmail.com', 8, '2015-06-23 14:49:39'),
('mi5@hollywood.com', 4, '2015-06-23 15:12:56'),
('nik1@gmail.com', 1, '2015-06-23 16:11:50'),
('vatradragos@yahoo.com', 62, '2022-03-15 11:19:43'),
('admin@admin.com', -29, '2022-03-15 08:44:32'),
('austerpaul@yahoo.com', -20, '2022-03-15 12:24:07'),
('gavaldaana@yahoo.com', 40, '2022-03-15 12:29:36'),
('popescuioan@yahoo.com', 32, '2022-03-15 12:36:02'),
('smithdiana@yahoo.com', 41, '2022-03-15 12:44:52');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `company` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `user`
--

INSERT INTO `user` (`name`, `gender`, `company`, `email`, `mob`, `password`) VALUES
('Paul Auster', 'M', 'CTCE', 'austerpaul@yahoo.com', 755555555, '25f9e794323b453885f5181f1b624d0b'),
('Ana Gavalda', 'F', 'Corintus TM', 'gavaldaana@yahoo.com', 755555555, '25f9e794323b453885f5181f1b624d0b'),
('Ioan Popescu', 'M', 'Continental', 'popescuioan@yahoo.com', 755555555, '25f9e794323b453885f5181f1b624d0b'),
('Diana Smith', 'F', 'KFC', 'smithdiana@yahoo.com', 755555555, '25f9e794323b453885f5181f1b624d0b'),
('Dragos Vatra', 'M', 'Humanitas', 'vatradragos@yahoo.com', 743503240, '25f9e794323b453885f5181f1b624d0b');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexuri pentru tabele `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
