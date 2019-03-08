-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2019 at 06:21 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `page`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`) VALUES
(1, 'Post one', 'Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.Post one text.'),
(2, 'Hello world', 'Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.Hello world post.'),
(3, 'Post number three', 'Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.Post number three content.'),
(4, 'Post post', 'Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.Post.'),
(5, 'Test post', 'Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.Test post content.'),
(6, 'This is the post', 'This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.This is the post content.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
