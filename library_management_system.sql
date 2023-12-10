-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 04:40 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `author_contact` varchar(255) NOT NULL,
  `author_email` varchar(255) NOT NULL,
  `author_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_contact`, `author_email`, `author_description`) VALUES
(1, 'Yaswant Kanetkar', '9876543212', 'yaswant@gmail.com', 'BPB Publication author'),
(2, 'Balagur Swami', '987656787', 'Balagur@gmail.com', 'Java Writer'),
(3, 'Kaushal Kishore', '9897786567', 'kaushal@gmail.com', 'PHP Author'),
(4, 'Amit Trivedi', '9878675654', 'amit@gmail.com', 'Writter of Java Books');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_author_id` int(11) NOT NULL,
  `book_publication_id` int(11) NOT NULL,
  `book_category_id` int(11) NOT NULL,
  `book_language_id` int(11) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `book_isbn` varchar(255) NOT NULL,
  `book_edition` varchar(255) NOT NULL,
  `book_edition_year` varchar(255) NOT NULL,
  `book_number_copies` varchar(255) NOT NULL,
  `book_volume` varchar(255) NOT NULL,
  `book_date_purchase` varchar(255) NOT NULL,
  `book_price` varchar(255) NOT NULL,
  `book_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_author_id`, `book_publication_id`, `book_category_id`, `book_language_id`, `book_title`, `book_isbn`, `book_edition`, `book_edition_year`, `book_number_copies`, `book_volume`, `book_date_purchase`, `book_price`, `book_description`) VALUES
(1, 1, 2, 2, 2, 'Python for Beginner', '8237489KJKL1', 'First', '2013', '4', '5', '12 January, 2017', '200', '\r\nPython for Beginner\r\n'),
(2, 1, 1, 1, 1, 'Learn Java Basics', '89074567980876', 'Third Edition', '2012', '4', 'First', '4 February,2016', '1200', 'Learn Java Basics'),
(3, 1, 2, 1, 1, 'Let us C', '192367532476', 'Fifth Edition', '2013', '10', '7', '12 January, 2016', '200', 'Let us C by yaswant kanetkar'),
(5, 1, 1, 2, 2, '123asdfs', 'asdf', 'sadf', 'asafd', 'asf', 'asdf', 'asdf', '34', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`) VALUES
(1, 'Machine Learning', 'Machine Learning'),
(2, 'Computer Science', 'Computer Science'),
(3, 'Database Management System', 'Database Management System Books'),
(4, 'Social Science ', 'Social Science Books'),
(5, 'Play Books', 'Play Books');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'IT Department'),
(2, 'Java Developement'),
(3, 'HR Department'),
(4, 'Web Developement');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0mao4s9ju6vfj1nkb1gknlj8tu279d95', 'ZDJiZjZkOThhNzE4ZjhkNzYzN2YxZWNmMmIzODYwNDFlN2ZkMjBmYjp7ImFwcG9pbnRtZW50X2lkIjoyNSwiYXV0aGVudGljYXRlZCI6dHJ1ZSwidXNlcl9sZXZlbF9pZCI6MSwidXNlcl9pZCI6OCwidXNlcl9uYW1lIjoiQW1pdCBLdW1hciJ9', '2017-09-21 20:21:09'),
('djlk6utlynky27cg727uz9kmslrsdhcb', 'OWJkNTkwNWI0ZWM3MTExYThmYzYyYTU4YTE0MTI0NDkzOWZjMDQzNzp7InVzZXJfaWQiOjE2LCJ1c2VyX2xldmVsX2lkIjo0LCJhdXRoZW50aWNhdGVkIjp0cnVlLCJ1c2VyX25hbWUiOiJBbG9rIEt1bWFyIn0=', '2017-09-10 12:08:07'),
('g5z3hbxushtnzpan3ji546c0mayjxxgl', 'OTJjZGRkY2E5ZjhhZDYwOTczNTQxZDlkNTJhNTYzNGY5ZDRjMDgwMjp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2017-09-11 17:39:41'),
('ikvq9ty45pprg3h1aq7hb55bbfqghh92', 'NWEwM2U0Mjc3OWVjYmJjNTczYjliODZiNjgxYmFiZTUyOWVkMzEwYjp7InVzZXJfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2017-10-30 16:47:19'),
('qi4jui1wag7y5kjd3nal07b1h2jlc9ia', 'MDZiNTU1MGVjZDFkNDliNDc3ZWY1OGExZDgwOTk5MWFkYTZjZmE3NDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2017-07-21 17:16:47'),
('v4bzths0h72podq215a56nbsxvsrtnzl', 'OTJjZGRkY2E5ZjhhZDYwOTczNTQxZDlkNTJhNTYzNGY5ZDRjMDgwMjp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2017-10-08 11:15:18'),
('x9p1c5dv0tmdcpnxij0mm5phhpf9bl84', 'MWUxMWEwNmI4MmJmYTE3MDZjZmMxMzU3NmI2MDY4NzY2ZDVjN2JhZjp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9uYW1lIjpmYWxzZX0=', '2017-10-16 22:18:42'),
('utxr4nxs1z5q1jj36m0g3fkml6cka8r5', 'YzgyMjc0ZThmZTA5ODJlNTg2YjUyZWU5ZjMxYzU0MTVhMzE1MDhjMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2017-12-26 20:30:12'),
('cz42ygmw91sqrpxgo9zpionopbivmxiy', 'YzgyMjc0ZThmZTA5ODJlNTg2YjUyZWU5ZjMxYzU0MTVhMzE1MDhjMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2017-12-28 13:13:00'),
('etbtmjxy3lcr4u2m0g0in9v2ahp3bu5n', 'MWIzNDJiMDQ3YjZiZDYzOTJiZjgxNDMxNDNjZWMxMWM4NWU1YjdhMDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9uYW1lIjpmYWxzZX0=', '2018-01-27 16:47:25'),
('831hrppqwjuyz2jvpy5dyjutov81xl6i', 'ZjFhZGVlODk2ZDFmNzJjYzQ5NjQxMWE1ZmQyNjBkYmZiYjc3ODc2Mjp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjEsInVzZXJfbmFtZSI6IkFkbWluaXN0cmF0b3IifQ==', '2022-07-03 07:40:30'),
('lvvst2kj6rd5b2alkuiwchozv0vjrkll', 'ZmU5M2Y5MmMyODE2N2FhZDM4NWY3OGYyMmNjYWQ5ZTViYmM1NWFkZTp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjExLCJ1c2VyX2xldmVsX2lkIjoyLCJ1c2VyX2ZpcnN0X25hbWUiOiJBbWFuIn0=', '2022-07-03 12:35:49'),
('j52o4niskqoke2ha9y57alfkcl975990', 'ZmU5M2Y5MmMyODE2N2FhZDM4NWY3OGYyMmNjYWQ5ZTViYmM1NWFkZTp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjExLCJ1c2VyX2xldmVsX2lkIjoyLCJ1c2VyX2ZpcnN0X25hbWUiOiJBbWFuIn0=', '2022-07-03 13:12:58'),
('grkt7zbmd5bd2qle0l0qr85xcwxepsw8', 'ZmU5M2Y5MmMyODE2N2FhZDM4NWY3OGYyMmNjYWQ5ZTViYmM1NWFkZTp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjExLCJ1c2VyX2xldmVsX2lkIjoyLCJ1c2VyX2ZpcnN0X25hbWUiOiJBbWFuIn0=', '2022-07-03 14:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fees_id` int(11) NOT NULL,
  `fees_student_id` int(11) DEFAULT NULL,
  `fees_date` varchar(225) NOT NULL,
  `fees_month` varchar(225) NOT NULL,
  `fees_amount` varchar(1000) NOT NULL,
  `fees_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fees_id`, `fees_student_id`, `fees_date`, `fees_month`, `fees_amount`, `fees_desc`) VALUES
