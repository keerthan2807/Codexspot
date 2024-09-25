-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 12:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unistudyhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_content`
--

CREATE TABLE `add_content` (
  `ac_id` int(10) NOT NULL,
  `l_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `pdf` longtext NOT NULL,
  `disc` varchar(300) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_content`
--

INSERT INTO `add_content` (`ac_id`, `l_id`, `c_id`, `s_id`, `pdf`, `disc`, `date`, `status`) VALUES
(1, 4, 6, 16, 'upload/Manipulation Dark Psychology to Manipulate and Control People (Arthur Horn) (Z-Library).pdf', 'w', '2023-06-30 17:17:07', ''),
(2, 10, 3, 1, 'upload/resume.pdf', 'rsuem', '2023-07-02 15:19:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(10) NOT NULL,
  `a_name` varchar(30) NOT NULL,
  `a_password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_password`) VALUES
(1, 'admin', '$2y$10$GrU8geT26gfsh1ZlWauQtuUoHY/S96mRzr8pq8coQNuuwVvVfg9O6');

-- --------------------------------------------------------

--
-- Table structure for table `class_link`
--

CREATE TABLE `class_link` (
  `cl_id` int(11) NOT NULL,
  `mc_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `j_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `class_link` varchar(400) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `cl_status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_link`
--

INSERT INTO `class_link` (`cl_id`, `mc_id`, `st_id`, `j_id`, `s_id`, `l_id`, `c_id`, `class_link`, `date`, `cl_status`) VALUES
(1, 1, 3, 1, 9, 1, 5, 'https://www.youtube.com/watch?v=r0c1f6XxRQg', '2023-06-17 15:46:12', ''),
(2, 3, 5, 2, 1, 1, 3, 'class_link.php', '2023-06-26 06:53:57', ''),
(3, 4, 10, 4, 1, 1, 3, 'google.com', '2023-06-27 12:21:58', ''),
(4, 2, 12, 1, 16, 4, 6, 'google.com', '2023-06-30 17:43:06', ''),
(5, 3, 17, 2, 16, 4, 6, 'google.com', '2023-06-30 18:34:02', ''),
(6, 5, 18, 3, 3, 10, 3, 'hhhhhhhhdddddddddd', '2023-07-02 15:41:27', ''),
(7, 7, 18, 4, 22, 10, 3, 'wwwwwwwwwwwwww', '2023-07-02 15:44:46', ''),
(8, 8, 18, 5, 4, 10, 3, 'rrrrrrrrrrrrrrrrrrrr', '2023-07-02 15:54:53', '');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(40) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_id`, `c_name`, `date`, `status`) VALUES
(3, 'BCA', '2023-06-05 15:53:20', ''),
(4, 'BCOM', '2023-06-05 15:53:55', ''),
(5, 'BBA', '2023-06-05 15:54:03', ''),
(6, 'BSC', '2023-06-05 15:54:12', ''),
(7, 'BA', '2023-06-05 15:54:51', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(10) NOT NULL,
  `st_id` int(10) NOT NULL,
  `l_id` int(10) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `st_id`, `l_id`, `message`, `date`, `status`) VALUES
