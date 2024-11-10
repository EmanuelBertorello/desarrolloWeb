-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2024 a las 19:51:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `music`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `ID` varchar(36) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `album` varchar(10) NOT NULL,
  `artista` varchar(10) NOT NULL,
  `fecha` date NOT NULL,
  `tiempo` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`ID`, `nombre`, `album`, `artista`, `fecha`, `tiempo`) VALUES
('10', 'Sweating B', 'Countdown ', 'Megadeth', '1992-07-14', '05:02:00'),
('100', 'Yo No Me E', 'Yo No Me E', 'Babasónico', '2006-03-20', '03:45:00'),
('101', 'Un Día en ', 'Doble Vida', 'Los Prisio', '1993-04-13', '03:53:00'),
('102', 'Un Millón ', 'Un Millón ', 'Coti', '2004-09-02', '03:40:00'),
('103', 'Por el Res', 'Indestruct', 'Café Tacvb', '1996-09-20', '03:35:00'),
('104', 'La Noche', 'De Sol a S', 'Los Perico', '1993-10-12', '03:40:00'),
('105', 'Rock del M', 'Todo Es Di', 'La Mississ', '1999-06-25', '03:15:00'),
('106', 'Y Qué', 'Entre la N', 'Hombres G', '1985-02-20', '03:55:00'),
('107', 'Mariposas', 'Amor y Mue', 'Caifanes', '1997-11-02', '03:45:00'),
('108', 'Vuelves', 'Vuelves', 'Shakira', '1996-10-18', '03:55:00'),
('109', 'El Final', 'El Final', 'La Ley', '2002-09-16', '04:00:00'),
('11', 'Aenema', 'Ænima', 'Tool', '1996-09-17', '06:39:00'),
('110', 'Todo por T', 'Todo por T', 'La India', '1997-06-23', '04:25:00'),
('111', 'Un Poco de', 'Un Poco de', 'La Arrolla', '1999-11-17', '03:35:00'),
('112', 'En El Ciel', 'El Cielo', 'Fobia', '1992-09-18', '04:18:00'),
('113', 'Nada Más', 'Nada Más', 'Kinky', '2003-06-10', '04:20:00'),
('114', 'Cualquier ', 'Cualquier ', 'Los Fabulo', '1997-08-04', '03:40:00'),
('115', 'Te Extraño', 'Te Extraño', 'Timbiriche', '1989-01-10', '04:05:00'),
('116', 'Like a Pra', 'Like a Pra', 'Madonna', '1989-03-21', '05:40:00'),
('117', 'Billie Jea', 'Thriller', 'Michael Ja', '1982-01-02', '04:54:00'),
('118', 'Vogue', 'Vogue', 'Madonna', '1990-03-27', '05:50:00'),
('119', 'Take On Me', 'Hunting Hi', 'a-ha', '1985-09-10', '03:46:00'),
('12', 'I Stay Awa', 'Jar of Fli', 'Alice In C', '1994-01-25', '04:14:00'),
('120', 'I Will Alw', 'The Bodygu', 'Whitney Ho', '1992-11-03', '04:31:00'),
('121', 'Dancing Qu', 'Arrival', 'ABBA', '1976-08-15', '03:51:00'),
('122', 'Wake Me Up', 'Make It Bi', 'Wham!', '1984-10-29', '03:51:00'),
('123', 'Every Brea', 'Synchronic', 'The Police', '1983-05-02', '04:13:00'),
('124', 'Like a Vir', 'Like a Vir', 'Madonna', '1984-11-12', '03:37:00'),
('125', 'Tainted Lo', 'Non-Stop E', 'Soft Cell', '1981-11-01', '03:15:00'),
('126', 'Sweet Drea', 'Sweet Drea', 'Eurythmics', '1983-01-21', '03:36:00'),
('127', 'Don’t Stop', 'Escape', 'Journey', '1981-10-05', '04:10:00'),
('128', 'I Wanna Da', 'Whitney', 'Whitney Ho', '1987-05-03', '04:50:00'),
('129', 'Material G', 'Like a Vir', 'Madonna', '1984-11-12', '04:00:00'),
('13', 'Du Hast', 'Sehnsucht', 'Rammstein', '1997-08-25', '03:54:00'),
('130', 'Take My Br', 'Top Gun Or', 'Berlin', '1986-05-13', '04:13:00'),
('131', 'Karma Cham', 'Colour by ', 'Culture Cl', '1983-09-12', '04:10:00'),
('132', 'Boys Don’t', 'Boys Don’t', 'The Cure', '1979-04-05', '02:35:00'),
('133', 'Africa', 'Toto IV', 'Toto', '1982-04-30', '04:54:00'),
('134', 'If I Could', 'Heart of S', 'Cher', '1989-08-01', '03:59:00'),
('135', 'In the Air', 'Face Value', 'Phil Colli', '1981-01-05', '05:30:00'),
('136', 'You Make M', 'Mighty Rea', 'Sylvester', '1978-08-01', '03:30:00'),
('137', 'Eye of the', 'Eye of the', 'Survivor', '1982-05-21', '04:05:00'),
('138', 'The Power ', 'Back to th', 'Huey Lewis', '1985-07-03', '03:58:00'),
('139', 'True Color', 'True Color', 'Cyndi Laup', '1986-09-15', '03:46:00'),
('14', 'Freak on a', 'Follow the', 'Korn', '1998-08-18', '04:15:00'),
('140', 'Let’s Danc', 'Let’s Danc', 'David Bowi', '1983-04-19', '04:08:00'),
('141', 'Beat It', 'Thriller', 'Michael Ja', '1982-02-03', '04:18:00'),
('142', 'Do That to', 'Do That to', 'The Captai', '1979-11-01', '03:20:00'),
('143', 'I’m So Exc', 'Breakout', 'Pointer Si', '1982-04-05', '04:48:00'),
('144', 'Push It', 'Hot, Cool ', 'Salt-N-Pep', '1987-01-10', '04:30:00'),
('145', 'I Love Roc', 'I Love Roc', 'Joan Jett ', '1981-12-01', '02:55:00'),
('146', 'Jump', '1984', 'Van Halen', '1984-01-09', '04:04:00'),
('147', 'Call Me', 'American G', 'Blondie', '1980-01-01', '03:32:00'),
('148', 'Every Litt', 'Ghost in t', 'The Police', '1981-10-01', '04:20:00'),
('149', 'Rock With ', 'Off the Wa', 'Michael Ja', '1979-11-03', '03:40:00'),
('150', 'All Out of', 'Air Supply', 'Air Supply', '1980-07-01', '04:02:00'),
('151', 'The Tide I', 'The Tide I', 'Blondie', '1980-02-25', '04:39:00'),
('152', 'Ill Be Ove', 'Strength', 'Toto', '1986-01-27', '03:48:00'),
('153', 'I Cant Tel', 'The Long R', 'Eagles', '1979-09-24', '04:55:00'),
('154', 'Into the G', 'Like a Vir', 'Madonna', '1985-07-07', '04:00:00'),
('155', 'Wake Me Up', 'American I', 'Green Day', '2004-09-13', '04:45:00'),
('156', 'I Just Wan', 'I Just Wan', 'Andy Gibb', '1977-03-06', '04:05:00'),
('157', 'Physical', 'Physical', 'Olivia New', '1981-10-15', '03:41:00'),
('158', 'Push It to', 'Scarface S', 'Paul Engem', '1983-05-23', '03:56:00'),
('159', 'Let’s Hear', 'Footloose ', 'Deniece Wi', '1984-04-10', '04:07:00'),
('16', 'Spit it Ou', 'Slipknot', 'Slipknot', '1999-06-29', '02:39:00'),
('160', 'Maniac', 'Flashdance', 'Michael Se', '1983-03-28', '04:00:00'),
('161', 'Holiday', 'Holiday', 'Madonna', '1983-01-10', '03:54:00'),
('162', 'I’m Your B', 'I’m Your B', 'Whitney Ho', '1990-11-13', '04:40:00'),
('163', 'Walk Like ', 'Different ', 'The Bangle', '1986-10-01', '03:22:00'),
('164', 'Smooth Cri', 'Bad', 'Michael Ja', '1988-10-13', '04:17:00'),
('165', 'Living on ', 'Slippery W', 'Bon Jovi', '1986-10-31', '04:10:00'),
('166', 'You Spin M', 'Youthquake', 'Dead or Al', '1984-10-19', '03:18:00'),
('167', 'Heaven Is ', 'Heaven Is ', 'Belinda Ca', '1987-08-17', '04:07:00'),
('168', 'La Isla Bo', 'True Blue', 'Madonna', '1987-04-21', '04:00:00'),
('169', 'Take a Cha', 'The Album', 'ABBA', '1978-01-01', '04:05:00'),
('17', 'Cowboys fr', 'Cowboys fr', 'Pantera', '1990-07-24', '04:06:00'),
('170', 'Physical A', 'Madonna', 'Madonna', '1983-07-27', '03:10:00'),
('171', 'I Wanna Be', 'Prince', 'Prince', '1979-10-08', '03:20:00'),
('172', 'Roxanne', 'Outlandos ', 'The Police', '1978-04-04', '03:13:00'),
('173', 'I Love You', 'The Blue C', 'Donna Lewi', '1996-02-20', '04:40:00'),
('174', 'Black Velv', 'Black Velv', 'Alannah My', '1989-09-06', '04:45:00'),
('175', 'Sweet Love', 'Sweet Love', 'Anita Bake', '1986-08-11', '04:27:00'),
('176', 'Cant Fight', 'Heads or T', 'REO Speedw', '1984-01-01', '04:50:00'),
('177', 'SICKO MODE', 'ASTROWORLD', 'Travis Sco', '2018-08-03', '05:12:00'),
('178', 'Bad and Bo', 'Culture', 'Migos feat', '2016-10-28', '05:34:00'),
('179', 'Goosebumps', 'ASTROWORLD', 'Travis Sco', '2016-09-16', '04:30:00'),
('18', 'War Pigs', 'Live at th', 'Black Sabb', '1993-01-01', '07:52:00'),
('180', 'XO TOUR Ll', 'Luv Is Rag', 'Lil Uzi Ve', '2017-08-25', '03:02:00'),
('181', 'Mask Off', 'Future', 'Future', '2017-04-18', '03:24:00'),
('182', 'Rockstar', 'Beer Bongs', 'Post Malon', '2017-09-15', '03:38:00'),
('183', 'I Fall Apa', 'Stoney', 'Post Malon', '2016-12-09', '03:46:00'),
('184', 'Money Long', 'Money Long', 'Lil Uzi Ve', '2016-03-25', '03:00:00'),
('185', 'Hotline Bl', 'Views', 'Drake', '2015-07-31', '04:27:00'),
('186', 'No Role Mo', '2014 Fores', 'J. Cole', '2014-12-09', '04:52:00'),
('187', 'F*ck Love', 'F*ck Love', 'XXXtentaci', '2017-06-16', '02:58:00'),
('188', 'Gummo', 'Gummo', '6ix9ine', '2017-09-10', '02:43:00'),
('189', 'Lucid Drea', 'Goodbye & ', 'Juice WRLD', '2018-05-04', '03:59:00'),
('19', 'Laid to Re', 'Ashes of t', 'Lamb of Go', '1998-08-18', '03:50:00'),
('190', 'No Cap', 'No Cap', 'Future', '2018-03-02', '04:15:00'),
('191', 'Drip Too H', 'Drip Too H', 'Lil Baby &', '2018-09-12', '03:30:00'),
('192', 'Racks on R', 'The Lost B', 'YBN Cordae', '2019-07-23', '03:52:00'),
('193', 'Thotiana', 'Thotiana', 'Blueface', '2018-01-11', '02:53:00'),
('194', 'Mo Bamba', 'Mo Bamba', 'Sheck Wes', '2018-02-16', '03:00:00'),
('195', 'Look Alive', 'Look Alive', 'BlocBoy JB', '2018-02-09', '03:01:00'),
('196', 'ZEZE', 'Dying to L', 'Kodak Blac', '2018-10-12', '04:02:00'),
('197', 'Life Goes ', 'Death Race', 'Juice WRLD', '2019-03-08', '03:34:00'),
('198', 'Butterfly ', 'Butterfly ', 'Travis Sco', '2017-05-15', '03:10:00'),
('199', 'The Box', 'Please Exc', 'Roddy Ricc', '2019-12-06', '03:16:00'),
('2', 'Holy Wars.', 'Rust in Pe', 'Megadeth', '1990-09-24', '06:32:00'),
('20', 'In Bloom', 'Nevermind', 'Nirvana', '1991-09-24', '04:14:00'),
('200', 'Rich Girl', 'Rich Girl', 'Gunna', '2019-05-01', '03:14:00'),
('201', 'Bodak Yell', 'Invasion o', 'Cardi B', '2017-06-16', '03:44:00'),
('202', 'God’s Plan', 'Scary Hour', 'Drake', '2018-01-19', '03:18:00'),
('203', 'Broke Boy', 'Broke Boy', 'Lil Tjay', '2019-03-08', '02:50:00'),
('204', 'Savage Rem', 'Savage Rem', 'Megan Thee', '2020-04-29', '04:03:00'),
('205', 'SAD!', '?’', 'XXXtentaci', '2018-03-02', '02:46:00'),
('206', 'Keke', 'Keke', '6ix9ine fe', '2017-05-14', '03:21:00'),
('207', 'TROLLZ', 'TROLLZ', '6ix9ine & ', '2020-06-12', '02:35:00'),
('208', 'What’s Pop', 'What’s Pop', 'Jack Harlo', '2020-01-21', '02:19:00'),
('209', 'No Heart', 'No Heart', '21 Savage', '2016-12-11', '03:47:00'),
('21', 'Jesus Chri', 'Badmotorfi', 'Soundgarde', '1991-10-08', '05:51:00'),
('2147483647', 'asd', 'asd', 'asdasdasd', '1222-12-12', '12:12:12'),
('219', 'Sweet Chil', 'Appetite f', 'Guns N\' Ro', '1987-07-21', '05:56:00'),
('22', 'Man in the', 'Facelift', 'Alice In C', '1990-08-21', '04:46:00'),
('220', 'November R', 'Use Your I', 'Guns N\' Ro', '1991-03-17', '08:57:00'),
('221', 'Welcome to', 'Appetite f', 'Guns N\' Ro', '1987-07-21', '04:31:00'),
('222', 'Dont Cry', 'Use Your I', 'Guns N\' Ro', '1991-09-17', '04:43:00'),
('223', 'Paradise C', 'Appetite f', 'Guns N\' Ro', '1987-07-21', '06:46:00'),
('224', 'Knockin’ o', 'Use Your I', 'Guns N\' Ro', '1991-11-18', '05:32:00'),
('225', 'Civil War', 'Use Your I', 'Guns N\' Ro', '1991-09-17', '07:42:00'),
('226', 'You Could ', 'Use Your I', 'Guns N\' Ro', '1991-09-17', '05:44:00'),
('227', 'Live and L', 'Use Your I', 'Guns N\' Ro', '1991-09-17', '03:03:00'),
('228', 'Mr. Browns', 'Appetite f', 'Guns N\' Ro', '1987-07-21', '03:48:00'),
('229', 'Smells Lik', 'Nevermind', 'Nirvana', '1991-09-10', '05:01:00'),
('23', 'Angry Chai', 'Dirt', 'Alice In C', '1992-09-29', '04:48:00'),
('230', 'Come as Yo', 'Nevermind', 'Nirvana', '1991-09-10', '03:38:00'),
('231', 'Lithium', 'Nevermind', 'Nirvana', '1991-09-10', '04:17:00'),
('232', 'In Bloom', 'Nevermind', 'Nirvana', '1991-09-10', '04:15:00'),
('233', 'Heart-Shap', 'In Utero', 'Nirvana', '1993-09-03', '04:41:00'),
('234', 'All Apolog', 'In Utero', 'Nirvana', '1993-09-03', '03:49:00'),
('235', 'About a Gi', 'Bleach', 'Nirvana', '1989-06-15', '02:47:00'),
('236', 'Breed', 'Nevermind', 'Nirvana', '1991-09-10', '03:03:00'),
('237', 'Drain You', 'Nevermind', 'Nirvana', '1991-09-10', '03:43:00'),
('238', 'Something ', 'Nevermind', 'Nirvana', '1991-09-10', '03:52:00'),
('239', 'Rape Me', 'In Utero', 'Nirvana', '1993-09-03', '03:50:00'),
('24', 'My Own Sum', 'Around the', 'Deftones', '1997-10-28', '03:35:00'),
('240', 'Pennyroyal', 'In Utero', 'Nirvana', '1993-09-03', '03:37:00'),
('241', 'Serve the ', 'In Utero', 'Nirvana', '1993-09-03', '03:37:00'),
('242', 'On a Plain', 'Nevermind', 'Nirvana', '1991-09-10', '03:16:00'),
('243', 'Stay Away', 'Nevermind', 'Nirvana', '1991-09-10', '03:32:00'),
('244', 'Sliver', 'Incesticid', 'Nirvana', '1990-10-18', '02:16:00'),
('245', 'Aneurysm', 'Incesticid', 'Nirvana', '1992-11-04', '04:47:00'),
('246', 'School', 'Bleach', 'Nirvana', '1989-06-15', '02:42:00'),
('247', 'Love Buzz', 'Bleach', 'Nirvana', '1989-06-15', '03:37:00'),
('248', 'Turnaround', 'Incesticid', 'Nirvana', '1992-11-04', '03:02:00'),
('25', 'Ace of Spa', 'Everything', 'Motörhead', '1999-03-09', '02:55:00'),
('26', 'More Human', 'Astro-Cree', 'White Zomb', '1995-04-11', '04:29:00'),
('27', 'Killing in', 'Rage Again', 'Rage Again', '1992-11-03', '05:14:00'),
('28', 'Them Bones', 'Dirt', 'Alice In C', '1992-09-29', '02:30:00'),
('29', 'Ashes of t', 'Ashes of t', 'Lamb of Go', '1998-08-18', '05:45:00'),
('3', 'Enter Sand', 'Metallica', 'Metallica', '1991-07-29', '05:31:00'),
('30', 'Blind', 'Korn', 'Korn', '1994-10-11', '04:18:00'),
('31', 'La Vida Es', 'Mi Ritmo', 'Celia Cruz', '1998-02-10', '04:35:00'),
('32', 'Baila Bail', 'YHLQMDLG', 'Bad Bunny', '2020-02-29', '03:27:00'),
('33', 'El Perdón', 'El Perdón', 'Nicky Jam ', '2015-03-02', '03:28:00'),
('34', 'Bésame Muc', 'Romances', 'Luis Migue', '1997-08-19', '04:01:00'),
('35', 'Despacito', 'Vida', 'Luis Fonsi', '2017-01-13', '03:47:00'),
('36', 'Suavemente', 'Suavemente', 'Elvis Cres', '1998-05-15', '04:29:00'),
('37', 'La Bilirru', 'Bachata Ro', 'Juan Luis ', '1990-10-15', '04:05:00'),
('38', 'Oye Mi Amo', 'El Amor De', 'Maná', '1992-06-15', '04:50:00'),
('39', 'Livin La V', 'Ricky Mart', 'Ricky Mart', '1999-03-23', '04:03:00'),
('4', 'Symphony o', 'Countdown ', 'Megadeth', '1992-07-14', '04:07:00'),
('40', 'Vivir Mi V', '3.0', 'Marc Antho', '2013-07-23', '04:11:00'),
('41', 'A Puro Dol', 'Serie 2000', 'Son by Fou', '2000-01-01', '04:00:00'),
('42', 'Gasolina', 'Barrio Fin', 'Daddy Yank', '2004-07-13', '03:13:00'),
('43', 'Bachata Ro', 'Bachata Ro', 'Juan Luis ', '1990-10-15', '03:50:00'),
('44', 'Corazón Pa', 'Más', 'Alejandro ', '1997-09-23', '05:47:00'),
('45', 'Bésame', 'Bésame', 'Ricardo Mo', '1999-05-20', '03:55:00'),
('46', 'Danza Kudu', 'Meet the O', 'Don Omar', '2010-08-15', '03:19:00'),
('47', 'Vuelve', 'Vuelve', 'Ricky Mart', '1998-01-12', '05:06:00'),
('48', 'De Música ', 'Canción An', 'Soda Stere', '1990-08-20', '03:35:00'),
('49', 'Propuesta ', 'Formula, V', 'Romeo Sant', '2013-07-30', '03:55:00'),
('5', 'Walk', 'Vulgar Dis', 'Pantera', '1992-02-25', '05:16:00'),
('50', 'La Gota Fr', 'Clásicos d', 'Carlos Viv', '1993-06-14', '04:20:00'),
('51', 'Te Amo', 'Exitos', 'Franco de ', '1990-06-15', '04:40:00'),
('52', 'Devuélveme', 'La Caña de', 'Hombres G', '1985-06-20', '03:20:00'),
('53', 'La Incondi', 'Busca Una ', 'Luis Migue', '1988-11-22', '04:01:00'),
('54', 'Felices lo', 'F.A.M.E.', 'Maluma', '2017-04-21', '03:50:00'),
('55', 'Mi Gente', 'Vibras', 'J Balvin', '2017-06-30', '03:05:00'),
('56', 'Pies Desca', 'Pies Desca', 'Shakira', '1995-10-06', '03:40:00'),
('57', 'Te Aviso, ', 'Servicio d', 'Shakira', '2001-11-13', '03:49:00'),
('58', 'Llamado de', 'Talento de', 'Daddy Yank', '2008-08-12', '03:29:00'),
('59', 'Eres Tú', 'Rosas en e', 'Mocedades', '1973-02-02', '03:29:00'),
('6', 'Black Hole', 'Superunkno', 'Soundgarde', '1994-03-08', '05:18:00'),
('60', 'La Macaren', 'A Mover la', 'Los del Rí', '1995-08-15', '03:54:00'),
('61', 'Quítame Es', 'Flor de Pa', 'Pilar Mont', '2001-03-23', '03:15:00'),
('62', 'Amor Prohi', 'Amor Prohi', 'Selena', '1994-03-13', '02:51:00'),
('63', 'Si Tú Supi', 'Todo o Nad', 'Alejandro ', '1997-12-09', '03:49:00'),
('64', 'El Cóndor ', 'El Cóndor ', 'Los Incas', '1969-07-18', '03:07:00'),
('65', 'Me Enamora', 'La Vida...', 'Juanes', '2007-10-23', '03:12:00'),
('66', 'Báilame', 'Odisea', 'Nacho', '2017-06-14', '03:13:00'),
('67', 'Duele el C', 'Duele el C', 'Enrique Ig', '2016-04-18', '03:20:00'),
('6730e94c131ca', 'juan', 'dios', 'alpaca', '0000-00-00', '21:21:21'),
('6730e95bb8994', 'qwe213', '123123112', '123', '1212-02-21', '21:12:12'),
('6730e98ea8557', 'que es dio', 'que es dio', 'las pastil', '2012-08-12', '12:01:21'),
('6730ff5f1ccf5', 'ema', 'dsa', 'eas', '1221-12-12', '12:12:12'),
('68', 'El Problem', 'Simplement', 'Ricardo Ar', '2002-09-24', '05:08:00'),
('69', 'Por Lo Que', 'Amore Mio', 'Thalía', '2014-11-14', '03:47:00'),
('7', 'Roots Bloo', 'Roots', 'Sepultura', '1996-02-20', '03:32:00'),
('70', 'Burbujas d', 'Bachata Ro', 'Juan Luis ', '1990-10-15', '04:11:00'),
('71', 'Mi Histori', 'Girados', 'Gianluca G', '1994-09-13', '04:59:00'),
('72', 'El Muelle ', 'Sueños Líq', 'Maná', '1997-11-19', '05:47:00'),
('73', 'Amores Com', 'Todo a Su ', 'Jerry Rive', '1992-05-19', '04:31:00'),
('74', 'Quién Te Q', 'Quién Te Q', 'Carlos Bau', '2010-11-19', '03:42:00'),
('75', 'Te Conozco', 'Te Conozco', 'Marc Antho', '1995-09-12', '05:02:00'),
('76', 'Rebelde', 'Rebelde', 'RBD', '2004-11-30', '03:35:00'),
('77', 'Yo Te Voy ', 'Eterno', 'Wisin & Ya', '2008-05-13', '04:00:00'),
('78', 'Tabaco y C', 'La Cabra M', 'La Cabra M', '1998-06-22', '04:33:00'),
('79', 'Yo No Sé M', 'Yo No Sé M', 'Luis Enriq', '2009-06-23', '04:09:00'),
('8', 'Cemetery G', 'Cowboys fr', 'Pantera', '1990-07-24', '07:03:00'),
('80', 'La Bamba', 'La Bamba', 'Ritchie Va', '1958-10-18', '02:09:00'),
('81', 'En la Ciud', 'El Salmon', 'Café Tacvb', '2000-01-01', '04:20:00'),
('82', 'De Música ', 'Canción An', 'Soda Stere', '1990-08-20', '03:35:00'),
('83', 'Travesuras', 'Travesuras', 'Nicky Jam', '2015-04-16', '03:38:00'),
('84', 'Te Hacen F', 'Te Hacen F', 'Fito Páez', '1990-10-05', '04:01:00'),
('85', 'La Flaca', 'La Flaca', 'Jarabe de ', '1996-02-20', '04:08:00'),
('86', 'Lamento Bo', 'El Alma al', 'Los Enanit', '1994-05-23', '04:42:00'),
('87', 'La Cúpula', 'Canción An', 'Soda Stere', '1990-08-20', '04:13:00'),
('88', 'Te Quiero', 'Te Quiero', 'Los Autént', '1995-01-01', '04:40:00'),
('89', 'Nada Perso', 'Nada Perso', 'Neon', '1985-02-10', '04:20:00'),
('9', 'Would?', 'Dirt', 'Alice In C', '1992-09-29', '03:27:00'),
('90', 'Prueba de ', 'Prueba de ', 'Aterciopel', '1996-08-19', '03:42:00'),
('91', 'Si No Te H', 'Si No Te H', 'Marco Anto', '2000-03-10', '04:10:00'),
('92', 'Me Gustas ', 'Clube', 'Maná', '2002-05-12', '03:35:00'),
('93', 'La Puerta ', 'La Puerta ', 'Los Secret', '1993-03-15', '03:45:00'),
('94', 'La Leyenda', 'La Leyenda', 'La Ley', '1997-06-15', '03:50:00'),
('95', 'Ella usó m', 'El Triste', 'Shakira', '2017-09-08', '04:10:00'),
('96', 'Tumbando C', 'Tumbando C', 'El Gran Si', '1998-07-15', '04:15:00'),
('97', 'Bajo el Ag', 'Sinfonía d', 'Hombres G', '1986-03-03', '04:00:00'),
('98', 'Te Lo Agra', 'Te Lo Agra', 'Café Tacvb', '1995-10-10', '03:35:00'),
('99', 'Las Aguas ', 'Mujeres al', 'La India', '1998-11-23', '04:10:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