(2, 2, '15 September,2017', '22 September,2017', '1200', '2nd year'),
(3, 3, '4 September,2017', '6 September,2017', '1000', '1st Year');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `gender_id` int(11) NOT NULL,
  `gender_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `issue_id` int(11) NOT NULL,
  `issue_to_user_id` int(255) NOT NULL,
  `issue_book_id` int(255) NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `issue_description` varchar(255) NOT NULL,
  `issue_return_date` varchar(255) NOT NULL,
  `issue_fine_per_day` varchar(255) NOT NULL,
  `issue_total_fine` varchar(255) NOT NULL,
  `issue_return_description` text NOT NULL,
  `issue_return` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`issue_id`, `issue_to_user_id`, `issue_book_id`, `issue_date`, `issue_description`, `issue_return_date`, `issue_fine_per_day`, `issue_total_fine`, `issue_return_description`, `issue_return`) VALUES
(1, 10, 2, '20 February,2016', 'Book Issued to User', '2022-06-21', '', '', '', 1),
(2, 10, 1, '20 February,2016', 'Book Issued to User', '2022-06-21', '', '', '', 2),
(3, 10, 2, '2 February,2016', 'Learn Java Basics Books Issues for a month', '2022-06-21', '', '', '', 3),
(4, 14, 1, '20 February,2016', 'Book Issued to User', '2022-06-21', '', '', '', 1),
(5, 15, 1, '20 February,2016', 'Book Issued to User', '2022-06-21', '', '', '', 2),
(6, 16, 1, '20 February,2016', 'Book Issued to User', '2022-06-21', '', '', '', 2),
(7, 14, 1, '20 February,2016', 'Book Issued to User', '2022-06-21', '', '', '', 2),
(8, 10, 2, '20 February,2016', 'Book Issued to User', '2022-06-21', '', '', '', 3),
(9, 16, 2, '2022-06-27', 'Tes', '2022-06-21', '', '', '', 3),
(10, 14, 3, '2022-06-22', 'asdf', '2022-06-21', 'asdf', 'asdf', 'asdf', 3);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(255) NOT NULL,
  `language_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`, `language_description`) VALUES
(1, 'English', 'Book in English Language'),
(2, 'Hindi', 'Book in Hindi Language'),
(3, 'French', 'Book in French Language'),
(4, 'German', 'Book in german language');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `publication_id` int(11) NOT NULL,
  `publication_name` varchar(255) NOT NULL,
  `publication_contact` varchar(255) NOT NULL,
  `publication_address` varchar(255) NOT NULL,
  `publication_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`publication_id`, `publication_name`, `publication_contact`, `publication_address`, `publication_email`) VALUES
