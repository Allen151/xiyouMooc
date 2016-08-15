-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-08-12 18:08:31
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xiyoumooc`
--

-- --------------------------------------------------------

--
-- 表的结构 `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `imgsrc` varchar(100) DEFAULT NULL,
  `word` varchar(1000) NOT NULL,
  `date` varchar(200) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chat`
--

INSERT INTO `chat` (`id`, `username`, `imgsrc`, `word`, `date`) VALUES
(1, 'Morning-Wind', 'Public/images/talk/talk_2.png', '不错,赞一个', '8-12 23:17');

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `level` varchar(200) DEFAULT NULL,
  `time` varchar(200) DEFAULT NULL,
  `person` int(11) DEFAULT NULL,
  `intro` varchar(400) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`id`, `title`, `level`, `time`, `person`, `intro`) VALUES
(1, 'html5+css3春节贺卡', '高级', '3小时', 1000, '以春节为主题，通过一个简单的春节手机端祝贺页面的实例演示、拆分和讲解，让您对手机端简易网站从零建站有一个简单的认识，并让您可以独立开发简单的手机端小型展示网页。'),
(3, 'canvas玩转红包', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(4, 'css3 3D讲堂', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(7, 'javascript基础教程', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(5, 'css禅意花园', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(6, 'z-index详解', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(8, '\r\njs实现人机大战之五子棋', '高级', '3小时', 1000, 'JQuery基础课程总共分为4个部分，此为第三个部分—事件篇。此部分当中包含了，对各种事件的操作，另外还有自定义事件。'),
(9, 'React实践打造图片画廊', '高级', '3小时', 1000, '自定义菜单是微信开发中必不可少的环节，掌握好自定义菜单可以让你的公众号与微信用户之间实现更便捷的交互。'),
(10, 'php入门指南', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(11, 'php实现手机归属地查询', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(12, 'php微信公众号开发', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(13, 'java分页原理与实践', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(14, 'java实现图片等比例缩略图', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(15, 'java高并发秒杀API', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(16, 'android面试揭秘', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(17, 'Android之QQ登录', '高级', '3小时', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(2, '高德地图组件快速入门', '高级', '3小时', 1001, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(18, 'Android高级特效', '高级', '3小时30分钟', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(19, 'iOS动画案例', '高级', '3小时30分钟', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(20, 'IOS五子棋大战', '高级', '3小时30分钟', 1000, '本课程从Ajax的基本概念到电子商城购物车实例中商品的添加、展示、修改和删除的开发实践，深入剖析了Ajax的工作原理以及开发理念，从而帮助小伙伴们更好地由浅至深地学习Ajax的项目设计方式，深度理解Ajax在项目当中的设计思想和极佳的用户体验性。'),
(21, 'IOS基础教程', '高级', '3小时30分钟', 1000, '数据绑定是将用户输入绑定到领域模型的一种特性。本课程重点介绍SpringMVC中Controller控制层对数据绑定入门相关知识');

-- --------------------------------------------------------

--
-- 表的结构 `cour_info`
--

CREATE TABLE IF NOT EXISTS `cour_info` (
  `id` int(11) NOT NULL,
  `imgSrc` varchar(100) DEFAULT NULL,
  `conIntro` varchar(200) DEFAULT NULL,
  `pushTime` varchar(200) DEFAULT NULL,
  `studyPer` int(11) DEFAULT NULL,
  `courDir` varchar(100) DEFAULT NULL,
  `courKind` varchar(100) DEFAULT NULL,
  `courHardLevel` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cour_info`
--

