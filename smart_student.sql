-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2017 at 08:06 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

--
-- Database: `smart_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(30) NOT NULL,
  `event` varchar(30) NOT NULL,
  `about` varchar(255) NOT NULL,
  `time` varchar(100) NOT NULL
);

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event`, `about`, `time`) VALUES
(1, 'EDGE', 'Techno India Technical Fest', '08-APR-2017 10:00 AM'),
(2, 'Anakhronos', 'Cultural Event of our College', '01-JUN-2017 10:30 AM'),
(3, 'Gekonix', 'Technical Event for gamers and coders.', '01-JUN-2017 2:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` int(30) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL
);

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `query`, `answer`) VALUES
(1, 'When will be our Grand Viva ?', '23rd May 2017'),
(2, 'When will be our semester?', 'Semester will start on or after 6th June'),
(3, 'When will we get our Marksheet ?', 'After 9th June 2017'),
(4, 'When will be our Farewell ?', '20th May Saturday at 10 o\'clock sharp.');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `about` varchar(1000) NOT NULL,
  `time` varchar(30) NOT NULL
);

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `subject`, `about`, `time`) VALUES
(1, 'DBMS', 'First Internal', '05-APR-2017 02:30:00 PM'),
(2, 'JAVA', 'First Internal', '13-APR-2017 02:00 PM'),
(3, 'Major Project', 'Today is Major Project Submission', '30-May-2017 10:00 AM'),
(4, 'Grand Viva', 'This week your final semester grand viva will held', '30-May-2017 10:45 AM');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(23) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `encrypted_password` varchar(80) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`, `updated_at`) VALUES
(1, '58f221a7d05491.74837330', 'Nilotpal Saha', 'nil@saha.com', 'u0duFFfa7F06YNQUr7Mvn8jLPm4yYTEwZWIxYjJh', '2a10eb1b2a', '2017-04-15 19:05:35', NULL),
(2, '5959de74ec6c60.17924080', 'demo test', 'demo@test.com', 'oVQcHm0s9pVxyM823zO4eKq0DNozOGIyZGNhMGNk', '38b2dca0cd', '2017-07-03 11:34:36', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  
  COMMIT;