(1, 'BPB Publication', '01242856789', 'BPB Publication', 'bpb@gmail.com'),
(2, 'Tata Publication', '03421345676', 'Tata Publication', 'Mumbai'),
(3, 'Sahani Publication ', '0989768766', 'Sahani Publication ', 'Sahani@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `returns_id` int(11) NOT NULL,
  `returns_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`returns_id`, `returns_title`) VALUES
(1, 'Pending'),
(2, 'Extended'),
(3, 'Returned');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_title`) VALUES
(1, 'Adminstrator'),
(2, 'Faculty'),
(3, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `salutions`
--

CREATE TABLE `salutions` (
  `sl_id` int(11) NOT NULL,
  `sl_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salutions`
--

INSERT INTO `salutions` (`sl_id`, `sl_name`) VALUES
(1, 'Mr.'),
(2, 'Mrs.');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `skill_id` int(11) NOT NULL,
  `skill_emp_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Manager'),
(2, 'Worker'),
(3, 'Intern'),
(4, 'Fresher');

-- --------------------------------------------------------

--
-- Table structure for table `student_city`
--

CREATE TABLE `student_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `student_city`
--

INSERT INTO `student_city` (`city_id`, `city_name`) VALUES
(1, 'Allahabad'),
(2, 'Varanasi');

-- --------------------------------------------------------

--
-- Table structure for table `student_country`
--

CREATE TABLE `student_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `student_country`
--

INSERT INTO `student_country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`course_id`, `course_name`) VALUES
(1, 'BCA'),
(2, 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `student_state`
--

CREATE TABLE `student_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_state`
--

INSERT INTO `student_state` (`state_id`, `state_name`) VALUES
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `student_student`
--

CREATE TABLE `student_student` (
  `student_id` int(11) NOT NULL,
  `student_roll` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_phone` varchar(20) NOT NULL,
  `student_course_id` varchar(255) NOT NULL,
  `student_gender` varchar(255) NOT NULL,
  `student_dob` varchar(255) NOT NULL,
  `student_city` varchar(1000) NOT NULL,
  `student_state` varchar(1000) NOT NULL,
  `student_pincode` varchar(10) NOT NULL,
  `student_address` varchar(1000) NOT NULL,
  `student_admission_date` varchar(1000) NOT NULL,
  `student_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_student`
--

INSERT INTO `student_student` (`student_id`, `student_roll`, `student_name`, `student_email`, `student_phone`, `student_course_id`, `student_gender`, `student_dob`, `student_city`, `student_state`, `student_pincode`, `student_address`, `student_admission_date`, `student_photo`) VALUES
(2, '10001', 'Mohit', 'mohit@gmail.com', '12345678909', '1', 'Male', '09/04/2017', '1', '1', '110015', 'Test', '09/11/2017', '/uploads/4.png'),
(3, '10002', 'Rakesh', 'rohit@gmail.com', '2345678909', '2', 'Male', '09/04/2017', '1', '1', '110015', 'Student', '09/12/2017', '/uploads/5.png');

-- --------------------------------------------------------

--
-- Table structure for table `users_city`
--

CREATE TABLE `users_city` (
  `city_id` int(10) UNSIGNED NOT NULL,
  `city_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_city`
--

INSERT INTO `users_city` (`city_id`, `city_name`) VALUES
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Chenai'),
(4, 'Banglore'),
(5, 'Varanasi'),
(6, 'Kolkatta'),
(7, 'Ghaziabad'),
(8, 'Aligarh'),
(9, 'Tundal'),
(10, 'Kanpur'),
(11, 'Allahabad'),
(12, 'Mirzapur'),
(13, 'Mughalsarai'),
(14, 'Bhabua Road'),
(15, 'Sasaram'),
(16, 'Gaya'),
(17, 'Howrah'),
(18, 'Kodarma'),
(19, 'Asansol'),
(20, 'Dhanbad');

-- --------------------------------------------------------

--
-- Table structure for table `users_country`
--

CREATE TABLE `users_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_country`
--

INSERT INTO `users_country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA'),
(1, 'India'),
(2, 'USA'),
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `role_id` int(11) NOT NULL,
  `role_title` varchar(255) NOT NULL,
  `role_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`role_id`, `role_title`, `role_description`) VALUES
(1, 'Admin', 'Admin Role'),
(2, 'Employee', 'Employee Role'),
(3, 'Student', 'Student Role');

-- --------------------------------------------------------

--
-- Table structure for table `users_state`
--

CREATE TABLE `users_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_state`
--

INSERT INTO `users_state` (`state_id`, `state_name`) VALUES
(1, 'Maharastra'),
(2, 'Gujrat'),
(3, 'Bihar'),
(4, 'Uttar Pradesh'),
(5, 'Delhi'),
(6, 'Haryana'),
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh'),
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE `users_user` (
  `user_id` int(11) NOT NULL,
  `user_level_id` int(11) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_first_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` int(11) NOT NULL,
  `user_state` int(11) NOT NULL,
  `user_country` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`user_id`, `user_level_id`, `user_username`, `user_password`, `user_first_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`, `user_last_name`) VALUES
(8, 1, 'admin', 'test', 'Amit', 'Allahabad', 'Lunckonw', 1, 1, 1, 'amit@gmail.com', '9878987678', 'Male', '2 July,1987', '/uploads/p1.jpg', 'Kumar'),
(10, 3, 'student', 'test', 'Manasa Singh', 'House no : 768', 'Noida', 2, 1, 1, 'manasa@gmail.com', '9876543212', 'Female', '18 January,1968', '/uploads/p2.jpg', '1'),
(11, 2, 'employee', 'test', 'Aman', 'House No : 355, Sector 23', 'Noida', 1, 2, 1, 'aman@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p3.jpg', 'Kumar'),
(14, 3, 'pawan', 'test', 'Pawan Kumar', 'House No : 355, Sector 23', 'Noida', 1, 1, 2, 'pawan@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p4.jpg', '1'),
(15, 3, 'vishal', 'test', 'Vishal Singh', 'House No : 355, Sector 23', 'Noida', 1, 1, 2, 'vvishal@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p9.jpg', '1'),
(16, 3, 'alok', 'test', 'Alok Kumar', 'Pasco House,', '', 1, 1, 1, 'alok@gmail.com', '9876543212', 'Male', '17 July,1998', '/uploads/p6.jpg', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`publication_id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`returns_id`);

--
-- Indexes for table `student_city`
--
ALTER TABLE `student_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `student_country`
--
ALTER TABLE `student_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `student_state`
--
ALTER TABLE `student_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `student_student`
--
ALTER TABLE `student_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `issue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `publication`
--
ALTER TABLE `publication`
  MODIFY `publication_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `returns_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_city`
--
ALTER TABLE `student_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_country`
--
ALTER TABLE `student_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_course`
--
ALTER TABLE `student_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_state`
--
ALTER TABLE `student_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_student`
--
ALTER TABLE `student_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
