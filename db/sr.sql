-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 06, 2016 at 06:40 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sr`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-09-05 17:14:35', '2016-09-05 17:14:35', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=206 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/sr', 'yes'),
(2, 'home', 'http://localhost/sr', 'yes'),
(3, 'blogname', 'SR Enterprises', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'samnishanth01@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:175:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:50:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:60:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:80:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:56:"index.php/vc_grid_item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"index.php/vc_grid_item/([^/]+)/embed/?$";s:45:"index.php?vc_grid_item=$matches[1]&embed=true";s:43:"index.php/vc_grid_item/([^/]+)/trackback/?$";s:39:"index.php?vc_grid_item=$matches[1]&tb=1";s:51:"index.php/vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&paged=$matches[2]";s:58:"index.php/vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]";s:47:"index.php/vc_grid_item/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?vc_grid_item=$matches[1]&page=$matches[2]";s:39:"index.php/vc_grid_item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"index.php/vc_grid_item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"index.php/vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"index.php/vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"index.php/vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"index.php/vc_grid_item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:49:"index.php/testimonial/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:59:"index.php/testimonial/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:79:"index.php/testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:74:"index.php/testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:74:"index.php/testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"index.php/testimonial/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"index.php/testimonial/([^/]+)/embed/?$";s:49:"index.php?zozo_testimonial=$matches[1]&embed=true";s:42:"index.php/testimonial/([^/]+)/trackback/?$";s:43:"index.php?zozo_testimonial=$matches[1]&tb=1";s:50:"index.php/testimonial/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?zozo_testimonial=$matches[1]&paged=$matches[2]";s:57:"index.php/testimonial/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?zozo_testimonial=$matches[1]&cpage=$matches[2]";s:46:"index.php/testimonial/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?zozo_testimonial=$matches[1]&page=$matches[2]";s:38:"index.php/testimonial/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"index.php/testimonial/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"index.php/testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"index.php/testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"index.php/testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"index.php/testimonial/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:73:"index.php/testimonial-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?testimonial_categories=$matches[1]&feed=$matches[2]";s:68:"index.php/testimonial-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?testimonial_categories=$matches[1]&feed=$matches[2]";s:49:"index.php/testimonial-categories/([^/]+)/embed/?$";s:55:"index.php?testimonial_categories=$matches[1]&embed=true";s:61:"index.php/testimonial-categories/([^/]+)/page/?([0-9]{1,})/?$";s:62:"index.php?testimonial_categories=$matches[1]&paged=$matches[2]";s:43:"index.php/testimonial-categories/([^/]+)/?$";s:44:"index.php?testimonial_categories=$matches[1]";s:47:"index.php/portfolio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"index.php/portfolio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"index.php/portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"index.php/portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"index.php/portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"index.php/portfolio/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"index.php/portfolio/([^/]+)/embed/?$";s:47:"index.php?zozo_portfolio=$matches[1]&embed=true";s:40:"index.php/portfolio/([^/]+)/trackback/?$";s:41:"index.php?zozo_portfolio=$matches[1]&tb=1";s:48:"index.php/portfolio/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?zozo_portfolio=$matches[1]&paged=$matches[2]";s:55:"index.php/portfolio/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?zozo_portfolio=$matches[1]&cpage=$matches[2]";s:44:"index.php/portfolio/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?zozo_portfolio=$matches[1]&page=$matches[2]";s:36:"index.php/portfolio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"index.php/portfolio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"index.php/portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"index.php/portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"index.php/portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"index.php/portfolio/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:71:"index.php/portfolio-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?portfolio_categories=$matches[1]&feed=$matches[2]";s:66:"index.php/portfolio-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?portfolio_categories=$matches[1]&feed=$matches[2]";s:47:"index.php/portfolio-categories/([^/]+)/embed/?$";s:53:"index.php?portfolio_categories=$matches[1]&embed=true";s:59:"index.php/portfolio-categories/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?portfolio_categories=$matches[1]&paged=$matches[2]";s:41:"index.php/portfolio-categories/([^/]+)/?$";s:42:"index.php?portfolio_categories=$matches[1]";s:65:"index.php/portfolio-tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?portfolio_tags=$matches[1]&feed=$matches[2]";s:60:"index.php/portfolio-tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?portfolio_tags=$matches[1]&feed=$matches[2]";s:41:"index.php/portfolio-tags/([^/]+)/embed/?$";s:47:"index.php?portfolio_tags=$matches[1]&embed=true";s:53:"index.php/portfolio-tags/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?portfolio_tags=$matches[1]&paged=$matches[2]";s:35:"index.php/portfolio-tags/([^/]+)/?$";s:36:"index.php?portfolio_tags=$matches[1]";s:42:"index.php/team/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"index.php/team/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"index.php/team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"index.php/team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"index.php/team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"index.php/team/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"index.php/team/([^/]+)/embed/?$";s:49:"index.php?zozo_team_member=$matches[1]&embed=true";s:35:"index.php/team/([^/]+)/trackback/?$";s:43:"index.php?zozo_team_member=$matches[1]&tb=1";s:43:"index.php/team/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?zozo_team_member=$matches[1]&paged=$matches[2]";s:50:"index.php/team/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?zozo_team_member=$matches[1]&cpage=$matches[2]";s:39:"index.php/team/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?zozo_team_member=$matches[1]&page=$matches[2]";s:31:"index.php/team/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"index.php/team/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"index.php/team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"index.php/team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"index.php/team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"index.php/team/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:62:"index.php/team-groups/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?team_categories=$matches[1]&feed=$matches[2]";s:57:"index.php/team-groups/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?team_categories=$matches[1]&feed=$matches[2]";s:38:"index.php/team-groups/([^/]+)/embed/?$";s:48:"index.php?team_categories=$matches[1]&embed=true";s:50:"index.php/team-groups/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?team_categories=$matches[1]&paged=$matches[2]";s:32:"index.php/team-groups/([^/]+)/?$";s:37:"index.php?team_categories=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:41:"Ultimate_VC_Addons/Ultimate_VC_Addons.php";i:1;s:27:"js_composer/js_composer.php";i:2;s:35:"zozothemes-core/zozothemes-core.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mist', 'yes'),
(41, 'stylesheet', 'mist', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '600', 'yes'),
(65, 'large_size_h', '600', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:3;a:3:{s:5:"title";s:0:"";s:4:"text";s:466:"SR Enterprises range has been enriched by several highly innovative products \r\ndesigned especially for the requirements of dyeing units.\r\n\r\n\r\nSR Enterprises is dedicated to bring integrity and trust back to the design and technical industry. We strive to make every part of your experience working with us as simple and professional as possible. We demonstrate our commitment daily by providing a superior quality service that our customers can expect and depend on.";s:6:"filter";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:1:{i:0;s:6:"text-3";}s:7:"primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"secondary";N;s:14:"secondary-menu";N;s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1473225280;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1473269855;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1473270270;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:56:"http://downloads.wordpress.org/release/wordpress-4.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:56:"http://downloads.wordpress.org/release/wordpress-4.6.zip";s:10:"no_content";s:67:"http://downloads.wordpress.org/release/wordpress-4.6-no-content.zip";s:11:"new_bundled";s:68:"http://downloads.wordpress.org/release/wordpress-4.6-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1473182086;s:15:"version_checked";s:5:"4.5.3";s:12:"translations";a:0:{}}', 'yes'),
(114, '_site_transient_timeout_browser_a3baefe3e9ae991b41528d105521ff36', '1473700524', 'yes'),
(115, '_site_transient_browser_a3baefe3e9ae991b41528d105521ff36', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"52.0.2743.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(116, 'can_compress_scripts', '1', 'yes'),
(117, '_transient_timeout_plugin_slugs', '1473183853', 'no'),
(118, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:41:"Ultimate_VC_Addons/Ultimate_VC_Addons.php";i:3;s:27:"js_composer/js_composer.php";}', 'no'),
(124, '_transient_twentysixteen_categories', '1', 'yes'),
(126, 'theme_mods_twentysixteen', 'a:2:{s:18:"nav_menu_locations";a:1:{s:14:"frontpage-menu";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1473178549;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:1:{i:0;s:6:"text-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(127, 'current_theme', 'Mist', 'yes'),
(128, 'theme_mods_one-page', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:14:"frontpage-menu";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1473098584;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:21:"secondary-widget-area";N;s:24:"first-footer-widget-area";N;s:25:"second-footer-widget-area";N;s:24:"third-footer-widget-area";N;s:25:"fourth-footer-widget-area";N;}}}', 'yes'),
(129, 'theme_switched', '', 'yes'),
(130, 'widget_rcp_recent_custom_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(131, 'recently_activated', 'a:0:{}', 'yes'),
(132, 'ultimate_row', 'enable', 'yes'),
(133, 'ultimate_animation', 'disable', 'yes'),
(134, 'brainstrom_products', 'a:1:{s:7:"plugins";a:1:{i:6892199;a:5:{s:2:"id";s:7:"6892199";s:4:"type";s:6:"plugin";s:8:"template";s:41:"Ultimate_VC_Addons/Ultimate_VC_Addons.php";s:12:"product_name";s:35:"Ultimate Addons for Visual Composer";s:7:"version";s:6:"3.15.0";}}}', 'yes'),
(135, 'ultimate_vc_addons_redirect', '', 'yes'),
(136, 'ultimate_google_fonts', 'a:0:{}', 'yes'),
(137, 'ultimate_selected_google_fonts', 'a:0:{}', 'yes'),
(138, '_transient_timeout_bsf_check_product_updates', '1473270205', 'no'),
(139, '_transient_bsf_check_product_updates', '1', 'no'),
(140, 'ultimate_updater', 'enabled', 'yes'),
(141, 'ultimate_constants', 'a:3:{s:24:"ULTIMATE_NO_UPDATE_CHECK";b:0;s:28:"ULTIMATE_NO_EDIT_PAGE_NOTICE";b:0;s:30:"ULTIMATE_NO_PLUGIN_PAGE_NOTICE";b:0;}', 'yes'),
(142, 'ultimate_modules', 'a:38:{i:0;s:18:"ultimate_animation";i:1;s:16:"ultimate_buttons";i:2;s:18:"ultimate_countdown";i:3;s:17:"ultimate_flip_box";i:4;s:20:"ultimate_google_maps";i:5;s:22:"ultimate_google_trends";i:6;s:17:"ultimate_headings";i:7;s:22:"ultimate_icon_timeline";i:8;s:17:"ultimate_info_box";i:9;s:20:"ultimate_info_circle";i:10;s:18:"ultimate_info_list";i:11;s:20:"ultimate_info_tables";i:12;s:28:"ultimate_interactive_banners";i:13;s:29:"ultimate_interactive_banner_2";i:14;s:15:"ultimate_modals";i:15;s:17:"ultimate_parallax";i:16;s:23:"ultimate_pricing_tables";i:17;s:15:"ultimate_spacer";i:18;s:22:"ultimate_stats_counter";i:19;s:20:"ultimate_swatch_book";i:20;s:14:"ultimate_icons";i:21;s:18:"ultimate_list_icon";i:22;s:17:"ultimate_carousel";i:23;s:18:"ultimate_fancytext";i:24;s:22:"ultimate_highlight_box";i:25;s:20:"ultimate_info_banner";i:26;s:15:"ultimate_ihover";i:27;s:16:"ultimate_hotspot";i:28;s:21:"ultimate_video_banner";i:29;s:11:"woocomposer";i:30;s:20:"ultimate_dual_button";i:31;s:13:"ultimate_link";i:32;s:19:"ultimate_fancy_text";i:33;s:23:"ultimate_hightlight_box";i:34;s:20:"ultimate_content_box";i:35;s:24:"ultimate_image_separator";i:36;s:27:"ultimate_expandable_section";i:37;s:12:"ultimate_tab";}', 'yes'),
(143, 'smile_fonts', 'a:1:{s:8:"Defaults";a:4:{s:7:"include";s:20:"smile_fonts/Defaults";s:6:"folder";s:20:"smile_fonts/Defaults";s:5:"style";s:21:"Defaults/Defaults.css";s:6:"config";s:11:"charmap.php";}}', 'yes'),
(146, 'vc_version', '4.11.1', 'yes'),
(148, 'theme_mods_zerif-pro', 'a:14:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:14:"frontpage-menu";i:2;}s:20:"zerif_bigtitle_title";s:30:"SMALL CHANGES. MOVING FORWARD.";s:30:"zerif_bigtitle_redbutton_label";s:0:"";s:28:"zerif_bigtitle_redbutton_url";s:0:"";s:32:"zerif_bigtitle_greenbutton_label";s:7:"Explore";s:30:"zerif_bigtitle_greenbutton_url";s:0:"";s:19:"zerif_parallax_show";s:1:"1";s:19:"zerif_parallax_img1";s:0:"";s:19:"zerif_parallax_img2";s:56:"http://localhost/sr/wp-content/uploads/2016/09/yarn3.jpg";s:19:"zerif_bigtitle_show";b:0;s:20:"zerif_ourfocus_title";s:8:"About us";s:23:"zerif_ourfocus_subtitle";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1473178542;s:4:"data";a:11:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:16:"sidebar-ourfocus";a:1:{i:0;s:6:"text-3";}s:20:"sidebar-testimonials";N;s:15:"sidebar-aboutus";N;s:15:"sidebar-ourteam";N;s:16:"sidebar-packages";N;s:17:"sidebar-subscribe";N;s:20:"zerif-sidebar-footer";N;s:22:"zerif-sidebar-footer-2";N;s:22:"zerif-sidebar-footer-3";N;}}}', 'yes'),
(149, 'widget_ctup-ads-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(150, 'widget_zerif_testim-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(151, 'widget_zerif_clients-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(152, 'widget_zerif_team-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'widget_color-picker', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(154, 'zerif_flush_rewrite_rules_flag', '1', 'yes'),
(155, '_transient_timeout_zerif_pro_license_data', '1473141800', 'no'),
(156, '_transient_zerif_pro_license_data', 'O:8:"stdClass":1:{s:7:"license";s:7:"invalid";}', 'no'),
(157, 'zerif_pro_license_data', 'O:8:"stdClass":2:{s:7:"license";s:7:"invalid";s:10:"hide_valid";b:1;}', 'yes'),
(158, '_site_transient_timeout_available_translations', '1473109435', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(159, '_site_transient_available_translations', 'a:81:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-14 10:53:34";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-09-03 15:24:06";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.5.3/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-18 20:18:13";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-27 08:19:49";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-14 05:03:35";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-11 20:22:42";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-01 14:29:56";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 11:16:44";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 10:08:23";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 18:59:13";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.5.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:72:"http://downloads.wordpress.org/translation/core/4.5.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-30 21:42:25";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-26 19:02:02";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 22:23:41";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 19:24:51";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 21:28:52";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 22:55:40";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-29 13:59:02";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 19:09:44";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-15 15:42:15";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-29 15:10:17";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-05 22:16:54";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-01 14:32:46";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 19:36:14";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-07 15:28:20";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 11:41:42";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-20 14:58:27";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 09:08:24";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-13 12:55:08";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-22 06:33:34";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-29 13:30:07";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 21:28:18";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 15:19:37";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-22 11:01:09";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-11 16:18:13";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 18:58:51";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-29 09:14:16";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-19 01:01:44";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-16 10:17:50";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-17 17:39:43";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-15 07:32:48";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-23 09:09:28";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-03 22:34:27";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-26 13:19:17";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 05:36:22";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.12";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.1.12/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-09 14:35:35";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-15 10:43:48";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 11:56:46";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-25 15:00:30";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.5.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 08:13:15";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.12";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.12/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 23:41:16";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-17 15:23:17";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 05:26:21";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 13:55:57";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-15 21:05:03";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-29 21:37:59";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 09:08:48";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-28 05:05:25";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 10:13:40";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 10:22:26";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 08:25:58";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-22 12:27:05";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.3/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-20 19:27:06";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.5.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(169, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1473221730', 'no'),
(170, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(171, 'theme_mods_mist', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:14:"frontpage-menu";i:2;}}', 'yes'),
(173, 'widget_zozo_facebook_like-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(174, 'widget_zozo_tweets-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(175, 'widget_zozo_call_to_action-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(176, 'widget_zozo_flickr_widget-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(177, 'widget_zozo_instagram_widget-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(178, 'widget_zozo_mailchimp_form_widget-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(179, 'widget_zozo_popular_posts-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(180, 'widget_zozo_category_posts-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(181, 'widget_zozo_tabs-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(182, 'widget_zozo_counters_widget-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(183, 'widget_zozo_social_link_widget-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(184, 'large_crop', '1', 'yes'),
(185, 'zozo_options', 'a:206:{s:24:"zozo_disable_page_loader";b:0;s:22:"zozo_enable_responsive";b:1;s:20:"zozo_enable_rtl_mode";b:0;s:23:"zozo_enable_breadcrumbs";b:1;s:9:"zozo_logo";a:3:{s:3:"url";s:58:"http://localhost/sr/wp-content/themes/mist/images/logo.png";s:5:"width";s:3:"170";s:6:"height";s:2:"45";}s:16:"zozo_sticky_logo";a:3:{s:3:"url";s:65:"http://localhost/sr/wp-content/themes/mist/images/sticky-logo.png";s:5:"width";s:3:"115";s:6:"height";s:2:"30";}s:12:"zozo_favicon";a:1:{s:3:"url";s:61:"http://localhost/sr/wp-content/themes/mist/images/favicon.ico";}s:22:"zozo_apple_iphone_icon";a:1:{s:3:"url";s:70:"http://localhost/sr/wp-content/themes/mist/images/apple-touch-icon.png";}s:29:"zozo_apple_iphone_retina_icon";a:1:{s:3:"url";s:78:"http://localhost/sr/wp-content/themes/mist/images/apple-touch-icon_114x114.png";}s:20:"zozo_apple_ipad_icon";a:1:{s:3:"url";s:76:"http://localhost/sr/wp-content/themes/mist/images/apple-touch-icon_72x72.png";}s:27:"zozo_apple_ipad_retina_icon";a:1:{s:3:"url";s:78:"http://localhost/sr/wp-content/themes/mist/images/apple-touch-icon_144x144.png";}s:18:"zozo_mailchimp_api";s:0:"";s:15:"zozo_custom_css";s:0:"";s:23:"zozo_enable_maintenance";s:1:"0";s:26:"zozo_maintenance_mode_page";s:0:"";s:23:"zozo_enable_coming_soon";s:1:"0";s:21:"zozo_coming_soon_page";s:0:"";s:17:"zozo_theme_layout";s:9:"fullwidth";s:11:"zozo_layout";s:7:"one-col";s:25:"zozo_fullwidth_site_width";i:1200;s:21:"zozo_boxed_site_width";i:1200;s:18:"zozo_header_layout";s:9:"fullwidth";s:18:"zozo_sticky_header";b:1;s:28:"zozo_enable_search_in_header";b:1;s:24:"zozo_show_socials_header";b:0;s:21:"zozo_show_cart_header";b:1;s:16:"zozo_header_skin";s:5:"light";s:24:"zozo_header_transparency";s:14:"no-transparent";s:16:"zozo_header_type";s:8:"header-1";s:20:"zozo_slider_position";s:5:"below";s:27:"zozo_header_toggle_position";s:4:"left";s:22:"zozo_header_side_width";s:5:"280px";s:26:"zozo_enable_header_top_bar";b:1;s:16:"zozo_welcome_msg";s:15:"Welcome to Mist";s:17:"zozo_header_phone";s:15:"+12 123 456 789";s:17:"zozo_header_email";s:17:"info@yoursite.com";s:19:"zozo_header_address";s:78:"<strong>No. 12, Ribon Building, </strong><span>Walse street, Australia.</span>";s:26:"zozo_header_business_hours";s:81:"<strong>Monday-Friday: 9am to 5pm </strong><span>Saturday / Sunday: Closed</span>";s:23:"zozo_enable_sliding_bar";b:1;s:24:"zozo_disable_sliding_bar";b:1;s:24:"zozo_sliding_bar_columns";s:1:"3";s:14:"zozo_menu_type";s:8:"megamenu";s:24:"zozo_dropdown_menu_width";a:2:{s:5:"width";i:200;s:5:"units";s:2:"px";}s:16:"zozo_menu_height";a:2:{s:6:"height";i:76;s:5:"units";s:2:"px";}s:23:"zozo_sticky_menu_height";a:2:{s:6:"height";i:60;s:5:"units";s:2:"px";}s:20:"zozo_logo_bar_height";a:2:{s:6:"height";i:76;s:5:"units";s:2:"px";}s:20:"zozo_menu_height_alt";a:2:{s:6:"height";i:60;s:5:"units";s:2:"px";}s:27:"zozo_sticky_menu_height_alt";a:2:{s:6:"height";i:60;s:5:"units";s:2:"px";}s:26:"zozo_enable_secondary_menu";b:0;s:28:"zozo_secondary_menu_position";s:5:"right";s:16:"zozo_mobile_logo";a:3:{s:3:"url";s:0:"";s:5:"width";s:0:"";s:6:"height";s:0:"";}s:25:"zozo_sticky_mobile_header";b:1;s:19:"zozo_copyright_text";s:45:"&copy; Copyright [year]. All Rights Reserved.";s:26:"zozo_footer_widgets_enable";b:1;s:23:"zozo_enable_back_to_top";b:1;s:23:"zozo_enable_footer_menu";b:0;s:16:"zozo_footer_skin";s:5:"light";s:17:"zozo_footer_style";s:7:"default";s:16:"zozo_footer_type";s:8:"footer-1";s:14:"zozo_body_font";a:7:{s:5:"color";s:7:"#333333";s:9:"font-size";s:4:"14px";s:11:"font-family";s:5:"Arimo";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"25px";}s:19:"zozo_h1_font_styles";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"48px";s:11:"font-family";s:6:"Oswald";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"62px";}s:19:"zozo_h2_font_styles";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"40px";s:11:"font-family";s:6:"Oswald";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"52px";}s:19:"zozo_h3_font_styles";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"32px";s:11:"font-family";s:6:"Oswald";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"42px";}s:19:"zozo_h4_font_styles";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"24px";s:11:"font-family";s:6:"Oswald";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"31px";}s:19:"zozo_h5_font_styles";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"18px";s:11:"font-family";s:6:"Oswald";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"23px";}s:19:"zozo_h6_font_styles";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"16px";s:11:"font-family";s:6:"Oswald";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"21px";}s:25:"zozo_top_menu_font_styles";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"12px";s:11:"font-family";s:5:"Arimo";s:6:"google";b:1;s:11:"font-weight";s:3:"700";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"12px";}s:21:"zozo_menu_font_styles";a:6:{s:5:"color";s:0:"";s:9:"font-size";s:4:"14px";s:11:"font-family";s:5:"Arimo";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";}s:24:"zozo_submenu_font_styles";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"14px";s:11:"font-family";s:5:"Arimo";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"20px";}s:28:"zozo_single_post_title_fonts";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"36px";s:11:"font-family";s:6:"Oswald";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"50px";}s:27:"zozo_post_title_font_styles";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"26px";s:11:"font-family";s:6:"Oswald";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";s:11:"line-height";s:4:"41px";}s:23:"zozo_widget_title_fonts";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"16px";s:11:"line-height";s:4:"42px";s:11:"font-family";s:6:"Oswald";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";}s:22:"zozo_widget_text_fonts";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"13px";s:11:"line-height";s:4:"25px";s:11:"font-family";s:5:"Arimo";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";}s:30:"zozo_footer_widget_title_fonts";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"16px";s:11:"line-height";s:4:"42px";s:11:"font-family";s:6:"Oswald";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";}s:29:"zozo_footer_widget_text_fonts";a:7:{s:5:"color";s:0:"";s:9:"font-size";s:4:"13px";s:11:"line-height";s:4:"25px";s:11:"font-family";s:5:"Arimo";s:6:"google";b:1;s:11:"font-weight";s:3:"400";s:10:"font-style";s:6:"normal";}s:17:"zozo_color_scheme";s:10:"yellow.css";s:15:"zozo_theme_skin";s:5:"light";s:15:"zozo_link_color";a:2:{s:7:"regular";s:0:"";s:5:"hover";s:0:"";}s:20:"zozo_header_bg_image";s:0:"";s:20:"zozo_sticky_bg_image";a:1:{s:16:"background-color";s:7:"#ffffff";}s:32:"zozo_header_top_background_color";s:0:"";s:29:"zozo_sliding_background_color";s:0:"";s:20:"zozo_top_menu_hcolor";a:1:{s:5:"hover";s:0:"";}s:21:"zozo_main_menu_hcolor";a:1:{s:5:"hover";s:0:"";}s:24:"zozo_submenu_show_border";b:1;s:24:"zozo_main_submenu_border";a:6:{s:12:"border-color";s:0:"";s:12:"border-style";s:5:"solid";s:10:"border-top";s:3:"3px";s:12:"border-right";s:3:"0px";s:13:"border-bottom";s:3:"0px";s:11:"border-left";s:3:"0px";}s:21:"zozo_submenu_bg_color";s:7:"#ffffff";s:20:"zozo_sub_menu_hcolor";a:1:{s:5:"hover";s:0:"";}s:22:"zozo_submenu_hbg_color";s:0:"";s:21:"zozo_social_icon_type";s:11:"transparent";s:18:"zozo_facebook_link";s:0:"";s:17:"zozo_twitter_link";s:0:"";s:18:"zozo_linkedin_link";s:0:"";s:19:"zozo_pinterest_link";s:0:"";s:20:"zozo_googleplus_link";s:0:"";s:17:"zozo_youtube_link";s:0:"";s:13:"zozo_rss_link";s:0:"";s:16:"zozo_tumblr_link";s:0:"";s:16:"zozo_reddit_link";s:0:"";s:18:"zozo_dribbble_link";s:0:"";s:14:"zozo_digg_link";s:0:"";s:16:"zozo_flickr_link";s:0:"";s:19:"zozo_instagram_link";s:0:"";s:15:"zozo_vimeo_link";s:0:"";s:15:"zozo_skype_link";s:0:"";s:17:"zozo_blogger_link";s:0:"";s:15:"zozo_yahoo_link";s:0:"";s:24:"zozo_portfolio_prev_next";b:1;s:29:"zozo_portfolio_related_slider";b:1;s:28:"zozo_portfolio_related_title";s:0:"";s:21:"zozo_portfolio_citems";s:0:"";s:28:"zozo_portfolio_citems_scroll";s:0:"";s:22:"zozo_portfolio_ctablet";s:0:"";s:27:"zozo_portfolio_cmobile_land";s:0:"";s:22:"zozo_portfolio_cmobile";s:0:"";s:22:"zozo_portfolio_cmargin";s:2:"20";s:24:"zozo_portfolio_cautoplay";b:1;s:23:"zozo_portfolio_ctimeout";s:4:"5000";s:20:"zozo_portfolio_cloop";b:0;s:26:"zozo_portfolio_cpagination";b:1;s:26:"zozo_portfolio_cnavigation";b:0;s:28:"zozo_disable_blog_pagination";b:0;s:24:"zozo_blog_read_more_text";s:0:"";s:30:"zozo_blog_excerpt_length_large";s:2:"80";s:29:"zozo_blog_excerpt_length_grid";s:2:"40";s:28:"zozo_blog_slideshow_autoplay";b:1;s:27:"zozo_blog_slideshow_timeout";s:4:"5000";s:21:"zozo_blog_date_format";s:5:"d.m.Y";s:26:"zozo_blog_post_meta_author";b:0;s:24:"zozo_blog_post_meta_date";b:0;s:30:"zozo_blog_post_meta_categories";b:0;s:28:"zozo_blog_post_meta_comments";b:0;s:19:"zozo_blog_read_more";b:0;s:24:"zozo_blog_archive_layout";s:7:"one-col";s:22:"zozo_archive_blog_type";s:5:"large";s:30:"zozo_archive_blog_grid_columns";s:3:"two";s:33:"zozo_show_archive_featured_slider";b:0;s:24:"zozo_blog_page_title_bar";b:1;s:15:"zozo_blog_title";s:0:"";s:16:"zozo_blog_slogan";s:0:"";s:16:"zozo_blog_layout";s:7:"one-col";s:14:"zozo_blog_type";s:5:"large";s:22:"zozo_blog_grid_columns";s:3:"two";s:30:"zozo_show_blog_featured_slider";b:0;s:23:"zozo_single_post_layout";s:7:"one-col";s:24:"zozo_blog_social_sharing";b:1;s:21:"zozo_blog_author_info";b:1;s:18:"zozo_blog_comments";b:1;s:23:"zozo_show_related_posts";b:1;s:23:"zozo_related_blog_items";s:1:"3";s:30:"zozo_related_blog_items_scroll";s:1:"1";s:26:"zozo_related_blog_autoplay";b:1;s:25:"zozo_related_blog_timeout";s:4:"5000";s:22:"zozo_related_blog_loop";b:0;s:24:"zozo_related_blog_margin";s:2:"30";s:24:"zozo_related_blog_tablet";s:1:"3";s:27:"zozo_related_blog_landscape";s:1:"2";s:26:"zozo_related_blog_portrait";s:1:"1";s:22:"zozo_related_blog_dots";b:0;s:21:"zozo_related_blog_nav";b:1;s:19:"zozo_blog_prev_next";b:1;s:25:"zozo_single_blog_carousel";b:0;s:23:"zozo_single_blog_citems";s:1:"3";s:30:"zozo_single_blog_citems_scroll";s:1:"1";s:26:"zozo_single_blog_cautoplay";b:1;s:25:"zozo_single_blog_ctimeout";s:4:"5000";s:22:"zozo_single_blog_cloop";b:0;s:24:"zozo_single_blog_cmargin";s:0:"";s:24:"zozo_single_blog_ctablet";s:1:"3";s:28:"zozo_single_blog_cmlandscape";s:1:"2";s:27:"zozo_single_blog_cmportrait";s:1:"1";s:22:"zozo_single_blog_cdots";b:0;s:21:"zozo_single_blog_cnav";b:1;s:25:"zozo_featured_slider_type";s:12:"below_header";s:25:"zozo_featured_posts_limit";s:1:"6";s:27:"zozo_featured_slider_citems";s:1:"3";s:34:"zozo_featured_slider_citems_scroll";s:1:"1";s:30:"zozo_featured_slider_cautoplay";b:1;s:29:"zozo_featured_slider_ctimeout";s:4:"5000";s:26:"zozo_featured_slider_cloop";b:0;s:28:"zozo_featured_slider_cmargin";s:0:"";s:28:"zozo_featured_slider_ctablet";s:1:"3";s:32:"zozo_featured_slider_cmlandscape";s:1:"2";s:31:"zozo_featured_slider_cmportrait";s:1:"1";s:26:"zozo_featured_slider_cdots";b:0;s:25:"zozo_featured_slider_cnav";b:1;s:21:"zozo_search_page_type";s:4:"grid";s:24:"zozo_search_grid_columns";s:3:"two";s:27:"zozo_search_results_content";s:4:"both";s:21:"zozo_sharing_facebook";b:1;s:20:"zozo_sharing_twitter";b:1;s:21:"zozo_sharing_linkedin";b:1;s:23:"zozo_sharing_googleplus";b:1;s:22:"zozo_sharing_pinterest";b:0;s:19:"zozo_sharing_tumblr";b:0;s:19:"zozo_sharing_reddit";b:0;s:17:"zozo_sharing_digg";b:0;s:18:"zozo_sharing_email";b:1;s:28:"zozo_woo_enable_catalog_mode";b:0;s:23:"zozo_woo_archive_layout";s:7:"one-col";s:22:"zozo_woo_single_layout";s:13:"two-col-right";s:27:"zozo_loop_products_per_page";s:2:"12";s:22:"zozo_loop_shop_columns";s:1:"4";s:27:"zozo_related_products_count";s:1:"3";s:22:"zozo_woo_shop_ordering";b:1;s:23:"zozo_woo_social_sharing";b:1;}', 'yes'),
(186, 'zozo_options-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1473178555;}', 'yes'),
(190, '_site_transient_timeout_bsf_get_bundled_products', '1473784648', 'yes'),
(191, '_site_transient_bsf_get_bundled_products', '1', 'yes'),
(196, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1473182097;s:7:"checked";a:4:{s:4:"mist";s:5:"1.0.2";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentyfifteen.1.6.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.8";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentyfourteen.1.8.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentysixteen.1.3.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(197, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1473182094;s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:53:"http://downloads.wordpress.org/plugin/akismet.3.2.zip";s:6:"tested";s:5:"4.6.1";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:27:"js_composer/js_composer.php";O:8:"stdClass":5:{s:4:"slug";s:11:"js_composer";s:11:"new_version";s:4:"4.12";s:3:"url";s:0:"";s:7:"package";b:0;s:4:"name";s:24:"WPBakery Visual Composer";}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(204, '_site_transient_timeout_theme_roots', '1473187638', 'yes'),
(205, '_site_transient_theme_roots', 'a:4:{s:4:"mist";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:4:"home";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', '#page-top'),
(10, 5, '_menu_item_type', 'custom'),
(11, 5, '_menu_item_menu_item_parent', '0'),
(12, 5, '_menu_item_object_id', '5'),
(13, 5, '_menu_item_object', 'custom'),
(14, 5, '_menu_item_target', ''),
(15, 5, '_menu_item_classes', 'a:1:{i:0;s:8:"services";}'),
(16, 5, '_menu_item_xfn', ''),
(17, 5, '_menu_item_url', '#services'),
(18, 6, '_menu_item_type', 'custom'),
(19, 6, '_menu_item_menu_item_parent', '0'),
(20, 6, '_menu_item_object_id', '6'),
(21, 6, '_menu_item_object', 'custom'),
(22, 6, '_menu_item_target', ''),
(23, 6, '_menu_item_classes', 'a:1:{i:0;s:4:"blog";}'),
(24, 6, '_menu_item_xfn', ''),
(25, 6, '_menu_item_url', '#blog'),
(26, 7, '_menu_item_type', 'custom'),
(27, 7, '_menu_item_menu_item_parent', '0'),
(28, 7, '_menu_item_object_id', '7'),
(29, 7, '_menu_item_object', 'custom'),
(30, 7, '_menu_item_target', ''),
(31, 7, '_menu_item_classes', 'a:1:{i:0;s:7:"pricing";}'),
(32, 7, '_menu_item_xfn', ''),
(33, 7, '_menu_item_url', '#pricing'),
(34, 8, '_menu_item_type', 'custom'),
(35, 8, '_menu_item_menu_item_parent', '0'),
(36, 8, '_menu_item_object_id', '8'),
(37, 8, '_menu_item_object', 'custom'),
(38, 8, '_menu_item_target', ''),
(39, 8, '_menu_item_classes', 'a:1:{i:0;s:4:"team";}'),
(40, 8, '_menu_item_xfn', ''),
(41, 8, '_menu_item_url', '#team'),
(42, 9, '_menu_item_type', 'custom'),
(43, 9, '_menu_item_menu_item_parent', '0'),
(44, 9, '_menu_item_object_id', '9'),
(45, 9, '_menu_item_object', 'custom'),
(46, 9, '_menu_item_target', ''),
(47, 9, '_menu_item_classes', 'a:1:{i:0;s:7:"contact";}'),
(48, 9, '_menu_item_xfn', ''),
(49, 9, '_menu_item_url', '#contact'),
(50, 2, '_edit_lock', '1473097075:1'),
(51, 10, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(52, 10, '_edit_last', '1'),
(53, 10, '_edit_lock', '1473098789:1'),
(54, 11, '_wp_attached_file', '2016/09/yarn3.jpg'),
(55, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:904;s:4:"file";s:17:"2016/09/yarn3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"yarn3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"yarn3-300x141.jpg";s:5:"width";i:300;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"yarn3-768x362.jpg";s:5:"width";i:768;s:6:"height";i:362;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"yarn3-1024x482.jpg";s:5:"width";i:1024;s:6:"height";i:482;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post_thumbnail";a:4:{s:4:"file";s:17:"yarn3-600x250.jpg";s:5:"width";i:600;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:16:"post_thumbnail_1";a:4:{s:4:"file";s:15:"yarn3-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(56, 10, '_wp_page_template', 'template-fullwidth.php'),
(57, 10, '_wpb_vc_js_status', 'true'),
(58, 10, '_wp_trash_meta_status', 'publish'),
(59, 10, '_wp_trash_meta_time', '1473099222'),
(60, 10, '_wp_desired_post_slug', 'home'),
(61, 13, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(62, 13, '_edit_last', '1'),
(63, 13, '_edit_lock', '1473185586:1'),
(64, 13, '_wp_page_template', 'template-fullwidth.php'),
(65, 13, 'zozo_page_top_padding', ''),
(66, 13, 'zozo_page_bottom_padding', ''),
(67, 13, 'zozo_slider_position', 'default'),
(68, 13, 'zozo_revolutionslider', ''),
(69, 13, 'zozo_show_header', 'yes'),
(70, 13, 'zozo_show_header_top_bar', 'default'),
(71, 13, 'zozo_show_header_sliding_bar', 'default'),
(72, 13, 'zozo_show_header_mini_cart', 'no'),
(73, 13, 'zozo_header_layout', 'fullwidth'),
(74, 13, 'zozo_header_type', 'default'),
(75, 13, 'zozo_header_toggle_position', 'default'),
(76, 13, 'zozo_header_transparency', 'default'),
(77, 13, 'zozo_header_skin', 'default'),
(78, 13, 'zozo_custom_nav_menu', 'default'),
(79, 13, 'zozo_header_bg_image', ''),
(80, 13, 'zozo_header_bg_color', ''),
(81, 13, 'zozo_header_bg_opacity', '0'),
(82, 13, 'zozo_header_bg_repeat', 'repeat'),
(83, 13, 'zozo_header_bg_attachment', 'scroll'),
(84, 13, 'zozo_header_bg_postion', 'left top'),
(85, 13, 'zozo_header_bg_full', '0'),
(86, 13, 'zozo_show_footer_widgets', 'default'),
(87, 13, 'zozo_show_footer_menu', 'default'),
(88, 13, 'zozo_primary_sidebar', '0'),
(89, 13, 'zozo_secondary_sidebar', '0'),
(90, 13, 'zozo_hide_page_title_bar', 'yes'),
(91, 13, 'zozo_hide_page_title', 'yes'),
(92, 13, 'zozo_page_title_type', 'default'),
(93, 13, 'zozo_page_title_skin', 'default'),
(94, 13, 'zozo_page_title_align', 'default'),
(95, 13, 'zozo_display_breadcrumbs', 'hide'),
(96, 13, 'zozo_show_page_slogan', 'no'),
(97, 13, 'zozo_page_slogan', ''),
(98, 13, 'zozo_page_title_height', ''),
(99, 13, 'zozo_page_title_mobile_height', ''),
(100, 13, 'zozo_page_title_bar_title_color', ''),
(101, 13, 'zozo_page_title_bar_slogan_color', ''),
(102, 13, 'zozo_page_breadcrumbs_color', ''),
(103, 13, 'zozo_page_title_bar_border_color', ''),
(104, 13, 'zozo_page_title_bar_bg', ''),
(105, 13, 'zozo_page_title_bar_bg_color', ''),
(106, 13, 'zozo_page_title_bar_bg_repeat', 'repeat'),
(107, 13, 'zozo_page_title_bar_bg_position', 'left top'),
(108, 13, 'zozo_page_title_bar_bg_parallax', 'no'),
(109, 13, 'zozo_page_title_bar_bg_full', '0'),
(110, 13, 'zozo_page_title_video_bg', '0'),
(111, 13, 'zozo_page_title_video_id', ''),
(112, 13, 'zozo_page_bg_image', ''),
(113, 13, 'zozo_page_bg_repeat', 'repeat'),
(114, 13, 'zozo_page_bg_attachment', 'scroll'),
(115, 13, 'zozo_page_bg_position', 'left top'),
(116, 13, 'zozo_page_bg_color', ''),
(117, 13, 'zozo_page_bg_opacity', '0'),
(118, 13, 'zozo_page_bg_full', '0'),
(119, 13, 'zozo_body_bg_image', ''),
(120, 13, 'zozo_body_bg_repeat', 'repeat'),
(121, 13, 'zozo_body_bg_attachment', 'scroll'),
(122, 13, 'zozo_body_bg_position', 'left top'),
(123, 13, 'zozo_body_bg_color', ''),
(124, 13, 'zozo_body_bg_opacity', '0'),
(125, 13, 'zozo_body_bg_full', '0'),
(126, 13, 'zozo_section_header_status', 'show'),
(127, 13, 'zozo_section_title', ''),
(128, 13, 'zozo_section_slogan', ''),
(129, 13, 'zozo_section_padding_top', ''),
(130, 13, 'zozo_section_padding_bottom', ''),
(131, 13, 'zozo_section_header_padding', ''),
(132, 13, 'zozo_section_title_color', ''),
(133, 13, 'zozo_section_slogan_color', ''),
(134, 13, 'zozo_section_text_color', ''),
(135, 13, 'zozo_section_content_heading_color', ''),
(136, 13, 'zozo_section_bg_color', ''),
(137, 13, 'zozo_parallax_status', 'no'),
(138, 13, 'zozo_parallax_bg_image', ''),
(139, 13, 'zozo_parallax_bg_repeat', ''),
(140, 13, 'zozo_parallax_bg_attachment', ''),
(141, 13, 'zozo_parallax_bg_postion', ''),
(142, 13, 'zozo_parallax_bg_size', ''),
(143, 13, 'zozo_parallax_bg_overlay', 'no'),
(144, 13, 'zozo_overlay_pattern_status', 'no'),
(145, 13, 'zozo_section_overlay_color', ''),
(146, 13, 'zozo_overlay_color_opacity', '0'),
(147, 13, 'zozo_parallax_additional_sections', 'a:1:{i:0;s:2:"-1";}'),
(148, 13, 'zozo_parallax_additional_sections_order', ''),
(149, 13, '_wpb_vc_js_status', 'true'),
(150, 13, 'zozo_theme_layout', 'wide'),
(151, 13, 'zozo_layout', 'one-col');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-09-05 17:14:35', '2016-09-05 17:14:35', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-09-05 17:14:35', '2016-09-05 17:14:35', '', 0, 'http://localhost/sr/?p=1', 0, 'post', '', 1),
(2, 1, '2016-09-05 17:14:35', '2016-09-05 17:14:35', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/sr/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-09-05 17:14:35', '2016-09-05 17:14:35', '', 0, 'http://localhost/sr/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-09-05 17:15:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-09-05 17:15:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/sr/?p=3', 0, 'post', '', 0),
(4, 1, '2016-09-05 17:38:04', '2016-09-05 17:38:04', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-09-05 17:38:04', '2016-09-05 17:38:04', '', 0, 'http://localhost/sr/index.php/2016/09/05/home/', 0, 'nav_menu_item', '', 0),
(5, 1, '2016-09-05 17:38:05', '2016-09-05 17:38:05', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2016-09-05 17:38:05', '2016-09-05 17:38:05', '', 0, 'http://localhost/sr/index.php/2016/09/05/services/', 2, 'nav_menu_item', '', 0),
(6, 1, '2016-09-05 17:38:07', '2016-09-05 17:38:07', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-09-05 17:38:07', '2016-09-05 17:38:07', '', 0, 'http://localhost/sr/index.php/2016/09/05/blog/', 3, 'nav_menu_item', '', 0),
(7, 1, '2016-09-05 17:38:08', '2016-09-05 17:38:08', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2016-09-05 17:38:08', '2016-09-05 17:38:08', '', 0, 'http://localhost/sr/index.php/2016/09/05/pricing/', 4, 'nav_menu_item', '', 0),
(8, 1, '2016-09-05 17:38:09', '2016-09-05 17:38:09', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2016-09-05 17:38:09', '2016-09-05 17:38:09', '', 0, 'http://localhost/sr/index.php/2016/09/05/team/', 5, 'nav_menu_item', '', 0),
(9, 1, '2016-09-05 17:38:10', '2016-09-05 17:38:10', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-09-05 17:38:10', '2016-09-05 17:38:10', '', 0, 'http://localhost/sr/index.php/2016/09/05/contact/', 6, 'nav_menu_item', '', 0),
(10, 1, '2016-09-05 17:47:34', '2016-09-05 17:47:34', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30" el_id="slider" el_class="slider"][vc_column][/vc_column][/vc_row]', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2016-09-05 18:13:42', '2016-09-05 18:13:42', '', 0, 'http://localhost/sr/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-09-05 17:46:17', '2016-09-05 17:46:17', '', 'yarn3', '', 'inherit', 'open', 'closed', '', 'yarn3', '', '', '2016-09-05 17:46:17', '2016-09-05 17:46:17', '', 10, 'http://localhost/sr/wp-content/uploads/2016/09/yarn3.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2016-09-05 17:47:34', '2016-09-05 17:47:34', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30" el_id="slider" el_class="slider"][vc_column][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-09-05 17:47:34', '2016-09-05 17:47:34', '', 10, 'http://localhost/sr/index.php/2016/09/05/10-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-09-06 17:01:34', '2016-09-06 17:01:34', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row][vc_row][vc_column][zozo_vc_section_title classes="title" css_animation="appear" text_align="center" title="ABOUT SR ENTERPRISES" title_type="h3" title_margin="20px 0px 20px 0px" content_size="18px" content_color="#666666"]\r\n<p class="text-center" style="text-align: center;"><b>SR Enterprises</b> range has been enriched by several highly innovative products designed especially for the requirements of dyeing units.</p>\r\n<p class="text-center" style="text-align: center;">SR Enterprises is dedicated to bring integrity and trust back to the design and technical industry. We strive to make every part of your experience working with us as simple and professional as possible. We demonstrate our commitment daily by providing a superior quality service that our customers can expect and depend on.</p>\r\n[/zozo_vc_section_title][/vc_column][/vc_row]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-09-06 18:13:02', '2016-09-06 18:13:02', '', 0, 'http://localhost/sr/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-09-06 17:01:34', '2016-09-06 17:01:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-06 17:01:34', '2016-09-06 17:01:34', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-09-06 18:05:37', '2016-09-06 18:05:37', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row][vc_row][vc_column][zozo_vc_section_title][/zozo_vc_section_title][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2016-09-06 18:05:37', '2016-09-06 18:05:37', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2016-09-06 17:06:24', '2016-09-06 17:06:24', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-06 17:06:24', '2016-09-06 17:06:24', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-09-06 17:24:48', '2016-09-06 17:24:48', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space][zozo_vc_section_title classes="title" css_animation="appear" text_align="center" title="ABOUT SR ENTERPRISES" title_type="h3" title_transform="uppercase" title_margin="25px 0px 25px 0px" content_size="18px" content_color="#666666"]\r\n<p style="text-align: center;"></p>\r\n<p class="text-center" style="text-align: center;"><b>SR Enterprises</b> range has been enriched by several highly innovative products designed especially for the requirements of dyeing units.</p>\r\n<p class="text-center" style="text-align: center;">SR Enterprises is dedicated to bring integrity and trust back to the design and technical industry. We strive to make every part of your experience working with us as simple and professional as possible. We demonstrate our commitment daily by providing a superior quality service that our customers can expect and depend on.</p>\r\n[/zozo_vc_section_title][vc_empty_space][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-06 17:24:48', '2016-09-06 17:24:48', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-09-06 17:38:53', '2016-09-06 17:38:53', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space][zozo_vc_section_title classes="title" css_animation="appear" text_align="center" title="ABOUT SR ENTERPRISES" title_type="h3" title_transform="uppercase" title_margin="20px 0px 20px 0px" content_size="18px" content_color="#666666" content_margin="30px 0px 15px 0px"]\r\n<p class="text-center" style="text-align: center;"><b>SR Enterprises</b> range has been enriched by several highly innovative products designed especially for the requirements of dyeing units.</p>\r\n<p class="text-center" style="text-align: center;">SR Enterprises is dedicated to bring integrity and trust back to the design and technical industry. We strive to make every part of your experience working with us as simple and professional as possible. We demonstrate our commitment daily by providing a superior quality service that our customers can expect and depend on.</p>\r\n[/zozo_vc_section_title][vc_empty_space][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space][vc_row_inner][vc_column_inner width="1/3"][zozo_vc_service_box classes="services" css_animation="bottom-to-top" box_style="rounded" type="fontawesome" icon_fontawesome="fa fa-check" ribbon_text="QUALITY PRODUCT" title="QUALITY PRODUCT" icon_color="#2ecc71" title_color="#333333" ribbon_font_color="#2ecc71"]At SR, quality means responding effectively to customer needs. This involves an aptitude for innovation and the capacity for researching and designing the product: characteristics which fully correspond with the strong points of our company.The in-works machine shop, guided by highly qualified personnel and equipped with top grade machinery, guarantees our maximum flexibility in producing new moulds.[/zozo_vc_service_box][/vc_column_inner][vc_column_inner width="1/3"][zozo_vc_service_box classes="services" css_animation="bottom-to-top" box_style="rounded" type="fontawesome" icon_fontawesome="fa fa-check" ribbon_text="QUALITY PRODUCT" title="QUALITY PRODUCT" icon_color="#2ecc71" title_color="#333333" ribbon_font_color="#2ecc71"]At SR, quality means responding effectively to customer needs. This involves an aptitude for innovation and the capacity for researching and designing the product: characteristics which fully correspond with the strong points of our company.The in-works machine shop, guided by highly qualified personnel and equipped with top grade machinery, guarantees our maximum flexibility in producing new moulds.[/zozo_vc_service_box][/vc_column_inner][vc_column_inner width="1/3"][zozo_vc_service_box classes="services" css_animation="bottom-to-top" box_style="rounded" type="fontawesome" icon_fontawesome="fa fa-check" ribbon_text="QUALITY PRODUCT" title="QUALITY PRODUCT" icon_color="#2ecc71" title_color="#333333" ribbon_font_color="#2ecc71"]At SR, quality means responding effectively to customer needs. This involves an aptitude for innovation and the capacity for researching and designing the product: characteristics which fully correspond with the strong points of our company.The in-works machine shop, guided by highly qualified personnel and equipped with top grade machinery, guarantees our maximum flexibility in producing new moulds.[/zozo_vc_service_box][/vc_column_inner][/vc_row_inner][vc_empty_space][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-06 17:38:53', '2016-09-06 17:38:53', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-09-06 17:41:40', '2016-09-06 17:41:40', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space][zozo_vc_section_title classes="title" css_animation="appear" text_align="center" title="ABOUT SR ENTERPRISES" title_type="h3" title_transform="uppercase" title_margin="20px 0px 20px 0px" content_size="18px" content_color="#666666" content_margin="30px 0px 15px 0px"]\r\n<p class="text-center" style="text-align: center;"><b>SR Enterprises</b> range has been enriched by several highly innovative products designed especially for the requirements of dyeing units.</p>\r\n<p class="text-center" style="text-align: center;">SR Enterprises is dedicated to bring integrity and trust back to the design and technical industry. We strive to make every part of your experience working with us as simple and professional as possible. We demonstrate our commitment daily by providing a superior quality service that our customers can expect and depend on.</p>\r\n[/zozo_vc_section_title][vc_empty_space][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space][vc_row_inner][vc_column_inner][zozo_vc_service_box classes="services" css_animation="bottom-to-top" box_style="rounded" type="fontawesome" icon_fontawesome="fa fa-check" title="QUALITY PRODUCT" icon_color="#2ecc71" title_color="#333333" ribbon_font_color="#2ecc71"]At SR, quality means responding effectively to customer needs. This involves an aptitude for innovation and the capacity for researching and designing the product: characteristics which fully correspond with the strong points of our company.The in-works machine shop, guided by highly qualified personnel and equipped with top grade machinery, guarantees our maximum flexibility in producing new moulds.[/zozo_vc_service_box][/vc_column_inner][/vc_row_inner][vc_empty_space][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-06 17:41:40', '2016-09-06 17:41:40', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-09-06 17:43:18', '2016-09-06 17:43:18', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space][zozo_vc_section_title classes="title" css_animation="appear" text_align="center" title="ABOUT SR ENTERPRISES" title_type="h3" title_transform="uppercase" title_margin="20px 0px 20px 0px" content_size="18px" content_color="#666666" content_margin="30px 0px 15px 0px"]\r\n<p class="text-center" style="text-align: center;"><b>SR Enterprises</b> range has been enriched by several highly innovative products designed especially for the requirements of dyeing units.</p>\r\n<p class="text-center" style="text-align: center;">SR Enterprises is dedicated to bring integrity and trust back to the design and technical industry. We strive to make every part of your experience working with us as simple and professional as possible. We demonstrate our commitment daily by providing a superior quality service that our customers can expect and depend on.</p>\r\n[/zozo_vc_section_title][vc_empty_space][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space][vc_row_inner][vc_column_inner][/vc_column_inner][/vc_row_inner][vc_empty_space][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-06 17:43:18', '2016-09-06 17:43:18', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-09-06 18:02:18', '2016-09-06 18:02:18', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space][zozo_vc_section_title classes="title" css_animation="appear" text_align="center" title="ABOUT SR ENTERPRISES" title_type="h3" title_transform="uppercase" title_margin="20px 0px 20px 0px" content_size="18px" content_color="#666666" content_margin="30px 0px 15px 0px"]\r\n<p class="text-center" style="text-align: center;"><b>SR Enterprises</b> range has been enriched by several highly innovative products designed especially for the requirements of dyeing units.</p>\r\n<p class="text-center" style="text-align: center;">SR Enterprises is dedicated to bring integrity and trust back to the design and technical industry. We strive to make every part of your experience working with us as simple and professional as possible. We demonstrate our commitment daily by providing a superior quality service that our customers can expect and depend on.</p>\r\n[/zozo_vc_section_title][vc_empty_space][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-06 18:02:18', '2016-09-06 18:02:18', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-09-06 18:06:56', '2016-09-06 18:06:56', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row][vc_row][vc_column][zozo_vc_section_title classes="title" css_animation="appear" text_align="center" title="ABOUT SR ENTERPRISES" title_type="h3" title_margin="20px 0px 20px 0px" content_size="18px" content_color="#666666" content_margin="20px 0px 20px 0px"]\r\n<p class="text-center"><b>SR Enterprises</b> range has been enriched by several highly innovative products designed especially for the requirements of dyeing units.</p>\r\n<p class="text-center">SR Enterprises is dedicated to bring integrity and trust back to the design and technical industry. We strive to make every part of your experience working with us as simple and professional as possible. We demonstrate our commitment daily by providing a superior quality service that our customers can expect and depend on.</p>\r\n[/zozo_vc_section_title][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-06 18:06:56', '2016-09-06 18:06:56', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-09-06 18:08:28', '2016-09-06 18:08:28', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row][vc_row][vc_column][zozo_vc_section_title classes="title" css_animation="appear" text_align="center" title="ABOUT SR ENTERPRISES" title_type="h3" title_margin="20px 0px 20px 0px" content_size="18px" content_color="#666666" content_margin="20px 0px 20px 0px"]\r\n<p class="text-center" style="text-align: center;"><b>SR Enterprises</b> range has been enriched by several highly innovative products designed especially for the requirements of dyeing units.</p>\r\n<p class="text-center" style="text-align: center;">SR Enterprises is dedicated to bring integrity and trust back to the design and technical industry. We strive to make every part of your experience working with us as simple and professional as possible. We demonstrate our commitment daily by providing a superior quality service that our customers can expect and depend on.</p>\r\n[/zozo_vc_section_title][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-06 18:08:28', '2016-09-06 18:08:28', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-09-06 18:13:02', '2016-09-06 18:13:02', '[vc_row full_width="stretch_row" full_height="yes" equal_height="yes" parallax="content-moving-fade" parallax_image="11" bg_style="bg-normal" typo_style="light" css_animation="appear" parallax_content="parallax_content_value" parallax_content_sense="30" fadeout_row="fadeout_row_value" fadeout_start_effect="30"][vc_column][/vc_column][/vc_row][vc_row][vc_column][zozo_vc_section_title classes="title" css_animation="appear" text_align="center" title="ABOUT SR ENTERPRISES" title_type="h3" title_margin="20px 0px 20px 0px" content_size="18px" content_color="#666666"]\r\n<p class="text-center" style="text-align: center;"><b>SR Enterprises</b> range has been enriched by several highly innovative products designed especially for the requirements of dyeing units.</p>\r\n<p class="text-center" style="text-align: center;">SR Enterprises is dedicated to bring integrity and trust back to the design and technical industry. We strive to make every part of your experience working with us as simple and professional as possible. We demonstrate our commitment daily by providing a superior quality service that our customers can expect and depend on.</p>\r\n[/zozo_vc_section_title][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-06 18:13:02', '2016-09-06 18:13:02', '', 13, 'http://localhost/sr/index.php/2016/09/06/13-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'OnePage Theme Front Page Menu', 'onepage-theme-front-page-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'samnishanth01'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"9720bcaa9b1917e03d28b50a4882afd65b53d7493c7a5c60b6bc5cadc95a44ae";a:4:{s:10:"expiration";i:1473268521;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1473095721;}s:64:"ec35ef8b46b6599925c4cddd1424af521d756ff93569e6702bc2a53d570c0eb3";a:4:{s:10:"expiration";i:1473351320;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1473178520;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=674px&edit_element_vcUIPanelTop=74px'),
(17, 1, 'wp_user-settings-time', '1473182688');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'samnishanth01', '$P$BwmGKq83UF88SnYjcqGZIP01KpZImn.', 'samnishanth01', 'samnishanth01@gmail.com', '', '2016-09-05 17:14:33', '', 0, 'samnishanth01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
