/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : familytree

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-08-15 19:25:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for basic_dict
-- ----------------------------
DROP TABLE IF EXISTS `basic_dict`;
CREATE TABLE `basic_dict` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `dis` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `num_value` decimal(19,2) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for basic_region
-- ----------------------------
DROP TABLE IF EXISTS `basic_region`;
CREATE TABLE `basic_region` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `area_code` varchar(255) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_category
-- ----------------------------
DROP TABLE IF EXISTS `bs_category`;
CREATE TABLE `bs_category` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_category_content
-- ----------------------------
DROP TABLE IF EXISTS `bs_category_content`;
CREATE TABLE `bs_category_content` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_children
-- ----------------------------
DROP TABLE IF EXISTS `bs_children`;
CREATE TABLE `bs_children` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `children_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_partner
-- ----------------------------
DROP TABLE IF EXISTS `bs_partner`;
CREATE TABLE `bs_partner` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `husband_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `wife_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_people
-- ----------------------------
DROP TABLE IF EXISTS `bs_people`;
CREATE TABLE `bs_people` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `death` datetime DEFAULT NULL,
  `education` bit(1) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `generations` int(11) DEFAULT NULL,
  `has_child` bit(1) DEFAULT NULL,
  `height` bit(1) DEFAULT NULL,
  `is_married` bit(1) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `partner_id` bigint(20) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `weight` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for clientdetails
-- ----------------------------
DROP TABLE IF EXISTS `clientdetails`;
CREATE TABLE `clientdetails` (
  `appId` varchar(256) NOT NULL,
  `resourceIds` varchar(256) DEFAULT NULL,
  `appSecret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `grantTypes` varchar(256) DEFAULT NULL,
  `redirectUrl` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` mediumblob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(256) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_menu
-- ----------------------------
DROP TABLE IF EXISTS `security_menu`;
CREATE TABLE `security_menu` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `id_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_menu_right
-- ----------------------------
DROP TABLE IF EXISTS `security_menu_right`;
CREATE TABLE `security_menu_right` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_role
-- ----------------------------
DROP TABLE IF EXISTS `security_role`;
CREATE TABLE `security_role` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `admin` bit(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `security_role_menu`;
CREATE TABLE `security_role_menu` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `own` bit(1) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_role_menu_right
-- ----------------------------
DROP TABLE IF EXISTS `security_role_menu_right`;
CREATE TABLE `security_role_menu_right` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `menu_right_id` bigint(20) DEFAULT NULL,
  `role_menu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `security_user_menu`;
CREATE TABLE `security_user_menu` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `own` bit(1) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_user_menu_right
-- ----------------------------
DROP TABLE IF EXISTS `security_user_menu_right`;
CREATE TABLE `security_user_menu_right` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `menu_right_id` bigint(20) DEFAULT NULL,
  `user_menu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for security_user_role
-- ----------------------------
DROP TABLE IF EXISTS `security_user_role`;
CREATE TABLE `security_user_role` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `first_login` bit(1) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for verification_token
-- ----------------------------
DROP TABLE IF EXISTS `verification_token`;
CREATE TABLE `verification_token` (
  `id` bigint(20) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
