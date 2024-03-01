

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin@123'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('65e1f4e2d7f52', '65e1f4e2d8550'),
('65e1f4e2da016', '65e1f4e2da4b0'),
('65e1f4e2db5fd', '65e1f4e2dbcdf'),
('65e1f4e2dcb6b', '65e1f4e2dcddf'),
('65e1f4e2dde10', '65e1f4e2de0e9');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `right`, `wrong`, `date`) VALUES
('admin@admin.com', '65e1f473b257e', 0, 5, 2, 3, '2024-03-01 15:35:42'),
('admin@admin.com', '65e1f473b257e', 0, 5, 2, 3, '2024-03-01 15:35:42'),
('admin@admin.com', '65e1f473b257e', 0, 5, 2, 3, '2024-03-01 15:35:42'),
('mishanghimire@gmail.com', '65e1f473b257e', 0, 5, 1, 4, '2024-03-01 15:39:33'),
('Suyogranamagar@gmail.com', '65e1f473b257e', 0, 1, 1, 0, '2024-03-01 15:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('65e1f4e2d7f52', 'Thomas Jefferson', '65e1f4e2d854d'),
('65e1f4e2d7f52', 'George Washington', '65e1f4e2d8550'),
('65e1f4e2d7f52', 'Abraham Lincoln', '65e1f4e2d8551'),
('65e1f4e2d7f52', ' John Adams', '65e1f4e2d8552'),
('65e1f4e2da016', '', '65e1f4e2da4b0'),
('65e1f4e2da016', '', '65e1f4e2da4b8'),
('65e1f4e2da016', '', '65e1f4e2da4b9'),
('65e1f4e2da016', '', '65e1f4e2da4ba'),
('65e1f4e2db5fd', '', '65e1f4e2dbcdf'),
('65e1f4e2db5fd', '', '65e1f4e2dbce6'),
('65e1f4e2db5fd', '', '65e1f4e2dbce7'),
('65e1f4e2db5fd', '', '65e1f4e2dbce8'),
('65e1f4e2dcb6b', '', '65e1f4e2dcddf'),
('65e1f4e2dcb6b', '', '65e1f4e2dcde0'),
('65e1f4e2dcb6b', '', '65e1f4e2dcde1'),
('65e1f4e2dcb6b', '', '65e1f4e2dcde2'),
('65e1f4e2dde10', '', '65e1f4e2de0e9'),
('65e1f4e2dde10', '', '65e1f4e2de0eb'),
('65e1f4e2dde10', '', '65e1f4e2de0ec'),
('65e1f4e2dde10', '', '65e1f4e2de0ed');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('65e1f473b257e', '65e1f4e2d7f52', ' Who was the first President of the United States?', 4, 1),
('65e1f473b257e', '65e1f4e2da016', '', 4, 2),
('65e1f473b257e', '65e1f4e2db5fd', '', 4, 3),
('65e1f473b257e', '65e1f4e2dcb6b', '', 4, 4),
('65e1f473b257e', '65e1f4e2dde10', '', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

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

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `right`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('65e1f473b257e', 'History', 1, 0, 5, 5, 'This is a simple quiz about History.', 'His', '2024-03-01 15:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('mishanghimire@gmail.com', 0, '2024-03-01 15:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Mishan Ghimire', 'M', 'Deerwalk', 'mishanghimire@gmail.com', 9812345678, 'e10adc3949ba59abbe56e057f20f883e'),
('Suyog Magar', 'M', 'St.Lawrence', 'Suyogranamagar@gmail.com', 9768389289, '25d55ad283aa400af464c76d713c07ad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
