/*
 Navicat Premium Data Transfer

 Source Server         : myslq_django
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : django_east

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 15/09/2019 23:29:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add 我的书单', 1, 'add_book');
INSERT INTO `auth_permission` VALUES (2, 'Can change 我的书单', 1, 'change_book');
INSERT INTO `auth_permission` VALUES (3, 'Can delete 我的书单', 1, 'delete_book');
INSERT INTO `auth_permission` VALUES (4, 'Can add 图书分类', 2, 'add_bookcategory');
INSERT INTO `auth_permission` VALUES (5, 'Can change 图书分类', 2, 'change_bookcategory');
INSERT INTO `auth_permission` VALUES (6, 'Can delete 图书分类', 2, 'delete_bookcategory');
INSERT INTO `auth_permission` VALUES (7, 'Can add 书籍标签', 3, 'add_booktag');
INSERT INTO `auth_permission` VALUES (8, 'Can change 书籍标签', 3, 'change_booktag');
INSERT INTO `auth_permission` VALUES (9, 'Can delete 书籍标签', 3, 'delete_booktag');
INSERT INTO `auth_permission` VALUES (10, 'Can add 分类目录', 4, 'add_category');
INSERT INTO `auth_permission` VALUES (11, 'Can change 分类目录', 4, 'change_category');
INSERT INTO `auth_permission` VALUES (12, 'Can delete 分类目录', 4, 'delete_category');
INSERT INTO `auth_permission` VALUES (13, 'Can add 教程列表', 5, 'add_courses');
INSERT INTO `auth_permission` VALUES (14, 'Can change 教程列表', 5, 'change_courses');
INSERT INTO `auth_permission` VALUES (15, 'Can delete 教程列表', 5, 'delete_courses');
INSERT INTO `auth_permission` VALUES (16, 'Can add 菜单栏', 6, 'add_meanlist');
INSERT INTO `auth_permission` VALUES (17, 'Can change 菜单栏', 6, 'change_meanlist');
INSERT INTO `auth_permission` VALUES (18, 'Can delete 菜单栏', 6, 'delete_meanlist');
INSERT INTO `auth_permission` VALUES (19, 'Can add 网站留言', 7, 'add_messages');
INSERT INTO `auth_permission` VALUES (20, 'Can change 网站留言', 7, 'change_messages');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 网站留言', 7, 'delete_messages');
INSERT INTO `auth_permission` VALUES (22, 'Can add 我的影单', 8, 'add_movie');
INSERT INTO `auth_permission` VALUES (23, 'Can change 我的影单', 8, 'change_movie');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 我的影单', 8, 'delete_movie');
INSERT INTO `auth_permission` VALUES (25, 'Can add 电影分类', 9, 'add_moviecategory');
INSERT INTO `auth_permission` VALUES (26, 'Can change 电影分类', 9, 'change_moviecategory');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 电影分类', 9, 'delete_moviecategory');
INSERT INTO `auth_permission` VALUES (28, 'Can add 电影标签', 10, 'add_movietag');
INSERT INTO `auth_permission` VALUES (29, 'Can change 电影标签', 10, 'change_movietag');
INSERT INTO `auth_permission` VALUES (30, 'Can delete 电影标签', 10, 'delete_movietag');
INSERT INTO `auth_permission` VALUES (31, 'Can add 文章列表', 11, 'add_post');
INSERT INTO `auth_permission` VALUES (32, 'Can change 文章列表', 11, 'change_post');
INSERT INTO `auth_permission` VALUES (33, 'Can delete 文章列表', 11, 'delete_post');
INSERT INTO `auth_permission` VALUES (34, 'Can add 标签列表', 12, 'add_tag');
INSERT INTO `auth_permission` VALUES (35, 'Can change 标签列表', 12, 'change_tag');
INSERT INTO `auth_permission` VALUES (36, 'Can delete 标签列表', 12, 'delete_tag');
INSERT INTO `auth_permission` VALUES (37, 'Can view 我的书单', 1, 'view_book');
INSERT INTO `auth_permission` VALUES (38, 'Can view 图书分类', 2, 'view_bookcategory');
INSERT INTO `auth_permission` VALUES (39, 'Can view 书籍标签', 3, 'view_booktag');
INSERT INTO `auth_permission` VALUES (40, 'Can view 分类目录', 4, 'view_category');
INSERT INTO `auth_permission` VALUES (41, 'Can view 教程列表', 5, 'view_courses');
INSERT INTO `auth_permission` VALUES (42, 'Can view 菜单栏', 6, 'view_meanlist');
INSERT INTO `auth_permission` VALUES (43, 'Can view 网站留言', 7, 'view_messages');
INSERT INTO `auth_permission` VALUES (44, 'Can view 我的影单', 8, 'view_movie');
INSERT INTO `auth_permission` VALUES (45, 'Can view 电影分类', 9, 'view_moviecategory');
INSERT INTO `auth_permission` VALUES (46, 'Can view 电影标签', 10, 'view_movietag');
INSERT INTO `auth_permission` VALUES (47, 'Can view 文章列表', 11, 'view_post');
INSERT INTO `auth_permission` VALUES (48, 'Can view 标签列表', 12, 'view_tag');
INSERT INTO `auth_permission` VALUES (49, 'Can add 自定义代码', 13, 'add_customcode');
INSERT INTO `auth_permission` VALUES (50, 'Can change 自定义代码', 13, 'change_customcode');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 自定义代码', 13, 'delete_customcode');
INSERT INTO `auth_permission` VALUES (52, 'Can add 友情链接', 14, 'add_friendlinks');
INSERT INTO `auth_permission` VALUES (53, 'Can change 友情链接', 14, 'change_friendlinks');
INSERT INTO `auth_permission` VALUES (54, 'Can delete 友情链接', 14, 'delete_friendlinks');
INSERT INTO `auth_permission` VALUES (55, 'Can add SEO设置', 15, 'add_seo');
INSERT INTO `auth_permission` VALUES (56, 'Can change SEO设置', 15, 'change_seo');
INSERT INTO `auth_permission` VALUES (57, 'Can delete SEO设置', 15, 'delete_seo');
INSERT INTO `auth_permission` VALUES (58, 'Can add 站点信息', 16, 'add_siteinfo');
INSERT INTO `auth_permission` VALUES (59, 'Can change 站点信息', 16, 'change_siteinfo');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 站点信息', 16, 'delete_siteinfo');
INSERT INTO `auth_permission` VALUES (61, 'Can add 社交账号', 17, 'add_social');
INSERT INTO `auth_permission` VALUES (62, 'Can change 社交账号', 17, 'change_social');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 社交账号', 17, 'delete_social');
INSERT INTO `auth_permission` VALUES (64, 'Can view 自定义代码', 13, 'view_customcode');
INSERT INTO `auth_permission` VALUES (65, 'Can view 友情链接', 14, 'view_friendlinks');
INSERT INTO `auth_permission` VALUES (66, 'Can view SEO设置', 15, 'view_seo');
INSERT INTO `auth_permission` VALUES (67, 'Can view 站点信息', 16, 'view_siteinfo');
INSERT INTO `auth_permission` VALUES (68, 'Can view 社交账号', 17, 'view_social');
INSERT INTO `auth_permission` VALUES (69, 'Can add 我的评论', 18, 'add_comment');
INSERT INTO `auth_permission` VALUES (70, 'Can change 我的评论', 18, 'change_comment');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 我的评论', 18, 'delete_comment');
INSERT INTO `auth_permission` VALUES (72, 'Can view 我的评论', 18, 'view_comment');
INSERT INTO `auth_permission` VALUES (73, 'Can add notification', 19, 'add_notification');
INSERT INTO `auth_permission` VALUES (74, 'Can change notification', 19, 'change_notification');
INSERT INTO `auth_permission` VALUES (75, 'Can delete notification', 19, 'delete_notification');
INSERT INTO `auth_permission` VALUES (76, 'Can view notification', 19, 'view_notification');
INSERT INTO `auth_permission` VALUES (77, 'Can add Bookmark', 20, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (78, 'Can change Bookmark', 20, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (79, 'Can delete Bookmark', 20, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (80, 'Can add User Setting', 21, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (81, 'Can change User Setting', 21, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (82, 'Can delete User Setting', 21, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (83, 'Can add User Widget', 22, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (84, 'Can change User Widget', 22, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (85, 'Can delete User Widget', 22, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (86, 'Can add log entry', 23, 'add_log');
INSERT INTO `auth_permission` VALUES (87, 'Can change log entry', 23, 'change_log');
INSERT INTO `auth_permission` VALUES (88, 'Can delete log entry', 23, 'delete_log');
INSERT INTO `auth_permission` VALUES (89, 'Can view Bookmark', 20, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (90, 'Can view log entry', 23, 'view_log');
INSERT INTO `auth_permission` VALUES (91, 'Can view User Setting', 21, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (92, 'Can view User Widget', 22, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can add log entry', 24, 'add_logentry');
INSERT INTO `auth_permission` VALUES (94, 'Can change log entry', 24, 'change_logentry');
INSERT INTO `auth_permission` VALUES (95, 'Can delete log entry', 24, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (96, 'Can view log entry', 24, 'view_logentry');
INSERT INTO `auth_permission` VALUES (97, 'Can add permission', 25, 'add_permission');
INSERT INTO `auth_permission` VALUES (98, 'Can change permission', 25, 'change_permission');
INSERT INTO `auth_permission` VALUES (99, 'Can delete permission', 25, 'delete_permission');
INSERT INTO `auth_permission` VALUES (100, 'Can add group', 26, 'add_group');
INSERT INTO `auth_permission` VALUES (101, 'Can change group', 26, 'change_group');
INSERT INTO `auth_permission` VALUES (102, 'Can delete group', 26, 'delete_group');
INSERT INTO `auth_permission` VALUES (103, 'Can add user', 27, 'add_user');
INSERT INTO `auth_permission` VALUES (104, 'Can change user', 27, 'change_user');
INSERT INTO `auth_permission` VALUES (105, 'Can delete user', 27, 'delete_user');
INSERT INTO `auth_permission` VALUES (106, 'Can view group', 26, 'view_group');
INSERT INTO `auth_permission` VALUES (107, 'Can view permission', 25, 'view_permission');
INSERT INTO `auth_permission` VALUES (108, 'Can view user', 27, 'view_user');
INSERT INTO `auth_permission` VALUES (109, 'Can add content type', 28, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (110, 'Can change content type', 28, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (111, 'Can delete content type', 28, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (112, 'Can view content type', 28, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (113, 'Can add session', 29, 'add_session');
INSERT INTO `auth_permission` VALUES (114, 'Can change session', 29, 'change_session');
INSERT INTO `auth_permission` VALUES (115, 'Can delete session', 29, 'delete_session');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$100000$CTG2cvj5UrfK$yZZUUpXVmsOY3OxL5YEIc0Ou4wYqcEISBGjkJdhuj60=', '2019-09-15 11:51:52.824365', 1, 'admin', '', '', '524sjl@163.com', 1, 1, '2019-09-15 11:51:19.982067');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_book
-- ----------------------------
DROP TABLE IF EXISTS `blog_book`;
CREATE TABLE `blog_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `score` decimal(2,1) NOT NULL,
  `created_time` date DEFAULT NULL,
  `time_consuming` varchar(100) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_book_category_id_bbe7f5c4_fk_blog_bookcategory_id` (`category_id`),
  CONSTRAINT `blog_book_category_id_bbe7f5c4_fk_blog_bookcategory_id` FOREIGN KEY (`category_id`) REFERENCES `blog_bookcategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_book_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_book_tag`;
CREATE TABLE `blog_book_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `booktag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_book_tag_book_id_booktag_id_89e4abb1_uniq` (`book_id`,`booktag_id`),
  KEY `blog_book_tag_booktag_id_e42c6960_fk_blog_booktag_id` (`booktag_id`),
  CONSTRAINT `blog_book_tag_book_id_d99bdad3_fk_blog_book_id` FOREIGN KEY (`book_id`) REFERENCES `blog_book` (`id`),
  CONSTRAINT `blog_book_tag_booktag_id_e42c6960_fk_blog_booktag_id` FOREIGN KEY (`booktag_id`) REFERENCES `blog_booktag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_bookcategory
-- ----------------------------
DROP TABLE IF EXISTS `blog_bookcategory`;
CREATE TABLE `blog_bookcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_booktag
-- ----------------------------
DROP TABLE IF EXISTS `blog_booktag`;
CREATE TABLE `blog_booktag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
BEGIN;
INSERT INTO `blog_category` VALUES (1, '颈椎');
INSERT INTO `blog_category` VALUES (2, '腰椎');
INSERT INTO `blog_category` VALUES (3, '胸椎');
INSERT INTO `blog_category` VALUES (4, '肩周');
INSERT INTO `blog_category` VALUES (5, '胳膊');
COMMIT;

-- ----------------------------
-- Table structure for blog_courses
-- ----------------------------
DROP TABLE IF EXISTS `blog_courses`;
CREATE TABLE `blog_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `introduce` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `comments` int(10) unsigned NOT NULL,
  `numbers` int(10) unsigned NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_courses_author_id_51d6b15d_fk_auth_user_id` (`author_id`),
  CONSTRAINT `blog_courses_author_id_51d6b15d_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_courses_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_courses_article`;
CREATE TABLE `blog_courses_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courses_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_courses_article_courses_id_post_id_fb906a47_uniq` (`courses_id`,`post_id`),
  KEY `blog_courses_article_post_id_faa58bb8_fk_blog_post_id` (`post_id`),
  CONSTRAINT `blog_courses_article_courses_id_a136836f_fk_blog_courses_id` FOREIGN KEY (`courses_id`) REFERENCES `blog_courses` (`id`),
  CONSTRAINT `blog_courses_article_post_id_faa58bb8_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blog_meanlist
-- ----------------------------
DROP TABLE IF EXISTS `blog_meanlist`;
CREATE TABLE `blog_meanlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_meanlist
-- ----------------------------
BEGIN;
INSERT INTO `blog_meanlist` VALUES (1, '视频教学', 'movies', NULL);
INSERT INTO `blog_meanlist` VALUES (2, '病例分析', 'categories', NULL);
INSERT INTO `blog_meanlist` VALUES (3, '学员体会', NULL, NULL);
INSERT INTO `blog_meanlist` VALUES (4, '广招贤徒', 'courses', NULL);
INSERT INTO `blog_meanlist` VALUES (5, '联系我们', NULL, NULL);
INSERT INTO `blog_meanlist` VALUES (6, '留言', 'messages', NULL);
COMMIT;

-- ----------------------------
-- Table structure for blog_messages
-- ----------------------------
DROP TABLE IF EXISTS `blog_messages`;
CREATE TABLE `blog_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_messages_admin_id_694f73fa_fk_auth_user_id` (`admin_id`),
  CONSTRAINT `blog_messages_admin_id_694f73fa_fk_auth_user_id` FOREIGN KEY (`admin_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_messages
-- ----------------------------
BEGIN;
INSERT INTO `blog_messages` VALUES (1, '没有最好，只有更好，加油！', 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_movie
-- ----------------------------
DROP TABLE IF EXISTS `blog_movie`;
CREATE TABLE `blog_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  `actor` varchar(100) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `score` decimal(2,1) NOT NULL,
  `release_time` date NOT NULL,
  `created_time` date NOT NULL,
  `length_time` int(10) unsigned NOT NULL,
  `watch_time` date NOT NULL,
  `pid` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_movie_category_id_53ed0a3a_fk_blog_moviecategory_id` (`category_id`),
  CONSTRAINT `blog_movie_category_id_53ed0a3a_fk_blog_moviecategory_id` FOREIGN KEY (`category_id`) REFERENCES `blog_moviecategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_movie
-- ----------------------------
BEGIN;
INSERT INTO `blog_movie` VALUES (1, '牛洪锋正骨2012.04.12——颈椎病', '牛洪锋', '刘德华', 'movies/nhf-jingzhui.png', 9.0, '2019-09-15', '2019-09-15', 40, '2019-09-15', '3', 3);
COMMIT;

-- ----------------------------
-- Table structure for blog_movie_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_movie_tag`;
CREATE TABLE `blog_movie_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `movietag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_movie_tag_movie_id_movietag_id_bb3d0edb_uniq` (`movie_id`,`movietag_id`),
  KEY `blog_movie_tag_movietag_id_962e19f2_fk_blog_movietag_id` (`movietag_id`),
  CONSTRAINT `blog_movie_tag_movie_id_8136471f_fk_blog_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `blog_movie` (`id`),
  CONSTRAINT `blog_movie_tag_movietag_id_962e19f2_fk_blog_movietag_id` FOREIGN KEY (`movietag_id`) REFERENCES `blog_movietag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_movie_tag
-- ----------------------------
BEGIN;
INSERT INTO `blog_movie_tag` VALUES (1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_moviecategory
-- ----------------------------
DROP TABLE IF EXISTS `blog_moviecategory`;
CREATE TABLE `blog_moviecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_moviecategory
-- ----------------------------
BEGIN;
INSERT INTO `blog_moviecategory` VALUES (1, '大赛视频');
INSERT INTO `blog_moviecategory` VALUES (2, '会议演讲');
INSERT INTO `blog_moviecategory` VALUES (3, '治疗现场');
COMMIT;

-- ----------------------------
-- Table structure for blog_movietag
-- ----------------------------
DROP TABLE IF EXISTS `blog_movietag`;
CREATE TABLE `blog_movietag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_movietag
-- ----------------------------
BEGIN;
INSERT INTO `blog_movietag` VALUES (1, '教学');
INSERT INTO `blog_movietag` VALUES (2, '日常');
COMMIT;

-- ----------------------------
-- Table structure for blog_post
-- ----------------------------
DROP TABLE IF EXISTS `blog_post`;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `excerpt` varchar(200) NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `words` int(10) unsigned NOT NULL,
  `status` varchar(1) NOT NULL,
  `stick` varchar(1) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  KEY `blog_post_category_id_c326dbf8_fk_blog_category_id` (`category_id`),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_post_category_id_c326dbf8_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post
-- ----------------------------
BEGIN;
INSERT INTO `blog_post` VALUES (1, '蔚来汽车加州裁员62人；华为5G折叠屏手机或低于万元；雄安构建智能城市系统', '![铅笔道](https://odonohz90.qnssl.com/library/161697/091cbd3539127e6e67a8582c1099063e.jpg?imageView2/2/w/1000/h/1000/q/75)\r\n### 华为5G折叠屏手机下月上市：搭麒麟990 售价或低于万元\r\n\r\n据产业链最新爆料称，华为5G折叠屏手机Mate X的调试工作已经基本完成，即将进入大规模量产阶段。Mate X国内价格可能会低于万元，预计价格是9999元起步。为了降低Mate X的售价，华为丰富了低配置机型，加入6GB内存，128GB存储空间的版本。同时处理器方面，顶配版会选用麒麟990 5G版本，而另外版本则是麒麟980。最新的消息称，华为最快会在10月中下旬让Mate X于国内上市，而目前该机已经拿到了入网许可证。\r\n\r\n### 蔚来汽车加州裁员62人 外媒评论大规模重组仍在继续\r\n\r\n据The Verge消息，在蔚来汽车提交给加州就业发展局的最新文件中显示，其位于加州圣何塞的硅谷办事处将裁员62人。今年5月份，蔚来汽车已经裁员70人，并关闭了旧金山的一个办公室。据财务档案显示，截至2019年初，在硅谷蔚来汽车拥有640名员工。蔚来汽车北美公关负责人JoAnn Yamani称，新一轮裁员是公司“优化”的一部分，将涉及到每个部门。蔚来在北美的业务将主要集中在研发和工程方面。\r\n\r\n### 新iPhone订单比同期减少1成 首批订单预计800万台\r\n\r\n据外媒最新消息，新一代iPhone将于一周后开售，首批订单预计在800万台左右，据透露，今年iPhone 11系列的首批订单量，相比去年2018款iPhone至少减少了10%。在首批iPhone 11系列的订单上，iPhone 11占据了订单的60%，而iPhone 11 Pro只占了10%，iPhone 11 Pro Max占据了30%。供应链方面，iPhone 11的备货充足，比例达到了65%。\r\n\r\n### 微软首款15英寸Surface Laptop 3曝光：10月2日发布\r\n\r\n据快科技消息，微软将于10月2日发布Surface系列新成员。知名爆料人士Roland Quandt透露，微软将在10月份带来全新的Surface Laptop 3 15英寸版。据悉，这是微软第一次提供15英寸的Surface Laptop，它将是微软10月2日发布会的重头戏之一。有消息称该款产品将采用3:2显示屏，支持Surface Pen手写笔。报道还称微软首款Surface Laptop 3 15英寸版定位高端，面向商务人士，所以价格可能会比较高。另外，新款Surface Laptop 13.5英寸版本、Surface Pro 7也将会在本次发布会上亮相。\r\n\r\n### Adobe推出Auto Reframe功能 可输出社交媒体专属视频比例\r\n\r\n据cnBeta消息，Adobe宣称将推出 Auto Reframe功能，以为社交媒体用户带来视频格式编辑体验。据悉，这项功能可以轻松地输出方形、垂直、16:9 等格式的社交媒体专属视频格式，以适配 YouTube、Instagram 网格、Instagram Stories等平台。Auto Reframe 将于今年晚些时候正式登陆 Adobe Premiere Pro 。\r\n\r\n### 学而思进军硅谷 瞄准美国小学奥数市场\r\n\r\n据学而思硅谷分校发布的信息显示，10月中旬会针对AMC8（美国数学竞赛，主要针对八年级以下学生的数学学科测试）考试开放线上考前冲刺班，11月会开放线上短期班。学而思于2010年在美国上市，成为国内首家在美上市的中小学教育机构，2013年8月，学而思更名为好未来。此前，好未来于7月公布的2019年第一季度财报显示，第一季度营收7.03亿美元，同比增长27.6％；第一季度毛利润同比增长33.3％至3.86亿美元。', '2019-09-15 12:21:00.000000', '2019-09-15 12:25:52.426029', '![铅笔道](https://odonohz90.qnssl.com/library/161697/091cbd3539127e6e67a8582c1099063e.jpg?imageView2/2/w/1000/h/1000/q/75)\r\n 华为5G折叠屏手机下月上市：搭麒麟990 售价或低于万元', 3, 1565, 'p', 'n', 1, 1);
INSERT INTO `blog_post` VALUES (2, '天津将出台氢能产业发展行动方案 2022年总产值预计超百亿元', '天津市发改委编制的《天津市氢能产业发展行动方案（2019—2022年）》中提出了天津市氢能产业发展的顶层设计。据悉，到2022年，天津市将初步打造形成氢能全产业链发展格局，预计行业总产值将突破百亿元。在充分吸取专家意见基础上，天津市发改委将对《行动方案》进一步修改完善，本月报经天津市政府审定后出台。\r\n\r\n![](https://odonohz90.qnssl.com/library/1522536/2517ff49565b83af239caddd4df91ecf.jpg?imageView2/2/w/1000/h/1000/q/75)\r\n\r\n《行动方案》提出了18项重点任务，旨在依托京津冀协同发展区位优势，聚焦制约氢能产业发展的核心问题，通过引导产业链和创新链深度融合，为经济发展培育新的增长点。根据《行动方案》，ti\'a将打造三个试点示范区，重点在交通领域推广应用氢燃料电池物流车、公交车、叉车等，并配套建设商业加氢站，保障气源安全稳定供应。此外，《行动方案》还制定了保障措施及配套财政支持政策，将对我市进一步优化营商环境，加快招引行业优势企业起到重要推动作用。', '2019-09-15 12:28:00.000000', '2019-09-15 12:30:04.797704', '天津市发改委编制的《天津市氢能产业发展行动方案（2019—2022年）》中提出了天津市氢能产业发展的顶层设计。据悉，到2022年，天津市将初步打造形成氢能全产业链发展格局，预计行业总产值将突破百亿元。在充分吸取专家意见基础上，天津市发改委将对《行动方案》进一步修改完善，本月报经天津市政府审定后出台。', 0, 483, 'p', 'n', 1, 2);
INSERT INTO `blog_post` VALUES (3, '牛洪锋正骨2012.04.12——颈椎病', '[<iframe height=498 width=510 src=\'http://player.youku.com/embed/XNDMwNDQxOTIxMg==\' frameborder=0 \'allowfullscreen\'></iframe>](牛洪锋正骨2012.04.12——颈椎病)', '2019-09-15 13:54:00.000000', '2019-09-15 14:24:20.979519', '``', 11, 24, 'p', 'n', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_post_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_post_tag`;
CREATE TABLE `blog_post_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_tag_post_id_tag_id_ba2a5f83_uniq` (`post_id`,`tag_id`),
  KEY `blog_post_tag_tag_id_2bbd31e4_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_post_tag_post_id_a5c00319_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  CONSTRAINT `blog_post_tag_tag_id_2bbd31e4_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post_tag
-- ----------------------------
BEGIN;
INSERT INTO `blog_post_tag` VALUES (1, 1, 1);
INSERT INTO `blog_post_tag` VALUES (2, 2, 2);
INSERT INTO `blog_post_tag` VALUES (4, 3, 4);
COMMIT;

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
BEGIN;
INSERT INTO `blog_tag` VALUES (1, '比赛');
INSERT INTO `blog_tag` VALUES (2, '会议');
INSERT INTO `blog_tag` VALUES (3, '日常');
INSERT INTO `blog_tag` VALUES (4, '教学');
COMMIT;

-- ----------------------------
-- Table structure for comment_comment
-- ----------------------------
DROP TABLE IF EXISTS `comment_comment`;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_comment
-- ----------------------------
BEGIN;
INSERT INTO `comment_comment` VALUES (1, 1, '<p>您的邮箱是多少？</p>', '2019-09-15 12:55:09.875410', 7, NULL, NULL, NULL, 1);
INSERT INTO `comment_comment` VALUES (2, 1, '<p>cctvjiatao@163.com</p>', '2019-09-15 12:55:29.717686', 7, 1, 1, 1, 1);
INSERT INTO `comment_comment` VALUES (3, 1, '<p>能赞赏吗？</p>', '2019-09-15 12:56:13.517819', 7, NULL, NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (24, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (26, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (25, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (27, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (1, 'blog', 'book');
INSERT INTO `django_content_type` VALUES (2, 'blog', 'bookcategory');
INSERT INTO `django_content_type` VALUES (3, 'blog', 'booktag');
INSERT INTO `django_content_type` VALUES (4, 'blog', 'category');
INSERT INTO `django_content_type` VALUES (5, 'blog', 'courses');
INSERT INTO `django_content_type` VALUES (6, 'blog', 'meanlist');
INSERT INTO `django_content_type` VALUES (7, 'blog', 'messages');
INSERT INTO `django_content_type` VALUES (8, 'blog', 'movie');
INSERT INTO `django_content_type` VALUES (9, 'blog', 'moviecategory');
INSERT INTO `django_content_type` VALUES (10, 'blog', 'movietag');
INSERT INTO `django_content_type` VALUES (11, 'blog', 'post');
INSERT INTO `django_content_type` VALUES (12, 'blog', 'tag');
INSERT INTO `django_content_type` VALUES (18, 'comment', 'comment');
INSERT INTO `django_content_type` VALUES (28, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (19, 'notifications', 'notification');
INSERT INTO `django_content_type` VALUES (29, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (13, 'setting', 'customcode');
INSERT INTO `django_content_type` VALUES (14, 'setting', 'friendlinks');
INSERT INTO `django_content_type` VALUES (15, 'setting', 'seo');
INSERT INTO `django_content_type` VALUES (16, 'setting', 'siteinfo');
INSERT INTO `django_content_type` VALUES (17, 'setting', 'social');
INSERT INTO `django_content_type` VALUES (20, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'userwidget');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-09-15 11:49:22.399049');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-09-15 11:49:22.711594');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2019-09-15 11:49:22.793514');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-09-15 11:49:22.805207');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2019-09-15 11:49:22.855669');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2019-09-15 11:49:22.877736');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2019-09-15 11:49:22.907145');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2019-09-15 11:49:22.919105');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2019-09-15 11:49:22.947765');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2019-09-15 11:49:22.950221');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2019-09-15 11:49:22.960940');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2019-09-15 11:49:22.987935');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0009_alter_user_last_name_max_length', '2019-09-15 11:49:23.016101');
INSERT INTO `django_migrations` VALUES (14, 'blog', '0001_initial', '2019-09-15 11:49:23.713545');
INSERT INTO `django_migrations` VALUES (15, 'comment', '0001_initial', '2019-09-15 11:49:23.845340');
INSERT INTO `django_migrations` VALUES (16, 'notifications', '0001_initial', '2019-09-15 11:49:23.960859');
INSERT INTO `django_migrations` VALUES (17, 'notifications', '0002_auto_20150224_1134', '2019-09-15 11:49:24.045915');
INSERT INTO `django_migrations` VALUES (18, 'notifications', '0003_notification_data', '2019-09-15 11:49:24.085577');
INSERT INTO `django_migrations` VALUES (19, 'notifications', '0004_auto_20150826_1508', '2019-09-15 11:49:24.114209');
INSERT INTO `django_migrations` VALUES (20, 'notifications', '0005_auto_20160504_1520', '2019-09-15 11:49:24.136894');
INSERT INTO `django_migrations` VALUES (21, 'notifications', '0006_indexes', '2019-09-15 11:49:24.254637');
INSERT INTO `django_migrations` VALUES (22, 'sessions', '0001_initial', '2019-09-15 11:49:24.291810');
INSERT INTO `django_migrations` VALUES (23, 'setting', '0001_initial', '2019-09-15 11:49:24.390843');
INSERT INTO `django_migrations` VALUES (24, 'xadmin', '0001_initial', '2019-09-15 11:49:24.561443');
INSERT INTO `django_migrations` VALUES (25, 'xadmin', '0002_log', '2019-09-15 11:49:24.637367');
INSERT INTO `django_migrations` VALUES (26, 'xadmin', '0003_auto_20160715_0100', '2019-09-15 11:49:24.683780');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('0qcknoil9p53va6trlbnuyn3ux9mt6qj', 'ODAzOWMyNjMwZmEzZDNjMzY5YTJjODkxZGM5NzZlOGM3M2Q3ZTk0ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzN2JjMGIxNGM2YzcwYTYyMzdiZGY1MjhjNjhjZjUzYTdmMTVjZDFiIiwiTElTVF9RVUVSWSI6W1siYmxvZyIsIm1vdmllIl0sIiJdfQ==', '2019-09-29 14:33:08.973111');
COMMIT;

-- ----------------------------
-- Table structure for notifications_notification
-- ----------------------------
DROP TABLE IF EXISTS `notifications_notification`;
CREATE TABLE `notifications_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `actor_object_id` varchar(255) NOT NULL,
  `verb` varchar(255) NOT NULL,
  `description` longtext,
  `target_object_id` varchar(255) DEFAULT NULL,
  `action_object_object_id` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `action_object_content_type_id` int(11) DEFAULT NULL,
  `actor_content_type_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `target_content_type_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `emailed` tinyint(1) NOT NULL,
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co` (`action_object_content_type_id`),
  KEY `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co` (`actor_content_type_id`),
  KEY `notifications_notification_recipient_id_d055f3f0_fk_auth_user_id` (`recipient_id`),
  KEY `notifications_notifi_target_content_type__ccb24d88_fk_django_co` (`target_content_type_id`),
  KEY `notifications_notification_deleted_b32b69e6` (`deleted`),
  KEY `notifications_notification_emailed_23a5ad81` (`emailed`),
  KEY `notifications_notification_public_1bc30b1c` (`public`),
  KEY `notifications_notification_unread_cce4be30` (`unread`),
  CONSTRAINT `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co` FOREIGN KEY (`action_object_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co` FOREIGN KEY (`actor_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notifi_target_content_type__ccb24d88_fk_django_co` FOREIGN KEY (`target_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notification_recipient_id_d055f3f0_fk_auth_user_id` FOREIGN KEY (`recipient_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notifications_notification
-- ----------------------------
BEGIN;
INSERT INTO `notifications_notification` VALUES (1, 'info', 1, '1', 'admin 给你留言', NULL, NULL, '1', '2019-09-15 12:55:09.877439', 1, 18, 27, 1, NULL, 0, 0, '{\"url\":\"/messages/#comment_1\"}');
INSERT INTO `notifications_notification` VALUES (2, 'info', 0, '1', 'admin 评论了你的评论：您的邮箱是多少？', NULL, NULL, '2', '2019-09-15 12:55:29.718921', 1, 18, 27, 1, NULL, 0, 0, '{\"url\":\"/messages/#comment_2\"}');
INSERT INTO `notifications_notification` VALUES (3, 'info', 1, '1', 'admin 给你留言', NULL, NULL, '3', '2019-09-15 12:56:13.519809', 1, 18, 27, 1, NULL, 0, 0, '{\"url\":\"/messages/#comment_3\"}');
COMMIT;

-- ----------------------------
-- Table structure for setting_customcode
-- ----------------------------
DROP TABLE IF EXISTS `setting_customcode`;
CREATE TABLE `setting_customcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statistics` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setting_friendlinks
-- ----------------------------
DROP TABLE IF EXISTS `setting_friendlinks`;
CREATE TABLE `setting_friendlinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `link` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setting_seo
-- ----------------------------
DROP TABLE IF EXISTS `setting_seo`;
CREATE TABLE `setting_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setting_siteinfo
-- ----------------------------
DROP TABLE IF EXISTS `setting_siteinfo`;
CREATE TABLE `setting_siteinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` date NOT NULL,
  `record_info` varchar(100) NOT NULL,
  `development_info` varchar(100) NOT NULL,
  `arrange_info` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setting_social
-- ----------------------------
DROP TABLE IF EXISTS `setting_social`;
CREATE TABLE `setting_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `github` varchar(200) NOT NULL,
  `wei_bo` varchar(200) NOT NULL,
  `zhi_hu` varchar(200) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `wechat` varchar(50) NOT NULL,
  `official_wechat` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_log` VALUES (1, '2019-09-15 12:03:06.864550', '127.0.0.1', '1', 'MeanList object (1)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (2, '2019-09-15 12:03:23.460578', '127.0.0.1', '2', 'MeanList object (2)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (3, '2019-09-15 12:03:31.794375', '127.0.0.1', '3', 'MeanList object (3)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (4, '2019-09-15 12:19:18.015865', '127.0.0.1', '1', '新闻', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (5, '2019-09-15 12:19:37.082568', '127.0.0.1', '2', '经济', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (6, '2019-09-15 12:19:48.598360', '127.0.0.1', '3', '生活', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (7, '2019-09-15 12:19:53.127121', '127.0.0.1', '4', '文化', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (8, '2019-09-15 12:19:56.988795', '127.0.0.1', '5', '历史', 'create', '已添加', 4, 1);
INSERT INTO `xadmin_log` VALUES (9, '2019-09-15 12:20:11.847405', '127.0.0.1', '1', '国际', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (10, '2019-09-15 12:20:15.796352', '127.0.0.1', '2', '国内', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (11, '2019-09-15 12:20:55.436803', '127.0.0.1', '3', '80后', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (12, '2019-09-15 12:21:04.551443', '127.0.0.1', '4', '职场', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (13, '2019-09-15 12:25:53.653360', '127.0.0.1', '1', '蔚来汽车加州裁员62人；华为5G折叠屏手机或低于万元；雄安构建智能城市系统', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (14, '2019-09-15 12:30:04.903718', '127.0.0.1', '2', '天津将出台氢能产业发展行动方案 2022年总产值预计超百亿元', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (15, '2019-09-15 12:41:05.629344', '127.0.0.1', '4', 'MeanList object (4)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (16, '2019-09-15 12:43:00.498629', '127.0.0.1', '4', 'MeanList object (4)', 'change', '修改 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (17, '2019-09-15 12:47:01.793410', '127.0.0.1', '2', 'MeanList object (2)', 'change', '修改 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (18, '2019-09-15 12:50:50.195924', '127.0.0.1', '1', 'Messages object (1)', 'create', '已添加', 7, 1);
INSERT INTO `xadmin_log` VALUES (19, '2019-09-15 12:51:33.312495', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 网站留言', NULL, 1);
INSERT INTO `xadmin_log` VALUES (20, '2019-09-15 12:52:26.495281', '127.0.0.1', '2', 'Messages object (2)', 'create', '已添加', 7, 1);
INSERT INTO `xadmin_log` VALUES (21, '2019-09-15 13:03:12.813644', '127.0.0.1', '1', 'MeanList object (1)', 'change', '修改 title 和 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (22, '2019-09-15 13:04:07.745034', '127.0.0.1', '5', 'MeanList object (5)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (23, '2019-09-15 13:04:22.154513', '127.0.0.1', NULL, '', 'delete', '批量删除 2 个 菜单栏', NULL, 1);
INSERT INTO `xadmin_log` VALUES (24, '2019-09-15 13:06:00.619124', '127.0.0.1', '5', 'MeanList object (5)', 'change', '修改 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (25, '2019-09-15 13:06:55.884772', '127.0.0.1', '5', 'MeanList object (5)', 'change', '修改 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (26, '2019-09-15 13:07:38.877790', '127.0.0.1', '5', 'MeanList object (5)', 'change', '修改 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (27, '2019-09-15 13:09:19.716044', '127.0.0.1', '5', 'MeanList object (5)', 'change', '修改 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (28, '2019-09-15 13:09:44.313526', '127.0.0.1', '5', 'MeanList object (5)', 'change', '修改 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (29, '2019-09-15 13:10:09.744548', '127.0.0.1', '5', 'MeanList object (5)', 'change', '修改 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (30, '2019-09-15 13:13:00.245385', '127.0.0.1', '5', 'MeanList object (5)', 'change', '修改 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (31, '2019-09-15 13:15:07.559526', '127.0.0.1', '5', 'MeanList object (5)', 'change', '修改 link', 6, 1);
INSERT INTO `xadmin_log` VALUES (32, '2019-09-15 13:21:16.214588', '127.0.0.1', '6', 'MeanList object (6)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (33, '2019-09-15 13:21:33.192074', '127.0.0.1', '7', 'MeanList object (7)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (34, '2019-09-15 13:25:25.457016', '127.0.0.1', '8', 'MeanList object (8)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (35, '2019-09-15 13:26:17.453718', '127.0.0.1', '9', 'MeanList object (9)', 'create', '已添加', 6, 1);
INSERT INTO `xadmin_log` VALUES (36, '2019-09-15 13:51:40.076544', '127.0.0.1', '1', '大赛视频', 'create', '已添加', 9, 1);
INSERT INTO `xadmin_log` VALUES (37, '2019-09-15 13:51:55.081039', '127.0.0.1', '2', '会议演讲', 'create', '已添加', 9, 1);
INSERT INTO `xadmin_log` VALUES (38, '2019-09-15 13:52:19.030218', '127.0.0.1', '3', '治疗现场', 'create', '已添加', 9, 1);
INSERT INTO `xadmin_log` VALUES (39, '2019-09-15 14:07:20.285933', '127.0.0.1', '3', '牛洪锋正骨2012.04.12——颈椎病', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (40, '2019-09-15 14:09:50.328247', '127.0.0.1', '3', '牛洪锋正骨2012.04.12——颈椎病', 'change', '修改 body', 11, 1);
INSERT INTO `xadmin_log` VALUES (41, '2019-09-15 14:12:32.775848', '127.0.0.1', '3', '牛洪锋正骨2012.04.12——颈椎病', 'change', '修改 body', 11, 1);
INSERT INTO `xadmin_log` VALUES (42, '2019-09-15 14:13:18.281540', '127.0.0.1', '3', '牛洪锋正骨2012.04.12——颈椎病', 'change', '修改 body', 11, 1);
INSERT INTO `xadmin_log` VALUES (43, '2019-09-15 14:14:14.011963', '127.0.0.1', '3', '牛洪锋正骨2012.04.12——颈椎病', 'change', '修改 body', 11, 1);
INSERT INTO `xadmin_log` VALUES (44, '2019-09-15 14:19:50.613390', '127.0.0.1', '1', '颈椎', 'change', '修改 name', 4, 1);
INSERT INTO `xadmin_log` VALUES (45, '2019-09-15 14:20:00.459301', '127.0.0.1', '2', '腰椎', 'change', '修改 name', 4, 1);
INSERT INTO `xadmin_log` VALUES (46, '2019-09-15 14:20:07.427263', '127.0.0.1', '3', '胸椎', 'change', '修改 name', 4, 1);
INSERT INTO `xadmin_log` VALUES (47, '2019-09-15 14:20:18.905503', '127.0.0.1', '4', '肩周', 'change', '修改 name', 4, 1);
INSERT INTO `xadmin_log` VALUES (48, '2019-09-15 14:20:33.453369', '127.0.0.1', '5', '胳膊', 'change', '修改 name', 4, 1);
INSERT INTO `xadmin_log` VALUES (49, '2019-09-15 14:23:04.455614', '127.0.0.1', '1', '比赛', 'change', '修改 name', 12, 1);
INSERT INTO `xadmin_log` VALUES (50, '2019-09-15 14:23:12.648378', '127.0.0.1', '2', '会议', 'change', '修改 name', 12, 1);
INSERT INTO `xadmin_log` VALUES (51, '2019-09-15 14:23:30.298839', '127.0.0.1', '3', '日常', 'change', '修改 name', 12, 1);
INSERT INTO `xadmin_log` VALUES (52, '2019-09-15 14:23:37.434438', '127.0.0.1', '4', '教学', 'change', '修改 name', 12, 1);
INSERT INTO `xadmin_log` VALUES (53, '2019-09-15 14:24:21.028396', '127.0.0.1', '3', '牛洪锋正骨2012.04.12——颈椎病', 'change', '修改 category 和 tag', 11, 1);
INSERT INTO `xadmin_log` VALUES (54, '2019-09-15 14:30:27.621838', '127.0.0.1', '1', '教学', 'create', '已添加', 10, 1);
INSERT INTO `xadmin_log` VALUES (55, '2019-09-15 14:30:36.290905', '127.0.0.1', '2', '日常', 'create', '已添加', 10, 1);
INSERT INTO `xadmin_log` VALUES (56, '2019-09-15 14:32:19.691883', '127.0.0.1', '1', '牛洪锋正骨2012.04.12——颈椎病', 'create', '已添加', 8, 1);
INSERT INTO `xadmin_log` VALUES (57, '2019-09-15 14:33:08.895958', '127.0.0.1', '1', '牛洪锋正骨2012.04.12——颈椎病', 'change', '修改 cover', 8, 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
BEGIN;
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
COMMIT;

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
