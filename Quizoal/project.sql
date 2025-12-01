

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;


DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL PRIMARY KEY,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sahusriya@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');


DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `answer` (`qid`, `ansid`) VALUES
('643da4eecf99b', '643da4eed0740'),
('643da4eed31ca', '643da4eed35d9'),
('643da4eed5802', '643da4eed6496'),
('643da4eed7e2e', '643da4eed82fe'),
('643da4eed9931', '643da4eed9ed9'),
('643da4eedb6c9', '643da4eedbb4f'),
('643da4eedcfa0', '643da4eedd379'),
('643da4eede4fb', '643da4eede8ff'),
('643da4eedfc6e', '643da4eee01c9'),
('643da4eee13dd', '643da4eee1731'),
('643da7917d787', '643da7917e1be'),
('643da7917faa7', '643da79180035'),
('643da79182b82', '643da7918311d'),
('643da7918528d', '643da79185f25'),
('643da79187306', '643da7918767a'),
('643da7918878a', '643da79188b2a'),
('643da79189e52', '643da7918a188'),
('643da7918b1f6', '643da7918b539'),
('643da7918c71c', '643da7918cc4a'),
('643da7918e6c0', '643da7918ec69'),
('64422cfa8bd15', '64422cfa8c470');


DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('643e870125018', 'user', 'user@gmail.com', 'java', 'good', '2023-04-18', '02:03:13pm'),
('643e885b21e9e', 'user', 'user@gmail.com', 'python', 'hello', '2023-04-18', '02:08:59pm'),
('643e88ace9a47', 'sulata', 'sulata@gmail.com', 'java', 'good', '2023-04-18', '02:10:20pm'),
('643e88e0dc519', 'sandhya', 'sandhya@gmail.com', 'python', 'good test', '2023-04-18', '02:11:12pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `history` (`email`, `eid`, `score`, `level`, `right`, `wrong`, `date`) VALUES
('sulata@gmail.com', '643da52e7a261', 7, 10, 7, 3, '2023-04-18 12:13:31'),
('user@gmail.com', '643da3014a609', 8, 10, 4, 6, '2023-04-20 16:02:49');


DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('643da4eecf99b', 'Length of the array', '643da4eed0732'),
('643da4eecf99b', 'Copy of first elementt', '643da4eed073f'),
('643da4eecf99b', 'The reference of the array', '643da4eed0740'),
('643da4eecf99b', 'A copy of the array ', '643da4eed0742'),
('643da4eed31ca', '6', '643da4eed35d3'),
('643da4eed31ca', '9', '643da4eed35d7'),
('643da4eed31ca', '7', '643da4eed35d8'),
('643da4eed31ca', '8', '643da4eed35d9'),
('643da4eed5802', 'Objects', '643da4eed6496'),
('643da4eed5802', 'Object references', '643da4eed649f'),
('643da4eed5802', 'Primitive data types', '643da4eed64a0'),
('643da4eed5802', 'None of the above', '643da4eed64a1'),
('643da4eed7e2e', 'At compile time', '643da4eed82fa'),
('643da4eed7e2e', 'At run time', '643da4eed82fe'),
('643da4eed7e2e', 'Depends on the code', '643da4eed8300'),
('643da4eed7e2e', 'None of the above', '643da4eed8301'),
('643da4eed9931', 'volatile', '643da4eed9ecc'),
('643da4eed9931', 'abstract', '643da4eed9ed6'),
('643da4eed9931', 'final', '643da4eed9ed7'),
('643da4eed9931', 'static', '643da4eed9ed9'),
('643da4eedb6c9', 'java.lang.util', '643da4eedbb48'),
('643da4eedb6c9', 'java.lang.String', '643da4eedbb4e'),
('643da4eedb6c9', 'java.lang.Object', '643da4eedbb4f'),
('643da4eedb6c9', 'None of the above', '643da4eedbb50'),
('643da4eedcfa0', 'An int value', '643da4eedd379'),
('643da4eedcfa0', 'True', '643da4eedd37c'),
('643da4eedcfa0', 'False', '643da4eedd37d'),
('643da4eedcfa0', 'Boolean value', '643da4eedd37e'),
('643da4eede4fb', 'java.lang', '643da4eede8ff'),
('643da4eede4fb', 'java.awt', '643da4eede902'),
('643da4eede4fb', 'java.string ', '643da4eede903'),
('643da4eede4fb', 'java.applet', '643da4eede904'),
('643da4eedfc6e', '20', '643da4eee01c2'),
('643da4eedfc6e', '13', '643da4eee01c9'),
('643da4eedfc6e', '7', '643da4eee01ca'),
('643da4eedfc6e', '3', '643da4eee01cb'),
('643da4eee13dd', 'double', '643da4eee172d'),
('643da4eee13dd', 'int', '643da4eee1730'),
('643da4eee13dd', 'void', '643da4eee1731'),
('643da4eee13dd', 'None of the above ', '643da4eee1732'),
('643da7917d787', 'Wick van Rossum ', '643da7917e1b4'),
('643da7917d787', 'Guido van Rossum', '643da7917e1be'),
('643da7917d787', 'Niene Stom', '643da7917e1bf'),
('643da7917d787', 'Rasmus Lerdorf ', '643da7917e1c1'),
('643da7917faa7', 'No ', '643da7918002a'),
('643da7917faa7', 'Yes', '643da79180035'),
('643da7917faa7', 'Machine dependent', '643da79180037'),
('643da7917faa7', 'None of the above', '643da79180038'),
('643da79182b82', 'Python code is neither compiled nor interpreted', '643da79183113'),
('643da79182b82', 'Python code is both compiled and interpreted', '643da7918311d'),
('643da79182b82', 'Python code is only compiled', '643da7918311e'),
('643da79182b82', 'Python code is only interpreted', '643da79183120'),
('643da7918528d', 'Brackets', '643da79185f1a'),
('643da7918528d', 'Key', '643da79185f23'),
('643da7918528d', 'Indentation', '643da79185f25'),
('643da7918528d', 'All of the above ', '643da79185f26'),
('643da79187306', 'def', '643da7918767a'),
('643da79187306', 'Define', '643da7918767e'),
('643da79187306', 'Function', '643da7918767f'),
('643da79187306', 'Fun', '643da79187680'),
('643da7918878a', '//', '643da79188b26'),
('643da7918878a', '!', '643da79188b29'),
('643da7918878a', '#', '643da79188b2a'),
('643da7918878a', '/*', '643da79188b2b'),
('643da79189e52', 'anonymous', '643da7918a186'),
('643da79189e52', 'lambda', '643da7918a188'),
('643da79189e52', 'pi', '643da7918a189'),
('643da79189e52', 'none of the above', '643da7918a18a'),
('643da7918b1f6', 'Preferred Installer Program', '643da7918b539'),
('643da7918b1f6', 'Pip Installs Packages', '643da7918b53b'),
('643da7918b1f6', 'Pip Installs Python', '643da7918b53c'),
('643da7918b1f6', 'All of the mentioned', '643da7918b53d'),
('643da7918c71c', 'sqrt()', '643da7918cc46'),
('643da7918c71c', 'seed()', '643da7918cc49'),
('643da7918c71c', 'print()', '643da7918cc4a'),
('643da7918c71c', 'factorial()', '643da7918cc4b'),
('643da7918e6c0', 'Dictionary', '643da7918ec61'),
('643da7918e6c0', 'Lists', '643da7918ec68'),
('643da7918e6c0', 'Class', '643da7918ec69'),
('643da7918e6c0', 'Tuples', '643da7918ec6b'),
('64422cfa8bd15', '1', '64422cfa8c465'),
('64422cfa8bd15', '2', '64422cfa8c46d'),
('64422cfa8bd15', '3', '64422cfa8c46f'),
('64422cfa8bd15', '4', '64422cfa8c470');


DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('643da3014a609', '643da4eecf99b', 'When an array is passed to a method, what does the method receive?', 4, 1),
('643da3014a609', '643da4eed31ca', 'Number of primitive data types in Java are?', 4, 2),
('643da3014a609', '643da4eed5802', 'Arrays in java are-', 4, 3),
('643da3014a609', '643da4eed7e2e', 'When is the object created with new keyword?', 4, 4),
('643da3014a609', '643da4eed9931', 'Identify the keyword among the following that makes a variable belong to a class,rather than being defined for each instance of the class.', 4, 5),
('643da3014a609', '643da4eedb6c9', ' \r\nIn which of the following is toString() method defined?', 4, 6),
('643da3014a609', '643da4eedcfa0', 'compareTo() returns', 4, 7),
('643da3014a609', '643da4eede4fb', 'To which of the following does the class string belong to.', 4, 8),
('643da3014a609', '643da4eedfc6e', 'Total constructor string class have?', 4, 9),
('643da3014a609', '643da4eee13dd', ' \r\nIdentify the return type of a method that does not return any value.', 4, 10),
('643da52e7a261', '643da7917d787', 'Who developed Python Programming Language?', 4, 1),
('643da52e7a261', '643da7917faa7', 'Is Python case sensitive when dealing with identifiers?', 4, 2),
('643da52e7a261', '643da79182b82', 'Is Python code compiled or interpreted?\r\n', 4, 3),
('643da52e7a261', '643da7918528d', 'Which of the following is used to define a block of code in Python language?', 4, 4),
('643da52e7a261', '643da79187306', 'Which keyword is used for function in Python language?\r\n', 4, 5),
('643da52e7a261', '643da7918878a', 'Which of the following character is used to give single-line comments in Python?\r\n', 4, 6),
('643da52e7a261', '643da79189e52', 'Python supports the creation of anonymous functions at runtime, using a construct called __________.', 4, 7),
('643da52e7a261', '643da7918b1f6', 'What does pip stand for python?', 4, 8),
('643da52e7a261', '643da7918c71c', 'Which of the following functions is a built-in function in python?\r\na) factorial()\r\nb) print()\r\nc) seed()\r\nd) sqrt()', 4, 9),
('643da52e7a261', '643da7918e6c0', 'Which of the following is not a core data type in Python programming?', 4, 10),
('64422cd9688b8', '64422cfa8bd15', 'asp.net', 4, 1);


DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `quiz` (`eid`, `title`, `right`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('643da3014a609', 'Java', 2, 0, 10, 20, '', '', '2023-04-17 19:50:25'),
('643da52e7a261', 'Python', 1, 0, 10, 20, '', '', '2023-04-17 19:59:42'),
('64422cd9688b8', 'Advanced Web Programming', 1, 0, 1, 1, '', '', '2023-04-21 06:27:37');


DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('user@gmail.com', 8, '2023-04-20 16:02:49'),
('sulata@gmail.com', 7, '2023-04-18 12:13:31');


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL PRIMARY KEY,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Adarsh', 'M', 'SM Shetty College', 'adarsh@gmail.com', 9921487754, 'ff3b43a90e8c1256e737732baec84d96'),
('Amar', 'M', 'SM Shetty College', 'amar@gmail.com', 9875486248, 'dc5f6f274fd56f73ee12c95db257dd99'),
('Anchal', 'F', 'Chandrabhan Sharma College', 'anchal@gmail.com', 8851276347, '6eead3b37e50c313f0aefc2cac4467c8'),
('Madhu', 'F', 'RJ College', 'madhu@gmail.com', 7548614855, 'c08b3b1da7fd12d1dd4112885c3e7ac2'),
('Priyal', 'F', 'xyz', 'priyal@gmail.com', 7754862148, 'c62135b8ee3440e61c95a3af891b2691'),
('Sandhya', 'F', 'RJ College', 'sandhya@gmail.com', 8754213697, 'c14ab32ab7c3f3a8dd02576e8df53226'),
('Shivam', 'M', 'SM Shetty College', 'shivam@gmail.com', 9956712348, '67a49ac6912ad2ecb76a19dc5a4b0c8a'),
('Sulata', 'F', 'SM Shetty College', 'sulata@gmail.com', 9543187548, 'd189da64ca43c00a4af5356e1e618562'),
('User', 'M', 'SM Shetty College', 'user@gmail.com', 9647582185, '6ad14ba9986e3615423dfca256d04e3f'),
('Vinit', 'M', 'Chandrabhan Sharma College', 'vinit@gmail.com', 8754698124, 'dac52331948536c0f787003f1955f977');


ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
