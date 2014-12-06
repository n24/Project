/*
MySQL Data Transfer
Source Host: localhost
Source Database: external_links
Target Host: localhost
Target Database: external_links
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for analysis
-- ----------------------------
DROP DATABASE IF EXISTS external_links;
CREATE DATABASE external_links;
USE external_links;
DROP TABLE IF EXISTS `analysis`;
CREATE TABLE `analysis` (
  `id` int(11) NOT NULL auto_increment,
  `e_links` int(255) default NULL,
  `i_links` int(255) default NULL,
  `category` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `vid` varchar(255) NOT NULL,
  `videoname` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for link1
-- ----------------------------
DROP TABLE IF EXISTS `link1`;
CREATE TABLE `link1` (
  `id` int(11) NOT NULL auto_increment,
  `e_links` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for link2
-- ----------------------------
DROP TABLE IF EXISTS `link2`;
CREATE TABLE `link2` (
  `id` int(11) NOT NULL auto_increment,
  `i_links` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for signup
-- ----------------------------
DROP TABLE IF EXISTS `signup`;
CREATE TABLE `signup` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for blog_signup
-- ----------------------------
DROP TABLE IF EXISTS `blog_signup`;
CREATE TABLE `blog_signup` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `vid` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `image` longblob NOT NULL,
  `videoname` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
, `view` int(11) NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `blog_video`;
CREATE TABLE `blog_video`(`name` varchar(255) NOT NULL, `src` varchar(255) NOT NULL);