(1, 3, 1, 'good\r\n', '2023-06-17 11:40:05', ''),
(2, 5, 1, 'w', '2023-06-26 06:54:09', ''),
(3, 17, 0, 'good', '2023-06-30 18:42:57', ''),
(4, 17, 0, 'good', '2023-06-30 18:44:45', ''),
(5, 17, 4, 'good', '2023-06-30 18:44:58', ''),
(6, 17, 4, 'good', '2023-06-30 18:45:40', ''),
(7, 18, 10, 'ehlllo', '2023-07-02 15:41:41', ''),
(8, 18, 10, 'kfkdfdkjjdkfkdjfd', '2023-07-02 15:45:04', ''),
(9, 18, 10, 'xcxcxcvxcx', '2023-07-02 15:55:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `join_class`
--

CREATE TABLE `join_class` (
  `j_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `mc_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `j_status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `join_class`
--

INSERT INTO `join_class` (`j_id`, `c_id`, `s_id`, `l_id`, `mc_id`, `st_id`, `date`, `j_status`) VALUES
(1, 6, 16, 4, 2, 12, '2023-06-30 17:42:51', 'accepted'),
(2, 6, 16, 4, 3, 17, '2023-06-30 18:33:04', 'accepted'),
(3, 3, 3, 10, 5, 18, '2023-07-02 15:41:02', 'accepted'),
(4, 3, 22, 10, 7, 18, '2023-07-02 15:44:26', 'accepted'),
(5, 3, 4, 10, 8, 18, '2023-07-02 15:53:48', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `l_id` int(10) NOT NULL,
  `c_id` int(11) NOT NULL,
  `l_name` varchar(60) NOT NULL,
  `l_email` varchar(20) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `address` varchar(40) NOT NULL,
  `experience` varchar(250) NOT NULL,
  `acc_no` bigint(16) NOT NULL,
  `ifsc` varchar(90) NOT NULL,
  `password` varchar(250) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`l_id`, `c_id`, `l_name`, `l_email`, `phone_no`, `address`, `experience`, `acc_no`, `ifsc`, `password`, `date`, `status`) VALUES
(1, 3, 'Elon', 'elon@gmail.com', 2147483647, 'goa', 'upload/Premium Photo _ Group of students happy to be back at university.jpg', 3313455466778899, '', '$2y$10$IN1WBmRfFEo4ioBwN6YQbOOpCjPW10X7.0rvrz1Ur56HO4Zjo1XsW', '2023-06-27 16:57:58', 'Accepted'),
(2, 6, 'abhi', 'abhi11@gmail.com', 2147483647, 'chilimbi ,mangalore-575019', 'upload/Premium Photo _ Top view office desk with computer and office supplies with copy space.jpg', 1234567789011111, '', '$2y$10$0Yk4Z3LjHZBxDkqD3zecHehJ4MNNcn.fp1E3GJCdTxJT7WYOog2EG', '2023-06-27 17:12:34', 'Accepted'),
(4, 6, 'mark smith', 'marksmith@gmail.com', 2147483647, 'pvs managlore karnataka-575019', 'upload/mark smith resume.jpg', 111134567234567, '', '$2y$10$pq6/5IZBgEM/QkeotIZjiOTgia7HYQ8.F7yUBpVl1ugfSf8IAcOQO', '2023-06-27 22:03:00', 'Accepted'),
(5, 4, 'yasin munir', 'yasinmunir@gmail.com', 2147483647, 'jyothi circle mangalore', 'upload/yasin munir resume.jpg', 2000012245678956, '', '$2y$10$/O8ZjWeEiiQ1K3njFX9KbOY7D7x16ZBfe87mkruZ3paR7nP/ggIba', '2023-06-27 22:26:42', 'Accepted'),
(6, 3, 'francisco andrade', 'andrade@gmail.com', 2147483647, 'hampankatta mangalore', 'upload/francisco andrade.jpg', 8888456789432112, '', '$2y$10$QylGkIk7EQQujPUVlzlS/eQoRC.Kt0Lb12OHJNYJgTRptdRW/On5S', '2023-06-27 22:41:39', 'Accepted'),
(7, 3, 'anjali', 'anjali@gmail.com', 2147483647, 'chilimbi ,mangalore-575019', 'upload/yasin munir resume.jpg', 12345678990187, '', '$2y$10$7bOxbwHZzYNdmlrT.XjR/e4wxpbO15yYBatIqAqPT3xJWqDrhdf7m', '2023-06-27 10:04:52', 'Accepted'),
(8, 3, 'latha', 'latha@gmail.com', 2147483647, 'surathkal,mangalore', 'upload/Application_form_HCLTFP526327.pdf', 3313455466, '', '$2y$10$UsO0EK0WnebPTPxMH2DQkux.W0ATjEAPL9AcTg.DwQ6Uqbor6jis.', '2023-07-27 11:52:06', 'Accepted'),
(9, 3, 'manisha', 'Elon@gmail.com', 2147483647, 'goa', 'upload/nihad.resume.pdf', 3313455466, 'SBIN004651', '$2y$10$CXI9A/fzES2pNE6mGDlMZ.DBCihhZk5grn29zrS4jekVRv3ATMIRm', '2023-06-30 17:53:49', 'Rejected'),
(10, 3, 'let', 'let@gmail.com', 2147483647, 'mangalore', 'upload/my-node (25).png', 234234234, 'SBIN1234567', '$2y$10$/9tsyXk5fzVhMgQPWiA1eOOfchwvX./3pQvDH261pu9ITksVH8lce', '2023-07-02 15:08:36', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_payment`
--

CREATE TABLE `lecturer_payment` (
  `lp_id` int(11) NOT NULL,
  `l_id` int(10) NOT NULL,
  `amount` float NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `lp_status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer_payment`
--

INSERT INTO `lecturer_payment` (`lp_id`, `l_id`, `amount`, `date`, `lp_status`) VALUES
(1, 1, 5000, '2023-06-27', 'paid'),
(2, 2, 12000, '2023-06-27', 'paid'),
(3, 4, 12000, '2023-06-27', 'paid'),
(4, 5, 0, '2023-06-27', 'paid'),
(5, 6, 12000, '2023-06-27', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `manage_class`
--

CREATE TABLE `manage_class` (
  `mc_id` int(10) NOT NULL,
  `l_id` int(10) NOT NULL,
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `m_date` date NOT NULL,
  `m_time` time NOT NULL,
  `discription` longtext NOT NULL,
  `img` varchar(250) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manage_class`
--

INSERT INTO `manage_class` (`mc_id`, `l_id`, `s_id`, `c_id`, `m_date`, `m_time`, `discription`, `img`, `status`) VALUES
(1, 4, 18, 6, '2023-07-01', '19:12:00', 'physics', 'upload/yasin munir resume.jpg', ''),
(2, 4, 16, 6, '2023-06-30', '20:38:00', 'W', 'upload/Premium Photo _ Top view office desk with computer and office supplies with copy space.jpg', ''),
(3, 4, 16, 6, '2023-06-30', '19:28:00', 'weeee', 'upload/WhatsApp Image 2023-06-22 at 18.13.57.jpg', ''),
(4, 10, 22, 3, '2023-07-03', '15:20:00', 'hellloo', 'upload/Jersey.jpg', ''),
(5, 10, 3, 3, '2023-07-02', '16:41:00', 'kjjkjjkjkj', 'upload/Jersey.jpg', ''),
(6, 10, 4, 3, '2023-07-03', '16:44:00', 'djflg', 'upload/Jersey.jpg', ''),
(7, 10, 22, 3, '2023-07-02', '16:44:00', 'cvxcxdv', 'upload/my-node (26).png', ''),
(8, 10, 4, 3, '2023-07-02', '15:54:00', 'cvvvvvv', 'upload/Jersey.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `m_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `pay_method` varchar(30) NOT NULL,
  `trans_id` varchar(70) NOT NULL,
  `card_name` varchar(40) NOT NULL,
  `card_no` int(35) NOT NULL,
  `pay_date` date NOT NULL DEFAULT current_timestamp(),
  `pay_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`m_id`, `st_id`, `p_id`, `pay_method`, `trans_id`, `card_name`, `card_no`, `pay_date`, `pay_status`) VALUES
(1, 12, 7, 'upi', '12345', '', 0, '2023-06-30', 'active'),
(2, 12, 7, 'upi', 'ankith12', '', 0, '2023-06-30', 'Active'),
(3, 17, 7, 'upi', 'vi11', '', 0, '2023-06-30', 'Active'),
(4, 18, 10, 'card', '', 'hlello', 5121, '2023-07-02', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `p_id` int(10) NOT NULL,
  `p_duration` varchar(200) NOT NULL,
  `amount` int(20) NOT NULL,
  `details` varchar(100) NOT NULL,
  `info` varchar(400) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`p_id`, `p_duration`, `amount`, `details`, `info`, `date`, `status`) VALUES
(7, '1month', 1599, 'Live ClassesNotesClass  Videos', 'Live Classes,Notes,Class  Videos', '2023-08-27 21:28:58', ''),
(8, '6month', 2999, 'Live ClassesNotesClass VideosMany CoursesCore study materialsLimited access to supplementary resourc', 'Live Classes,Notes,Class Videos,Many Courses,Core study materials,Limited access to supplementary resources', '2023-08-27 21:32:04', ''),
(10, '1year', 5999, 'Live Classes,Notes,Class Videos,Many Courses,Core study materials,Limited access to supplementary re', 'Live Classes,Notes,Class Videos,Many Courses,Core study materials,Limited access to supplementary resources,All basic plan features,24/7 priority customer support,Extensive collection of advanced study materials', '2023-08-27 21:37:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` int(10) NOT NULL,
  `c_id` int(11) NOT NULL,
  `st_name` varchar(10) NOT NULL,
  `s_email` varchar(20) NOT NULL,
  `s_phone_no` bigint(10) NOT NULL,
  `s_address` varchar(30) NOT NULL,
  `password` varchar(250) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `c_id`, `st_name`, `s_email`, `s_phone_no`, `s_address`, `password`, `date`, `status`) VALUES
(12, 6, 'ankith', 'ankith@gmail.com', 9976876543, 'mulki ', '$2y$10$85hLYPTgYDsg05ko1Sfcwuez68f1VTiL.OPJkwEantWRD/UUSdwu2', '2023-06-27 22:10:54', ''),
(13, 3, 'anju', 'anju@gmail.com', 9908765432, 'katipalla', '$2y$10$0oPwclJj/mSj.W.8RiCbZuyFWzxgsX4rU47Znzehq9yys0ZjewhFa', '2023-06-27 23:19:14', ''),
(14, 4, 'sanvi', 'sanvi@gmail.com', 9908765432, 'sntakatte mangalore', '$2y$10$.jDPudKknuJLM/5WrweuD.CZiKkjtskWzZrkzDhf6NE5KtRgthzx2', '2023-06-27 23:31:25', ''),
(15, 4, 'geetha k', 'geethak@gmail.com', 9845851203, 'mangalore', '$2y$10$mAhOBhvpWKqSzrpHHSp1muBT.E2JM.KSS18m1g0VkdehbC2UTdHu.', '2023-06-27 10:54:24', ''),
(16, 3, 'hema', 'hema@gmail.com', 6543216789, 'chilimbi ,mangalore-575019', '$2y$10$XqPEInuqycXvumtGwyvo9.MntUVgpMa4Xf9l3OCWNHYKhGMonpd/u', '2023-07-27 11:37:56', ''),
(17, 6, 'vedha', 'vedha@gmail.com', 9086543211, 'chilimbi ,mangalore-575019', '$2y$10$v0k65R2RmJkK.TC2LFIYDupe.w1dRe4dEuQ.tVo.EfmKdzLyhd03e', '2023-06-30 18:31:58', ''),
(18, 3, 'user', 'user@gmail.com', 9845612301, 'mangalore', '$2y$10$DuDR5qB491DnrYMLMrCD6OPsGZ6nysk31g3pdNII.bMjwF4lR/NZ6', '2023-07-02 15:06:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_name` varchar(40) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`s_id`, `c_id`, `s_name`, `date`, `status`) VALUES
(1, 3, 'Python', '2023-06-14 12:55:56', ''),
(2, 3, 'HTML', '2023-06-14 12:59:05', ''),
(3, 3, 'Java', '2023-06-14 12:59:19', ''),
(4, 3, 'CSS', '2023-06-14 12:59:32', ''),
(5, 4, 'Accounting', '2023-06-14 12:59:54', ''),
(6, 4, 'Financial Management', '2023-06-14 13:00:28', ''),
(7, 4, 'Business Communication', '2023-06-14 13:00:36', ''),
(8, 4, 'Cost Accounting', '2023-06-14 13:00:48', ''),
(9, 5, 'Principles of Management', '2023-06-14 13:01:28', ''),
(10, 5, 'Marketing Management', '2023-06-14 13:01:35', ''),
(11, 5, 'Financial Accounting', '2023-06-14 13:01:48', ''),
(12, 5, 'Managerial Accounting', '2023-06-14 13:01:56', ''),
(16, 6, 'chemistry', '2023-06-27 14:17:06', ''),
(17, 6, 'Mathematics', '2023-06-27 14:17:24', ''),
(18, 6, 'Physics', '2023-06-27 14:17:55', ''),
(19, 7, 'Politics', '2023-06-27 14:18:31', ''),
(20, 7, 'sociology', '2023-06-27 14:19:14', ''),
(21, 5, 'Entrepreneurship', '2023-06-27 14:20:16', ''),
(22, 3, 'PHP', '2023-06-27 22:44:41', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `t_id` int(11) NOT NULL,
  `day` varchar(40) NOT NULL,
  `period_1` int(11) NOT NULL,
  `period_2` int(11) NOT NULL,
  `period_3` int(11) NOT NULL,
  `period_4` int(11) NOT NULL,
  `period_5` int(11) NOT NULL,
  `period_6` int(11) NOT NULL,
  `t_date` date NOT NULL DEFAULT current_timestamp(),
  `t_status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`t_id`, `day`, `period_1`, `period_2`, `period_3`, `period_4`, `period_5`, `period_6`, `t_date`, `t_status`) VALUES
(1, 'Monday', 1, 2, 3, 4, 5, 6, '2023-06-16', ''),
(2, 'Thuesday', 7, 8, 9, 10, 11, 12, '2023-06-16', ''),
(3, 'Wednesday', 1, 3, 5, 7, 8, 10, '2023-06-16', ''),
(4, 'Thursday', 1, 7, 5, 2, 3, 9, '2023-06-16', ''),
(5, 'Friday', 2, 3, 8, 10, 7, 5, '2023-06-16', ''),
(6, 'Saturday', 1, 8, 4, 11, 10, 9, '2023-06-16', '');

-- --------------------------------------------------------

--
-- Table structure for table `upload_video`
--

CREATE TABLE `upload_video` (
  `u_id` int(10) NOT NULL,
  `l_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `u_video` longtext NOT NULL,
  `desc` varchar(400) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_video`
--

INSERT INTO `upload_video` (`u_id`, `l_id`, `c_id`, `s_id`, `u_video`, `desc`, `date`, `status`) VALUES
(1, 4, 6, 17, 'upload/mathematics.mp4', 'mathematics', '2023-06-30 17:15:23', ''),
(2, 10, 3, 22, 'upload/UFO.mp4', 'ufo video', '2023-07-02 15:18:20', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_content`
--
ALTER TABLE `add_content`
  ADD PRIMARY KEY (`ac_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `class_link`
--
ALTER TABLE `class_link`
  ADD PRIMARY KEY (`cl_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `s_id` (`st_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `join_class`
--
ALTER TABLE `join_class`
  ADD PRIMARY KEY (`j_id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `lecturer_payment`
--
ALTER TABLE `lecturer_payment`
  ADD PRIMARY KEY (`lp_id`);

--
-- Indexes for table `manage_class`
--
ALTER TABLE `manage_class`
  ADD PRIMARY KEY (`mc_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `upload_video`
--
ALTER TABLE `upload_video`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `l_id` (`l_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_content`
--
ALTER TABLE `add_content`
  MODIFY `ac_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_link`
--
ALTER TABLE `class_link`
  MODIFY `cl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `join_class`
--
ALTER TABLE `join_class`
  MODIFY `j_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `l_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lecturer_payment`
--
ALTER TABLE `lecturer_payment`
  MODIFY `lp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manage_class`
--
ALTER TABLE `manage_class`
  MODIFY `mc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `st_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `upload_video`
--
ALTER TABLE `upload_video`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_content`
--
ALTER TABLE `add_content`
  ADD CONSTRAINT `add_content_ibfk_1` FOREIGN KEY (`l_id`) REFERENCES `lecturer` (`l_id`);

--
-- Constraints for table `manage_class`
--
ALTER TABLE `manage_class`
  ADD CONSTRAINT `manage_class_ibfk_1` FOREIGN KEY (`l_id`) REFERENCES `lecturer` (`l_id`);

--
-- Constraints for table `upload_video`
--
ALTER TABLE `upload_video`
  ADD CONSTRAINT `upload_video_ibfk_1` FOREIGN KEY (`l_id`) REFERENCES `lecturer` (`l_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
