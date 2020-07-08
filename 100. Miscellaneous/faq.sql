-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 07, 2020 at 09:30 PM
-- Server version: 8.0.17
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vb5_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `faqname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `faqparent` varchar(50) NOT NULL DEFAULT '',
  `displayorder` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `volatile` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `product` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`faqname`),
  KEY `faqparent` (`faqparent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faqname`, `faqparent`, `displayorder`, `volatile`, `product`) VALUES
('community_overview', 'faqroot', 10, 1, 'vbulletin'),
('account_overview', 'faqroot', 20, 1, 'vbulletin'),
('content_overview', 'faqroot', 30, 1, 'vbulletin'),
('blog_overview', 'faqroot', 40, 1, 'vbulletin'),
('group_overview', 'faqroot', 50, 1, 'vbulletin'),
('albums_overview', 'faqroot', 60, 1, 'vbulletin'),
('bbcode_reference', 'faqroot', 80, 1, 'vbulletin'),
('general_forums_topics_posts', 'community_overview', 1, 1, 'vbulletin'),
('general_registration', 'community_overview', 2, 1, 'vbulletin'),
('general_loginlogoff', 'community_overview', 3, 1, 'vbulletin'),
('general_lostpassword', 'community_overview', 5, 1, 'vbulletin'),
('general_facebook_connect', 'community_overview', 6, 1, 'vbulletin'),
('general_search', 'community_overview', 8, 1, 'vbulletin'),
('general_new_content', 'community_overview', 9, 1, 'vbulletin'),
('general_cookies_usage', 'community_overview', 10, 1, 'vbulletin'),
('general_cookies_clear', 'community_overview', 11, 1, 'vbulletin'),
('general_tos', 'community_overview', 12, 1, 'vbulletin'),
('account_settings', 'account_overview', 1, 1, 'vbulletin'),
('account_avatar', 'account_overview', 2, 1, 'vbulletin'),
('account_customizeprofile', 'account_overview', 3, 1, 'vbulletin'),
('account_resetprofile', 'account_overview', 4, 1, 'vbulletin'),
('account_signature_new', 'account_overview', 5, 1, 'vbulletin'),
('account_signatureimage', 'account_overview', 6, 1, 'vbulletin'),
('account_privacy', 'account_overview', 7, 1, 'vbulletin'),
('account_notifications', 'account_overview', 8, 1, 'vbulletin'),
('account_subscribers', 'account_overview', 9, 1, 'vbulletin'),
('account_ignore', 'account_overview', 10, 1, 'vbulletin'),
('account_privatemessages', 'account_overview', 11, 1, 'vbulletin'),
('account_visitormessages', 'account_overview', 12, 1, 'vbulletin'),
('account_reputation', 'account_overview', 13, 1, 'vbulletin'),
('content_topics', 'content_overview', 1, 1, 'vbulletin'),
('content_photos', 'content_overview', 2, 1, 'vbulletin'),
('content_links', 'content_overview', 3, 1, 'vbulletin'),
('content_polls', 'content_overview', 4, 1, 'vbulletin'),
('content_advanced', 'content_overview', 5, 1, 'vbulletin'),
('content_messages', 'content_overview', 6, 1, 'vbulletin'),
('content_attachments', 'content_overview', 7, 1, 'vbulletin'),
('content_flag', 'content_overview', 8, 1, 'vbulletin'),
('content_subscriptions', 'content_overview', 9, 1, 'vbulletin'),
('blog_create', 'blog_overview', 1, 1, 'vbulletin'),
('blog_owners', 'blog_overview', 2, 1, 'vbulletin'),
('blog_members', 'blog_overview', 3, 1, 'vbulletin'),
('blog_manage_privacy', 'blog_overview', 4, 1, 'vbulletin'),
('group_create_new', 'group_overview', 1, 1, 'vbulletin'),
('group_add_owner', 'group_overview', 2, 1, 'vbulletin'),
('group_manage_members', 'group_overview', 4, 1, 'vbulletin'),
('group_share', 'group_overview', 5, 1, 'vbulletin'),
('albums_create_new', 'albums_overview', 1, 1, 'vbulletin'),
('albums_add_photos', 'albums_overview', 2, 1, 'vbulletin'),
('albums_create_video', 'albums_overview', 3, 1, 'vbulletin'),
('albums_posted_photos', 'albums_overview', 4, 1, 'vbulletin'),
('albums_reuse_photo', 'albums_overview', 5, 1, 'vbulletin'),
('albums_delete_album', 'albums_overview', 5, 1, 'vbulletin'),
('bbcode_why', 'bbcode_reference', 1, 1, 'vbulletin'),
('bbcode_basic', 'bbcode_reference', 2, 1, 'vbulletin'),
('bbcode_links', 'bbcode_reference', 3, 1, 'vbulletin'),
('bbcode_quotes', 'bbcode_reference', 4, 1, 'vbulletin'),
('bbcode_media', 'bbcode_reference', 5, 1, 'vbulletin'),
('bbcode_smilies', 'bbcode_reference', 6, 1, 'vbulletin'),
('bbcode_lists', 'bbcode_reference', 7, 1, 'vbulletin'),
('bbcode_tables', 'bbcode_reference', 8, 1, 'vbulletin'),
('bbcode_code', 'bbcode_reference', 9, 1, 'vbulletin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
