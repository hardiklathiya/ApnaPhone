-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 08:00 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myphone`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`) VALUES
(1, 'Django', 1, 'Django administration', 1, 'admin-interface/logo/logo.png', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#0C4B33', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 0, 1, '#000000', 1, '#FFFFFF', 1, '', '0.2', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 100, 1),
(2, 'Premium Theme', 0, 'Apna Phone Admin', 1, 'admin-interface/logo/logo_orf0W9s.png', 1, '#112E51', '#FFFFFF', '#FFFFFF', '#FFFFFF', '#E1F3F8', '#205493', '#FFFFFF', '#FFFFFF', '#E1F3F8', 1, '#205493', '#0071BC', '#205493', '#112E51', '#FFFFFF', '#CD2026', '#981B1E', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, 'admin-interface/favicon/logo_K3lBiaq.png', '0.9', '', 1, '#E74C3C', 1, 1, 1, 'name', 1, 1, 1, '#FFFFCC', '#FFFFFF', 70, 70, 1),
(3, 'Foundation', 0, 'Django administration', 0, '', 1, '#2C3840', '#DDDDDD', '#FFFFFF', '#FFFFFF', '#DDDDDD', '#074E68', '#FFFFFF', '#FFFFFF', '#DDDDDD', 1, '#000000', '#074E68', '#2199E8', '#1585CF', '#FFFFFF', '#CC4B37', '#BF4634', '#FFFFFF', 0, 1, '#000000', 1, '#CCCCCC', 1, '', '0.2', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1),
(4, 'Bootstrap', 0, 'Django administration', 0, '', 1, '#FFFFFF', '#503873', '#463265', '#463265', '#7351A6', '#7351A6', '#FFFFFF', '#CDBFE3', '#FFFFFF', 1, '#463265', '#7351A6', '#5CB85C', '#449D44', '#FFFFFF', '#D9534F', '#C9302C', '#FFFFFF', 0, 1, '#503873', 1, '#503873', 1, '', '0.2', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add registration', 7, 'add_registration'),
(26, 'Can change registration', 7, 'change_registration'),
(27, 'Can delete registration', 7, 'delete_registration'),
(28, 'Can view registration', 7, 'view_registration'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add contact', 11, 'add_contact'),
(42, 'Can change contact', 11, 'change_contact'),
(43, 'Can delete contact', 11, 'delete_contact'),
(44, 'Can view contact', 11, 'view_contact'),
(45, 'Can add order master', 12, 'add_ordermaster'),
(46, 'Can change order master', 12, 'change_ordermaster'),
(47, 'Can delete order master', 12, 'delete_ordermaster'),
(48, 'Can view order master', 12, 'view_ordermaster'),
(49, 'Can add order details', 13, 'add_orderdetails'),
(50, 'Can change order details', 13, 'change_orderdetails'),
(51, 'Can delete order details', 13, 'delete_orderdetails'),
(52, 'Can view order details', 13, 'view_orderdetails'),
(53, 'Can add my order', 14, 'add_myorder'),
(54, 'Can change my order', 14, 'change_myorder'),
(55, 'Can delete my order', 14, 'delete_myorder'),
(56, 'Can view my order', 14, 'view_myorder'),
(57, 'Can add order info', 15, 'add_orderinfo'),
(58, 'Can change order info', 15, 'change_orderinfo'),
(59, 'Can delete order info', 15, 'delete_orderinfo'),
(60, 'Can view order info', 15, 'view_orderinfo'),
(61, 'Can add banner', 16, 'add_banner'),
(62, 'Can change banner', 16, 'change_banner'),
(63, 'Can delete banner', 16, 'delete_banner'),
(64, 'Can view banner', 16, 'view_banner'),
(65, 'Can add Theme', 17, 'add_theme'),
(66, 'Can change Theme', 17, 'change_theme'),
(67, 'Can delete Theme', 17, 'delete_theme'),
(68, 'Can view Theme', 17, 'view_theme'),
(69, 'Can add signup', 18, 'add_signup'),
(70, 'Can change signup', 18, 'change_signup'),
(71, 'Can delete signup', 18, 'delete_signup'),
(72, 'Can view signup', 18, 'view_signup'),
(73, 'Can add pinned application', 19, 'add_pinnedapplication'),
(74, 'Can change pinned application', 19, 'change_pinnedapplication'),
(75, 'Can delete pinned application', 19, 'delete_pinnedapplication'),
(76, 'Can view pinned application', 19, 'view_pinnedapplication'),
(77, 'Can add bookmark', 20, 'add_bookmark'),
(78, 'Can change bookmark', 20, 'change_bookmark'),
(79, 'Can delete bookmark', 20, 'delete_bookmark'),
(80, 'Can view bookmark', 20, 'view_bookmark'),
(81, 'Can add user dashboard module', 21, 'add_userdashboardmodule'),
(82, 'Can change user dashboard module', 21, 'change_userdashboardmodule'),
(83, 'Can delete user dashboard module', 21, 'delete_userdashboardmodule'),
(84, 'Can view user dashboard module', 21, 'view_userdashboardmodule');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$braq016rlkAjP7LfgOPcJf$W9zCop5B5jV73wSXPBk5gIXPaAqKqEX/WnAGYpYwmsc=', '2022-04-14 05:16:07.359164', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-02-18 07:46:31.715378');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_userdashboardmodule`
--

CREATE TABLE `dashboard_userdashboardmodule` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `app_label` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `column` int(10) UNSIGNED NOT NULL CHECK (`column` >= 0),
  `order` int(11) NOT NULL,
  `settings` longtext NOT NULL,
  `children` longtext NOT NULL,
  `collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_userdashboardmodule`
--

INSERT INTO `dashboard_userdashboardmodule` (`id`, `title`, `module`, `app_label`, `user_id`, `column`, `order`, `settings`, `children`, `collapsed`) VALUES
(1, 'Quick links', 'jet.dashboard.modules.LinkList', NULL, 1, 0, 0, '{\"draggable\": false, \"deletable\": false, \"collapsible\": false, \"layout\": \"inline\"}', '[{\"title\": \"Return to site\", \"url\": \"/\"}, {\"title\": \"Change password\", \"url\": \"/admin/password_change/\"}, {\"title\": \"Log out\", \"url\": \"/admin/logout/\"}]', 0),
(2, 'Applications', 'jet.dashboard.modules.AppList', NULL, 1, 1, 0, '{\"models\": null, \"exclude\": [\"auth.*\"]}', '', 0),
(3, 'Administration', 'jet.dashboard.modules.AppList', NULL, 1, 2, 0, '{\"models\": [\"auth.*\"], \"exclude\": null}', '', 0),
(4, 'Recent Actions', 'jet.dashboard.modules.RecentActions', NULL, 1, 0, 1, '{\"limit\": 10, \"include_list\": null, \"exclude_list\": null, \"user\": null}', '', 0),
(5, 'Latest Django News', 'jet.dashboard.modules.Feed', NULL, 1, 1, 1, '{\"feed_url\": \"http://www.djangoproject.com/rss/weblog/\", \"limit\": 5}', '', 0),
(6, 'Support', 'jet.dashboard.modules.LinkList', NULL, 1, 2, 1, '{\"draggable\": true, \"deletable\": true, \"collapsible\": true, \"layout\": \"stacked\"}', '[{\"title\": \"Django documentation\", \"url\": \"http://docs.djangoproject.com/\", \"external\": true}, {\"title\": \"Django \\\"django-users\\\" mailing list\", \"url\": \"http://groups.google.com/group/django-users\", \"external\": true}, {\"title\": \"Django irc channel\", \"url\": \"irc://irc.freenode.net/django\", \"external\": true}]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-02-24 10:51:18.188783', '1', 'samsung', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-02-24 11:02:04.052780', '1', 'samsung s20', 1, '[{\"added\": {}}]', 9, 1),
(3, '2022-02-24 11:05:14.385165', '2', 'Vivo', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-02-24 11:05:33.910486', '1', 'Samsung', 2, '[{\"changed\": {\"fields\": [\"Categoryname\"]}}]', 8, 1),
(5, '2022-02-25 05:13:27.309965', '3', 'Apple', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-02-25 05:15:40.686157', '4', 'OPPO', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-02-25 06:06:11.673930', '5', 'Nokia', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-02-25 06:06:47.195014', '6', 'Google Pixel', 1, '[{\"added\": {}}]', 8, 1),
(9, '2022-02-25 06:08:37.716203', '7', 'MI', 1, '[{\"added\": {}}]', 8, 1),
(10, '2022-02-25 06:30:58.086701', '1', 'Samsung Galaxy M12', 2, '[{\"changed\": {\"fields\": [\"Productname\", \"Productprice\", \"Productmrp\", \"Productdisc\", \"Productdec\"]}}]', 9, 1),
(11, '2022-02-25 06:34:39.391776', '1', 'Samsung Galaxy M12', 2, '[{\"changed\": {\"fields\": [\"Productdec\", \"Productimage\"]}}]', 9, 1),
(12, '2022-02-25 06:40:34.143078', '1', 'Samsung Galaxy M12', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\"]}}]', 9, 1),
(13, '2022-02-25 06:44:15.634721', '2', 'Samsung Galaxy M32', 1, '[{\"added\": {}}]', 9, 1),
(14, '2022-02-25 15:45:34.498101', '2', 'Vivo', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(15, '2022-02-25 15:50:34.931329', '1', 'Samsung', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(16, '2022-02-25 15:53:43.755171', '1', 'Samsung', 3, '', 8, 1),
(17, '2022-02-25 15:54:46.371773', '8', 'Samsung', 1, '[{\"added\": {}}]', 8, 1),
(18, '2022-02-26 05:13:38.817625', '1', 'Samsung', 2, '[]', 8, 1),
(19, '2022-02-26 05:14:46.183861', '1', 'Samsung', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(20, '2022-02-26 05:16:53.619296', '3', 'Apple', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(21, '2022-02-26 05:19:27.106010', '4', 'OPPO', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(22, '2022-02-26 05:20:41.161163', '5', 'Nokia', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(23, '2022-02-26 05:22:47.538359', '5', 'Nokia', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(24, '2022-02-26 05:26:52.709170', '6', 'Google Pixel', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(25, '2022-02-26 05:29:58.016442', '6', 'Google Pixel', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(26, '2022-02-26 05:30:25.676652', '6', 'IQOO', 2, '[{\"changed\": {\"fields\": [\"Categoryname\"]}}]', 8, 1),
(27, '2022-02-26 05:33:55.211937', '6', 'IQOO', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(28, '2022-02-26 05:38:06.422977', '6', 'Motorola', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(29, '2022-02-26 05:39:48.377092', '7', 'MI', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(30, '2022-02-26 08:09:33.647061', '9', 'Tecno', 1, '[{\"added\": {}}]', 8, 1),
(31, '2022-02-26 08:09:58.039306', '9', 'Tecno', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(32, '2022-02-26 08:12:59.426660', '10', 'IQOO', 1, '[{\"added\": {}}]', 8, 1),
(33, '2022-02-26 08:15:20.545740', '9', 'IQOO', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(34, '2022-02-26 08:19:01.621701', '9', 'IQOO', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(35, '2022-02-26 08:55:48.495445', '3', '', 1, '[{\"added\": {}}]', 9, 1),
(36, '2022-02-26 09:00:34.802950', '4', '', 1, '[{\"added\": {}}]', 9, 1),
(37, '2022-02-26 09:07:36.266981', '5', 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 1, '[{\"added\": {}}]', 9, 1),
(38, '2022-02-26 09:17:09.585018', '5', 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 2, '[{\"changed\": {\"fields\": [\"Productdisplay\"]}}]', 9, 1),
(39, '2022-02-26 09:53:05.236799', '6', 'Redmi 9A Sport (Coral Green, 2GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery', 1, '[{\"added\": {}}]', 9, 1),
(40, '2022-02-26 10:15:06.001428', '11', 'Oneplus', 1, '[{\"added\": {}}]', 8, 1),
(41, '2022-02-26 10:18:49.393343', '7', 'OnePlus Nord 2 5G (Blue Haze, 8GB RAM, 128GB Storage)', 1, '[{\"added\": {}}]', 9, 1),
(42, '2022-02-26 12:17:31.389096', '8', 'Xiaomi 11 Lite NE 5G (Jazz Blue 6GB RAM 128 GB Storage) | Slimmest (6.81mm) & Lightest (158g) 5G Smartphone | 10-bit AMOLED with Dolby Vision | Additional Off up to 5000 on Exchange', 1, '[{\"added\": {}}]', 9, 1),
(43, '2022-02-28 06:21:37.598129', '5', 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\", \"Productdisc\"]}}]', 9, 1),
(44, '2022-02-28 06:22:24.900604', '6', 'Redmi 9A Sport (Coral Green, 2GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\", \"Productdisc\"]}}]', 9, 1),
(45, '2022-02-28 06:59:10.829346', '9', 'Tecno Spark 8 Pro (Interstellar Black,7GB Expandable RAM, 64GB Storage) 33W Fast Charger | Helio G85 Gaming Processor | 6.8\" FHD+Dot-in Display | 48MP Triple Camera', 1, '[{\"added\": {}}]', 9, 1),
(46, '2022-02-28 07:06:00.642511', '10', 'Redmi Note 10T 5G (Metallic Blue, 4GB RAM, 64GB Storage) | Dual 5G | 90Hz Adaptive Refresh Rate | MediaTek Dimensity 700 7nm Processor', 1, '[{\"added\": {}}]', 9, 1),
(47, '2022-02-28 07:08:39.704997', '7', 'OnePlus Nord 2 5G (Blue Haze, 8GB RAM, 128GB Storage)', 2, '[{\"changed\": {\"fields\": [\"Productprice\"]}}]', 9, 1),
(48, '2022-02-28 07:09:22.005025', '8', 'Xiaomi 11 Lite NE 5G (Jazz Blue 6GB RAM 128 GB Storage) | Slimmest (6.81mm) & Lightest (158g) 5G Smartphone | 10-bit AMOLED with Dolby Vision | Additional Off up to 5000 on Exchange', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\", \"Productdisc\"]}}]', 9, 1),
(49, '2022-03-02 15:23:01.788448', '5', 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 2, '[{\"changed\": {\"fields\": [\"Productdec\", \"Productimage1\", \"Productimage2\", \"Productimage3\", \"Productavaib\"]}}]', 9, 1),
(50, '2022-03-04 12:41:03.722628', '1', 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\", \"Productdisc\", \"Productdec\"]}}]', 9, 1),
(51, '2022-03-05 11:42:00.233917', '1', 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\", \"Productdisc\"]}}]', 9, 1),
(52, '2022-03-05 11:58:42.148450', '1', 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 2, '[]', 9, 1),
(53, '2022-03-07 06:16:42.353077', '2', 'Redmi 9A Sport (Coral Green, 2GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\", \"Productdisc\", \"Productdec\", \"Productimage1\", \"Productimage2\", \"Productimage3\", \"Productavaib\"]}}]', 9, 1),
(54, '2022-03-17 10:40:27.431352', '3', 'hardik', 2, '[]', 12, 1),
(55, '2022-03-22 07:57:17.020750', '11', '11', 3, '', 14, 1),
(56, '2022-03-22 07:57:17.666614', '10', '10', 3, '', 14, 1),
(57, '2022-03-22 07:57:17.782728', '9', '9', 3, '', 14, 1),
(58, '2022-03-22 07:57:17.871936', '8', '8', 3, '', 14, 1),
(59, '2022-03-22 07:57:17.936319', '7', '7', 3, '', 14, 1),
(60, '2022-03-22 07:57:17.982164', '6', '6', 3, '', 14, 1),
(61, '2022-04-02 05:57:31.432576', '2', 'banner object (2)', 1, '[{\"added\": {}}]', 16, 1),
(62, '2022-04-02 06:13:44.893518', '2', 'banner object (2)', 3, '', 16, 1),
(63, '2022-04-02 06:14:20.623045', '3', 'banner object (3)', 1, '[{\"added\": {}}]', 16, 1),
(64, '2022-04-02 06:18:21.844283', '4', 'banner object (4)', 1, '[{\"added\": {}}]', 16, 1),
(65, '2022-04-02 08:44:09.304934', '1', 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 2, '[{\"changed\": {\"fields\": [\"Is featured\"]}}]', 9, 1),
(66, '2022-04-02 09:09:49.358064', '1', 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 2, '[{\"changed\": {\"fields\": [\"Productdisplay\", \"Productimage1\", \"Productimage2\", \"Productimage3\", \"Product quantity\"]}}]', 9, 1),
(67, '2022-04-02 09:14:31.073832', '2', 'Redmi 9A Sport (Coral Green, 2GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery', 2, '[{\"changed\": {\"fields\": [\"Productdisplay\", \"Productimage1\", \"Productimage2\", \"Productimage3\", \"Is featured\"]}}]', 9, 1),
(68, '2022-04-02 09:26:06.823905', '3', 'OnePlus Nord 2 5G (Blue Haze, 8GB RAM, 128GB Storage)', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\", \"Productdisc\", \"Productdisplay\", \"Productimage1\", \"Productimage2\", \"Productimage3\", \"Productavaib\", \"Is featured\"]}}]', 9, 1),
(69, '2022-04-02 10:03:13.621201', '1', 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 2, '[{\"changed\": {\"fields\": [\"Productdec1\", \"Productdec2\", \"Productdec3\", \"Productdec4\", \"Productdec5\"]}}]', 9, 1),
(70, '2022-04-02 10:05:57.666955', '2', 'Redmi 9A Sport (Coral Green, 2GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery', 2, '[{\"changed\": {\"fields\": [\"Productdec1\", \"Productdec2\", \"Productdec3\", \"Productdec4\", \"Productdec5\"]}}]', 9, 1),
(71, '2022-04-02 10:07:57.019070', '3', 'OnePlus Nord 2 5G (Blue Haze, 8GB RAM, 128GB Storage)', 2, '[{\"changed\": {\"fields\": [\"Productdec1\", \"Productdec2\", \"Productdec3\", \"Productdec4\", \"Productdec5\"]}}]', 9, 1),
(72, '2022-04-02 10:14:17.155708', '4', 'Xiaomi 11 Lite NE 5G (Jazz Blue 6GB RAM 128 GB Storage) | Slimmest (6.81mm) & Lightest (158g) 5G Smartphone | 10-bit AMOLED with Dolby Vision | Additional Off up to 5000 on Exchange', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\", \"Productdisc\", \"Productdec1\", \"Productdec2\", \"Productdec3\", \"Productdec4\", \"Productdec5\", \"Productdisplay\", \"Productimage1\", \"Productimage2\", \"Productimage3\", \"Productavaib\", \"Is featured\"]}}]', 9, 1),
(73, '2022-04-02 10:20:04.045339', '5', 'Tecno Spark 8 Pro (Interstellar Black,7GB Expandable RAM, 64GB Storage) 33W Fast Charger | Helio G85 Gaming Processor | 6.8\" FHD+Dot-in Display | 48MP Triple Camera', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\", \"Productdisc\", \"Productdec1\", \"Productdec2\", \"Productdec3\", \"Productdec4\", \"Productdec5\", \"Productdisplay\", \"Productimage1\", \"Productimage2\", \"Productimage3\", \"Productavaib\"]}}]', 9, 1),
(74, '2022-04-02 10:27:36.143658', '6', 'Redmi Note 10T 5G (Metallic Blue, 4GB RAM, 64GB Storage) | Dual 5G | 90Hz Adaptive Refresh Rate | MediaTek Dimensity 700 7nm Processor', 2, '[{\"changed\": {\"fields\": [\"Productprice\", \"Productmrp\", \"Productdisc\", \"Productdec1\", \"Productdec2\", \"Productdec3\", \"Productdec4\", \"Productdec5\", \"Productdisplay\", \"Productimage1\", \"Productimage2\", \"Productimage3\", \"Productavaib\", \"Is featured\"]}}]', 9, 1),
(75, '2022-04-03 10:01:39.335605', '11', 'iQOO 9 SE 5G (Sunset Sierra, 8GB RAM, 128GB Storage) | Qualcomm Snapdragon 888 | 66W Flash Charge | Upto 12 Months No Cost EMI', 1, '[{\"added\": {}}]', 9, 1),
(76, '2022-04-03 10:04:39.992988', '11', 'iQOO 9 SE 5G (Sunset Sierra, 8GB RAM, 128GB Storage) | Qualcomm Snapdragon 888 | 66W Flash Charge | Upto 12 Months No Cost EMI', 2, '[{\"changed\": {\"fields\": [\"Productimage1\", \"Productimage2\", \"Productimage3\", \"Bestseller display\"]}}]', 9, 1),
(77, '2022-04-03 10:17:41.382652', '12', 'iQOO 9 Pro 5G (Legend, 8GB RAM, 256GB Storage) | Snapdragon 8 Gen 1 Mobile Processor | 120W FlashCharge | Upto 12 Months No Cost EMI', 1, '[{\"added\": {}}]', 9, 1),
(78, '2022-04-03 10:17:53.056605', '11', 'iQOO 9 SE 5G (Sunset Sierra, 8GB RAM, 128GB Storage) | Qualcomm Snapdragon 888 | 66W Flash Charge | Upto 12 Months No Cost EMI', 2, '[{\"changed\": {\"fields\": [\"Productavaib\"]}}]', 9, 1),
(79, '2022-04-03 12:49:40.710553', '13', 'Tecno Spark 8C Turquoise Cyan (3GB+64GB) | Upto 6GB RAM |90Hz Refresh Rate |6.6\" HD+ Display | 5000mAh |13MP Dual Camera| IPX2 Splash Resistant', 1, '[{\"added\": {}}]', 9, 1),
(80, '2022-04-03 12:56:01.377096', '14', 'iQOO Z3 5G (Cyber Blue, 6GB RAM, 128GB Storage) | India\'s First SD 768G 5G Processor | 55W FlashCharge | Upto 6 Months No Cost EMI', 1, '[{\"added\": {}}]', 9, 1),
(81, '2022-04-03 13:06:11.712071', '15', 'iQOO 9 5G (Alpha, 8GB RAM, 128GB Storage) | Qualcomm Snapdragon 888+ | 120W FlashCharge | Upto 12 Months No Cost EMI', 1, '[{\"added\": {}}]', 9, 1),
(82, '2022-04-03 13:21:09.764963', '16', 'Oppo A54 (Starry Blue, 4GB RAM, 64GB Storage) with No Cost EMI & Additional Exchange Offers', 1, '[{\"added\": {}}]', 9, 1),
(83, '2022-04-03 13:21:20.379329', '16', 'Oppo A54 (Starry Blue, 4GB RAM, 64GB Storage) with No Cost EMI & Additional Exchange Offers', 2, '[{\"changed\": {\"fields\": [\"Is bestseller\", \"Bestseller display\"]}}]', 9, 1),
(84, '2022-04-03 13:31:27.060476', '5', 'Realme', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(85, '2022-04-03 13:38:17.848500', '17', 'realme narzo 50 (Speed Blue, 4GB RAM+64GB Storage) Helio G96 Processor | 50MP AI Triple Camera | 120Hz Ultra Smooth Display', 1, '[{\"added\": {}}]', 9, 1),
(86, '2022-04-03 13:44:36.665313', '18', 'realme narzo 50A (Oxygen Blue , 4GB RAM + 64 GB Storage) Helio G85 Processor | 50MP AI Triple Camera | 6000 mAh Battery', 1, '[{\"added\": {}}]', 9, 1),
(87, '2022-04-03 13:50:50.189881', '19', 'OPPO A15s (Dynamic Black, 4GB, 128GB Storage) AI Triple Camera | 6.52\" HD+ Screen | 2.3GHz Mediatek Helio P35 Octa Core Processor', 1, '[{\"added\": {}}]', 9, 1),
(88, '2022-04-03 13:55:42.044730', '20', 'Vivo V21 5G (Arctic White, 8GB RAM, 128GB Storage) with No Cost EMI/Additional Exchange Offers', 1, '[{\"added\": {}}]', 9, 1),
(89, '2022-04-03 14:15:28.486352', '21', 'Tecno Pop 5 LTE(Turquoise Cyan 2G+32GB)| 6.52\" HD+Dot Notch | 5000mAh | 8MP Dual Camera | Front Flash| IPX2 Splash Resistant', 1, '[{\"added\": {}}]', 9, 1),
(90, '2022-04-03 14:18:54.609363', '22', 'Vivo Y15s Wave Green (3GB RAM & 32GB ROM) with No Cost EMI/Additional Exchange Offers', 1, '[{\"added\": {}}]', 9, 1),
(91, '2022-04-06 13:09:47.113995', '1', 'Samsung', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(92, '2022-04-06 13:10:08.245891', '2', 'Vivo', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(93, '2022-04-06 13:10:31.276212', '3', 'Apple', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(94, '2022-04-06 13:10:43.509417', '4', 'OPPO', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(95, '2022-04-06 13:10:56.276878', '6', 'Motorola', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(96, '2022-04-06 13:11:10.451899', '7', 'MI', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(97, '2022-04-06 13:11:34.329538', '8', 'Tecno', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(98, '2022-04-06 13:11:51.263381', '9', 'IQOO', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(99, '2022-04-06 13:12:09.552370', '10', 'Oneplus', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(100, '2022-04-06 13:12:56.653892', '5', 'Realme', 2, '[{\"changed\": {\"fields\": [\"Categoryimage\"]}}]', 8, 1),
(101, '2022-04-06 15:30:41.236390', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(102, '2022-04-06 15:30:49.237101', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(103, '2022-04-06 15:31:50.186435', '1', 'Django', 2, '[]', 17, 1),
(104, '2022-04-06 15:34:10.382809', '2', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(105, '2022-04-06 15:34:10.490551', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(106, '2022-04-06 15:34:15.779126', '2', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(107, '2022-04-06 15:34:15.828689', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(108, '2022-04-06 15:36:54.371550', '2', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(109, '2022-04-06 15:37:04.053807', '2', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(110, '2022-04-06 15:37:04.123203', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(111, '2022-04-06 15:38:13.657350', '3', 'Foundation', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(112, '2022-04-06 15:38:13.907630', '2', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(113, '2022-04-06 15:38:14.129621', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(114, '2022-04-06 15:38:20.976469', '4', 'Bootstrap', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(115, '2022-04-06 15:38:33.229517', '3', 'Foundation', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(116, '2022-04-06 15:58:04.632059', '2', 'USWDS', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(117, '2022-04-06 15:58:58.037203', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1),
(118, '2022-04-06 15:59:58.814047', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Background color\"]}}]', 17, 1),
(119, '2022-04-06 16:01:11.164631', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Logo\", \"Max width\", \"Max height\", \"Favicon\"]}}]', 17, 1),
(120, '2022-04-06 16:02:54.895871', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Max width\", \"Max height\", \"Favicon\"]}}]', 17, 1),
(121, '2022-04-06 16:03:16.147195', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Max width\", \"Max height\"]}}]', 17, 1),
(122, '2022-04-06 16:03:55.981777', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Background color\"]}}]', 17, 1),
(123, '2022-04-06 16:04:41.002086', '2', 'US WDS', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Active\", \"Display\"]}}]', 17, 1),
(124, '2022-04-06 16:06:30.884262', '2', 'Premium Theme', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Logo\", \"Max width\", \"Favicon\", \"Title\", \"Sticky submit\", \"Sticky pagination\", \"Use dropdown\"]}}]', 17, 1),
(125, '2022-04-06 16:10:53.297370', '2', 'Premium Theme', 2, '[{\"changed\": {\"fields\": [\"Background opacity\"]}}]', 17, 1),
(126, '2022-04-06 16:11:41.882103', '2', 'Premium Theme', 2, '[{\"changed\": {\"fields\": [\"Visible\"]}}]', 17, 1),
(127, '2022-04-06 16:12:12.215726', '2', 'Premium Theme', 2, '[{\"changed\": {\"fields\": [\"Max width\", \"Max height\"]}}]', 17, 1),
(128, '2022-04-06 16:12:33.127221', '2', 'Premium Theme', 2, '[{\"changed\": {\"fields\": [\"Max width\", \"Max height\"]}}]', 17, 1),
(129, '2022-04-06 16:13:31.823452', '2', 'Premium Theme', 2, '[{\"changed\": {\"fields\": [\"Background opacity\"]}}]', 17, 1),
(130, '2022-04-11 05:54:03.373348', '22', 'Vivo Y15s Wave Green (3GB RAM & 32GB ROM) with No Cost EMI/Additional Exchange Offers', 2, '[]', 9, 1),
(131, '2022-04-11 16:50:01.015769', '23', 'Apple iPhone 12 (128GB) - Blue', 1, '[{\"added\": {}}]', 9, 1),
(132, '2022-04-11 16:53:44.014945', '24', 'Samsung Galaxy M12 (Blue,6GB RAM, 128GB Storage) 6 Months Free Screen Replacement for Prime', 1, '[{\"added\": {}}]', 9, 1),
(133, '2022-04-11 16:57:30.279595', '25', 'Apple iPhone 13 Pro (256GB) - Gold', 1, '[{\"added\": {}}]', 9, 1),
(134, '2022-04-11 16:59:41.225604', '26', 'Samsung Galaxy M32 5G (Sky Blue, 6GB RAM, 128GB Storage)', 1, '[{\"added\": {}}]', 9, 1),
(135, '2022-04-13 16:17:25.944967', '2', 'Premium Theme', 2, '[]', 17, 1),
(136, '2022-04-13 16:17:31.574653', '1', 'Django', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(17, 'admin_interface', 'theme'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(21, 'dashboard', 'userdashboardmodule'),
(20, 'jet', 'bookmark'),
(19, 'jet', 'pinnedapplication'),
(16, 'Phone', 'banner'),
(10, 'Phone', 'cart'),
(8, 'Phone', 'category'),
(11, 'Phone', 'contact'),
(14, 'Phone', 'myorder'),
(13, 'Phone', 'orderdetails'),
(15, 'Phone', 'orderinfo'),
(12, 'Phone', 'ordermaster'),
(9, 'Phone', 'product'),
(7, 'Phone', 'registration'),
(18, 'Phone', 'signup'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-17 10:09:50.900812'),
(2, 'auth', '0001_initial', '2022-02-17 10:09:53.933805'),
(3, 'admin', '0001_initial', '2022-02-17 10:10:06.164687'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-17 10:10:10.278856'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-17 10:10:10.337485'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-17 10:10:11.585581'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-17 10:10:12.661750'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-17 10:10:12.843466'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-17 10:10:12.915307'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-17 10:10:13.901931'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-17 10:10:13.964073'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-17 10:10:14.048653'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-17 10:10:14.186618'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-17 10:10:14.634133'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-17 10:10:15.398968'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-17 10:10:15.542381'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-17 10:10:15.709952'),
(18, 'sessions', '0001_initial', '2022-02-17 10:10:16.090340'),
(19, 'Phone', '0001_initial', '2022-02-17 10:11:46.960557'),
(20, 'Phone', '0002_category', '2022-02-24 10:48:41.403035'),
(21, 'Phone', '0003_product', '2022-02-24 10:55:56.749798'),
(22, 'Phone', '0004_category_categoryimage', '2022-02-25 15:44:51.103847'),
(23, 'Phone', '0005_product_productdisplay', '2022-02-26 08:51:49.479165'),
(24, 'Phone', '0006_auto_20220302_2002', '2022-03-02 14:32:55.678118'),
(26, 'Phone', '0007_cart', '2022-03-03 14:44:48.125621'),
(27, 'Phone', '0008_auto_20220303_2010', '2022-03-03 14:44:48.408554'),
(28, 'Phone', '0009_alter_cart_productname', '2022-03-03 16:09:20.638982'),
(29, 'Phone', '0010_alter_cart_productqty', '2022-03-04 08:55:34.055592'),
(30, 'Phone', '0011_auto_20220304_1538', '2022-03-04 10:08:47.797160'),
(31, 'Phone', '0012_alter_cart_productprice_alter_product_productdisc_and_more', '2022-03-04 12:38:16.009124'),
(32, 'Phone', '0013_alter_cart_productprice_alter_product_productdisc_and_more', '2022-03-04 12:40:03.461128'),
(33, 'Phone', '0014_cart_productavaib', '2022-03-05 07:41:38.972334'),
(34, 'Phone', '0015_alter_cart_productprice_alter_product_productdisc_and_more', '2022-03-05 11:34:23.334058'),
(35, 'Phone', '0016_alter_cart_productprice_alter_product_productdisc_and_more', '2022-03-05 11:37:55.078458'),
(36, 'Phone', '0017_alter_cart_productprice_alter_product_productdisc_and_more', '2022-03-05 11:40:32.814968'),
(37, 'Phone', '0018_alter_cart_productprice_alter_product_productdisc_and_more', '2022-03-05 11:57:47.029742'),
(38, 'Phone', '0019_alter_registration_state', '2022-03-05 13:37:03.761705'),
(39, 'Phone', '0020_alter_cart_productprice_alter_product_productdisc_and_more', '2022-03-05 14:07:14.622166'),
(40, 'Phone', '0021_alter_registration_pincode_alter_registration_state', '2022-03-12 07:10:09.106087'),
(41, 'Phone', '0022_contact', '2022-03-12 08:36:05.663886'),
(42, 'Phone', '0023_rename_name_contact_fullname', '2022-03-12 09:00:58.617068'),
(43, 'Phone', '0024_alter_contact_fullname', '2022-03-12 09:01:57.672444'),
(44, 'Phone', '0025_rename_fullname_contact_name', '2022-03-12 09:19:44.447076'),
(45, 'Phone', '0026_remove_registration_address_remove_registration_city_and_more', '2022-03-17 07:11:23.177828'),
(46, 'Phone', '0027_ordermaster', '2022-03-17 10:08:36.758559'),
(47, 'Phone', '0028_rename_fullname_ordermaster_c_name', '2022-03-17 10:18:31.077696'),
(48, 'Phone', '0029_rename_email_ordermaster_c_email_and_more', '2022-03-17 10:21:12.613635'),
(49, 'Phone', '0030_rename_pincode_ordermaster_c_pincode', '2022-03-17 10:25:57.328544'),
(50, 'Phone', '0031_alter_ordermaster_create_date', '2022-03-17 10:31:58.071502'),
(51, 'Phone', '0032_alter_ordermaster_create_date', '2022-03-17 10:36:28.820980'),
(52, 'Phone', '0033_orderdetails', '2022-03-17 11:34:58.153357'),
(53, 'Phone', '0034_remove_orderdetails_p_id', '2022-03-17 11:39:11.180401'),
(54, 'Phone', '0035_alter_orderdetails_orderdetails', '2022-03-17 16:13:10.462259'),
(55, 'Phone', '0036_alter_orderdetails_orderdetails', '2022-03-17 16:21:12.664254'),
(56, 'Phone', '0037_rename_orderdetails_orderdetails_orderdetails_id', '2022-03-17 16:26:00.015907'),
(57, 'Phone', '0038_alter_orderdetails_orderdetails_id', '2022-03-17 17:24:26.692052'),
(58, 'Phone', '0027_myorder_orderinfo', '2022-03-22 07:13:29.971146'),
(59, 'Phone', '0028_alter_myorder_state', '2022-03-22 09:07:29.682132'),
(60, 'Phone', '0029_myorder_payment_id_myorder_payment_mode_and_more', '2022-03-31 06:31:14.536709'),
(61, 'Phone', '0030_alter_myorder_payment_mode', '2022-03-31 06:31:15.412180'),
(62, 'Phone', '0031_alter_orderinfo_product', '2022-03-31 07:14:46.318144'),
(63, 'Phone', '0032_remove_orderinfo_product', '2022-03-31 07:14:46.720501'),
(64, 'Phone', '0033_orderinfo_product_alter_orderinfo_p_name_and_more', '2022-03-31 07:24:36.791376'),
(65, 'Phone', '0034_remove_orderinfo_product', '2022-03-31 07:27:46.477935'),
(66, 'Phone', '0035_myorder_status', '2022-03-31 07:33:28.714541'),
(67, 'Phone', '0036_banner', '2022-04-02 05:54:41.935407'),
(68, 'Phone', '0037_delete_banner', '2022-04-02 06:21:34.476113'),
(69, 'Phone', '0038_product_is_featured_product_product_quantity', '2022-04-02 08:43:00.245570'),
(70, 'Phone', '0039_alter_product_productdisplay_and_more', '2022-04-02 09:05:46.224947'),
(71, 'Phone', '0040_rename_productdec_product_productdec1_and_more', '2022-04-02 09:59:22.280242'),
(72, 'Phone', '0041_product_upload_date', '2022-04-02 10:31:14.726946'),
(73, 'Phone', '0042_product_is_bestseller', '2022-04-03 09:56:51.063255'),
(74, 'Phone', '0043_product_bestseller_display', '2022-04-03 10:03:34.997805'),
(75, 'Phone', '0044_alter_product_productavaib', '2022-04-03 13:06:55.054940'),
(76, 'Phone', '0045_alter_category_categoryimage', '2022-04-06 13:05:15.437761'),
(77, 'Phone', '0046_alter_product_productdec1', '2022-04-06 15:00:42.090817'),
(78, 'Phone', '0047_alter_product_productdec2_alter_product_productdec3_and_more', '2022-04-06 15:03:35.620032'),
(79, 'admin_interface', '0001_initial', '2022-04-06 15:30:08.688564'),
(80, 'admin_interface', '0002_add_related_modal', '2022-04-06 15:30:09.516650'),
(81, 'admin_interface', '0003_add_logo_color', '2022-04-06 15:30:09.646648'),
(82, 'admin_interface', '0004_rename_title_color', '2022-04-06 15:30:09.780096'),
(83, 'admin_interface', '0005_add_recent_actions_visible', '2022-04-06 15:30:09.958224'),
(84, 'admin_interface', '0006_bytes_to_str', '2022-04-06 15:30:10.066861'),
(85, 'admin_interface', '0007_add_favicon', '2022-04-06 15:30:10.346148'),
(86, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2022-04-06 15:30:10.565005'),
(87, 'admin_interface', '0009_add_enviroment', '2022-04-06 15:30:10.802379'),
(88, 'admin_interface', '0010_add_localization', '2022-04-06 15:30:10.851547'),
(89, 'admin_interface', '0011_add_environment_options', '2022-04-06 15:30:11.292656'),
(90, 'admin_interface', '0012_update_verbose_names', '2022-04-06 15:30:11.327908'),
(91, 'admin_interface', '0013_add_related_modal_close_button', '2022-04-06 15:30:11.494080'),
(92, 'admin_interface', '0014_name_unique', '2022-04-06 15:30:11.714360'),
(93, 'admin_interface', '0015_add_language_chooser_active', '2022-04-06 15:30:11.932288'),
(94, 'admin_interface', '0016_add_language_chooser_display', '2022-04-06 15:30:12.078923'),
(95, 'admin_interface', '0017_change_list_filter_dropdown', '2022-04-06 15:30:12.132063'),
(96, 'admin_interface', '0018_theme_list_filter_sticky', '2022-04-06 15:30:12.298942'),
(97, 'admin_interface', '0019_add_form_sticky', '2022-04-06 15:30:12.510016'),
(98, 'admin_interface', '0020_module_selected_colors', '2022-04-06 15:30:12.757667'),
(99, 'admin_interface', '0021_file_extension_validator', '2022-04-06 15:30:12.791552'),
(100, 'admin_interface', '0022_add_logo_max_width_and_height', '2022-04-06 15:30:13.065759'),
(101, 'admin_interface', '0023_theme_foldable_apps', '2022-04-06 15:30:13.238205'),
(102, 'admin_interface', '0024_remove_theme_css', '2022-04-06 15:30:13.317993'),
(103, 'Phone', '0045_cart_userid', '2022-04-08 09:17:02.086161'),
(104, 'Phone', '0046_alter_cart_userid', '2022-04-10 07:00:06.608983'),
(105, 'Phone', '0047_myorder_userid_orderinfo_userid', '2022-04-10 08:39:12.301264'),
(106, 'Phone', '0048_registration_address_registration_address2_and_more', '2022-04-10 09:43:03.674220'),
(107, 'Phone', '0049_alter_registration_pincode', '2022-04-10 09:43:49.149157'),
(108, 'Phone', '0050_remove_registration_address_and_more', '2022-04-10 10:04:52.405938'),
(109, 'Phone', '0051_signup', '2022-04-10 10:14:23.861344'),
(110, 'Phone', '0052_delete_registration', '2022-04-10 10:32:34.193406'),
(111, 'Phone', '0053_remove_cart_productavaib', '2022-04-11 14:37:45.813151'),
(112, 'Phone', '0054_cart_create_date', '2022-04-12 12:27:47.381439'),
(113, 'Phone', '0055_signup_registered_time', '2022-04-12 14:22:11.417528'),
(114, 'Phone', '0056_orderinfo_payment_id_orderinfo_payment_mode', '2022-04-13 06:54:14.207436'),
(115, 'jet', '0001_initial', '2022-04-13 16:08:49.578934'),
(116, 'jet', '0002_delete_userdashboardmodule', '2022-04-13 16:08:49.656241'),
(117, 'jet', '0003_auto_20201228_1540', '2022-04-13 16:08:49.706149'),
(118, 'jet', '0004_auto_20201228_1802', '2022-04-13 16:08:49.784766'),
(119, 'jet', '0001_squashed_0004_auto_20201228_1802', '2022-04-13 16:08:49.825692'),
(120, 'dashboard', '0001_initial', '2022-04-13 16:27:36.365163'),
(121, 'dashboard', '0002_auto_20201228_1929', '2022-04-13 16:27:42.136652');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('03naolkwtbxhqnsd0vqsfxwiru5rb8ji', 'eyJuYW1lIjoiamF5dTAwMSJ9:1ndv4Z:dtJOign0vqd5pLs2JE4V7G4VOopKs5krJr1o70mzxYc', '2022-04-25 14:31:19.086350'),
('7jc0akad5d78zh48mah2pctskt86yml5', '.eJxVjDsOgzAQBe_iOrKMwew6ZXrOgHa9dkxIjMSninL3gESRtG_mzVv1tK2535Y494Ooq6rU5XdjCmMsB5AHlfukw1TWeWB9KPqki-4mic_b6f4FMi15f7uQPHAicFQHNoAtxCQVBhFuxDpbiTdsMKGgbRIyuBpa523N6MWFPVroFfdSplmG0RhQny9gEj26:1netDW:B3xSfcGw19R9LFDL4y8E9WRIGyqnL1Ni7rOWnADzP30', '2022-04-28 06:44:34.777290'),
('8fden8x7hkz49iyj80xnjykj2e22qt7c', '.eJxVjEEOwiAQRe_C2hCGFlpcuu8ZyDAztVUDSWlXxrsbki50-997_60iHvsSjypbXFldFajL75aQnpIb4Afme9FU8r6tSTdFn7TqqbC8bqf7d7BgXVrNfsCeEogxySQrwxxsJ8EzjeCEnA-J-r6DEYAA0XrvBjQdz2DmwEF9vvJRN_M:1nMoj1:iLLVgYJ2Z2F26WeMJdgEHYJ5W6AO5gQSbFYHN68VwuQ', '2022-03-09 10:18:23.875483'),
('amg5wgibqlia56lufyj43151j7d87gk8', 'e30:1nSgSs:2bl4sxIK2YTO5T1X-r7-PYfvFC7ZDXjKhU7fd-Cuxuk', '2022-03-25 14:41:58.755941'),
('cf6paidbyw890af11r3tabdfo1fsaytu', 'e30:1nRw1c:PNfClcOzMKEenHJNjLjsdC34q-sl-pZQiqMdGPeNqEM', '2022-03-23 13:06:44.976108'),
('clmsimngzpgjk9rtuh7e0q87k8jab7cp', 'e30:1nclNu:Ao9jfz0z9Mb6EHZ6LkLU5n87fJX959Zf9NEV5iGIN9Y', '2022-04-22 09:58:30.944758'),
('d8l6kgc5r97riddahpijsb5omk59y6c3', 'eyJuYW1lIjoiIn0:1nXm6X:7ibOmMJYpoaQtx60fS4WdjkHiJxXJgOAItqZ-ndcbkQ', '2022-04-08 15:43:57.661336'),
('j7muk3ss59vjd6tnneqq1ao76ezfcofl', '.eJxVjEEOwiAQRe_C2hCgnTK4dO8ZCMOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIstDj9bhTiI9Ud8D3UW5Ox1XWZSe6KPGiX18bpeTncv4MSevnWELOzlIOFMERSFiebMmuMzDSyAaPZKVKYkdGMGcnCYCdwZiB0DFG8PwAIOCE:1nNYTi:N6aWnsLOjQMmL8EuLC2FDb97Oglqh6ijVj8xrBVyqQY', '2022-03-11 11:09:38.201443'),
('ku45x7bf5kbpl7y8e8wf5wjecuslst6k', '.eJxVjDsOgzAQBe_iOrKMwew6ZXrOgHa9dkxIjMSninL3gESRtG_mzVv1tK2535Y494Ooq6rU5XdjCmMsB5AHlfukw1TWeWB9KPqki-4mic_b6f4FMi15f7uQPHAicFQHNoAtxCQVBhFuxDpbiTdsMKGgbRIyuBpa523N6MWFPVroFfdSplmG0RhQny9gEj26:1nbEp2:X6XLWS-MjUGOE9oImy6Day7JULoALryWqO5ZmlAkE0s', '2022-04-18 05:00:12.878587'),
('m23rruj4mwg56i1u15x4g0r1f5m4xxla', '.eJxVjEEOwiAQRe_C2hCgnTK4dO8ZCMOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIstDj9bhTiI9Ud8D3UW5Ox1XWZSe6KPGiX18bpeTncv4MSevnWELOzlIOFMERSFiebMmuMzDSyAaPZKVKYkdGMGcnCYCdwZiB0DFG8PwAIOCE:1nR8RC:64dTFC9MwsuyIFKyz12RZfDRfXiV-6rXrkvVr2rrdPs', '2022-03-21 08:09:50.422083'),
('o0rwrs8pbfncwirq7k0sadmsjjkq7hxp', 'e30:1nRUeX:cWPR_8BBkwlsGfTM2vSCN9Tofnfya8RX7kr3drik6Aw', '2022-03-22 07:53:05.471767'),
('s19k6oluswiofuxog4cp5shs4vonem9d', '.eJxVjDsOgzAQBe_iOrKMwew6ZXrOgHa9dkxIjMSninL3gESRtG_mzVv1tK2535Y494Ooq6rU5XdjCmMsB5AHlfukw1TWeWB9KPqki-4mic_b6f4FMi15f7uQPHAicFQHNoAtxCQVBhFuxDpbiTdsMKGgbRIyuBpa523N6MWFPVroFfdSplmG0RhQny9gEj26:1nX2Af:7GHXT8vdFqx_zzePqFZ4e8q0ln0GT-42gAbX-2Uft0E', '2022-04-06 14:41:09.091829'),
('vysqqtz6gqlf0kdv3yu9ift5whzyrswq', '.eJxVjEEOwiAQRe_C2pCWljK4dOXGMzQzDAhWISntynh326QL3f73_nuLEdcljmv185hYnEUrTr8boZt83gE_MN-LdCUvcyK5K_KgVd4K--flcP8CEWvc3toFayig0dg5agwMxgduwTFTz0qrlm1DDQRgUH0AMrozg7aqI7Cs3RbN-PJb6Yozp0l8vqciPQM:1nQTFQ:VLB5l3q9tFQT1qEdpJJgM8vHRCc3xSgx99ZdnkH0Rm0', '2022-03-19 12:10:56.954041'),
('wt297sde4mhcs685vji3g4osie6mbq28', '.eJxVjDsOwjAQBe_iGllrbxx7Kek5g7X-4QBypDipEHeHSCmgfTPzXsLztla_9bz4KYmzUOL0uwWOj9x2kO7cbrOMc1uXKchdkQft8jqn_Lwc7t9B5V6_NafosERyAypCl0shJAsGkS1EhkKKIRIlU8yg7ehA8xhMyNpCIHDi_QHbrDdS:1nKxyY:syCJaM51J5AmExiLCU3yWQOMONTh7XSMumlGFiz-DI8', '2022-03-04 07:46:46.164844'),
('xfajpurov5pwf56215p278af327tp47f', '.eJxVjEEOwiAQRe_C2hCgnTK4dO8ZCMOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIstDj9bhTiI9Ud8D3UW5Ox1XWZSe6KPGiX18bpeTncv4MSevnWELOzlIOFMERSFiebMmuMzDSyAaPZKVKYkdGMGcnCYCdwZiB0DFG8PwAIOCE:1nSEpf:1u2_xRRievFlmF08V5xl_7fWD50lDL4n_b5WC8LuMmw', '2022-03-24 09:11:39.798775'),
('yspd9zoflzvorepfd41j8gzo11hwmge6', '.eJxVjEEOwiAQRe_C2hCgnTK4dO8ZCMOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIstDj9bhTiI9Ud8D3UW5Ox1XWZSe6KPGiX18bpeTncv4MSevnWELOzlIOFMERSFiebMmuMzDSyAaPZKVKYkdGMGcnCYCdwZiB0DFG8PwAIOCE:1nSzk1:1X04OvzqWv8gPn2tCw9xwPXHmY__TkIQYWfrlu55xrU', '2022-03-26 11:16:57.827440');

-- --------------------------------------------------------

--
-- Table structure for table `jet_bookmark`
--

CREATE TABLE `jet_bookmark` (
  `id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_add` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jet_pinnedapplication`
--

CREATE TABLE `jet_pinnedapplication` (
  `id` int(11) NOT NULL,
  `app_label` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_add` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone_cart`
--

CREATE TABLE `phone_cart` (
  `id` int(11) NOT NULL,
  `productprice` int(11) NOT NULL,
  `productqty` int(10) UNSIGNED NOT NULL,
  `productname` varchar(150) NOT NULL,
  `productimage1` varchar(100) NOT NULL,
  `productid_id` int(11) NOT NULL,
  `userId` varchar(30) NOT NULL,
  `create_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone_cart`
--

INSERT INTO `phone_cart` (`id`, `productprice`, `productqty`, `productname`, `productimage1`, `productid_id`, `userId`, `create_date`) VALUES
(14, 9899, 3, 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 'prod_img1/tecno-spark-8T-1.jpg', 1, 'jayu001', '2022-04-12 12:27:46.988448'),
(26, 58999, 1, 'Apple iPhone 12 (128GB) - Blue', 'prod_img1/iphone_12-1.jpg', 23, 'hardik007', '2022-04-14 17:00:19.650909');

-- --------------------------------------------------------

--
-- Table structure for table `phone_category`
--

CREATE TABLE `phone_category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(150) NOT NULL,
  `categoryimage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone_category`
--

INSERT INTO `phone_category` (`id`, `categoryname`, `categoryimage`) VALUES
(1, 'Samsung', 'catlogo/Samsung.png'),
(2, 'Vivo', 'catlogo/vivo.png'),
(3, 'Apple', 'catlogo/apple.png'),
(4, 'OPPO', 'catlogo/oppo.png'),
(5, 'Realme', 'catlogo/realme.jpg'),
(7, 'MI', 'catlogo/MI.png'),
(8, 'Tecno', 'catlogo/tecno.png'),
(9, 'IQOO', 'catlogo/iqoo.png'),
(10, 'Oneplus', 'catlogo/oneplus.png');

-- --------------------------------------------------------

--
-- Table structure for table `phone_contact`
--

CREATE TABLE `phone_contact` (
  `msg_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `MobileNo` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `subject` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone_contact`
--

INSERT INTO `phone_contact` (`msg_id`, `name`, `MobileNo`, `Email`, `subject`) VALUES
(1, 'vdv', 23456789, 'dvdvdvdv', 'dzv'),
(2, 'hardik', 2147483647, 'abc@gmail.com', 'ngfcvbvcx'),
(3, 'dvdv', 2147483647, 'vzvz', 'vzdvzdvzd'),
(4, 'dvdv', 2147483647, 'vzvz', 'vzdvzdvzd'),
(5, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(6, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(7, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(8, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(9, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(10, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(11, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(12, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(13, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(14, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(15, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(16, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(17, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(18, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(19, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc'),
(20, 'dvdsvdsv', 987654323, 'dvdsvdsvds', 'nbvfdxc');

-- --------------------------------------------------------

--
-- Table structure for table `phone_myorder`
--

CREATE TABLE `phone_myorder` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `C_Name` varchar(20) NOT NULL,
  `C_mobileNo` varchar(30) NOT NULL,
  `C_email` varchar(30) NOT NULL,
  `address` longtext NOT NULL,
  `address2` longtext NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `c_pincode` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `payment_mode` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `userId` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone_myorder`
--

INSERT INTO `phone_myorder` (`id`, `orderId`, `C_Name`, `C_mobileNo`, `C_email`, `address`, `address2`, `state`, `city`, `c_pincode`, `amount`, `create_date`, `payment_id`, `payment_mode`, `status`, `userId`) VALUES
(69, 99247703, 'Talib K. Delawala', '9090909090', 'talib@gmail.com', '47/55, 3rd Peerkhan Street, Arsiwala bldg, Room no. 25,', '1st Floor, Nagpada', 'MAHARASHTRA', 'MUMBAI', 400008, 25980, '2022-04-08 09:28:48.013565', NULL, 'COD', 'pending', ''),
(70, 67592598, 'Talib K. Delawala', '09090909090', 'talib@gmail.com', '47/55, 3rd Peerkhan Street, Arsiwala bldg, Room no. 25,', '1st Floor, Nagpada', 'MAHARASHTRA', 'MUMBAI', 400008, 1299000, '2022-04-08 09:57:15.972219', 'pay_JGovULmNWcspOf', 'Paid by RazorPay', 'pending', ''),
(71, 25793466, 'hardik', '9913177832', 'lathiyahardik86@gmail.com', '183,swagat society', 'brts road', ' gujarat', 'surat', 395006, 12490, '2022-04-10 08:41:58.602292', 'pay_JHaiFlTiU1C8i7', 'Paid by RazorPay', 'pending', 'hardik007'),
(72, 11997597, 'hardik', '9913177832', 'lathiyahardik86@gmail.com', '193,swagat society ', 'brts road', 'gujarat', 'surat', 395006, 12990, '2022-04-11 04:40:27.519691', NULL, 'COD', 'pending', 'jayu001'),
(73, 53951440, 'hardik', '9913177832', 'lathiyahardik86@gmail.com', '193,swagat society ', 'brts road', 'gujarat', 'surat', 395006, 12990, '2022-04-11 04:40:46.973441', NULL, 'COD', 'pending', 'jayu001'),
(74, 58692372, 'Hardik', '9913177832', 'lathiyahardik86@gmail.com', '183,swagat society', 'BRTS Road', 'Gujarat', 'surat', 395006, 12990, '2022-04-12 12:22:50.179884', 'pay_JIRXr1qm6qfR99', 'Paid by RazorPay', 'pending', 'hardik007'),
(75, 40386962, 'Lathiya Hardik ', '9913177832', 'Lathiyahardik86@gmail.com', '183,swagat society', 'brts road,simadagam', 'Gujarat ', 'surat', 395006, 11990, '2022-04-13 06:41:47.974089', NULL, 'COD', 'pending', 'hardik007'),
(76, 92074960, 'hardik', '9913177832', 'lathiyahardik86@gmail.com', '183', 'brts road', 'gujarat', 'surat', 395006, 9899, '2022-04-13 07:01:16.466592', NULL, 'COD', 'pending', 'hardik007');

-- --------------------------------------------------------

--
-- Table structure for table `phone_orderinfo`
--

CREATE TABLE `phone_orderinfo` (
  `id` int(11) NOT NULL,
  `p_name` varchar(1500) NOT NULL,
  `productimg` varchar(100) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_qty` int(10) UNSIGNED NOT NULL CHECK (`p_qty` >= 0),
  `orderInfo_id` int(11) NOT NULL,
  `userId` varchar(30) NOT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `payment_mode` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone_orderinfo`
--

INSERT INTO `phone_orderinfo` (`id`, `p_name`, `productimg`, `p_price`, `p_qty`, `orderInfo_id`, `userId`, `payment_id`, `payment_mode`) VALUES
(23, 'Oppo A54 (Starry Blue, 4GB RAM, 64GB Storage) with No Cost EMI & Additional Exchange Offers', 'prod_img1/oppo_A54-1.jpg', 12490, 1, 71, 'hardik007', NULL, NULL),
(24, 'realme narzo 50 (Speed Blue, 4GB RAM+64GB Storage) Helio G96 Processor | 50MP AI Triple Camera | 120Hz Ultra Smooth Display', 'prod_img1/realme_nazro_50-1.jpg', 12990, 1, 72, 'jayu001', NULL, NULL),
(25, 'realme narzo 50 (Speed Blue, 4GB RAM+64GB Storage) Helio G96 Processor | 50MP AI Triple Camera | 120Hz Ultra Smooth Display', 'prod_img1/realme_nazro_50-1.jpg', 12990, 1, 73, 'jayu001', NULL, NULL),
(26, 'realme narzo 50 (Speed Blue, 4GB RAM+64GB Storage) Helio G96 Processor | 50MP AI Triple Camera | 120Hz Ultra Smooth Display', 'prod_img1/realme_nazro_50-1.jpg', 12990, 1, 74, 'hardik007', 'pay_JIRXr1qm6qfR99', 'Paid by Razorpay\r\n'),
(27, 'OPPO A15s (Dynamic Black, 4GB, 128GB Storage) AI Triple Camera | 6.52\" HD+ Screen | 2.3GHz Mediatek Helio P35 Octa Core Processor', 'prod_img1/oppo_A15s-1.jpg', 11990, 1, 75, 'hardik007', NULL, NULL),
(28, 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 'prod_img1/tecno-spark-8T-1.jpg', 9899, 1, 76, 'hardik007', NULL, 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `phone_product`
--

CREATE TABLE `phone_product` (
  `id` int(11) NOT NULL,
  `productname` varchar(1501) NOT NULL,
  `productprice` int(11) NOT NULL,
  `productmrp` int(11) NOT NULL,
  `productdisc` int(11) NOT NULL,
  `productdec1` longtext NOT NULL,
  `productimage1` varchar(100) NOT NULL,
  `productavaib` varchar(30) NOT NULL,
  `productcat_id` int(11) NOT NULL,
  `productdisplay` varchar(100) NOT NULL,
  `productimage2` varchar(100) NOT NULL,
  `productimage3` varchar(100) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `product_quantity` bigint(20) UNSIGNED NOT NULL CHECK (`product_quantity` >= 0),
  `productdec2` longtext NOT NULL,
  `productdec3` longtext NOT NULL,
  `productdec4` longtext NOT NULL,
  `productdec5` longtext NOT NULL,
  `upload_date` datetime(6) DEFAULT NULL,
  `is_bestseller` tinyint(1) NOT NULL,
  `bestseller_display` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone_product`
--

INSERT INTO `phone_product` (`id`, `productname`, `productprice`, `productmrp`, `productdisc`, `productdec1`, `productimage1`, `productavaib`, `productcat_id`, `productdisplay`, `productimage2`, `productimage3`, `is_featured`, `product_quantity`, `productdec2`, `productdec3`, `productdec4`, `productdec5`, `upload_date`, `is_bestseller`, `bestseller_display`) VALUES
(1, 'Tecno Spark 8T (Atlantic Blue,7GB Expandable RAM, 64GB Storage)| 50MP AI Camera | 6.6\" FHD+Display | 5000mAh', 9899, 12999, 3100, '50MP High Resolution Camera for Extra Clarity with F1.6 Large Aperture | 8MP Front Cam with Dual Front Flash', 'prod_img1/tecno-spark-8T-1.jpg', 'In Stock', 8, 'product_display/tecno-spark-8T-display.jpg', 'prod_img2/tecno-spark-8T-2.jpg', 'prod_img3/tecno-spark-8T-3.jpg', 1, 2, '6.6\"FHD+Segment leading display with 91.3% screen to body ratio', 'New metal coding design-Bold, appealing and youth centric', '5000mAh powerful battery with ultra power saving mode', 'Helio G35 Gaming Processor for robust usage', '2022-04-02 10:31:14.501945', 0, ''),
(2, 'Redmi 9A Sport (Coral Green, 2GB RAM, 32GB Storage) | 2GHz Octa-core Helio G25 Processor | 5000 mAh Battery', 6999, 8499, 1500, 'Processor: MediaTek Helio G25 Octa-core; Up to 2.0GHz clock speed', 'prod_img1/redmi_9a_sport-1.jpg', 'In Stock', 7, 'product_display/redmi-9A-sport-display.jpg', 'prod_img2/redmi_9a_sport-2.jpg', 'prod_img3/redmi_9a_sport-3.jpg', 1, 0, 'Camera: 13 MP Rear camera with AI portrait| 5 MP front camera', 'Display: 16.58 centimeters (6.53-inch) HD+ display with 720x1600 pixels and 20:9 aspect ratio', 'Battery: 5000 mAH large battery with 10W wired charger in-box', 'Memory, Storage & SIM: 2GB RAM | 32GB storage | Dual SIM (nano+nano) + Dedicated SD card slot', '2022-04-02 10:31:14.501945', 0, ''),
(3, 'OnePlus Nord 2 5G (Blue Haze, 8GB RAM, 128GB Storage)', 29000, 31000, 2000, 'Camera: Sony IMX 766 50MP+8MP+2MP AI Triple Camera with 4K@30FPS|1080p video at 30/60 fps | 32MP Front camera with 1080p video at 30/60 fps | Super Slow Motion: 1080p video at 120 fps, 720p video at 240 fps | Time-Lapse: 1080p 120fps;720p 240fps', 'prod_img1/oneplus-nord-2-1.jpg', 'In Stock', 10, 'product_display/oneplus-nord-2-display.jpg', 'prod_img2/oneplus-nord-2-2.jpg', 'prod_img3/oneplus-nord-2-3.jpg', 1, 1, 'Chipset: MediaTek Dimensity 1200-AI - The octa-core Dimensity 1200-AI features one of the fastest smartphone CPUs ever: the 3GHz Arm Cortex-A78 provides the most immediate response, with up to 22% faster CPU performance while also being 25% more power-efficient versus the previous generation', 'Display: 6.43-inch, 90Hz Fluid AMOLED display | Resolution: 2400 x 1080 pixels | 410 PPI | Aspect Ratio: 20:9 | Support sRGB, Display P3', 'Memory, Storage & SIM: 8GB RAM | 128GB internal memory on UFS 3.1 storage system.', 'Connectivity: Dual SIM (nano + nano) | Currently supports dual 5G SIM Cards Operating System: OxygenOS 11.3 operating system based on Android 11 Battery: Dual Cell 4500mAH lithium-ion battery', '2022-04-02 10:31:14.501945', 0, ''),
(4, 'Xiaomi 11 Lite NE 5G (Jazz Blue 6GB RAM 128 GB Storage) | Slimmest (6.81mm) & Lightest (158g) 5G Smartphone | 10-bit AMOLED with Dolby Vision | Additional Off up to 5000 on Exchange', 26999, 31999, 5000, 'Processor: 5G enabled Qualcomm Snapdragon 778G with Kryo 670 Octa-core; 6nm process; Up to 2.4GHz clock speed; Liquidcool technology, Support for 12 5G bands', 'prod_img1/xiaomi-11-lite-1.jpg', 'In Stock', 7, 'product_display/xiaomi-11-lite-display.jpg', 'prod_img2/xiaomi-11-lite-2.jpg', 'prod_img3/xiaomi-11-lite-3.jpg', 1, 1, 'Camera: 64 MP Triple Rear camera with 8MP Ultra-wide and 5MP Super macro | 20 MP Front camera', 'Display: 90Hz high refresh rate, 10-bit FHD+ OLED Dot display; 16.6 centimeters (6.55 inch); Dolby Vision support Elegant design that is just 6.81mm slim and 158gms light, makes it a thing of art to flaunt.', 'Memory, Storage & SIM: 6GB LPDDR4X RAM | 128GB UFS 2.2 storage', 'Alexa Hands-Free capable: Download the Alexa app on to use Alexa hands-free. Play music, make calls, hear news, open apps, navigate, and more, using just your voice, while on-the-go. Just ask and Alexa will respond instantly.', '2022-04-02 10:31:14.501945', 0, ''),
(5, 'Tecno Spark 8 Pro (Interstellar Black,7GB Expandable RAM, 64GB Storage) 33W Fast Charger | Helio G85 Gaming Processor | 6.8\" FHD+Dot-in Display | 48MP Triple Camera', 10799, 13499, 2700, '48MP High Resolution AI camera | Super Night Mode |Intelligent Focus | 8MP Front Cam with Dual Front Flash', 'prod_img1/tecno-spark-8T-pro-1.jpg', 'In Stock', 8, 'product_display/tecno-spark-8T-pro-display.jpg', 'prod_img2/tecno-spark-8T-pro-2.jpg', 'prod_img3/tecno-spark-8T-pro-3.jpg', 0, 1, '6.8\"FHD+Dot-in display | 90.52% screen to body ratio | 500nits Max Brightness | 120Hz Touch Sampling Rate', '33W Super Fast Charger for rapid charging | Type C', '5000mAh battery | Upto 63 days long standby time Helio G85 Blazing Fast Gaming Processor | 1GHz Mali G52 GPU for Gaming greatness', 'RAM Expansion up to 7GB (this may need an OTA update)', '2022-04-02 10:31:14.501945', 0, ''),
(6, 'Redmi Note 10T 5G (Metallic Blue, 4GB RAM, 64GB Storage) | Dual 5G | 90Hz Adaptive Refresh Rate | MediaTek Dimensity 700 7nm Processor', 13999, 16999, 3000, 'Processor: Mediatek Dimensity 700 Octa-core; 7nm process; Up to 2.2GHz clock speed; Dual 5G support', 'prod_img1/redmi-note-10T-1.jpg', 'In Stock', 7, 'product_display/redmi-note-10T-display.jpg', 'prod_img2/redmi-note-10T-2.jpg', 'prod_img3/redmi-note-10T-3.jpg', 1, 1, 'Display: 6.5 inch FHD+ 2400x1080 Dot display with 90Hz high refresh rate and adaptive sync technology; ; 180Hz touch sampling,', 'Camera: 48 MP camera sensor, 0.8μm, f/1.79, 2MP depth and 2MP Macro camera lens 8 MP Front camera', 'Battery: 5000 mAh battery with support for 18W fast wired charging', 'Alexa Hands-Free capable: Download the Alexa app to use Alexa hands-free. Play music, make calls, hear news, open apps, navigate, and more, all using just your voice, while on-the-go Wireless communication technology: Cellular', '2022-04-02 10:31:14.501945', 0, ''),
(11, 'iQOO 9 SE 5G (Sunset Sierra, 8GB RAM, 128GB Storage) | Qualcomm Snapdragon 888 | 66W Flash Charge | Upto 12 Months No Cost EMI', 33990, 39990, 6000, 'Qualcomm Snapdragon 888 5G Mobile Platform is based on a new 5 nm process and a Kryo680 architecture, Compared with Snapdragon 870, the CPU performance improves by 25%, GPU performance by 35%. Along with Enhanced LPDDR 5 & Enhanced UFS 3.1 (V6).', 'prod_img1/iqoo_9_SE-1.jpg', 'In Stock', 9, '', 'prod_img2/iqoo_9_SE-2.jpg', 'prod_img3/iqoo_9_SE-3.jpg', 0, 1, '4500mAh battery with a 66W flash charger comes as standard, supporting FlashCharge technology. It charges 50% battery in just 14 minutes and 100% battery in just 39 minutes', 'Intelligent Display Chip is able to increase the frame rate and optimize colors so that every player can enjoy high FPS and rich colors at hand to be fully immersed in the gaming experience.', '48MP OIS Triple Rear Camera, gives super clear pictures which retain the same clarity when they are enlarged. OIS ensures good performance while taking photos at night or capturing movements. 13MP wide-angle camera supports 120° ultrawide shots (108° after distortion correction) and macro shots with the minimum focal length of 2.5 cm.', '120Hz AMOLED Display lets you enjoy a seamless and smooth screen experience & is equipped with features like 1300nits Peak Brightness, HDR10+, SGS Eye Care Display Certificate/ SGS Seamless Certificate & much more.', '2022-04-03 10:01:38.940940', 1, 'bestseller_products/iqoo_9_SE-bestseller.jpg'),
(12, 'iQOO 9 Pro 5G (Legend, 8GB RAM, 256GB Storage) | Snapdragon 8 Gen 1 Mobile Processor | 120W FlashCharge | Upto 12 Months No Cost EMI', 64990, 74990, 10000, 'Snapdragon️ 8 Gen 1 Mobile Processor which uses the latest 4nm process technology & has a maximum increase of 20% in CPU performance, a maximum increase of 30% in GPU performance (Compared with Qualcomm Snapdragon 888 5G Mobile Platform).', 'prod_img1/iqoo_9_pro-1.jpg', 'In Stock', 9, '', 'prod_img2/iqoo_9_pro-2.jpg', 'prod_img3/iqoo_9_pro-3.jpg', 0, 1, '120W FlashCharge which can charge 50% battery in just 8 minutes and 100% battery in just 20 minutes. Also, 50W Wireless FlashCharge using vertical charger which provides convenience and universality.', '50MP GN5 Gimbal Camera which is equipped with GN5\'s all-directional autofocus technology Dual Pixel Pro greatly improves the autofocus performance, Gimbal increases the exposure time to capture breathtaking Motion and Night picture, 50MP 150° Fisheye Wide Angle, 16MP Telephoto/Portrait Camera & much more.', '3D Ultrasonic Large Fingerprint Sensor which will help users in Unlocking without light: Better user experience at night, High security: 3D information recognized by ultrasonic fingerprint scanning & All-scenario: unlocking interfered by strong outdoor light.', 'Intelligent Display Chip which increases the frame rate and optimize colors so that every player can enjoy high FPS and rich colors at hand to be fully immersed in the gaming experience.', '2022-04-03 10:17:41.056723', 1, 'bestseller_products/iqoo_9_pro-bestseller.jpg'),
(13, 'Tecno Spark 8C Turquoise Cyan (3GB+64GB) | Upto 6GB RAM |90Hz Refresh Rate |6.6\" HD+ Display | 5000mAh |13MP Dual Camera| IPX2 Splash Resistant', 8099, 10999, 2900, '90Hz high refresh rate for smoother scrolling and visual experience | 6.6\" HD+ Dot Notch display | 180Hz touch sampling rate for smooth touch response | No support for Africa\'s frequency bands', 'prod_img1/tecno_8C-1.jpg', 'In Stock', 8, '', 'prod_img2/tecno_8C-2.jpg', 'prod_img3/tecno_8C-3.jpg', 0, 1, 'Upto 6GB larger RAM (3GB LPDDR4x + 3GB Virtual RAM) with the help of memory fusion technology | Upto 45% improvement in launching apps, upto 15 apps support in background | 64GB eMMC 5.1 ROM extendable upto 256GB', '5000mAh battery with up to 89 days long standby | 23 hours Video playback or 53 hours Calling or 137 hours music playback | Sleep mode optimization, Ultra Battery saver mode for extreme backup', '13MP rear Dual Camera and Dual Flashlight | 8MP Selfie camera with front flash| Multiple AI modes like Portrait, HDR, Smile Shot, AI Scene Detection | Shoot good quality 1080P Time-lapse, Slow Motion videos', 'IPX2 Splash Resistant | DTS Sound Enhancement | SoPlay 2.0 Music Mixer | HiParty Connected Music', '2022-04-03 12:49:40.371307', 1, 'bestseller_products/tecno_8C-bestseller.jpg'),
(14, 'iQOO Z3 5G (Cyber Blue, 6GB RAM, 128GB Storage) | India\'s First SD 768G 5G Processor | 55W FlashCharge | Upto 6 Months No Cost EMI', 19990, 22990, 3000, 'Qualcomm Snapdragon 768G 5G processor, 7nm chip and octa-core processor.', 'prod_img1/IQOO_z3-1.jpg', 'In Stock', 9, '', 'prod_img2/IQOO_z3-2.jpg', 'prod_img3/IQOO_z3-3.jpg', 0, 1, '55W FlashCharge can charge the 4400mAh battery up to 50% in just 19 minutes* and a full charge in just 50 minutes*', '64MP AF Main Camera with f/1.79 Aperture supported by GW3 sensor loaded with professional features like 4K videos @ 60FPS, EFB Autofocus Tracking and more. The device also comes with a 16MP Front Camera', '120Hz Refresh Rate | 180Hz Touch Sampling Rate', 'Five-layer liquid cooling system can reduce the core temperature by 10 degrees. Moreover, 2 Years of Software Updates and 3 Years of Android Security Patches.', '2022-04-03 12:56:01.329493', 1, 'bestseller_products/IQOO_z3-bestseller.jpg'),
(15, 'iQOO 9 5G (Alpha, 8GB RAM, 128GB Storage) | Qualcomm Snapdragon 888+ | 120W FlashCharge | Upto 12 Months No Cost EMI', 42990, 49990, 7000, 'Qualcomm Snapdragon 888+ 5G Mobile Platform which is a 5nm process technology, the CPU performance is still 5.2% higher while maintaining the same power consumption; the AI engine fusion computing performance is 32 TOPS, a significant increase over 20% compared with the previous generation & GPU is increased by up to 20%', 'prod_img1/iqoo_9-1.jpg', 'In Stock', 9, '', 'prod_img2/iqoo_9-2.jpg', 'prod_img3/iqoo_9-3.jpg', 0, 1, '120W FlashCharge which can charge 50% battery in just 6 minutes and 100% battery in just 18 minutes', 'Intelligent Display Chip is able to increase the frame rate and optimize colors so that every player can enjoy high FPS and rich colors at hand to be fully immersed in the gaming experience.', '48MP Gimbal Camera system with Sony IMX598 sensor, 13MP super wide-angle camera can take wide-angle shots at 120° (108° after correction) & 13MP 50MM Professional Portrait camera takes artistic photos.', '120Hz 10Bit AMOLED Display lets you enjoy a seamless and smooth screen experience, along with HDR 10+ Standard Certification that supports HDR high dynamic range video content playback.', '2022-04-03 13:06:11.658901', 1, 'bestseller_products/iqoo_9-bestseller.jpg'),
(16, 'Oppo A54 (Starry Blue, 4GB RAM, 64GB Storage) with No Cost EMI & Additional Exchange Offers', 12490, 14990, 2500, '6.51\" Inch (16.5cm) HD+ Puch-hole Display with 1600x720 pixels. Larger screen to body ratio of 89.2%., Side Fingerprint Sensor.', 'prod_img1/oppo_A54-1.jpg', 'In Stock', 4, '', 'prod_img2/oppo_A54-2.jpg', 'prod_img3/oppo_A54-3.jpg', 0, 1, 'MediaTek Helio P35 GPU IMG GE8320 @ 680 MHz, Powerful 2.3 GHz Octa-core processor, support LPDDR4X memory', '5000 mAh lithium polymer battery', '13MP Quad Camera ( 13MP Main + 2MP Macro + 2MP Bokeh Lens), 16MP Front Camera.', 'Memory, Storage & SIM: 4GB RAM, 64GB internal memory expandable up to 256GB, Dual SIM (nano+nano) dual-standby (4G+4G)., Color OS 7.2 based on Android 10.0 operating system.', '2022-04-03 13:21:09.706620', 1, 'bestseller_products/oppo_A54-bestseller.jpg'),
(17, 'realme narzo 50 (Speed Blue, 4GB RAM+64GB Storage) Helio G96 Processor | 50MP AI Triple Camera | 120Hz Ultra Smooth Display', 12990, 15999, 3009, 'Processor: MediaTek Helio G96 Octa-core processor ; Up to 2.05GHz clock speed', 'prod_img1/realme_nazro_50-1.jpg', 'In Stock', 5, '', 'prod_img2/realme_nazro_50-2.jpg', 'prod_img3/realme_nazro_50-3.jpg', 0, 1, 'Display: 6.6 inch FHD+ (2412x1080) display with 120Hz high refresh rate and adaptive refresh rate ; 180Hz touch sampling', '5000mAh battery with 33W Dart charging support. In box - 33W Dart Charger', '50MP + 2MP + 2MP Rear Camera | 16MP Front Camera', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '2022-04-03 13:38:17.524443', 1, 'bestseller_products/realme_nazro_50-bestseller.jpg'),
(18, 'realme narzo 50A (Oxygen Blue , 4GB RAM + 64 GB Storage) Helio G85 Processor | 50MP AI Triple Camera | 6000 mAh Battery', 11499, 12999, 1500, 'MediaTek Helio G85 Octa-core Processor', 'prod_img1/realme_nazro_50A-1.jpg', 'In Stock', 5, '', 'prod_img2/realme_nazro_50A-2.jpg', 'prod_img3/realme_nazro_50A-3.jpg', 0, 1, '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.51 cm (6.5 inch) HD+ Display', '50MP+2MP+2MP Primary Camera | 8MP Front Camera', '1 Year Manufacturer warranty for Mobile and 6 Months for Accessories', '', '2022-04-03 13:44:36.622347', 1, 'bestseller_products/realme_nazro_50A-bestseller.jpg'),
(19, 'OPPO A15s (Dynamic Black, 4GB, 128GB Storage) AI Triple Camera | 6.52\" HD+ Screen | 2.3GHz Mediatek Helio P35 Octa Core Processor', 11990, 14990, 3000, '13MP main camera + 2MP Depth camera + 2MP Macro lens with 8MP Front', 'prod_img1/oppo_A15s-1.jpg', 'In Stock', 4, '', 'prod_img2/oppo_A15s-2.jpg', 'prod_img3/oppo_A15s-3.jpg', 0, 1, '16.55 centimeters (6.52-inch) HD+ Display with 1520 x 720 Pixel Resolution-Rear Fingerprint Sensor + AI face unlock| Eye comfort - filters Blue light to reduce damage to the eyes.', 'Battery: 4230 mAh Lithium-Polymer Battery providing talk-time of 29 hours and standby time of 323 hours.', 'Memory & Storage: 4GB Ram with 128GB Storage | Dual Nano Sim with Dual standby (4G+4G)', 'Color OS 7.2 based on Android Version 10 Operating system with 2.3GHz Mediatek Helio P35 Octa Core Processor', '2022-04-03 13:50:50.145220', 1, 'bestseller_products/oppo_A15s-bestseller.jpg'),
(20, 'Vivo V21 5G (Arctic White, 8GB RAM, 128GB Storage) with No Cost EMI/Additional Exchange Offers', 27990, 32990, 5000, '64MP+8MP+2MP Rear Camera | 44MP Selfie Camera', 'prod_img1/vivo_v21-1.jpg', 'In Stock', 2, '', 'prod_img2/vivo_v21-2.jpg', 'prod_img3/vivo_v21-3.jpg', 0, 1, '16.65cm (6.44\") AMOLED Display with 90 Hz refresh rate and 2404 x 1080 pixels resolution.', 'Memory & SIM: 8GB RAM | 128GB internal memory | Dual SIM (nano+nano) dual-standby (5G).', 'Funtouch OS 11.1 (based on Android 11) operating system with Mediatek Dimensity 800U processor.', '33W flash charging with 4000mAh battery (Type-C).', '2022-04-03 13:55:41.824768', 1, 'bestseller_products/vivo_v21-bestseller.jpg'),
(21, 'Tecno Pop 5 LTE(Turquoise Cyan 2G+32GB)| 6.52\" HD+Dot Notch | 5000mAh | 8MP Dual Camera | Front Flash| IPX2 Splash Resistant', 6799, 8999, 2200, 'Vibrant 6.52\" Dot Notch HD+ display for perfect viewing experience | 90% screen to body ratio | 480nits max. brightness | No support for Africa\'s frequency bands 5000mAh battery for unstoppable entertainment | Ultra Power Saving Mode | 48Hours of Video Playback | Battery Lab 8MP Portrait Dual rear Camera for clear images | Excellent Image Processing | Dual Flashlight', 'prod_img1/tecno_pop_5_LTE-1.jpg', 'In Stock', 8, '', 'prod_img2/tecno_pop_5_LTE-2.jpg', 'prod_img3/tecno_pop_5_LTE-3.jpg', 0, 1, 'Micro Slit Front Flash for brighter Night selfies | Adjustable brightness to get a perfect selfie | 5MP F2.0 Aperture Front Camera', 'Trendy and Stylish Design | Glossy finish with visual light reflection makes it a design icon | Attractive colors with Premium appeal', '', '', '2022-04-03 14:15:28.152495', 1, 'bestseller_products/tecno_pop_5_LTE-bestseller.jpg'),
(22, 'Vivo Y15s Wave Green (3GB RAM & 32GB ROM) with No Cost EMI/Additional Exchange Offers', 10990, 13990, 3000, '13MP+2MP rear camera | 8MP Selfie Camera', 'prod_img1/vivo_Y15s-1.jpg', 'In Stock', 2, '', 'prod_img2/vivo_Y15s-2.jpg', 'prod_img3/vivo_Y15s-3.jpg', 0, 1, '16.55 cm (6.51\" inch) LCD Display with 1600 × 720 pixels resolution', 'Funtouch OS 11.1 (Android 11 (Go edition))', 'Comes with Rear flashlight', '', '2022-04-03 14:18:54.308022', 1, 'bestseller_products/vivo_Y15s-bestseller.jpg'),
(23, 'Apple iPhone 12 (128GB) - Blue', 58999, 70900, 11901, '6.1-inch (15.5 cm diagonal) Super Retina XDR display', 'prod_img1/iphone_12-1.jpg', 'In Stock', 3, '', 'prod_img2/iphone_12-2.jpg', 'prod_img3/iphone_12-3.jpg', 0, 2, 'Ceramic Shield, tougher than any smartphone glass A14 Bionic chip, the fastest chip ever in a smartphone', 'Advanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording', '12MP True Depth front camera with Night mode, 4K Dolby Vision HDR recording Industry-leading IP68 water resistance', 'Supports MagSafe accessories for easy attach and faster wireless charging iOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more', '2022-04-11 16:50:00.963706', 0, ''),
(24, 'Samsung Galaxy M12 (Blue,6GB RAM, 128GB Storage) 6 Months Free Screen Replacement for Prime', 12499, 15499, 3000, '48MP+5MP+2MP+2MP Quad camera setup- True 48MP (F 2.0) main camera + 5MP (F2.2) Ultra wide camera+ 2MP (F2.4) depth camera + 2MP (2.4) Macro Camera| 8MP (F2.2) front came', 'prod_img1/galaxy_m12-1.jpg', 'In Stock', 1, '', 'prod_img2/galaxy_m12-2.jpg', 'prod_img3/galaxy_m12-3.jpg', 0, 2, 'Memory, Storage & SIM: 6GB RAM | 128GB internal memory expandable up to 1TB| Dual SIM', '6000mAH lithium-ion battery, 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', 'Android 11, v11.0 operating system,One UI 3.1, with 8nm Power Efficient Exynos850 (Octa Core 2.0GH)', '16.55 centimeters (6.5-inch) HD+ TFT LCD - infinity v-cut display,90Hz screen refresh rate, HD+ resolution with 720 x 1600 pixels resolution, 269 PPI with 16M color', '2022-04-11 16:53:43.699681', 0, ''),
(25, 'Apple iPhone 13 Pro (256GB) - Gold', 129900, 139900, 10000, '15 cm (6.1-inch) Super Retina XDR display with ProMotion for a faster, more responsive feel', 'prod_img1/iphone_13_pro-1.jpg', 'In Stock', 3, '', 'prod_img2/iphone_13_pro-2.jpg', 'prod_img3/iphone_13_pro-3.jpg', 0, 0, 'Cinematic mode adds shallow depth of field and shifts focus automatically in your videos', 'Pro camera system with new 12MP Telephoto, Wide and Ultra Wide cameras; LiDAR Scanner; 6x optical zoom range; macro photography; Photographic Styles, ProRes video, Smart HDR 4, Night mode, Apple ProRAW, 4K Dolby Vision HDR recording', '12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording A15 Bionic chip for lightning-fast performance', 'Up to 22 hours of video playback Durable design with Ceramic Shield', '2022-04-11 16:57:30.147248', 0, ''),
(26, 'Samsung Galaxy M32 5G (Sky Blue, 6GB RAM, 128GB Storage)', 16999, 23999, 7000, 'MediaTek | Dimensity 720 Octa Core 2GHz Processor with the widest 12 band support for a True 5G experience', 'prod_img1/galaxy_m32-1.jpg', 'In Stock', 1, '', 'prod_img2/galaxy_m32-2.jpg', 'prod_img3/galaxy_m32-3.jpg', 0, 1, '16.55 centimeters (6.5-inch) TFT - Infinity V-cut display, HD+ resolution, 720 X 1600 pixels protected by Gorilla Glass 5', 'Versatile Quad camera setup-48MP (F 1.8) main camera + 8MP (F2.2) Ultra wide camera+ 5MP (F2.4) depth camera + 2MP (2.4) Macro Camera| 13MP (F2.2) front camera', 'Monster 5000 mAh Battery | Memory, Storage & SIM: Upto 10GB RAM Plus| 128GB internal memory expandable up to 1TB| SIM 1 + Hybrid (SIM or MicroSD)', 'Latest Android v11.0, One UI 3.1 operating system, available right out of the box', '2022-04-11 16:59:41.163520', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `phone_signup`
--

CREATE TABLE `phone_signup` (
  `id` int(11) NOT NULL,
  `fullName` varchar(20) NOT NULL,
  `userId` varchar(30) NOT NULL,
  `mobileNo` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Address` longtext NOT NULL,
  `Address2` longtext NOT NULL,
  `Pincode` int(11) NOT NULL,
  `Registered_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone_signup`
--

INSERT INTO `phone_signup` (`id`, `fullName`, `userId`, `mobileNo`, `email`, `password`, `State`, `City`, `Address`, `Address2`, `Pincode`, `Registered_time`) VALUES
(1, 'hardik', 'hardik007', '9913177832', 'abc@gmail.com', '123', 'gujarat', 'surat', '123', 'brts road', 395006, '2022-04-12 14:22:11.169476'),
(2, 'Jay', 'jayu001', '9876543210', 'jayu@gmail.com', 'jay123', 'gujarat', 'surat', '33,xyz society', 'canal road', 395006, '2022-04-12 14:22:11.169476'),
(3, 'Hardik Lathiya', 'hardik007', '9913177832', 'lathiyahardik86@gmail.com', 'hardik123', 'gujarat', 'surat', '183,swagat society', 'brts road', 395006, '2022-04-12 14:22:11.169476'),
(4, 'Hardik Lathiya', 'hardik007', '9913177832', 'lathiyahardik86@gmail.com', 'hardik123', 'gujarat', 'surat', '183,swagat society', 'brts road', 395006, '2022-04-12 14:22:11.169476'),
(5, 'mfnbjl', 'nkjbkj', '748925784', 'hjbkh@gmail.com', 'hewk', 'hbhb', 'hhkbhk', 'hbhb', 'khbh', 7394798, '2022-04-12 14:24:42.222706'),
(6, 'sdvfbddsvj', 'hardik008', '9913177832', 'lathiyahardik87@gmail.com', '1234567890', 'hbjh', 'jbjhb', 'bhbhk', 'hkb', 803278, '2022-04-13 09:15:10.940959'),
(7, 'bidsbj', 'ifbi', '3545435351', 'iiuiu@gmail.com', '123', 'jjuohuoh', 'uhiuh', 'uhuoh', 'huhu', 784574, '2022-04-13 09:21:19.105621');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_userdashboardmodule_user_id_97c13132` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jet_bookmark_user_id_8efdc332_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `phone_cart`
--
ALTER TABLE `phone_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Phone_cart_productid_id_a15cdceb_fk_Phone_product_id` (`productid_id`);

--
-- Indexes for table `phone_category`
--
ALTER TABLE `phone_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_contact`
--
ALTER TABLE `phone_contact`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `phone_myorder`
--
ALTER TABLE `phone_myorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_orderinfo`
--
ALTER TABLE `phone_orderinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Phone_orderinfo_orderInfo_id_4276e3b1_fk_Phone_myorder_id` (`orderInfo_id`);

--
-- Indexes for table `phone_product`
--
ALTER TABLE `phone_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Phone_product_productcat_id_c2e008e6_fk_Phone_category_id` (`productcat_id`);

--
-- Indexes for table `phone_signup`
--
ALTER TABLE `phone_signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_cart`
--
ALTER TABLE `phone_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `phone_category`
--
ALTER TABLE `phone_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `phone_contact`
--
ALTER TABLE `phone_contact`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `phone_myorder`
--
ALTER TABLE `phone_myorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `phone_orderinfo`
--
ALTER TABLE `phone_orderinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `phone_product`
--
ALTER TABLE `phone_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `phone_signup`
--
ALTER TABLE `phone_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  ADD CONSTRAINT `dashboard_userdashboardmodule_user_id_97c13132_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  ADD CONSTRAINT `jet_bookmark_user_id_8efdc332_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  ADD CONSTRAINT `jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `phone_cart`
--
ALTER TABLE `phone_cart`
  ADD CONSTRAINT `Phone_cart_productid_id_a15cdceb_fk_Phone_product_id` FOREIGN KEY (`productid_id`) REFERENCES `phone_product` (`id`);

--
-- Constraints for table `phone_orderinfo`
--
ALTER TABLE `phone_orderinfo`
  ADD CONSTRAINT `Phone_orderinfo_orderInfo_id_4276e3b1_fk_Phone_myorder_id` FOREIGN KEY (`orderInfo_id`) REFERENCES `phone_myorder` (`id`);

--
-- Constraints for table `phone_product`
--
ALTER TABLE `phone_product`
  ADD CONSTRAINT `Phone_product_productcat_id_c2e008e6_fk_Phone_category_id` FOREIGN KEY (`productcat_id`) REFERENCES `phone_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
