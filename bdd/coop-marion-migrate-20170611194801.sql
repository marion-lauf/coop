# WordPress MySQL database migration
#
# Generated: Sunday 11. June 2017 19:48 UTC
# Hostname: localhost
# Database: `coop-marion`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_marion_commentmeta`
#

DROP TABLE IF EXISTS `wp_marion_commentmeta`;


#
# Table structure of table `wp_marion_commentmeta`
#

CREATE TABLE `wp_marion_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_commentmeta`
#

#
# End of data contents of table `wp_marion_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_comments`
#

DROP TABLE IF EXISTS `wp_marion_comments`;


#
# Table structure of table `wp_marion_comments`
#

CREATE TABLE `wp_marion_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_comments`
#
INSERT INTO `wp_marion_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-06-07 13:42:02', '2017-06-07 11:42:02', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_marion_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_links`
#

DROP TABLE IF EXISTS `wp_marion_links`;


#
# Table structure of table `wp_marion_links`
#

CREATE TABLE `wp_marion_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_links`
#

#
# End of data contents of table `wp_marion_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_options`
#

DROP TABLE IF EXISTS `wp_marion_options`;


#
# Table structure of table `wp_marion_options`
#

CREATE TABLE `wp_marion_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_options`
#
INSERT INTO `wp_marion_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/coop-marion', 'yes'),
(2, 'home', 'http://localhost/coop-marion', 'yes'),
(3, 'blogname', 'Coop', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marion.lauf@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=16&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:25:"fakerpress/fakerpress.php";i:1;s:17:"weglot/weglot.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'FoundationPress-master', 'yes'),
(41, 'stylesheet', 'FoundationPress-master', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:3;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:17:"weglot/weglot.php";a:2:{i:0;s:6:"Weglot";i:1;s:16:"plugin_uninstall";}}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '16', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_marion_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:3;a:3:{s:5:"title";s:0:"";s:6:"number";i:4;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-widgets";a:3:{i:0;s:14:"recent-posts-3";i:1;s:8:"search-3";i:2;s:12:"categories-3";}s:14:"footer-widgets";a:0:{}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `wp_marion_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:4:{i:1497224523;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1497267755;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1497276948;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1496835760;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(120, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'FoundationPress', 'yes'),
(139, 'theme_mods_FoundationPress-master', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:9:"top-bar-r";i:2;}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(142, 'widget_sponsors_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(161, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(188, 'category_children', 'a:0:{}', 'yes'),
(205, 'with_flags', '', 'yes'),
(206, 'with_name', 'on', 'yes'),
(207, 'is_dropdown', 'on', 'yes'),
(208, 'is_fullname', 'on', 'yes'),
(209, 'override_css', '', 'yes'),
(210, 'is_menu', '', 'yes'),
(211, 'wg_allowed', '1', 'yes'),
(212, 'widget_weglotwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(213, 'project_key', 'wg_bfbfd1d5fa1b3dc24ec3256ff1808f47', 'yes'),
(214, 'original_l', 'fr', 'yes'),
(215, 'destination_l', 'en', 'yes'),
(216, 'wg_auto_switch', '', 'yes'),
(217, 'flag_css', '', 'yes'),
(218, 'type_flags', '0', 'yes'),
(219, 'exclude_url', '', 'yes'),
(220, 'exclude_blocks', '', 'yes'),
(221, 'rtl_ltr_style', '', 'yes'),
(224, 'show_box', 'off', 'yes') ;

#
# End of data contents of table `wp_marion_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_postmeta`
#

DROP TABLE IF EXISTS `wp_marion_postmeta`;


#
# Table structure of table `wp_marion_postmeta`
#

CREATE TABLE `wp_marion_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_postmeta`
#
INSERT INTO `wp_marion_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, 'fakerpress_flag', '1'),
(6, 6, 'fakerpress_flag', '1'),
(23, 12, 'fakerpress_flag', '1'),
(33, 16, 'fakerpress_flag', '1'),
(41, 4, '_edit_lock', '1496926480:1'),
(42, 4, '_edit_last', '1'),
(43, 4, '_wp_page_template', 'page-templates/contact.php'),
(44, 1, '_edit_lock', '1497198595:1'),
(45, 6, '_edit_lock', '1496924998:1'),
(46, 1, '_edit_last', '1'),
(48, 2, '_edit_lock', '1496926399:1'),
(49, 2, '_edit_last', '1'),
(50, 22, '_menu_item_type', 'post_type'),
(51, 22, '_menu_item_menu_item_parent', '0'),
(52, 22, '_menu_item_object_id', '2'),
(53, 22, '_menu_item_object', 'page'),
(54, 22, '_menu_item_target', ''),
(55, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 22, '_menu_item_xfn', ''),
(57, 22, '_menu_item_url', ''),
(59, 23, '_menu_item_type', 'post_type'),
(60, 23, '_menu_item_menu_item_parent', '0'),
(61, 23, '_menu_item_object_id', '4'),
(62, 23, '_menu_item_object', 'page'),
(63, 23, '_menu_item_target', ''),
(64, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 23, '_menu_item_xfn', ''),
(66, 23, '_menu_item_url', ''),
(68, 16, '_edit_lock', '1496926415:1'),
(69, 16, '_edit_last', '1'),
(70, 16, '_wp_page_template', 'page-templates/page-accueil.php'),
(71, 25, '_menu_item_type', 'post_type'),
(72, 25, '_menu_item_menu_item_parent', '0'),
(73, 25, '_menu_item_object_id', '16'),
(74, 25, '_menu_item_object', 'page'),
(75, 25, '_menu_item_target', ''),
(76, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 25, '_menu_item_xfn', ''),
(78, 25, '_menu_item_url', ''),
(80, 6, '_wp_trash_meta_status', 'publish'),
(81, 6, '_wp_trash_meta_time', '1496926484'),
(82, 6, '_wp_desired_post_slug', 'consequatur-quaerat-vel-pariatur-ullam-labore-et'),
(83, 12, '_wp_trash_meta_status', 'publish'),
(84, 12, '_wp_trash_meta_time', '1496926485'),
(85, 12, '_wp_desired_post_slug', 'nihil-animi-deleniti-ea-a-officiis-adipisci'),
(88, 31, '_edit_last', '1'),
(90, 31, '_edit_lock', '1497201015:1'),
(91, 33, '_edit_last', '1'),
(92, 33, '_edit_lock', '1497101078:1'),
(94, 35, '_edit_last', '1'),
(95, 35, '_edit_lock', '1497201364:1'),
(114, 31, '_thumbnail_id', '47'),
(118, 35, '_thumbnail_id', '81'),
(131, 47, '_wp_attached_file', '2017/06/648x415.jpg'),
(132, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:648;s:6:"height";i:415;s:4:"file";s:19:"2017/06/648x415.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"648x415-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"648x415-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:19:"648x415-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:19:"648x415-648x400.jpg";s:5:"width";i:648;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:19:"648x415-648x400.jpg";s:5:"width";i:648;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:19:"648x415-648x400.jpg";s:5:"width";i:648;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:19:"648x415-640x410.jpg";s:5:"width";i:640;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(137, 49, '_wp_attached_file', '2017/06/648x415.1.jpg'),
(138, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:648;s:6:"height";i:415;s:4:"file";s:21:"2017/06/648x415.1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"648x415.1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"648x415.1-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:21:"648x415.1-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:21:"648x415.1-648x400.jpg";s:5:"width";i:648;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:21:"648x415.1-648x400.jpg";s:5:"width";i:648;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:21:"648x415.1-648x400.jpg";s:5:"width";i:648;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:21:"648x415.1-640x410.jpg";s:5:"width";i:640;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(139, 50, '_wp_attached_file', '2017/06/Sans-titre-2.jpg'),
(140, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:883;s:6:"height";i:584;s:4:"file";s:24:"2017/06/Sans-titre-2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Sans-titre-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Sans-titre-2-300x198.jpg";s:5:"width";i:300;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Sans-titre-2-768x508.jpg";s:5:"width";i:768;s:6:"height";i:508;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:24:"Sans-titre-2-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:24:"Sans-titre-2-883x400.jpg";s:5:"width";i:883;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:24:"Sans-titre-2-883x400.jpg";s:5:"width";i:883;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:24:"Sans-titre-2-883x400.jpg";s:5:"width";i:883;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:24:"Sans-titre-2-640x423.jpg";s:5:"width";i:640;s:6:"height";i:423;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(141, 1, '_thumbnail_id', '50'),
(149, 58, '_edit_last', '1'),
(150, 58, '_edit_lock', '1497193899:1'),
(152, 60, '_wp_attached_file', '2017/06/la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119.jpg'),
(153, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:670;s:6:"height";i:474;s:4:"file";s:110:"2017/06/la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:110:"la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:110:"la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:110:"la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:110:"la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119-670x400.jpg";s:5:"width";i:670;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:110:"la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119-670x400.jpg";s:5:"width";i:670;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:110:"la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119-670x400.jpg";s:5:"width";i:670;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:110:"la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119-640x453.jpg";s:5:"width";i:640;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(154, 58, '_thumbnail_id', '60'),
(156, 33, '_wp_trash_meta_status', 'publish'),
(157, 33, '_wp_trash_meta_time', '1497194054'),
(158, 33, '_wp_desired_post_slug', 'resultats-devoiles'),
(161, 63, '_edit_last', '1'),
(162, 63, '_edit_lock', '1497207829:1'),
(163, 64, '_wp_attached_file', '2017/06/ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875.jpg'),
(164, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:875;s:4:"file";s:67:"2017/06/ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:67:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:67:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-300x205.jpg";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:67:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-768x525.jpg";s:5:"width";i:768;s:6:"height";i:525;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:68:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-1024x700.jpg";s:5:"width";i:1024;s:6:"height";i:700;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:67:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:68:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:68:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:68:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:67:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-640x438.jpg";s:5:"width";i:640;s:6:"height";i:438;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:68:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-1024x700.jpg";s:5:"width";i:1024;s:6:"height";i:700;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:68:"ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875-1200x820.jpg";s:5:"width";i:1200;s:6:"height";i:820;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(165, 63, '_thumbnail_id', '64'),
(177, 76, '_edit_last', '1'),
(178, 76, '_edit_lock', '1497201259:1'),
(180, 78, '_wp_attached_file', '2017/06/Coop_plan_ac.jpg'),
(181, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1366;s:4:"file";s:24:"2017/06/Coop_plan_ac.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Coop_plan_ac-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Coop_plan_ac-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Coop_plan_ac-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"Coop_plan_ac-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:24:"Coop_plan_ac-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:25:"Coop_plan_ac-1280x400.jpg";s:5:"width";i:1280;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:25:"Coop_plan_ac-1440x400.jpg";s:5:"width";i:1440;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:25:"Coop_plan_ac-1920x400.jpg";s:5:"width";i:1920;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:24:"Coop_plan_ac-640x427.jpg";s:5:"width";i:640;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-medium";a:4:{s:4:"file";s:25:"Coop_plan_ac-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-large";a:4:{s:4:"file";s:25:"Coop_plan_ac-1200x800.jpg";s:5:"width";i:1200;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}s:9:"fp-xlarge";a:4:{s:4:"file";s:26:"Coop_plan_ac-1920x1281.jpg";s:5:"width";i:1920;s:6:"height";i:1281;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(182, 76, '_thumbnail_id', '78'),
(186, 81, '_wp_attached_file', '2017/06/marion.jpg'),
(187, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:843;s:6:"height";i:522;s:4:"file";s:18:"2017/06/marion.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"marion-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"marion-300x186.jpg";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"marion-768x476.jpg";s:5:"width";i:768;s:6:"height";i:476;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:18:"marion-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:18:"marion-843x400.jpg";s:5:"width";i:843;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:18:"marion-843x400.jpg";s:5:"width";i:843;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:18:"marion-843x400.jpg";s:5:"width";i:843;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fp-small";a:4:{s:4:"file";s:18:"marion-640x396.jpg";s:5:"width";i:640;s:6:"height";i:396;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}') ;

#
# End of data contents of table `wp_marion_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_posts`
#

DROP TABLE IF EXISTS `wp_marion_posts`;


#
# Table structure of table `wp_marion_posts`
#

CREATE TABLE `wp_marion_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_posts`
#
INSERT INTO `wp_marion_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-06-07 13:42:02', '2017-06-07 11:42:02', 'La SPL Deux-Rives vient de publier ses premiers marchés de travaux lançant ainsi officiellement la réhabilitation de l’ancien siège de la COOP Alsace situé au Port du Rhin.\r\n\r\nCes premiers marchés concernent le désamiantage de l’ancienne cave à vins et du bâtiment dit de l’Union Sociale qui sont les deux plus grands bâtiments du site, représentant à eux deux une surface de plancher de près de 20 000m2.\r\n\r\nCes travaux consisteront au retrait de certains matériaux inertes contenant de l’amiante comme la colle contenue dans les sols souples, les joints des chaudières ou les garnitures présentes dans les freins des ascenseurs. Dans le même temps, une partie des auvents de ces deux bâtiments seront déconstruits pour permettre la suite des travaux de réaménagement du site.\r\n\r\nL’installation du chantier est prévue pour le mois d’août 2017 avec la mise en place des confinements nécessaires au retrait de ces matériaux. Les travaux s’étendront ensuite de la mi-septembre au mois de janvier 2018. Dans la foulée de cette phase initiale, les travaux de rénovation et de réaménagement commenceront pour une durée de près de deux ans.\r\n\r\nA terme, au sein de notre programme d’équipement culturel multisites de la COOP, l’ancienne cave à vins abritera des espaces polyvalents permettant l’accueil d’événements culturels et économiques et l’ancien bâtiment de stockage de l’Union Sociale retrouvera une nouvelle vie en devenant le nouveau pôle d’études et de conservation des musées de Strasbourg.', 'Les premiers travaux sont lancés !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2017-06-10 16:01:35', '2017-06-10 14:01:35', '', 0, 'http://localhost/coop-marion/?p=1', 0, 'post', '', 1),
(2, 1, '2017-06-07 13:42:02', '2017-06-07 11:42:02', '', 'Le Blog', '', 'publish', 'closed', 'open', '', 'blog', '', '', '2017-06-08 14:55:41', '2017-06-08 12:55:41', '', 0, 'http://localhost/coop-marion/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-06-07 13:42:13', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-07 13:42:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/coop-marion/?p=3', 0, 'post', '', 0),
(4, 1, '2017-06-06 21:01:00', '2017-06-06 19:01:00', '<h5></h5>', 'Contact', '', 'publish', 'open', 'closed', '', 'contact', '', '', '2017-06-08 14:55:19', '2017-06-08 12:55:19', '', 0, 'http://localhost/coop-marion/atque-est-officiis-voluptatem-id-non-sunt/', 0, 'page', '', 0),
(6, 1, '2017-06-06 08:49:10', '2017-06-06 06:49:10', '<h2>Alias aliquid est fuga eos dolores quas ut. Quia alias quo animi quos et. Deleniti ab dignissimos aperiam est in aliquid qui cumque</h2>\n<ul><li>Ab maxime est consequuntur id</li><li>Dolorum quos eum a voluptas illo</li><li>Veritatis ut eligendi fugiat eos fugit</li><li>Excepturi iusto ea occaecati</li></ul>\n<blockquote>Voluptas est velit occaecati consequuntur consequatur. <a title="Et dolore maiores sint eius." href="https://www.abernathy.net/saepe-vitae-ut-placeat-cupiditate-recusandae-qui">laudantium praesentium amet</a> aut aut ut. Sunt vitae nulla saepe. <a title="Ipsam unde magnam qui." href="http://www.hegmann.com/deleniti-sint-et-voluptas-sed-quae-occaecati.html"><a title="Et ipsa corrupti quidem fugiat cum nihil." href="http://www.boehm.com/quod-praesentium-eligendi-explicabo-nesciunt-aspernatur-quia">corporis sit dignissimos</a></a> quaerat. Aut <a title="Qui ut a porro quisquam est." href="https://www.fahey.biz/veritatis-eos-repudiandae-magnam-saepe">fuga possimus numquam. Expedita</a> ut et sint. Doloribus magnam ipsam. <a title="Ex similique eius sequi." href="http://www.bauch.org/nam-inventore-perferendis-veniam-optio-numquam-voluptatem-quasi.html">omnis porro</a> <a title="Qui dignissimos odio laborum." href="http://www.bradtke.biz/vitae-in-ipsa-suscipit-quos-autem-molestiae">et. Enim</a> debitis recusandae Dolorum earum <a title="Id qui at." href="http://moen.com/provident-excepturi-facilis-vel-rerum-est">non officiis</a> Vel omnis quis aut doloremque exercitationem non. Aut alias repudiandae explicabo nisi facere nesciunt. Similique possimus soluta eum repellendus consequatur hic Perferendis quaerat labore delectus molestiae qui perspiciatis.</blockquote>\n<hr>\n<h6>Beatae sapiente saepe ut consequatur ipsum eum facere. Odio tempore expedita et fugiat sunt repellendus</h6>\n<hr>\n<!--more-->\n<h3>Consectetur omnis quis id. Ea at ex est. Commodi iste cum id odit sit laborum tempore</h3>\n<hr>\n<blockquote>Architecto corrupti odit et et. Neque voluptatem voluptatem aut voluptatem voluptate et nam. Rerum voluptates nesciunt est et libero.</blockquote>\n<h5>Esse consequatur nisi quia aperiam dolore consequatur doloribus fugiat. Quis aliquam doloribus sed in</h5>\n<ol><li>Maiores</li><li>Et nobis</li><li>Aut qui unde a cumque</li></ol>\n<blockquote>Sit in mollitia ullam quis id eum. Quod sit et dolore vitae. Voluptas aut officia sed debitis ex. Et provident repudiandae delectus quis eius impedit. Quasi eveniet error est aut a eos provident. Non laboriosam quae quia nihil laudantium. Molestias ipsum dolore accusantium pariatur et ducimus deserunt. Natus tempora et culpa sequi eligendi autem ut. Fuga consequatur ipsum dolor fuga exercitationem. Tempore saepe aperiam doloribus eum fugiat recusandae voluptate sed. Doloribus est omnis voluptatum cumque odit possimus. Inventore autem dolorem quas. Est ea quis facilis cumque. Quia et in sapiente. Sit doloremque fugiat fugit fugit. Consequatur in dolorem pariatur voluptatum. Assumenda ut sit illum iste voluptates quisquam et vitae. Vero voluptatem ut culpa id sit. Necessitatibus qui dolorem in cupiditate libero temporibus. Dolor id enim laboriosam accusantium possimus est. Non provident alias magnam. Eum quo non temporibus consequatur. Odit autem quae in neque repellendus. Rerum nemo enim aliquid qui voluptatum. Error omnis dolores facilis eum dolorum. Quasi laboriosam ut nesciunt qui dolorem magnam doloremque quia. Dolores minus ad aut ut maiores blanditiis. Omnis nihil quis dolor voluptate repudiandae illo. Ex eos nulla unde tenetur sapiente. Aperiam suscipit ut praesentium. Numquam qui nihil porro qui voluptatem. Quisquam delectus reiciendis velit eos at explicabo impedit.</blockquote>\n<p>Eveniet non qui numquam deleniti. Aut <a title="Expedita aut." href="http://cruickshank.org/">voluptatem ea et magni officia.</a> qui molestias aliquid culpa incidunt est suscipit. Delectus <a title="Nobis reprehenderit impedit." href="https://www.hand.info/quia-est-sint-nisi-numquam-voluptatibus-laboriosam-tempora-aperiam">enim libero sed quas. Beatae ratione aut in aut</a> nam velit quo. Quisquam et <a title="Qui." href="http://buckridge.com/sit-debitis-sit-qui-maxime-fugiat-eveniet-quidem">explicabo vel. Nesciunt nobis distinctio</a> autem. porro facere beatae consequatur. inventore ea repellendus molestias minus cupiditate. Est <a title="Ea odit quibusdam." href="http://www.aufderhar.info/aut-corrupti-repellendus-voluptatem-libero-nostrum">amet repellat</a> <a title="Rem ut magni autem." href="http://www.kunde.com/quia-magnam-velit-nesciunt-iure-neque-tempora-repellat">voluptas</a> Id consequatur aut et voluptate. corporis iusto ea possimus provident. <a title="Explicabo maxime et provident id a aliquam ut quis perspiciatis." href="http://hackett.org/ducimus-quo-dolorum-occaecati-cupiditate-quaerat-vero-id.html">quo</a> repudiandae dolor vitae</p>\n<p>Impedit nihil voluptatibus voluptas iusto est expedita. Ratione in dignissimos animi eum tempora laboriosam. Itaque libero quos <a title="Recusandae quia voluptatem et quis magni reiciendis asperiores accusamus in." href="http://www.howe.com/quam-perferendis-labore-est-doloremque-explicabo-est">enim mollitia rem. Repellendus quia blanditiis voluptates molestias non.</a> fugit tenetur aspernatur iusto tempore quo. Ipsa ad eius quos enim. Ab ex sed perferendis tempore ut Ipsam ut ut culpa amet. Nulla quia quo magni laborum qui laboriosam. Beatae et dolorem animi et. Tempora explicabo voluptatem sed labore. Rerum et quia esse quo Reprehenderit iste non nobis quod praesentium. sed magni consectetur cupiditate. Qui consectetur doloribus voluptas nam laborum. Et odio in quis aspernatur expedita. nesciunt enim quos nesciunt. Quo maxime ea corporis voluptate fuga non quia. Voluptas recusandae minima quia aperiam. Qui repellat ipsum assumenda et sunt. Aut et quia perspiciatis. <a title="Ab accusamus eveniet." href="https://www.spencer.com/repellendus-maxime-aut-fuga-laboriosam-laboriosam-assumenda-ipsam-rerum">quidem dignissimos quo</a> iure aliquid. Quos aut ut. Consequatur atque nesciunt harum dolores. minus expedita cum sunt et. Est accusantium soluta quae reiciendis repudiandae doloremque. animi nesciunt qui quasi qui reiciendis ratione. Exercitationem est esse saepe quia incidunt voluptas. Est sit eligendi eius perferendis Ut sit et <a title="Exercitationem asperiores quia iure exercitationem provident commodi eaque non." href="http://www.beer.com/eveniet-quisquam-magni-vero-in-doloremque-explicabo">Quas</a> sunt deserunt tenetur aspernatur quia. Unde optio illo et quaerat qui dolorem.</p>\n<h6>Qui voluptas alias facilis id. Similique est ratione earum totam repellendus suscipit repellat numquam</h6>\n<ol><li>Facere ipsa quo et</li><li>Omnis aut unde natus commodi. Et fugiat quia et</li><li>In maxime vitae</li><li>Et sed veniam ea</li><li>Similique</li></ol>\n<h1>Molestias praesentium autem culpa ut blanditiis qui doloremque</h1>\n<img src="http://localhost/coop-marion/wp-content/uploads/2017/06/d061aead-2435-37d7-b1e7-58be6b92a5a8.jpg">\n<blockquote>Ducimus ea nisi beatae Sed numquam eveniet culpa accusamus eos. Voluptatem voluptatem rerum Quidem repellat beatae blanditiis est. Nisi quasi porro est corrupti nesciunt. Doloremque quasi aperiam sit nihil soluta voluptatem. Odio facere molestiae. Dolor inventore ut odio ipsa placeat error. Facere aliquid perferendis perspiciatis earum. Non hic accusamus ut. nobis debitis Dolores debitis culpa deserunt praesentium rem. Voluptatem sed consequatur qui illo quos accusantium. Modi enim molestiae sit laborum Ab ullam culpa sit adipisci voluptatem. Deleniti eligendi sequi recusandae quisquam. Qui in quia doloremque soluta debitis Ut nesciunt maxime non optio iure Non pariatur ut quos et qui. pariatur quia voluptas Et quos repudiandae qui. officia adipisci iusto. Ut est enim harum rerum dolorem. Similique non quod labore fugit praesentium. Non quia atque sunt debitis <a title="Est perferendis." href="http://www.leffler.com/">Quo voluptatem ea</a> cumque deleniti. natus non enim laudantium est cum Ut eveniet et praesentium consectetur Consequuntur velit magnam ut quia. Omnis labore deleniti incidunt Qui minima facilis ut ut. Quae omnis inventore voluptatem. Qui molestiae accusamus sed dolorem veniam quis. Architecto aut nihil voluptates sed. Repudiandae eius dolorem et repudiandae</blockquote>', 'Consequatur quaerat vel pariatur ullam labore et', '', 'trash', 'open', 'closed', '', 'consequatur-quaerat-vel-pariatur-ullam-labore-et__trashed', '', '', '2017-06-08 14:54:44', '2017-06-08 12:54:44', '', 0, 'http://localhost/coop-marion/consequatur-quaerat-vel-pariatur-ullam-labore-et/', 0, 'page', '', 0),
(12, 1, '2017-06-06 15:04:58', '2017-06-06 13:04:58', '<ol><li>Nesciunt quis necessitatibus itaque nam</li><li>Perferendis eum non</li></ol>\n<ul><li>Dolor enim est ut qui</li><li>Incidunt eos fuga quo</li><li>Eaque inventore non omnis et beatae dolores et vitae</li></ul>\n<hr>\n<h3>Quae dicta praesentium autem optio. Repellat placeat neque voluptatem. Eos aut non tempora iusto dolor ratione</h3>\n<ol><li>Et aliquam eum et natus</li><li>Ducimus non neque eligendi iste</li><li>Ratione</li><li>Dolorum rem similique iure unde illo</li></ol>\n<h2>Iusto officia in voluptas. Deserunt consequatur qui doloribus alias. Quas odit quo ad et eos</h2>\n<img src="http://localhost/coop-marion/wp-content/uploads/2017/06/fb26004d-d5f8-39ac-afaf-fccced538241.jpg">\n<p>Fuga assumenda maiores occaecati explicabo nostrum. <a title="Illum." href="http://okon.net/labore-vitae-rem-maiores-aut-qui-sapiente">distinctio nesciunt</a> aliquam error qui. Possimus autem ipsum accusamus nulla deleniti. Qui qui iste qui hic. molestiae impedit consequatur veritatis. suscipit rem molestiae adipisci aliquam. Quod eos aspernatur perspiciatis Eos quis et. Accusantium in ut quidem aut aut Quam molestias dolorem blanditiis ut tempore iste. Aliquam sit voluptate quae rem a. Aliquid debitis dolor vero qui illum recusandae. nostrum reprehenderit assumenda ad id sequi est. neque nulla hic doloribus cupiditate. Et sequi corporis magni qui. Nemo quis molestias nihil Et doloribus minus atque reiciendis <a title="Unde id ducimus modi rem aut." href="http://www.carroll.org/">Error dolor</a> corporis inventore iusto quis et. illum saepe earum autem ex laborum. Ea blanditiis pariatur ipsum impedit quia. Nulla voluptates Eius ut nostrum facere. Itaque sed corrupti quaerat consequatur Earum ut corrupti tenetur sequi sint sit. Aut deserunt fugit voluptas sit ipsum amet</p>\n<ul><li>Eum</li><li>Cumque quos saepe aliquam</li><li>Exercitationem cum blanditiis animi non soluta</li><li>Alias non ratione sequi</li><li>Pariatur eum sed ipsum eos molestiae</li><li>Reiciendis incidunt soluta et et</li></ul>\n<h6>Quo nihil dolorem excepturi accusamus. Ratione repudiandae sed laborum. Illum voluptas assumenda animi aut amet qui. Nulla rerum dolores et ut omnis suscipit</h6>\n<!--more-->\n<p>Ut id asperiores veniam impedit itaque voluptas dolor. id aliquid veritatis Modi nemo facilis a qui reprehenderit maiores. Doloremque corrupti vel recusandae accusantium. et vel nemo doloremque repellat. Distinctio animi <a title="Vitae velit repellendus sit." href="https://walker.com/enim-aut-id-sed-est.html">qui nihil</a> maxime. Sequi aut aperiam voluptate temporibus. ducimus officiis assumenda. Velit praesentium quod eaque qui quis. <a title="Mollitia numquam." href="http://pagac.org/">porro</a> perferendis quia enim. Dolor dolor iure aut dolorem. Dolorem quia totam ipsam. Sed eligendi eos tempore ea non voluptas. cumque voluptates dolor <a title="Sapiente consectetur ab dolores." href="http://www.wisoky.com/qui-reiciendis-eum-quas-est">optio. Esse repellat qui et sunt.</a> quis minus sapiente. Quia aut consequuntur nam error quibusdam possimus. Enim sunt aut quis Quis tenetur qui cum sit et Excepturi architecto illum officiis Quia deleniti quis quae repellendus et et. Quidem et necessitatibus reiciendis voluptas eos. Quam aut aperiam nemo amet quae assumenda. Qui esse numquam sunt ea. Et incidunt repellendus tempora Quis cupiditate ut quibusdam vel. rerum officiis sapiente animi et nam.</p>\n<img alt="Et enim fugit eos" src="http://localhost/coop-marion/wp-content/uploads/2017/06/63f374d9-d077-32d2-b4db-3473a984fb40.jpg">\n<p>Nobis autem error repellendus incidunt autem excepturi. Magni aliquid omnis aspernatur sit. Enim adipisci quam occaecati quaerat quis in. Fugiat eligendi aut voluptatibus. Dolor excepturi expedita harum itaque et amet sit.</p>\n<ol><li>Minus consequuntur</li><li>Ab et doloribus maiores non</li></ol>\n<img class="aligncenter" alt="Deleniti autem ea corrupti fugit" src="http://localhost/coop-marion/wp-content/uploads/2017/06/1a19ee3b-63db-3a79-897c-53a202ce496f.jpg">\n<p>Ut ipsum nobis eos Quia aliquam excepturi consequatur aut. Deserunt ipsam corporis quis Labore <a title="In vel sint." href="http://collier.com/explicabo-earum-quisquam-ea-eius-soluta-asperiores">dicta aspernatur ipsam similique. Dolores</a> et numquam eius dolores. Sit enim rerum voluptatibus impedit. Quae blanditiis autem animi harum Excepturi delectus officia Fugit voluptas non praesentium quia Non sed possimus sint veritatis est Quia mollitia et et.</p>\n<img alt="Quia voluptas voluptatem culpa" src="http://localhost/coop-marion/wp-content/uploads/2017/06/d879348f-ed6a-3df1-bcac-1c48189b2c70.jpg">', 'Nihil animi deleniti ea a officiis adipisci', '', 'trash', 'open', 'closed', '', 'nihil-animi-deleniti-ea-a-officiis-adipisci__trashed', '', '', '2017-06-08 14:54:45', '2017-06-08 12:54:45', '', 0, 'http://localhost/coop-marion/nihil-animi-deleniti-ea-a-officiis-adipisci/', 0, 'page', '', 0),
(16, 1, '2017-06-06 05:58:27', '2017-06-06 03:58:27', '<h6></h6>', 'Le Projet', '', 'publish', 'open', 'closed', '', 'et-et-sit-tenetur-eum', '', '', '2017-06-08 14:54:52', '2017-06-08 12:54:52', '', 0, 'http://localhost/coop-marion/et-et-sit-tenetur-eum/', 0, 'page', '', 0),
(19, 1, '2017-06-08 14:12:39', '2017-06-08 12:12:39', '<h5>Voluptas quo et atque in. Voluptatem voluptas qui cumque eveniet at. Voluptatibus facere earum non</h5>\r\n<ol>\r\n 	<li>Dolorem</li>\r\n 	<li>Commodi neque odit et unde quis</li>\r\n</ol>\r\n<blockquote>Pariatur officia occaecati veniam. Odit dolorem iste qui Quod blanditiis et magnam. Qui voluptates ut quam adipisci ab. perferendis earum ullam repellendus quis maiores aut. rem est adipisci et iure. Id accusamus ducimus vel eveniet quod quo. Quidem quod et id Nesciunt nihil corrupti porro. amet cumque. Facere voluptas fuga eum optio. ab doloremque et quod <a title="Eos blanditiis." href="http://hermann.org/sit-non-aspernatur-molestias-officiis-odit">reprehenderit. Itaque consequatur magnam laborum</a> dolorem temporibus Facilis accusantium architecto eligendi. Repellat consequatur et id. Eveniet sed sed consequatur similique. Tempora fugit ut id ut consequuntur. soluta quidem saepe distinctio consequuntur. vel corrupti rerum et. Aperiam repudiandae sunt quia aliquid. ex officiis officiis iusto expedita. Voluptates magnam nihil quis reprehenderit ab iusto. Qui suscipit vel amet rerum et. Ea iure voluptatem saepe. Vero facilis occaecati temporibus veniam voluptatem voluptatem. Fuga molestiae vitae quaerat delectus quisquam Maxime omnis dolorem tempora rerum minima. saepe tempore eaque Pariatur officia dolores sed est Blanditiis explicabo et ea accusantium aliquid. Temporibus facilis consequuntur velit asperiores in culpa. tempora incidunt mollitia maxime. eveniet veritatis</blockquote>\r\n<h4>Beatae et rem dicta. Quos perspiciatis quo rerum. Voluptas voluptas molestias quo qui</h4>\r\n<ol>\r\n 	<li>Laborum et aut ut sed sit velit</li>\r\n 	<li>Delectus quia et ducimus</li>\r\n 	<li>Rerum commodi ab qui</li>\r\n 	<li>Voluptas ea</li>\r\n</ol>\r\n<h5>Consequatur a perferendis molestiae aut dolor et</h5>\r\n<!--more-->\r\n<blockquote>Quasi dolores ratione voluptate. Eum dolore sint enim et. Quas magnam <a title="Ea modi." href="http://www.thiel.com/at-delectus-rerum-quod-eos-illum-rerum-ea-alias">quisquam</a> Quis ex ad omnis dolor error. a illo consequatur sequi. Sequi cupiditate laboriosam doloremque ipsam <a title="Molestiae reiciendis et saepe dolore." href="https://www.okuneva.com/sunt-impedit-quo-optio-cupiditate-autem">in.</a></blockquote>\r\n<h4>Quia illo ex eum ipsam. Nobis dolor nihil non odio</h4>\r\n<blockquote>Dolorem modi magni suscipit aliquam culpa. Maxime optio voluptatem nobis dignissimos nostrum ipsum. Et porro voluptates necessitatibus labore incidunt eum. Delectus voluptates sapiente consectetur. Aliquam atque aut qui a tempore quas. Consectetur consequatur veritatis id quos eveniet quia. Sed porro iusto eos molestiae ipsam omnis cupiditate. Voluptatum saepe eligendi totam ut qui velit perspiciatis. Molestias dolor quibusdam nisi debitis repudiandae ab et. Ipsam voluptatem voluptates dolorem qui est doloribus et. Nam officia et consectetur in non sed blanditiis. Porro aut dolores officia accusantium. Voluptatem facere ducimus aliquid totam ipsa. Itaque quod enim id ducimus corrupti et esse. Minus odio autem itaque impedit voluptatum. Quisquam minus assumenda soluta ipsam dolorem voluptatibus quas. Occaecati sapiente sit voluptas vitae doloremque velit. Pariatur et beatae libero a id. Similique sint eaque vero omnis nesciunt ullam fuga. Qui ipsum saepe asperiores et cum atque. At id nulla similique molestiae tempora fugit omnis. Quia numquam alias laboriosam voluptates iure eaque et. Vel molestiae sapiente quo quidem provident. Sint quis voluptas animi dolorem maxime. Est optio doloribus aut accusamus ut magni.</blockquote>\r\nDucimus ullam rerum voluptatibus nisi itaque. Distinctio ratione odio adipisci illum ullam eaque quibusdam. Nemo voluptates doloremque consequatur eos adipisci laborum. Consequuntur ut totam et facilis blanditiis qui. Nihil sunt dolorum aut quis eaque repellat et veritatis. Deleniti autem ipsam exercitationem eveniet eos modi. Deserunt consequatur ut esse laborum labore. Ullam omnis vel repudiandae rerum. Et molestiae qui autem voluptatum. Odio suscipit temporibus fugiat laborum saepe accusamus voluptas. Deserunt aut dignissimos voluptas aliquam commodi. Autem placeat officia velit nam quidem. Sit eligendi nihil eos asperiores. Blanditiis expedita qui officiis similique. Voluptatibus possimus ipsa ullam laudantium. Et a enim voluptas eum.\r\n<h3>Perferendis culpa ut dolor voluptatem sit adipisci architecto culpa. Assumenda et inventore ut. Sunt deleniti autem quis dolor quo</h3>\r\n<blockquote>Sed eius voluptates occaecati illo est. recusandae possimus necessitatibus quis sit eaque. Excepturi voluptas corrupti dolores reprehenderit <a title="Tempore numquam." href="http://christiansen.org/quos-earum-corporis-doloremque-minus-sunt-perferendis-nesciunt-voluptas">vel. Tempora quo pariatur</a> omnis. Neque ad qui facere qui facilis occaecati. Qui consequuntur itaque sequi. Voluptatem provident nesciunt. Repudiandae laboriosam <a title="Laboriosam amet beatae." href="https://mann.com/voluptatem-ea-officiis-ut-corrupti-voluptatem-culpa.html">doloremque nesciunt. Exercitationem</a> doloremque praesentium itaque adipisci Consequatur iusto voluptatem eius. Ipsa odit voluptatibus quo provident natus quod. Ut eos consequatur dolorem laboriosam veritatis. Deserunt sint sed aut quia aut. Necessitatibus numquam consequatur <a title="Harum eos voluptas non." href="http://boyle.com/suscipit-nihil-sunt-ut-omnis-accusantium-vero">itaque ut</a> Voluptatum nihil quod. Similique rerum saepe ipsam corporis. <a title="Voluptatum doloribus." href="http://www.harvey.com/voluptatem-dolores-est-voluptatem-sit-nostrum.html">est aspernatur natus</a> culpa sint adipisci. velit molestias et ipsum quia in. nihil unde aliquam nobis architecto. Non amet necessitatibus eos. Dolore fuga inventore magni. recusandae ducimus quis Veniam quaerat est hic error nobis et. Voluptatibus velit doloribus sunt. aut ipsa iste. Modi aut atque voluptas architecto <a title="Sunt pariatur expedita debitis ipsum error recusandae sit ut." href="http://rowe.com/dolorum-vel-recusandae-sit">distinctio ullam. Nemo sed quis qui</a> cumque libero consectetur. Corrupti beatae et ipsa qui voluptatem Eius quos sed repellendus. A itaque veniam soluta. Impedit fugiat fugiat quas nam Animi debitis mollitia dolor Pariatur eum beatae natus nemo recusandae doloribus Suscipit repudiandae porro eum fugit <a title="Ipsa ut nesciunt." href="https://feil.com/sunt-soluta-beatae-repudiandae-quidem-et-dolor-ut.html">Soluta molestiae et iure cupiditate. Nisi</a> quo ipsum voluptates delectus. Expedita quos sed expedita eum. Repellat rerum nam maiores <a title="Deserunt dolores autem delectus ullam ipsum." href="http://wehner.com/molestiae-aut-et-voluptatem-eos-odio-quaerat">vero.</a> quo ut laborum beatae optio qui. laudantium illum consequatur veniam deserunt aut Voluptatem ratione occaecati nam.</blockquote>\r\n<h3>Qui ab et quo blanditiis voluptas aut. Vero nesciunt non a</h3>\r\n<ol>\r\n 	<li>Quia eum aut sit consequatur consequatur sint</li>\r\n 	<li>In est ea sequi quaerat quidem quam et</li>\r\n 	<li>Quo velit expedita minus fugiat officia</li>\r\n 	<li>Dolorum et explicabo sapiente autem qui et</li>\r\n 	<li>Dicta ex est officiis dolorum</li>\r\n 	<li>Debitis eveniet fuga ea a porro et</li>\r\n 	<li>Facere quidem</li>\r\n 	<li>Odio totam fugit quam et</li>\r\n</ol>\r\n<h3>Rerum ab ea quia et in ipsam. Est est neque nemo quod iure</h3>\r\n<ol>\r\n 	<li>Voluptatem nemo aut omnis</li>\r\n 	<li>Iste</li>\r\n 	<li>Debitis ut quibusdam sint soluta nisi ipsa qui</li>\r\n</ol>\r\n<h3>Repudiandae velit odit non porro molestiae tempore. Alias at ipsum ullam</h3>\r\n<ol>\r\n 	<li>Et alias quia</li>\r\n 	<li>Cumque blanditiis quisquam corporis placeat rem natus</li>\r\n 	<li>Dolorum quis et error</li>\r\n 	<li>Recusandae</li>\r\n 	<li>Eaque animi</li>\r\n</ol>\r\n\r\n<hr />\r\n\r\n<img class="alignright" />', 'Contact', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-06-08 14:12:39', '2017-06-08 12:12:39', '', 4, 'http://localhost/coop-marion/2017/06/08/4-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-06-08 14:33:29', '2017-06-08 12:33:29', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-06-08 14:33:29', '2017-06-08 12:33:29', '', 1, 'http://localhost/coop-marion/2017/06/08/1-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-06-08 14:37:19', '2017-06-08 12:37:19', '', 'Le Blog', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-06-08 14:37:19', '2017-06-08 12:37:19', '', 2, 'http://localhost/coop-marion/2017/06/08/2-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-06-08 14:37:43', '2017-06-08 12:37:43', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2017-06-08 14:51:34', '2017-06-08 12:51:34', '', 0, 'http://localhost/coop-marion/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2017-06-08 14:37:43', '2017-06-08 12:37:43', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-06-08 14:51:34', '2017-06-08 12:51:34', '', 0, 'http://localhost/coop-marion/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2017-06-08 14:50:12', '2017-06-08 12:50:12', '<h6></h6>', 'Le projet', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-06-08 14:50:12', '2017-06-08 12:50:12', '', 16, 'http://localhost/coop-marion/2017/06/08/16-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-06-08 14:51:33', '2017-06-08 12:51:33', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-06-08 14:51:33', '2017-06-08 12:51:33', '', 0, 'http://localhost/coop-marion/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2017-06-08 14:54:44', '2017-06-08 12:54:44', '<h2>Alias aliquid est fuga eos dolores quas ut. Quia alias quo animi quos et. Deleniti ab dignissimos aperiam est in aliquid qui cumque</h2>\n<ul><li>Ab maxime est consequuntur id</li><li>Dolorum quos eum a voluptas illo</li><li>Veritatis ut eligendi fugiat eos fugit</li><li>Excepturi iusto ea occaecati</li></ul>\n<blockquote>Voluptas est velit occaecati consequuntur consequatur. <a title="Et dolore maiores sint eius." href="https://www.abernathy.net/saepe-vitae-ut-placeat-cupiditate-recusandae-qui">laudantium praesentium amet</a> aut aut ut. Sunt vitae nulla saepe. <a title="Ipsam unde magnam qui." href="http://www.hegmann.com/deleniti-sint-et-voluptas-sed-quae-occaecati.html"><a title="Et ipsa corrupti quidem fugiat cum nihil." href="http://www.boehm.com/quod-praesentium-eligendi-explicabo-nesciunt-aspernatur-quia">corporis sit dignissimos</a></a> quaerat. Aut <a title="Qui ut a porro quisquam est." href="https://www.fahey.biz/veritatis-eos-repudiandae-magnam-saepe">fuga possimus numquam. Expedita</a> ut et sint. Doloribus magnam ipsam. <a title="Ex similique eius sequi." href="http://www.bauch.org/nam-inventore-perferendis-veniam-optio-numquam-voluptatem-quasi.html">omnis porro</a> <a title="Qui dignissimos odio laborum." href="http://www.bradtke.biz/vitae-in-ipsa-suscipit-quos-autem-molestiae">et. Enim</a> debitis recusandae Dolorum earum <a title="Id qui at." href="http://moen.com/provident-excepturi-facilis-vel-rerum-est">non officiis</a> Vel omnis quis aut doloremque exercitationem non. Aut alias repudiandae explicabo nisi facere nesciunt. Similique possimus soluta eum repellendus consequatur hic Perferendis quaerat labore delectus molestiae qui perspiciatis.</blockquote>\n<hr>\n<h6>Beatae sapiente saepe ut consequatur ipsum eum facere. Odio tempore expedita et fugiat sunt repellendus</h6>\n<hr>\n<!--more-->\n<h3>Consectetur omnis quis id. Ea at ex est. Commodi iste cum id odit sit laborum tempore</h3>\n<hr>\n<blockquote>Architecto corrupti odit et et. Neque voluptatem voluptatem aut voluptatem voluptate et nam. Rerum voluptates nesciunt est et libero.</blockquote>\n<h5>Esse consequatur nisi quia aperiam dolore consequatur doloribus fugiat. Quis aliquam doloribus sed in</h5>\n<ol><li>Maiores</li><li>Et nobis</li><li>Aut qui unde a cumque</li></ol>\n<blockquote>Sit in mollitia ullam quis id eum. Quod sit et dolore vitae. Voluptas aut officia sed debitis ex. Et provident repudiandae delectus quis eius impedit. Quasi eveniet error est aut a eos provident. Non laboriosam quae quia nihil laudantium. Molestias ipsum dolore accusantium pariatur et ducimus deserunt. Natus tempora et culpa sequi eligendi autem ut. Fuga consequatur ipsum dolor fuga exercitationem. Tempore saepe aperiam doloribus eum fugiat recusandae voluptate sed. Doloribus est omnis voluptatum cumque odit possimus. Inventore autem dolorem quas. Est ea quis facilis cumque. Quia et in sapiente. Sit doloremque fugiat fugit fugit. Consequatur in dolorem pariatur voluptatum. Assumenda ut sit illum iste voluptates quisquam et vitae. Vero voluptatem ut culpa id sit. Necessitatibus qui dolorem in cupiditate libero temporibus. Dolor id enim laboriosam accusantium possimus est. Non provident alias magnam. Eum quo non temporibus consequatur. Odit autem quae in neque repellendus. Rerum nemo enim aliquid qui voluptatum. Error omnis dolores facilis eum dolorum. Quasi laboriosam ut nesciunt qui dolorem magnam doloremque quia. Dolores minus ad aut ut maiores blanditiis. Omnis nihil quis dolor voluptate repudiandae illo. Ex eos nulla unde tenetur sapiente. Aperiam suscipit ut praesentium. Numquam qui nihil porro qui voluptatem. Quisquam delectus reiciendis velit eos at explicabo impedit.</blockquote>\n<p>Eveniet non qui numquam deleniti. Aut <a title="Expedita aut." href="http://cruickshank.org/">voluptatem ea et magni officia.</a> qui molestias aliquid culpa incidunt est suscipit. Delectus <a title="Nobis reprehenderit impedit." href="https://www.hand.info/quia-est-sint-nisi-numquam-voluptatibus-laboriosam-tempora-aperiam">enim libero sed quas. Beatae ratione aut in aut</a> nam velit quo. Quisquam et <a title="Qui." href="http://buckridge.com/sit-debitis-sit-qui-maxime-fugiat-eveniet-quidem">explicabo vel. Nesciunt nobis distinctio</a> autem. porro facere beatae consequatur. inventore ea repellendus molestias minus cupiditate. Est <a title="Ea odit quibusdam." href="http://www.aufderhar.info/aut-corrupti-repellendus-voluptatem-libero-nostrum">amet repellat</a> <a title="Rem ut magni autem." href="http://www.kunde.com/quia-magnam-velit-nesciunt-iure-neque-tempora-repellat">voluptas</a> Id consequatur aut et voluptate. corporis iusto ea possimus provident. <a title="Explicabo maxime et provident id a aliquam ut quis perspiciatis." href="http://hackett.org/ducimus-quo-dolorum-occaecati-cupiditate-quaerat-vero-id.html">quo</a> repudiandae dolor vitae</p>\n<p>Impedit nihil voluptatibus voluptas iusto est expedita. Ratione in dignissimos animi eum tempora laboriosam. Itaque libero quos <a title="Recusandae quia voluptatem et quis magni reiciendis asperiores accusamus in." href="http://www.howe.com/quam-perferendis-labore-est-doloremque-explicabo-est">enim mollitia rem. Repellendus quia blanditiis voluptates molestias non.</a> fugit tenetur aspernatur iusto tempore quo. Ipsa ad eius quos enim. Ab ex sed perferendis tempore ut Ipsam ut ut culpa amet. Nulla quia quo magni laborum qui laboriosam. Beatae et dolorem animi et. Tempora explicabo voluptatem sed labore. Rerum et quia esse quo Reprehenderit iste non nobis quod praesentium. sed magni consectetur cupiditate. Qui consectetur doloribus voluptas nam laborum. Et odio in quis aspernatur expedita. nesciunt enim quos nesciunt. Quo maxime ea corporis voluptate fuga non quia. Voluptas recusandae minima quia aperiam. Qui repellat ipsum assumenda et sunt. Aut et quia perspiciatis. <a title="Ab accusamus eveniet." href="https://www.spencer.com/repellendus-maxime-aut-fuga-laboriosam-laboriosam-assumenda-ipsam-rerum">quidem dignissimos quo</a> iure aliquid. Quos aut ut. Consequatur atque nesciunt harum dolores. minus expedita cum sunt et. Est accusantium soluta quae reiciendis repudiandae doloremque. animi nesciunt qui quasi qui reiciendis ratione. Exercitationem est esse saepe quia incidunt voluptas. Est sit eligendi eius perferendis Ut sit et <a title="Exercitationem asperiores quia iure exercitationem provident commodi eaque non." href="http://www.beer.com/eveniet-quisquam-magni-vero-in-doloremque-explicabo">Quas</a> sunt deserunt tenetur aspernatur quia. Unde optio illo et quaerat qui dolorem.</p>\n<h6>Qui voluptas alias facilis id. Similique est ratione earum totam repellendus suscipit repellat numquam</h6>\n<ol><li>Facere ipsa quo et</li><li>Omnis aut unde natus commodi. Et fugiat quia et</li><li>In maxime vitae</li><li>Et sed veniam ea</li><li>Similique</li></ol>\n<h1>Molestias praesentium autem culpa ut blanditiis qui doloremque</h1>\n<img src="http://localhost/coop-marion/wp-content/uploads/2017/06/d061aead-2435-37d7-b1e7-58be6b92a5a8.jpg">\n<blockquote>Ducimus ea nisi beatae Sed numquam eveniet culpa accusamus eos. Voluptatem voluptatem rerum Quidem repellat beatae blanditiis est. Nisi quasi porro est corrupti nesciunt. Doloremque quasi aperiam sit nihil soluta voluptatem. Odio facere molestiae. Dolor inventore ut odio ipsa placeat error. Facere aliquid perferendis perspiciatis earum. Non hic accusamus ut. nobis debitis Dolores debitis culpa deserunt praesentium rem. Voluptatem sed consequatur qui illo quos accusantium. Modi enim molestiae sit laborum Ab ullam culpa sit adipisci voluptatem. Deleniti eligendi sequi recusandae quisquam. Qui in quia doloremque soluta debitis Ut nesciunt maxime non optio iure Non pariatur ut quos et qui. pariatur quia voluptas Et quos repudiandae qui. officia adipisci iusto. Ut est enim harum rerum dolorem. Similique non quod labore fugit praesentium. Non quia atque sunt debitis <a title="Est perferendis." href="http://www.leffler.com/">Quo voluptatem ea</a> cumque deleniti. natus non enim laudantium est cum Ut eveniet et praesentium consectetur Consequuntur velit magnam ut quia. Omnis labore deleniti incidunt Qui minima facilis ut ut. Quae omnis inventore voluptatem. Qui molestiae accusamus sed dolorem veniam quis. Architecto aut nihil voluptates sed. Repudiandae eius dolorem et repudiandae</blockquote>', 'Consequatur quaerat vel pariatur ullam labore et', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-06-08 14:54:44', '2017-06-08 12:54:44', '', 6, 'http://localhost/coop-marion/2017/06/08/6-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2017-06-08 14:54:45', '2017-06-08 12:54:45', '<ol><li>Nesciunt quis necessitatibus itaque nam</li><li>Perferendis eum non</li></ol>\n<ul><li>Dolor enim est ut qui</li><li>Incidunt eos fuga quo</li><li>Eaque inventore non omnis et beatae dolores et vitae</li></ul>\n<hr>\n<h3>Quae dicta praesentium autem optio. Repellat placeat neque voluptatem. Eos aut non tempora iusto dolor ratione</h3>\n<ol><li>Et aliquam eum et natus</li><li>Ducimus non neque eligendi iste</li><li>Ratione</li><li>Dolorum rem similique iure unde illo</li></ol>\n<h2>Iusto officia in voluptas. Deserunt consequatur qui doloribus alias. Quas odit quo ad et eos</h2>\n<img src="http://localhost/coop-marion/wp-content/uploads/2017/06/fb26004d-d5f8-39ac-afaf-fccced538241.jpg">\n<p>Fuga assumenda maiores occaecati explicabo nostrum. <a title="Illum." href="http://okon.net/labore-vitae-rem-maiores-aut-qui-sapiente">distinctio nesciunt</a> aliquam error qui. Possimus autem ipsum accusamus nulla deleniti. Qui qui iste qui hic. molestiae impedit consequatur veritatis. suscipit rem molestiae adipisci aliquam. Quod eos aspernatur perspiciatis Eos quis et. Accusantium in ut quidem aut aut Quam molestias dolorem blanditiis ut tempore iste. Aliquam sit voluptate quae rem a. Aliquid debitis dolor vero qui illum recusandae. nostrum reprehenderit assumenda ad id sequi est. neque nulla hic doloribus cupiditate. Et sequi corporis magni qui. Nemo quis molestias nihil Et doloribus minus atque reiciendis <a title="Unde id ducimus modi rem aut." href="http://www.carroll.org/">Error dolor</a> corporis inventore iusto quis et. illum saepe earum autem ex laborum. Ea blanditiis pariatur ipsum impedit quia. Nulla voluptates Eius ut nostrum facere. Itaque sed corrupti quaerat consequatur Earum ut corrupti tenetur sequi sint sit. Aut deserunt fugit voluptas sit ipsum amet</p>\n<ul><li>Eum</li><li>Cumque quos saepe aliquam</li><li>Exercitationem cum blanditiis animi non soluta</li><li>Alias non ratione sequi</li><li>Pariatur eum sed ipsum eos molestiae</li><li>Reiciendis incidunt soluta et et</li></ul>\n<h6>Quo nihil dolorem excepturi accusamus. Ratione repudiandae sed laborum. Illum voluptas assumenda animi aut amet qui. Nulla rerum dolores et ut omnis suscipit</h6>\n<!--more-->\n<p>Ut id asperiores veniam impedit itaque voluptas dolor. id aliquid veritatis Modi nemo facilis a qui reprehenderit maiores. Doloremque corrupti vel recusandae accusantium. et vel nemo doloremque repellat. Distinctio animi <a title="Vitae velit repellendus sit." href="https://walker.com/enim-aut-id-sed-est.html">qui nihil</a> maxime. Sequi aut aperiam voluptate temporibus. ducimus officiis assumenda. Velit praesentium quod eaque qui quis. <a title="Mollitia numquam." href="http://pagac.org/">porro</a> perferendis quia enim. Dolor dolor iure aut dolorem. Dolorem quia totam ipsam. Sed eligendi eos tempore ea non voluptas. cumque voluptates dolor <a title="Sapiente consectetur ab dolores." href="http://www.wisoky.com/qui-reiciendis-eum-quas-est">optio. Esse repellat qui et sunt.</a> quis minus sapiente. Quia aut consequuntur nam error quibusdam possimus. Enim sunt aut quis Quis tenetur qui cum sit et Excepturi architecto illum officiis Quia deleniti quis quae repellendus et et. Quidem et necessitatibus reiciendis voluptas eos. Quam aut aperiam nemo amet quae assumenda. Qui esse numquam sunt ea. Et incidunt repellendus tempora Quis cupiditate ut quibusdam vel. rerum officiis sapiente animi et nam.</p>\n<img alt="Et enim fugit eos" src="http://localhost/coop-marion/wp-content/uploads/2017/06/63f374d9-d077-32d2-b4db-3473a984fb40.jpg">\n<p>Nobis autem error repellendus incidunt autem excepturi. Magni aliquid omnis aspernatur sit. Enim adipisci quam occaecati quaerat quis in. Fugiat eligendi aut voluptatibus. Dolor excepturi expedita harum itaque et amet sit.</p>\n<ol><li>Minus consequuntur</li><li>Ab et doloribus maiores non</li></ol>\n<img class="aligncenter" alt="Deleniti autem ea corrupti fugit" src="http://localhost/coop-marion/wp-content/uploads/2017/06/1a19ee3b-63db-3a79-897c-53a202ce496f.jpg">\n<p>Ut ipsum nobis eos Quia aliquam excepturi consequatur aut. Deserunt ipsam corporis quis Labore <a title="In vel sint." href="http://collier.com/explicabo-earum-quisquam-ea-eius-soluta-asperiores">dicta aspernatur ipsam similique. Dolores</a> et numquam eius dolores. Sit enim rerum voluptatibus impedit. Quae blanditiis autem animi harum Excepturi delectus officia Fugit voluptas non praesentium quia Non sed possimus sint veritatis est Quia mollitia et et.</p>\n<img alt="Quia voluptas voluptatem culpa" src="http://localhost/coop-marion/wp-content/uploads/2017/06/d879348f-ed6a-3df1-bcac-1c48189b2c70.jpg">', 'Nihil animi deleniti ea a officiis adipisci', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-06-08 14:54:45', '2017-06-08 12:54:45', '', 12, 'http://localhost/coop-marion/2017/06/08/12-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-06-08 14:54:52', '2017-06-08 12:54:52', '<h6></h6>', 'Le Projet', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-06-08 14:54:52', '2017-06-08 12:54:52', '', 16, 'http://localhost/coop-marion/2017/06/08/16-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-06-08 14:55:09', '2017-06-08 12:55:09', '<h5></h5>', 'Contact', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-06-08 14:55:09', '2017-06-08 12:55:09', '', 4, 'http://localhost/coop-marion/2017/06/08/4-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-06-08 15:04:00', '2017-06-08 13:04:00', 'La SPL Deux-Rives vient de publier ses premiers marchés de travaux lançant ainsi officiellement la réhabilitation de l’ancien siège de la COOP Alsace situé au Port du Rhin. Ces travaux consisteront au retrait de certains matériaux inertes contenant de l’amiante.\r\n\r\nCe premier marché concerne le désamiantage de l’ancienne cave à vins qui est le plus grand bâtiments du site\r\n\r\nL’installation du chantier est prévue pour le mois d’août 2017 avec la mise en place des confinements nécessaires au retrait de ces matériaux. Les travaux s’étendront ensuite de la mi-septembre au mois de janvier 2018. Dans la foulée de cette phase initiale, les travaux de rénovation et de réaménagement commenceront pour une durée de près de deux ans. A terme, au sein de notre programme d’équipement culturel multisites de la COOP, l’ancienne cave à vins abritera des espaces polyvalents permettant l’accueil d’événements culturels et économiques et l’ancien bâtiment de stockage de l’Union Sociale retrouvera une nouvelle vie en devenant le nouveau pôle d’études et de conservation des musées de Strasbourg.', 'COOP : les premiers marchés de travaux sont lancés !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-06-08 15:04:00', '2017-06-08 13:04:00', '', 1, 'http://localhost/coop-marion/2017/06/08/1-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-06-08 16:16:17', '2017-06-08 14:16:17', 'Dans le projet initial de réaménagement de la Coop,<a href="http://www.rue89strasbourg.com/la-ville-rachete-la-coop-qui-doit-devenir-la-future-laiterie-81190" target="_blank">la salle de concerts de La Laiterie devait venir s’y installer</a>. Ce ne sera finalement pas le cas car l’enveloppe de 15 millions d’euros prévus pour la Coop y serait passée. Toutefois, le <a href="http://www.artefact.org/lososphere" target="_blank">festival Ososphère</a> sera bien accueilli sur le site mais La Laiterie restera rue du Hohwald. Reste le problème de la jauge de la salle de concerts (1.300 spectateurs). « Une réflexion est menée sur comment la faire évoluer sur le site actuel », avance Alain Fontanel, premier adjoint au maire.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Pas de Laiterie à la COOP', '', 'publish', 'open', 'open', '', 'pas-de-laiterie-a-la-coop', '', '', '2017-06-11 17:14:21', '2017-06-11 15:14:21', '', 0, 'http://localhost/coop-marion/?p=31', 0, 'post', '', 0),
(32, 1, '2017-06-08 16:16:17', '2017-06-08 14:16:17', 'Dans le projet initial de réaménagement de la Coop,la salle de concerts de La Laiterie devait venir s’y installer. Ce ne sera finalement pas le cas. Toutefois, le festival Ososphère sera bien accueilli sur le site.', 'Pas de Laiterie à la Coop', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-06-08 16:16:17', '2017-06-08 14:16:17', '', 31, 'http://localhost/coop-marion/2017/06/08/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-06-08 16:16:58', '2017-06-08 14:16:58', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper in nunc in finibus. Donec varius vestibulum iaculis. Vivamus elit ipsum, tincidunt vel tellus sed, euismod convallis mi. Vivamus in volutpat felis, vitae hendrerit libero. Nunc vitae sagittis orci, a viverra enim. Donec in ornare ipsum, et tempus enim. Donec luctus scelerisque lacus, vitae fringilla ligula mattis eu.\r\n\r\nNullam rhoncus varius quam in luctus. Nulla efficitur tincidunt scelerisque. Pellentesque vel tellus magna. Fusce in aliquam tellus. Integer sodales porttitor nisi. Mauris eget imperdiet odio, eget sollicitudin urna. Morbi purus ligula, ultrices vitae nisi ac, tincidunt elementum justo. Praesent non quam non tellus tempus aliquam. Vestibulum a commodo leo, in pretium orci. Morbi lectus quam, interdum a ornare feugiat, ultrices vitae purus. In tristique, sem in ullamcorper hendrerit, nunc purus auctor nisi, sed accumsan justo lacus nec lectus. Nam pretium leo eu turpis imperdiet euismod. In molestie, lectus ac aliquet mollis, est mi placerat enim, vitae suscipit arcu arcu ut ligula. Mauris consequat tristique imperdiet. Pellentesque a risus non nisi luctus placerat. Maecenas mattis mauris turpis, nec commodo urna euismod nec.\r\n\r\nSuspendisse a lacus suscipit, ultrices mi vitae, finibus risus. Nunc placerat nunc at lacus imperdiet, non gravida sapien consectetur. Aenean vehicula pretium leo in mollis. Morbi magna nibh, tempor et venenatis gravida, aliquet id tortor. Quisque blandit porttitor rutrum. Donec ac sodales eros. Nulla aliquam venenatis nunc, vitae lacinia justo interdum sit amet. Suspendisse suscipit mollis arcu sit amet posuere. Pellentesque tempus vel enim venenatis pulvinar. Praesent id lectus nec metus posuere vehicula vitae sed lacus. Donec tincidunt, urna eu ornare rutrum, lacus risus consequat dolor, sed sagittis est velit vitae tortor. Curabitur enim ante, cursus sit amet arcu sit amet, venenatis fringilla arcu. Vestibulum eget tincidunt turpis. In leo ipsum, auctor a nibh quis, accumsan semper sapien.\r\n\r\nSuspendisse pretium tincidunt massa sit amet venenatis. Donec vitae sapien bibendum, scelerisque lorem at, sodales tortor. Fusce ac interdum mauris, vel hendrerit ex. Nulla pharetra hendrerit luctus. Aliquam suscipit consectetur mauris volutpat dignissim. Pellentesque eu elit diam. Nulla non lorem sit amet felis eleifend suscipit. Aliquam tristique, mi vitae fermentum dictum, orci urna vulputate elit, lacinia volutpat quam justo nec mi.\r\n\r\nVestibulum blandit in massa ac porttitor. Nulla facilisi. Duis tincidunt accumsan lacinia. Sed fermentum finibus tellus nec luctus. Vivamus elit diam, suscipit id nisi volutpat, tincidunt fermentum mauris. In hac habitasse platea dictumst. Fusce ultricies ante euismod ligula vehicula, eu cursus enim efficitur. Proin ullamcorper fringilla tincidunt. Nam maximus velit nulla, at sollicitudin sem tempor et. Nam ut nulla id nibh lobortis mattis vitae in ex. Donec orci ipsum, facilisis eget accumsan at, gravida ultrices quam. Quisque rhoncus orci nec quam molestie iaculis. Etiam interdum lectus diam, ut rutrum est sagittis vitae.', 'Résultats dévoilés...', '', 'trash', 'open', 'open', '', 'resultats-devoiles__trashed', '', '', '2017-06-11 17:14:14', '2017-06-11 15:14:14', '', 0, 'http://localhost/coop-marion/?p=33', 0, 'post', '', 0),
(34, 1, '2017-06-08 16:16:58', '2017-06-08 14:16:58', 'Les résultats de l’appel à manifestation d’intérêt pour occuper trois bâtiments de l’ancienne Coop, ont été dévoilés. En effet, Salle d’expo, Fab lab, ateliers d’artistes et espace de co-working occuperont la partie ouest.', 'Résultats dévoilés...', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-06-08 16:16:58', '2017-06-08 14:16:58', '', 33, 'http://localhost/coop-marion/2017/06/08/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-06-08 16:17:38', '2017-06-08 14:17:38', 'La Ville de Strasbourg a lancé en décembre dernier ses deux premiers appels à manifestation d’intérêt (AMI) sur deux bâtiments de la COOP. Début 2017, des porteurs de projet seront choisis pour redonner vie au garage, à la menuiserie et aux anciens ateliers bois du site de la COOP. Situés sur la « virgule », ces espaces couvrant une surface de près de 3000m² seront dédiés à de la création, qu’elle soit artistique, culturelle ou économique. Les locaux seront rénovés et les futurs locataires s’acquitteront d’un loyer réduit en échange de la mise en place d’une démarche collective et coopérative entre les structures retenues, pour faire revivre ces bâtiments dans un esprit similaire à celui qui a animé le site de la COOP durant un siècle. Ouverture prévue de ces nouveaux équipements : premier semestre 2019.', 'La Virgule cherche ses futurs occupants', '', 'publish', 'open', 'open', '', 'la-virgule-cherche-ses-futurs-occupants', '', '', '2017-06-11 19:18:16', '2017-06-11 17:18:16', '', 0, 'http://localhost/coop-marion/?p=35', 0, 'post', '', 0),
(36, 1, '2017-06-08 16:17:38', '2017-06-08 14:17:38', 'Ces espaces couvrant une surface de près de 3000m² seront dédiés à de la création, qu’elle soit artistique, culturelle ou économique. Ouverture prévue de ces nouveaux équipements : premier semestre 2019.', 'La virgule cherche ses futurs occupants', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-06-08 16:17:38', '2017-06-08 14:17:38', '', 35, 'http://localhost/coop-marion/2017/06/08/35-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_marion_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(38, 1, '2017-06-08 17:43:56', '2017-06-08 15:43:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper in nunc in finibus. Donec varius vestibulum iaculis. Vivamus elit ipsum, tincidunt vel tellus sed, euismod convallis mi. Vivamus in volutpat felis, vitae hendrerit libero. Nunc vitae sagittis orci, a viverra enim. Donec in ornare ipsum, et tempus enim. Donec luctus scelerisque lacus, vitae fringilla ligula mattis eu.\r\n\r\nNullam rhoncus varius quam in luctus. Nulla efficitur tincidunt scelerisque. Pellentesque vel tellus magna. Fusce in aliquam tellus. Integer sodales porttitor nisi. Mauris eget imperdiet odio, eget sollicitudin urna. Morbi purus ligula, ultrices vitae nisi ac, tincidunt elementum justo. Praesent non quam non tellus tempus aliquam. Vestibulum a commodo leo, in pretium orci. Morbi lectus quam, interdum a ornare feugiat, ultrices vitae purus. In tristique, sem in ullamcorper hendrerit, nunc purus auctor nisi, sed accumsan justo lacus nec lectus. Nam pretium leo eu turpis imperdiet euismod. In molestie, lectus ac aliquet mollis, est mi placerat enim, vitae suscipit arcu arcu ut ligula. Mauris consequat tristique imperdiet. Pellentesque a risus non nisi luctus placerat. Maecenas mattis mauris turpis, nec commodo urna euismod nec.\r\n\r\nSuspendisse a lacus suscipit, ultrices mi vitae, finibus risus. Nunc placerat nunc at lacus imperdiet, non gravida sapien consectetur. Aenean vehicula pretium leo in mollis. Morbi magna nibh, tempor et venenatis gravida, aliquet id tortor. Quisque blandit porttitor rutrum. Donec ac sodales eros. Nulla aliquam venenatis nunc, vitae lacinia justo interdum sit amet. Suspendisse suscipit mollis arcu sit amet posuere. Pellentesque tempus vel enim venenatis pulvinar. Praesent id lectus nec metus posuere vehicula vitae sed lacus. Donec tincidunt, urna eu ornare rutrum, lacus risus consequat dolor, sed sagittis est velit vitae tortor. Curabitur enim ante, cursus sit amet arcu sit amet, venenatis fringilla arcu. Vestibulum eget tincidunt turpis. In leo ipsum, auctor a nibh quis, accumsan semper sapien.\r\n\r\nSuspendisse pretium tincidunt massa sit amet venenatis. Donec vitae sapien bibendum, scelerisque lorem at, sodales tortor. Fusce ac interdum mauris, vel hendrerit ex. Nulla pharetra hendrerit luctus. Aliquam suscipit consectetur mauris volutpat dignissim. Pellentesque eu elit diam. Nulla non lorem sit amet felis eleifend suscipit. Aliquam tristique, mi vitae fermentum dictum, orci urna vulputate elit, lacinia volutpat quam justo nec mi.\r\n\r\nVestibulum blandit in massa ac porttitor. Nulla facilisi. Duis tincidunt accumsan lacinia. Sed fermentum finibus tellus nec luctus. Vivamus elit diam, suscipit id nisi volutpat, tincidunt fermentum mauris. In hac habitasse platea dictumst. Fusce ultricies ante euismod ligula vehicula, eu cursus enim efficitur. Proin ullamcorper fringilla tincidunt. Nam maximus velit nulla, at sollicitudin sem tempor et. Nam ut nulla id nibh lobortis mattis vitae in ex. Donec orci ipsum, facilisis eget accumsan at, gravida ultrices quam. Quisque rhoncus orci nec quam molestie iaculis. Etiam interdum lectus diam, ut rutrum est sagittis vitae.', 'La virgule cherche ses futurs occupants', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-06-08 17:43:56', '2017-06-08 15:43:56', '', 35, 'http://localhost/coop-marion/2017/06/08/35-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-06-08 17:44:12', '2017-06-08 15:44:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper in nunc in finibus. Donec varius vestibulum iaculis. Vivamus elit ipsum, tincidunt vel tellus sed, euismod convallis mi. Vivamus in volutpat felis, vitae hendrerit libero. Nunc vitae sagittis orci, a viverra enim. Donec in ornare ipsum, et tempus enim. Donec luctus scelerisque lacus, vitae fringilla ligula mattis eu.\r\n\r\nNullam rhoncus varius quam in luctus. Nulla efficitur tincidunt scelerisque. Pellentesque vel tellus magna. Fusce in aliquam tellus. Integer sodales porttitor nisi. Mauris eget imperdiet odio, eget sollicitudin urna. Morbi purus ligula, ultrices vitae nisi ac, tincidunt elementum justo. Praesent non quam non tellus tempus aliquam. Vestibulum a commodo leo, in pretium orci. Morbi lectus quam, interdum a ornare feugiat, ultrices vitae purus. In tristique, sem in ullamcorper hendrerit, nunc purus auctor nisi, sed accumsan justo lacus nec lectus. Nam pretium leo eu turpis imperdiet euismod. In molestie, lectus ac aliquet mollis, est mi placerat enim, vitae suscipit arcu arcu ut ligula. Mauris consequat tristique imperdiet. Pellentesque a risus non nisi luctus placerat. Maecenas mattis mauris turpis, nec commodo urna euismod nec.\r\n\r\nSuspendisse a lacus suscipit, ultrices mi vitae, finibus risus. Nunc placerat nunc at lacus imperdiet, non gravida sapien consectetur. Aenean vehicula pretium leo in mollis. Morbi magna nibh, tempor et venenatis gravida, aliquet id tortor. Quisque blandit porttitor rutrum. Donec ac sodales eros. Nulla aliquam venenatis nunc, vitae lacinia justo interdum sit amet. Suspendisse suscipit mollis arcu sit amet posuere. Pellentesque tempus vel enim venenatis pulvinar. Praesent id lectus nec metus posuere vehicula vitae sed lacus. Donec tincidunt, urna eu ornare rutrum, lacus risus consequat dolor, sed sagittis est velit vitae tortor. Curabitur enim ante, cursus sit amet arcu sit amet, venenatis fringilla arcu. Vestibulum eget tincidunt turpis. In leo ipsum, auctor a nibh quis, accumsan semper sapien.\r\n\r\nSuspendisse pretium tincidunt massa sit amet venenatis. Donec vitae sapien bibendum, scelerisque lorem at, sodales tortor. Fusce ac interdum mauris, vel hendrerit ex. Nulla pharetra hendrerit luctus. Aliquam suscipit consectetur mauris volutpat dignissim. Pellentesque eu elit diam. Nulla non lorem sit amet felis eleifend suscipit. Aliquam tristique, mi vitae fermentum dictum, orci urna vulputate elit, lacinia volutpat quam justo nec mi.\r\n\r\nVestibulum blandit in massa ac porttitor. Nulla facilisi. Duis tincidunt accumsan lacinia. Sed fermentum finibus tellus nec luctus. Vivamus elit diam, suscipit id nisi volutpat, tincidunt fermentum mauris. In hac habitasse platea dictumst. Fusce ultricies ante euismod ligula vehicula, eu cursus enim efficitur. Proin ullamcorper fringilla tincidunt. Nam maximus velit nulla, at sollicitudin sem tempor et. Nam ut nulla id nibh lobortis mattis vitae in ex. Donec orci ipsum, facilisis eget accumsan at, gravida ultrices quam. Quisque rhoncus orci nec quam molestie iaculis. Etiam interdum lectus diam, ut rutrum est sagittis vitae.', 'Résultats dévoilés...', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-06-08 17:44:12', '2017-06-08 15:44:12', '', 33, 'http://localhost/coop-marion/2017/06/08/33-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-06-08 17:44:40', '2017-06-08 15:44:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper in nunc in finibus. Donec varius vestibulum iaculis. Vivamus elit ipsum, tincidunt vel tellus sed, euismod convallis mi. Vivamus in volutpat felis, vitae hendrerit libero. Nunc vitae sagittis orci, a viverra enim. Donec in ornare ipsum, et tempus enim. Donec luctus scelerisque lacus, vitae fringilla ligula mattis eu.\r\n\r\nNullam rhoncus varius quam in luctus. Nulla efficitur tincidunt scelerisque. Pellentesque vel tellus magna. Fusce in aliquam tellus. Integer sodales porttitor nisi. Mauris eget imperdiet odio, eget sollicitudin urna. Morbi purus ligula, ultrices vitae nisi ac, tincidunt elementum justo. Praesent non quam non tellus tempus aliquam. Vestibulum a commodo leo, in pretium orci. Morbi lectus quam, interdum a ornare feugiat, ultrices vitae purus. In tristique, sem in ullamcorper hendrerit, nunc purus auctor nisi, sed accumsan justo lacus nec lectus. Nam pretium leo eu turpis imperdiet euismod. In molestie, lectus ac aliquet mollis, est mi placerat enim, vitae suscipit arcu arcu ut ligula. Mauris consequat tristique imperdiet. Pellentesque a risus non nisi luctus placerat. Maecenas mattis mauris turpis, nec commodo urna euismod nec.\r\n\r\nSuspendisse a lacus suscipit, ultrices mi vitae, finibus risus. Nunc placerat nunc at lacus imperdiet, non gravida sapien consectetur. Aenean vehicula pretium leo in mollis. Morbi magna nibh, tempor et venenatis gravida, aliquet id tortor. Quisque blandit porttitor rutrum. Donec ac sodales eros. Nulla aliquam venenatis nunc, vitae lacinia justo interdum sit amet. Suspendisse suscipit mollis arcu sit amet posuere. Pellentesque tempus vel enim venenatis pulvinar. Praesent id lectus nec metus posuere vehicula vitae sed lacus. Donec tincidunt, urna eu ornare rutrum, lacus risus consequat dolor, sed sagittis est velit vitae tortor. Curabitur enim ante, cursus sit amet arcu sit amet, venenatis fringilla arcu. Vestibulum eget tincidunt turpis. In leo ipsum, auctor a nibh quis, accumsan semper sapien.\r\n\r\nSuspendisse pretium tincidunt massa sit amet venenatis. Donec vitae sapien bibendum, scelerisque lorem at, sodales tortor. Fusce ac interdum mauris, vel hendrerit ex. Nulla pharetra hendrerit luctus. Aliquam suscipit consectetur mauris volutpat dignissim. Pellentesque eu elit diam. Nulla non lorem sit amet felis eleifend suscipit. Aliquam tristique, mi vitae fermentum dictum, orci urna vulputate elit, lacinia volutpat quam justo nec mi.\r\n\r\nVestibulum blandit in massa ac porttitor. Nulla facilisi. Duis tincidunt accumsan lacinia. Sed fermentum finibus tellus nec luctus. Vivamus elit diam, suscipit id nisi volutpat, tincidunt fermentum mauris. In hac habitasse platea dictumst. Fusce ultricies ante euismod ligula vehicula, eu cursus enim efficitur. Proin ullamcorper fringilla tincidunt. Nam maximus velit nulla, at sollicitudin sem tempor et. Nam ut nulla id nibh lobortis mattis vitae in ex. Donec orci ipsum, facilisis eget accumsan at, gravida ultrices quam. Quisque rhoncus orci nec quam molestie iaculis. Etiam interdum lectus diam, ut rutrum est sagittis vitae.', 'Pas de Laiterie à la Coop', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-06-08 17:44:40', '2017-06-08 15:44:40', '', 31, 'http://localhost/coop-marion/2017/06/08/31-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-06-10 15:42:57', '2017-06-10 13:42:57', 'Ces espaces couvrant une surface de près de 3000m² seront dédiés à de la création, qu’elle soit artistique, culturelle ou économique. Ouverture prévue de ces nouveaux équipements : premier semestre 2019.', 'La virgule cherche ses futurs occupants', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-06-10 15:42:57', '2017-06-10 13:42:57', '', 35, 'http://localhost/coop-marion/2017/06/10/35-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-06-10 15:45:34', '2017-06-10 13:45:34', '', '648x415', '', 'inherit', 'open', 'closed', '', '648x415', '', '', '2017-06-10 15:45:34', '2017-06-10 13:45:34', '', 31, 'http://localhost/coop-marion/wp-content/uploads/2017/06/648x415.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2017-06-10 15:51:22', '2017-06-10 13:51:22', '', '648x415.1', '', 'inherit', 'open', 'closed', '', '648x415-1', '', '', '2017-06-10 15:51:22', '2017-06-10 13:51:22', '', 0, 'http://localhost/coop-marion/wp-content/uploads/2017/06/648x415.1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2017-06-10 15:52:58', '2017-06-10 13:52:58', '', 'Sans titre 2', '', 'inherit', 'open', 'closed', '', 'sans-titre-2', '', '', '2017-06-10 15:52:58', '2017-06-10 13:52:58', '', 0, 'http://localhost/coop-marion/wp-content/uploads/2017/06/Sans-titre-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2017-06-10 15:53:59', '2017-06-10 13:53:59', 'La SPL Deux-Rives vient de publier ses premiers marchés de travaux lançant ainsi officiellement la réhabilitation de l’ancien siège de la COOP Alsace situé au Port du Rhin. Ces travaux consisteront au retrait de certains matériaux inertes contenant de l’amiante.\r\n\r\nCe premier marché concerne le désamiantage de l’ancienne cave à vins qui est le plus grand bâtiments du site\r\n\r\nL’installation du chantier est prévue pour le mois d’août 2017 avec la mise en place des confinements nécessaires au retrait de ces matériaux. Les travaux s’étendront ensuite de la mi-septembre au mois de janvier 2018. Dans la foulée de cette phase initiale, les travaux de rénovation et de réaménagement commenceront pour une durée de près de deux ans. A terme, au sein de notre programme d’équipement culturel multisites de la COOP, l’ancienne cave à vins abritera des espaces polyvalents permettant l’accueil d’événements culturels et économiques et l’ancien bâtiment de stockage de l’Union Sociale retrouvera une nouvelle vie en devenant le nouveau pôle d’études et de conservation des musées de Strasbourg.', 'Les premiers travaux sont lancés !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-06-10 15:53:59', '2017-06-10 13:53:59', '', 1, 'http://localhost/coop-marion/2017/06/10/1-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2017-06-10 15:55:30', '2017-06-10 13:55:30', 'Dans le projet initial de réaménagement de la Coop,<a href="http://www.rue89strasbourg.com/la-ville-rachete-la-coop-qui-doit-devenir-la-future-laiterie-81190" target="_blank">la salle de concerts de La Laiterie devait venir s’y installer</a>. Ce ne sera finalement pas le cas car l’enveloppe de 15 millions d’euros prévus pour la Coop y serait passée. Toutefois, le <a href="http://www.artefact.org/lososphere" target="_blank">festival Ososphère</a> sera bien accueilli sur le site mais La Laiterie restera rue du Hohwald. Reste le problème de la jauge de la salle de concerts (1.300 spectateurs). « Une réflexion est menée sur comment la faire évoluer sur le site actuel », avance Alain Fontanel, premier adjoint au maire.', 'Pas de Laiterie à la Coop', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-06-10 15:55:30', '2017-06-10 13:55:30', '', 31, 'http://localhost/coop-marion/2017/06/10/31-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-06-10 15:57:33', '2017-06-10 13:57:33', 'Dans le projet initial de réaménagement de la Coop,<a href="http://www.rue89strasbourg.com/la-ville-rachete-la-coop-qui-doit-devenir-la-future-laiterie-81190" target="_blank">la salle de concerts de La Laiterie devait venir s’y installer</a>. Ce ne sera finalement pas le cas car l’enveloppe de 15 millions d’euros prévus pour la Coop y serait passée. Toutefois, le <a href="http://www.artefact.org/lososphere" target="_blank">festival Ososphère</a> sera bien accueilli sur le site mais La Laiterie restera rue du Hohwald. Reste le problème de la jauge de la salle de concerts (1.300 spectateurs). « Une réflexion est menée sur comment la faire évoluer sur le site actuel », avance Alain Fontanel, premier adjoint au maire.\n\n&nbsp;\n\n&nbsp;', 'Pas de Laiterie à la Coop', '', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2017-06-10 15:57:33', '2017-06-10 13:57:33', '', 31, 'http://localhost/coop-marion/2017/06/10/31-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2017-06-10 15:57:49', '2017-06-10 13:57:49', 'Dans le projet initial de réaménagement de la Coop,<a href="http://www.rue89strasbourg.com/la-ville-rachete-la-coop-qui-doit-devenir-la-future-laiterie-81190" target="_blank">la salle de concerts de La Laiterie devait venir s’y installer</a>. Ce ne sera finalement pas le cas car l’enveloppe de 15 millions d’euros prévus pour la Coop y serait passée. Toutefois, le <a href="http://www.artefact.org/lososphere" target="_blank">festival Ososphère</a> sera bien accueilli sur le site mais La Laiterie restera rue du Hohwald. Reste le problème de la jauge de la salle de concerts (1.300 spectateurs). « Une réflexion est menée sur comment la faire évoluer sur le site actuel », avance Alain Fontanel, premier adjoint au maire.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Pas de Laiterie à la Coop', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-06-10 15:57:49', '2017-06-10 13:57:49', '', 31, 'http://localhost/coop-marion/2017/06/10/31-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-06-10 15:58:22', '2017-06-10 13:58:22', 'La Ville de Strasbourg a lancé en décembre dernier ses deux premiers appels à manifestation d’intérêt (AMI) sur deux bâtiments de la COOP. Début 2017, des porteurs de projet seront choisis pour redonner vie au garage, à la menuiserie et aux anciens ateliers bois du site de la COOP. Situés sur la « virgule », ces espaces couvrant une surface de près de 3000m² seront dédiés à de la création, qu’elle soit artistique, culturelle ou économique. Les locaux seront rénovés et les futurs locataires s’acquitteront d’un loyer réduit en échange de la mise en place d’une démarche collective et coopérative entre les structures retenues, pour faire revivre ces bâtiments dans un esprit similaire à celui qui a animé le site de la COOP durant un siècle. Ouverture prévue de ces nouveaux équipements : premier semestre 2019.', 'La virgule cherche ses futurs occupants', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-06-10 15:58:22', '2017-06-10 13:58:22', '', 35, 'http://localhost/coop-marion/2017/06/10/35-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-06-10 16:00:50', '2017-06-10 14:00:50', 'La SPL Deux-Rives vient de publier ses premiers marchés de travaux lançant ainsi officiellement la réhabilitation de l’ancien siège de la COOP Alsace situé au Port du Rhin. Ces travaux consisteront au retrait de certains matériaux inertes contenant de l’amiante. Ce premier marché concerne le désamiantage de l’ancienne cave à vins qui est le plus grand bâtiments du sit L’installation du chantier est prévue pour le mois d’août 2017 avec la mise en place des confinements nécessaires au retrait de ces matériaux. Les travaux s’étendront ensuite de la mi-septembre au mois de janvier 2018. Dans la foulée de cette phase initiale, les travaux de rénovation et de réaménagement commenceront pour une durée de près de deux ans. A terme, au sein de notre programme d’équipement culturel multisites de la COOP, l’ancienne cave à vins abritera des espaces polyvalents permettant l’accueil d’événements culturels et économiques et l’ancien bâtiment de stockage de l’Union Sociale retrouvera une nouvelle vie en devenant le nouveau pôle d’études et de conservation des musées de Strasbourg.', 'Les premiers travaux sont lancés !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-06-10 16:00:50', '2017-06-10 14:00:50', '', 1, 'http://localhost/coop-marion/2017/06/10/1-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2017-06-10 16:01:35', '2017-06-10 14:01:35', 'La SPL Deux-Rives vient de publier ses premiers marchés de travaux lançant ainsi officiellement la réhabilitation de l’ancien siège de la COOP Alsace situé au Port du Rhin.\r\n\r\nCes premiers marchés concernent le désamiantage de l’ancienne cave à vins et du bâtiment dit de l’Union Sociale qui sont les deux plus grands bâtiments du site, représentant à eux deux une surface de plancher de près de 20 000m2.\r\n\r\nCes travaux consisteront au retrait de certains matériaux inertes contenant de l’amiante comme la colle contenue dans les sols souples, les joints des chaudières ou les garnitures présentes dans les freins des ascenseurs. Dans le même temps, une partie des auvents de ces deux bâtiments seront déconstruits pour permettre la suite des travaux de réaménagement du site.\r\n\r\nL’installation du chantier est prévue pour le mois d’août 2017 avec la mise en place des confinements nécessaires au retrait de ces matériaux. Les travaux s’étendront ensuite de la mi-septembre au mois de janvier 2018. Dans la foulée de cette phase initiale, les travaux de rénovation et de réaménagement commenceront pour une durée de près de deux ans.\r\n\r\nA terme, au sein de notre programme d’équipement culturel multisites de la COOP, l’ancienne cave à vins abritera des espaces polyvalents permettant l’accueil d’événements culturels et économiques et l’ancien bâtiment de stockage de l’Union Sociale retrouvera une nouvelle vie en devenant le nouveau pôle d’études et de conservation des musées de Strasbourg.', 'Les premiers travaux sont lancés !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-06-10 16:01:35', '2017-06-10 14:01:35', '', 1, 'http://localhost/coop-marion/2017/06/10/1-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-06-11 17:07:52', '2017-06-11 15:07:52', '<p class="intro">Le festival Ososphère, bientôt 20 ans d’âge, est de retour à la Coop sur le site du Port du Rhin à Strasbourg pour célébrer les arts et cultures numériques, du 28 avril au 7 mai. Inauguré par un week-end de concerts, il se poursuivra avec un parcours artistique, des performances, des débats</p>\r\nAprès une petite parenthèse de deux ans à la Laiterie, le festival Ososphère revient dans son port d’attache, c’est-à-dire le Port du Rhin sur le site de l’ancien siège de la Coop, bien plus adapté à ses ambitions.\r\n\r\nLe festival pluridisciplinaire, dédié aux pratiques numériques, s’ouvrira le dernier week-end d’avril, les 28 et 29, par les nuits électroniques, avec un site totalement relooké par les jeux de lumières et les projections vidéos pour valoriser ce patrimoine industriel.', 'L’Ososphère à la COOP', '', 'publish', 'open', 'open', '', 'lososphere-a-la-coop', '', '', '2017-06-11 17:08:51', '2017-06-11 15:08:51', '', 0, 'http://localhost/coop-marion/?p=58', 0, 'post', '', 0),
(59, 1, '2017-06-11 17:07:52', '2017-06-11 15:07:52', '<p class="intro">Le festival Ososphère, bientôt 20 ans d’âge, est de retour à la Coop sur le site du Port du Rhin à Strasbourg pour célébrer les arts et cultures numériques, du 28 avril au 7 mai. Inauguré par un week-end de concerts, il se poursuivra avec un parcours artistique, des performances, des débats</p>\r\nAprès une petite parenthèse de deux ans à la Laiterie, le festival Ososphère revient dans son port d’attache, c’est-à-dire le Port du Rhin sur le site de l’ancien siège de la Coop, bien plus adapté à ses ambitions.\r\n\r\nLe festival pluridisciplinaire, dédié aux pratiques numériques, s’ouvrira le dernier week-end d’avril, les 28 et 29, par les nuits électroniques, avec un site totalement relooké par les jeux de lumières et les projections vidéos pour valoriser ce patrimoine industriel.', 'L’Ososphère à la COOP', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-06-11 17:07:52', '2017-06-11 15:07:52', '', 58, 'http://localhost/coop-marion/2017/06/11/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-06-11 17:08:41', '2017-06-11 15:08:41', '', 'la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119', '', 'inherit', 'open', 'closed', '', 'la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119', '', '', '2017-06-11 17:08:41', '2017-06-11 15:08:41', '', 58, 'http://localhost/coop-marion/wp-content/uploads/2017/06/la-scene-de-la-cave-a-vin-peut-contenir-quelque-3-500-personnes-photo-dna-michel-frison-1420434119.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2017-06-11 17:14:21', '2017-06-11 15:14:21', 'Dans le projet initial de réaménagement de la Coop,<a href="http://www.rue89strasbourg.com/la-ville-rachete-la-coop-qui-doit-devenir-la-future-laiterie-81190" target="_blank">la salle de concerts de La Laiterie devait venir s’y installer</a>. Ce ne sera finalement pas le cas car l’enveloppe de 15 millions d’euros prévus pour la Coop y serait passée. Toutefois, le <a href="http://www.artefact.org/lososphere" target="_blank">festival Ososphère</a> sera bien accueilli sur le site mais La Laiterie restera rue du Hohwald. Reste le problème de la jauge de la salle de concerts (1.300 spectateurs). « Une réflexion est menée sur comment la faire évoluer sur le site actuel », avance Alain Fontanel, premier adjoint au maire.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Pas de Laiterie à la COOP', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-06-11 17:14:21', '2017-06-11 15:14:21', '', 31, 'http://localhost/coop-marion/2017/06/11/31-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-06-11 18:15:52', '2017-06-11 16:15:52', 'La Ville de Strasbourg a lancé en décembre dernier ses deux premiers appels à manifestation d’intérêt (AMI) sur deux bâtiments de la COOP. Début 2017, des porteurs de projet seront choisis pour redonner vie au garage, à la menuiserie et aux anciens ateliers bois du site de la COOP. Situés sur la « virgule », ces espaces couvrant une surface de près de 3000m² seront dédiés à de la création, qu’elle soit artistique, culturelle ou économique. Les locaux seront rénovés et les futurs locataires s’acquitteront d’un loyer réduit en échange de la mise en place d’une démarche collective et coopérative entre les structures retenues, pour faire revivre ces bâtiments dans un esprit similaire à celui qui a animé le site de la COOP durant un siècle. Ouverture prévue de ces nouveaux équipements : premier semestre 2019.', 'La Virgule cherche ses futurs occupants', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-06-11 18:15:52', '2017-06-11 16:15:52', '', 35, 'http://localhost/coop-marion/2017/06/11/35-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-06-11 18:20:44', '2017-06-11 16:20:44', 'Au total, neuf projets ont été soumis à la Société publique locale (SPL) des Deux-Rives, qui supervise le projet. Alors que le projet Coop a connu des accrocs (il était d’abord question d’y déménager la salle de concert la Laiterie près de la gare), le premier adjoint au maire Alain Fontanel (PS) peut maintenant annoncer un calendrier :\r\n\r\n« Des études complémentaires seront finalisées pour des travaux à l’été 2018 et un déménagement à l’été 2019. On entre dans une phase concrète, où on lancé également un autre appel à manifestation d’intérêt pour les anciens bâtiments de la cave à vin et de l’union sociale. »\r\n\r\nLà où l’opposition a parfois critiqué de l’impréparation et de l’improvisation sur le dossier de la Coop, l’architecte Alexandre Chemetoff qu’il s’agissait d’un dossier « évolutif » :', 'Un bâtiment rénové', '', 'publish', 'open', 'open', '', 'un-batiment-renove', '', '', '2017-06-11 21:06:08', '2017-06-11 19:06:08', '', 0, 'http://localhost/coop-marion/?p=63', 0, 'post', '', 0),
(64, 1, '2017-06-11 18:20:07', '2017-06-11 16:20:07', '', 'ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875', '', 'inherit', 'open', 'closed', '', 'ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875', '', '', '2017-06-11 18:20:07', '2017-06-11 16:20:07', '', 63, 'http://localhost/coop-marion/wp-content/uploads/2017/06/ba-cc-82timents-coop-credits-ems-jerome-dorkel-1280x875.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2017-06-11 18:20:44', '2017-06-11 16:20:44', 'Au cœur du territoire de projet, la COOP offrira aux habitants du territoire des Deux Rives une centralité culturelle, économique, citoyenne, associant services de proximité et attractivité métropolitaine.\r\n\r\nLa Coop accueillera en effet plus de 60 000 m² d’espaces dédiés à des fonctions économiques et socio-culturelles ainsi que des services de proximité et environ 350 logements. Ces espaces ouvriront dès 2019, concomitamment à la mise en service de la station de tramway <em>StarCoop-Petit Rhin.</em>\r\n\r\n<strong>La « COOP » est principalement constituée des emprises et bâtiments de l’ancienne « union des coopérateurs d’Alsace », réseau de distribution emblématique du territoire.</strong>\r\n\r\n&nbsp;\r\n\r\nLa « coopé » y installa son siège en 1911 et y développa ses activités de production et distribution au cours du XXème siècle, jusqu’à la cessation d’activité de l’entreprise et le rachat du site par la SPL Deux-Rives en 2015.\r\n\r\nL’organisation du festival d’arts numériques et de musiques électroniques Ososphère, la présence d’ateliers d’artistes ou l’esprit coopératif historique de l’entreprise COOP d’Alsace ont conforté les premières orientations stratégiques du site : un lieu de nouvelles mixités entre économie (portuaire, industrielle, créative, numérique, sociale &amp; solidaire, …), culture et vie citoyenne.\r\n\r\nL’état et l’histoire du lieu éclairent ainsi le devenir de la coop. Coop Alsace fut un projet entrepreneurial et social, le projet d’une autre manière de consommer, un projet de valorisation de savoir-faire et produits locaux. La « coop » porte et décline cet héritage dans ses projets et sa démarche.\r\n\r\n&nbsp;\r\n\r\n<strong>La coop devient le lieu où s’invente avec A. Chemetoff une « culture coopérative » de la ville.</strong>', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-11 18:20:44', '2017-06-11 16:20:44', '', 63, 'http://localhost/coop-marion/2017/06/11/63-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-06-11 18:21:41', '2017-06-11 16:21:41', 'Au cœur du territoire de projet, la COOP offrira aux habitants du territoire des Deux Rives une centralité culturelle, économique, citoyenne, associant services de proximité et attractivité métropolitaine.\r\n\r\nLa Coop accueillera en effet plus de 60 000 m² d’espaces dédiés à des fonctions économiques et socio-culturelles ainsi que des services de proximité et environ 350 logements. Ces espaces ouvriront dès 2019, concomitamment à la mise en service de la station de tramway <em>StarCoop-Petit Rhin.</em>\r\n\r\nLa « coopé » y installa son siège en 1911 et y développa ses activités de production et distribution au cours du XXème siècle, jusqu’à la cessation d’activité de l’entreprise et le rachat du site par la SPL Deux-Rives en 2015.\r\n\r\nL’organisation du festival d’arts numériques et de musiques électroniques Ososphère, la présence d’ateliers d’artistes ou l’esprit coopératif historique de l’entreprise COOP d’Alsace ont conforté les premières orientations stratégiques du site : un lieu de nouvelles mixités entre économie (portuaire, industrielle, créative, numérique, sociale &amp; solidaire, …), culture et vie citoyenne.\r\n\r\nL’état et l’histoire du lieu éclairent ainsi le devenir de la coop. Coop Alsace fut un projet entrepreneurial et social, le projet d’une autre manière de consommer, un projet de valorisation de savoir-faire et produits locaux. La « coop » porte et décline cet héritage dans ses projets et sa démarche.\r\n\r\n&nbsp;', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-11 18:21:41', '2017-06-11 16:21:41', '', 63, 'http://localhost/coop-marion/2017/06/11/63-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-06-11 18:22:31', '2017-06-11 16:22:31', 'Au cœur du territoire de projet, la COOP offrira aux habitants du territoire des Deux Rives une centralité culturelle, économique, citoyenne, associant services de proximité et attractivité métropolitaine.\r\nLa Coop accueillera en effet plus de 60 000 m² d’espaces dédiés à des fonctions économiques et socio-culturelles ainsi que des services de proximité et environ 350 logements. Ces espaces ouvriront dès 2019, concomitamment à la mise en service de la station de tramway <em>StarCoop-Petit Rhin.\r\n</em>La « coopé » y installa son siège en 1911 et y développa ses activités de production et distribution au cours du XXème siècle, jusqu’à la cessation d’activité de l’entreprise et le rachat du site par la SPL Deux-Rives en 2015.\r\nL’organisation du festival d’arts numériques et de musiques électroniques Ososphère, la présence d’ateliers d’artistes ou l’esprit coopératif historique de l’entreprise COOP d’Alsace ont conforté les premières orientations stratégiques du site : un lieu de nouvelles mixités entre économie (portuaire, industrielle, créative, numérique, sociale &amp; solidaire, …), culture et vie citoyenne.\r\nL’état et l’histoire du lieu éclairent ainsi le devenir de la coop. Coop Alsace fut un projet entrepreneurial et social, le projet d’une autre manière de consommer, un projet de valorisation de savoir-faire et produits locaux. La « coop » porte et décline cet héritage dans ses projets et sa démarche.\r\n\r\n&nbsp;', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-11 18:22:31', '2017-06-11 16:22:31', '', 63, 'http://localhost/coop-marion/2017/06/11/63-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-06-11 18:28:53', '2017-06-11 16:28:53', 'Au cœur du territoire de projet, la COOP offrira aux habitants du territoire des Deux Rives une centralité culturelle, économique, citoyenne, associant services de proximité et attractivité métropolitaine.\r\nLa Coop accueillera en effet plus de 60 000 m² d’espaces dédiés à des fonctions économiques et socio-culturelles ainsi que des services de proximité et environ 350 logements.\r\n\r\nCes espaces ouvriront dès 2019, concomitamment à la mise en service de la station de tramway <em>StarCoop-Petit Rhin.\r\n</em>La « coopé » y installa son siège en 1911 et y développa ses activités de production et distribution au cours du XXème siècle, jusqu’à la cessation d’activité de l’entreprise et le rachat du site par la SPL Deux-Rives en 2015.\r\nL’organisation du festival d’arts numériques et de musiques électroniques Ososphère, la présence d’ateliers d’artistes ou l’esprit coopératif historique de l’entreprise COOP d’Alsace ont conforté les premières orientations stratégiques du site : un lieu de nouvelles mixités entre économie (portuaire, industrielle, créative, numérique, sociale &amp; solidaire, …), culture et vie citoyenne.\r\nL’état et l’histoire du lieu éclairent ainsi le devenir de la coop. Coop Alsace fut un projet entrepreneurial et social, le projet d’une autre manière de consommer, un projet de valorisation de savoir-faire et produits locaux. La « coop » porte et décline cet héritage dans ses projets et sa démarche.\r\n\r\n&nbsp;', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-11 18:28:53', '2017-06-11 16:28:53', '', 63, 'http://localhost/coop-marion/2017/06/11/63-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-06-11 18:29:04', '2017-06-11 16:29:04', 'Au cœur du territoire de projet, la COOP offrira aux habitants du territoire des Deux Rives une centralité culturelle, économique, citoyenne, associant services de proximité et attractivité métropolitaine.\r\nLa Coop accueillera en effet plus de 60 000 m² d’espaces dédiés à des fonctions économiques et socio-culturelles ainsi que des services de proximité et environ 350 logements.\r\n\r\nCes espaces ouvriront dès 2019, concomitamment à la mise en service de la station de tramway <em>StarCoop-Petit Rhin.\r\n</em>La « coopé » y installa son siège en 1911 et y développa ses activités de production et distribution au cours du XXème siècle, jusqu’à la cessation d’activité de l’entreprise et le rachat du site par', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-11 18:29:04', '2017-06-11 16:29:04', '', 63, 'http://localhost/coop-marion/2017/06/11/63-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-06-11 18:29:19', '2017-06-11 16:29:19', 'Au cœur du territoire de projet, la COOP offrira aux habitants du territoire des Deux Rives une centralité culturelle, économique, citoyenne, associant services de proximité et attractivité métropolitaine.\r\nLa Coop accueillera en effet plus de 60 000 m² d’espaces dédiés à des fonctions économiques et socio-culturelles ainsi que des services de proximité et environ 350 logements.\r\n\r\n&nbsp;', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-11 18:29:19', '2017-06-11 16:29:19', '', 63, 'http://localhost/coop-marion/2017/06/11/63-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-06-11 18:30:02', '2017-06-11 16:30:02', 'Au cœur du territoire de projet, la COOP offrira aux habitants du territoire des Deux Rives une centralité culturelle, économique, citoyenne, associant services de proximité et attractivité métropolitaine.\r\nLa Coop accueillera en effet plus de 60 000 m² d’espaces dédiés à des fonctions économiques et socio-culturelles ainsi que des services de proximité et environ 350 logements. Ces espaces ouvriront dès 2019, concomitamment à la mise en service de la station de tramway <em>StarCoop-Petit Rhin.\r\n</em>La « coopé » y installa son siège en 1911 et y développa ses activités de production et distribution au cours du XXème siècle, jusqu’à la cessation d’activité de l’entreprise et le rachat du site par\r\n\r\nla SPL Deux-Rives en 2015.\r\nL’organisation du festival d’arts numériques et de musiques électroniques Ososphère, la présence d’ateliers d’artistes ou l’esprit coopératif historique de l’entreprise COOP d’Alsace ont conforté les premières orientations stratégiques du site : un lieu de nouvelles mixités entre économie (portuaire, industrielle, créative, numérique, sociale &amp; solidaire, …), culture et vie citoyenne.\r\nL’état et l’histoire du lieu éclairent ainsi le devenir de la coop. Coop Alsace fut un projet entrepreneurial et social, le projet d’une autre manière de consommer, un projet de valorisation de savoir-faire et produits locaux. La « coop » porte et décline cet héritage dans ses projets et sa démarche.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-11 18:30:02', '2017-06-11 16:30:02', '', 63, 'http://localhost/coop-marion/2017/06/11/63-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-06-11 18:32:43', '2017-06-11 16:32:43', 'Au cœur du territoire de projet, la COOP offrira aux habitants du territoire des Deux Rives une centralité culturelle, économique, citoyenne, associant services de proximité et attractivité métropolitaine. La Coop accueillera en effet plus de 60 000 m² d’espaces dédiés à des fonctions économiques et socio-culturelles ainsi que des services de proximité et environ 350 logements. Ces espaces ouvriront dès 2019, concomitamment à la mise en service de la station de tramway StarCoop-Petit Rhin. La « coopé » y installa son siège en 1911 et y développa ses activités de production et distribution au cours du XXème siècle, jusqu’à la cessation d’activité de l’entreprise et le rachat du site par la SPL Deux-Rives en 2015.\r\nL’organisation du festival d’arts numériques et de musiques électroniques Ososphère, la présence d’ateliers d’artistes ou l’esprit coopératif historique de l’entreprise COOP d’Alsace ont conforté les premières orientations stratégiques du site : un lieu de nouvelles mixités entre économie (portuaire, industrielle, créative, numérique, sociale &amp; solidaire, …), culture et vie citoyenne.\r\nL’état et l’histoire du lieu éclairent ainsi le devenir de la coop. Coop Alsace fut un projet entrepreneurial et social, le projet d’une autre manière de consommer, un projet de valorisation de savoir-faire et produits locaux. La « coop » porte et décline cet héritage dans ses projets et sa démarche.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-11 18:32:43', '2017-06-11 16:32:43', '', 63, 'http://localhost/coop-marion/2017/06/11/63-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-06-11 18:33:19', '2017-06-11 16:33:19', 'Au cœur du territoire de projet, la COOP offrira aux habitants du territoire des Deux Rives une centralité culturelle, économique, citoyenne, associant services de proximité et attractivité métropolitaine. La Coop accueillera en effet plus de 60 000 m² d’espaces dédiés à des fonctions économiques et socio-culturelles. Ces espaces ouvriront dès 2019, concomitamment à la mise en service de la station de tramway StarCoop-Petit Rhin. La « coopé » y installa son siège en 1911 et y développa ses activités de production et distribution au cours du XXème siècle, jusqu’à la cessation d’activité de l’entreprise et le rachat du site par la SPL Deux-Rives en 2015.\nL’organisation du festival d’arts numériques et de musiques électroniques Ososphère, la présence d’ateliers d’artistes ou l’esprit coopératif historique de l’entreprise COOP d’Alsace ont conforté les premières orientations stratégiques du site : un lieu de nouvelles mixités entre économie (portuaire, industrielle, créative, numérique, sociale &amp; solidaire, …), culture et vie citoyenne.\nL’état et l’histoire du lieu éclairent ainsi le devenir de la coop. Coop Alsace fut un projet entrepreneurial et social, le projet d’une autre manière de consommer, un projet de valorisation de savoir-faire et produits locaux. La « coop » porte et décline cet héritage dans ses projets et sa démarche.\n\n&nbsp;\n\n&nbsp;', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-autosave-v1', '', '', '2017-06-11 18:33:19', '2017-06-11 16:33:19', '', 63, 'http://localhost/coop-marion/2017/06/11/63-autosave-v1/', 0, 'revision', '', 0),
(74, 1, '2017-06-11 18:33:30', '2017-06-11 16:33:30', 'Au cœur du territoire de projet, la COOP offrira aux habitants du territoire des Deux Rives une centralité culturelle, économique, citoyenne, associant services de proximité et attractivité métropolitaine. La Coop accueillera en effet plus de 60 000 m² d’espaces dédiés à des fonctions économiques et socio-culturelles. Ces espaces ouvriront dès 2019, concomitamment à la mise en service de la station de tramway StarCoop-Petit Rhin. La « coopé » y installa son siège en 1911 et y développa ses activités de production et distribution au cours du XXème siècle, jusqu’à la cessation d’activité de l’entreprise et le rachat du site par la SPL Deux-Rives en 2015.\r\nL’organisation du festival d’arts numériques et de musiques électroniques Ososphère, la présence d’ateliers d’artistes ou l’esprit coopératif historique de l’entreprise COOP d’Alsace ont conforté les premières orientations stratégiques du site : un lieu de nouvelles mixités entre économie (portuaire, industrielle, créative, numérique, sociale &amp; solidaire, …), culture et vie citoyenne.\r\nL’état et l’histoire du lieu éclairent ainsi le devenir de la coop. Coop Alsace fut un projet entrepreneurial et social, le projet d’une autre manière de consommer, un projet de valorisation de savoir-faire et produits locaux. La « coop » porte et décline cet héritage dans ses projets et sa démarche.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-11 18:33:30', '2017-06-11 16:33:30', '', 63, 'http://localhost/coop-marion/2017/06/11/63-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-06-11 18:33:56', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-06-11 18:33:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/coop-marion/?p=75', 0, 'post', '', 0),
(76, 1, '2017-06-11 19:12:57', '2017-06-11 17:12:57', 'Les résultats de l’appel à manifestation d’intérêt pour occuper trois bâtiments de l’ancienne Coop, ont été dévoilés. En effet, Salle d’expo, Fab lab, ateliers d’artistes et espace de co-working occuperont la partie ouest.\r\nL’ancien garage (1 900 m² au total) est séparé en deux espaces. Dans le garage nord et la maison à l’angle avec la demi-lune, on retrouvera des ateliers d’artistes pour les illustrateurs et les illustratrices de Central Vapeur, Etienne Chaize et Editions 2024 ; les artistes contemporains d’Accélérateur de particules ou les designer (Sonia Verguet, Sébastien Poilvert, SPM, iDee). Ils croiseront leur travail avec des spécialistes de l’animation (Nojo), les arts visuels (Arachnima), de graphisme (Cercle Studio) ou d’impression (Gargarismes).\r\n\r\nDans le garage sud, les artistes de la Semencerie ont été sélectionnés. La pépinière est implantée dans le quartier gare mais suspendue à un déménagement en cas de vente des anciens entrepôts des semences Nungesser. Juste à côté de ces bâtiments, un « café musique » fera également l’objet d’un futur appel à projets.\r\n\r\nEnfin, l’ancienne menuiserie (1 200 m²) gardera un lien avec le travail du bois. Géré par l’association AV lab et la coopérative « les ateliers éclairés », un atelier (un fab lab) permettra de travailler le bois, les textiles ou les métaux. Les deux structures veulent aussi implanter un petit espace de co-working et des locaux tournés vers les nouvelles technologies comme la réalité virtuelle. Pour les trois lieux, les occupants seront locataires.', 'Résultats dévoilés...', '', 'publish', 'open', 'open', '', 'resultats-devoiles', '', '', '2017-06-11 19:15:45', '2017-06-11 17:15:45', '', 0, 'http://localhost/coop-marion/?p=76', 0, 'post', '', 0),
(77, 1, '2017-06-11 19:12:57', '2017-06-11 17:12:57', 'Les résultats de l’appel à manifestation d’intérêt pour occuper trois bâtiments de l’ancienne Coop, ont été dévoilés. En effet, Salle d’expo, Fab lab, ateliers d’artistes et espace de co-working occuperont la partie ouest.', 'Résultats dévoilés...', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-06-11 19:12:57', '2017-06-11 17:12:57', '', 76, 'http://localhost/coop-marion/2017/06/11/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-06-11 19:13:58', '2017-06-11 17:13:58', '', 'Coop_plan_ac', '', 'inherit', 'open', 'closed', '', 'coop_plan_ac', '', '', '2017-06-11 19:13:58', '2017-06-11 17:13:58', '', 76, 'http://localhost/coop-marion/wp-content/uploads/2017/06/Coop_plan_ac.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2017-06-11 19:15:45', '2017-06-11 17:15:45', 'Les résultats de l’appel à manifestation d’intérêt pour occuper trois bâtiments de l’ancienne Coop, ont été dévoilés. En effet, Salle d’expo, Fab lab, ateliers d’artistes et espace de co-working occuperont la partie ouest.\r\nL’ancien garage (1 900 m² au total) est séparé en deux espaces. Dans le garage nord et la maison à l’angle avec la demi-lune, on retrouvera des ateliers d’artistes pour les illustrateurs et les illustratrices de Central Vapeur, Etienne Chaize et Editions 2024 ; les artistes contemporains d’Accélérateur de particules ou les designer (Sonia Verguet, Sébastien Poilvert, SPM, iDee). Ils croiseront leur travail avec des spécialistes de l’animation (Nojo), les arts visuels (Arachnima), de graphisme (Cercle Studio) ou d’impression (Gargarismes).\r\n\r\nDans le garage sud, les artistes de la Semencerie ont été sélectionnés. La pépinière est implantée dans le quartier gare mais suspendue à un déménagement en cas de vente des anciens entrepôts des semences Nungesser. Juste à côté de ces bâtiments, un « café musique » fera également l’objet d’un futur appel à projets.\r\n\r\nEnfin, l’ancienne menuiserie (1 200 m²) gardera un lien avec le travail du bois. Géré par l’association AV lab et la coopérative « les ateliers éclairés », un atelier (un fab lab) permettra de travailler le bois, les textiles ou les métaux. Les deux structures veulent aussi implanter un petit espace de co-working et des locaux tournés vers les nouvelles technologies comme la réalité virtuelle. Pour les trois lieux, les occupants seront locataires.', 'Résultats dévoilés...', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-06-11 19:15:45', '2017-06-11 17:15:45', '', 76, 'http://localhost/coop-marion/2017/06/11/76-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-06-11 19:16:52', '2017-06-11 17:16:52', 'Au total, neuf projets ont été soumis à la Société publique locale (SPL) des Deux-Rives, qui supervise le projet. Alors que le projet Coop a connu des accrocs (il était d’abord question d’y déménager la salle de concert la Laiterie près de la gare), le premier adjoint au maire Alain Fontanel (PS) peut maintenant annoncer un calendrier :\r\n\r\n« Des études complémentaires seront finalisées pour des travaux à l’été 2018 et un déménagement à l’été 2019. On entre dans une phase concrète, où on lancé également un autre appel à manifestation d’intérêt pour les anciens bâtiments de la cave à vin et de l’union sociale. »\r\n\r\nLà où l’opposition a parfois critiqué de l’impréparation et de l’improvisation sur le dossier de la Coop, l’architecte Alexandre Chemetoff qu’il s’agissait d’un dossier « évolutif » :', 'Un bâtiment rénové', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-06-11 19:16:52', '2017-06-11 17:16:52', '', 63, 'http://localhost/coop-marion/2017/06/11/63-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_marion_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(81, 1, '2017-06-11 19:18:11', '2017-06-11 17:18:11', '', 'marion', '', 'inherit', 'open', 'closed', '', 'marion', '', '', '2017-06-11 19:18:11', '2017-06-11 17:18:11', '', 35, 'http://localhost/coop-marion/wp-content/uploads/2017/06/marion.jpg', 0, 'attachment', 'image/jpeg', 0) ;

#
# End of data contents of table `wp_marion_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_term_relationships`
#

DROP TABLE IF EXISTS `wp_marion_term_relationships`;


#
# Table structure of table `wp_marion_term_relationships`
#

CREATE TABLE `wp_marion_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_term_relationships`
#
INSERT INTO `wp_marion_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 7, 0),
(4, 1, 0),
(6, 1, 0),
(12, 1, 0),
(16, 1, 0),
(22, 2, 0),
(23, 2, 0),
(25, 2, 0),
(31, 1, 0),
(33, 1, 0),
(35, 1, 0),
(58, 1, 0),
(63, 1, 0),
(76, 1, 0) ;

#
# End of data contents of table `wp_marion_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_marion_term_taxonomy`;


#
# Table structure of table `wp_marion_term_taxonomy`
#

CREATE TABLE `wp_marion_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_term_taxonomy`
#
INSERT INTO `wp_marion_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_marion_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_termmeta`
#

DROP TABLE IF EXISTS `wp_marion_termmeta`;


#
# Table structure of table `wp_marion_termmeta`
#

CREATE TABLE `wp_marion_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_termmeta`
#

#
# End of data contents of table `wp_marion_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_terms`
#

DROP TABLE IF EXISTS `wp_marion_terms`;


#
# Table structure of table `wp_marion_terms`
#

CREATE TABLE `wp_marion_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_terms`
#
INSERT INTO `wp_marion_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Quartier Port du Rhin', 'quartier-port-du-rhin', 0),
(2, 'Menu principal', 'menu-principal', 0),
(3, 'La Virgule', 'la-virgule', 0),
(4, 'La Demi-Lune', 'la-demi-lune', 0),
(5, 'Coop Alsace', 'la-coop', 0),
(7, 'L\'Ososphère', 'lososphere', 0) ;

#
# End of data contents of table `wp_marion_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_usermeta`
#

DROP TABLE IF EXISTS `wp_marion_usermeta`;


#
# Table structure of table `wp_marion_usermeta`
#

CREATE TABLE `wp_marion_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_usermeta`
#
INSERT INTO `wp_marion_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_marion_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_marion_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:"81b4e499ce3a3fdb7b7f26d1d021728e070c9a5fb42507dd21825f8428547610";a:4:{s:10:"expiration";i:1498045325;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1496835725;}s:64:"84964702e08b918d95a6cec93a460839bcd451999f06cfc65860d9aa7528dd3d";a:4:{s:10:"expiration";i:1497366332;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1497193532;}}'),
(16, 1, 'wp_marion_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'wp_marion_user-settings', 'editor=html&libraryContent=browse'),
(21, 1, 'wp_marion_user-settings-time', '1497198830') ;

#
# End of data contents of table `wp_marion_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_marion_users`
#

DROP TABLE IF EXISTS `wp_marion_users`;


#
# Table structure of table `wp_marion_users`
#

CREATE TABLE `wp_marion_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_marion_users`
#
INSERT INTO `wp_marion_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BmjB4blTL8w4WIQxAQZWccGgb4t43f0', 'admin', 'marion.lauf@gmail.com', '', '2017-06-07 11:42:00', '', 0, 'admin') ;

#
# End of data contents of table `wp_marion_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