INSERT INTO `cour_info` (`id`, `imgSrc`, `conIntro`, `pushTime`, `studyPer`, `courDir`, `courKind`, `courHardLevel`) VALUES
(1, 'Public/images/course/html5_cour_1.jpg', '这是我的html', '一个小时前', 1000, 'qianduan', 'Html5', '2'),
(2, 'Public/images/course/html5_cour_2.jpg', '这是我的html', '一个小时前', 1001, 'qianduan', 'Html5', '3'),
(3, 'Public/images/course/html5_cour_3.jpg', '这是我的html', '一个小时前', 1000, 'qianduan', 'Html5', '4'),
(4, 'Public/images/course/css3_cour_1.jpg', '这是我的css', '一个小时前', 1000, 'qianduan', 'Css3', '2'),
(5, 'Public/images/course/css3_cour_2.jpg', '这是我的css', '一个小时前', 1000, 'qianduan', 'Css3', '3'),
(6, 'Public/images/course/css3_cour_3.jpg', '这是我的css', '一个小时前', 1000, 'qianduan', 'Css3', '4'),
(7, 'Public/images/course/js_cour_1.jpg', '这是我的Javascript', '一个小时前', 1000, 'qianduan', 'Javascript', '2'),
(8, 'Public/images/course/js_cour_2.jpg', '这是我的Javascript', '一个小时前', 1000, 'qianduan', 'Javascript', '3'),
(9, 'Public/images/course/js_cour_3.jpg', '这是我的Javascript', '一个小时前', 1000, 'qianduan', 'Javascript', '4'),
(10, 'Public/images/course/php_cour_1.jpg', '这是我的php', '一个小时前', 1000, 'houduan', 'Php', '2'),
(11, 'Public/images/course/php_cour_2.jpg', '这是我的php', '一个小时前', 1000, 'houduan', 'Php', '3'),
(12, 'Public/images/course/php_cour_3.jpg', '这是我的php', '一个小时前', 1000, 'houduan', 'Php', '4'),
(13, 'Public/images/course/java_cour_1.jpg', '这是我的java', '一个小时前', 1000, 'houduan', 'Java', '2'),
(14, 'Public/images/course/java_cour_2.jpg', '这是我的java', '一个小时前', 1000, 'houduan', 'Java', '3'),
(15, 'Public/images/course/java_cour_3.jpg', '这是我的java', '一个小时前', 1000, 'houduan', 'Java', '4'),
(16, 'Public/images/course/android_cour_1.jpg', '这是我的Android', '一个小时前', 1000, 'yidong', 'Android', '2'),
(17, 'Public/images/course/android_cour_2.jpg', '这是我的Android', '一个小时前', 1000, 'yidong', 'Android', '3'),
(18, 'Public/images/course/android_cour_3.jpg', '这是我的Android', '一个小时前', 1000, 'yidong', 'Android', '4'),
(21, 'Public/images/course/ios_cour_3.jpg', '这是我的Ios', '一个小时前', 1000, 'yidong', 'Ios', '4'),
(20, 'Public/images/course/ios_cour_2.jpg', '这是我的Ios', '一个小时前', 1000, 'yidong', 'Ios', '3'),
(19, 'Public/images/course/ios_cour_1.jpg', '这是我的Ios', '一个小时前', 1000, 'yidong', 'Ios', '2');

-- --------------------------------------------------------

--
-- 表的结构 `cour_nav`
--

CREATE TABLE IF NOT EXISTS `cour_nav` (
  `id` int(11) NOT NULL,
  `courDir` varchar(255) DEFAULT NULL,
  `courKind` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cour_nav`
--

INSERT INTO `cour_nav` (`id`, `courDir`, `courKind`) VALUES
(1, 'qianduan', 'Html5'),
(2, 'qianduan', 'Css3'),
(3, 'qianduan', 'Javascript'),
(4, 'houduan', 'Php'),
(5, 'houduan', 'Java'),
(6, 'yidong', 'Android'),
(7, 'yidong', 'Ios');

-- --------------------------------------------------------

--
-- 表的结构 `mooc_user`
--

CREATE TABLE IF NOT EXISTS `mooc_user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(33) NOT NULL,
  `img` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mooc_user`
--

INSERT INTO `mooc_user` (`id`, `username`, `password`, `img`) VALUES
(1, 'Morning-Wind', 'b508158b795a5aa4d521e59deb028df2', 'Public/images/talk/talk_2.png');

-- --------------------------------------------------------

--
-- 表的结构 `xy_course`
--

CREATE TABLE IF NOT EXISTS `xy_course` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xy_course`
--

INSERT INTO `xy_course` (`id`, `username`, `courseId`) VALUES
(1, 'Morning-Wind', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cour_info`
--
ALTER TABLE `cour_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cour_nav`
--
ALTER TABLE `cour_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mooc_user`
--
ALTER TABLE `mooc_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xy_course`
--
ALTER TABLE `xy_course`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `cour_info`
--
ALTER TABLE `cour_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `cour_nav`
--
ALTER TABLE `cour_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mooc_user`
--
ALTER TABLE `mooc_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xy_course`
--
ALTER TABLE `xy_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
