/*
 Navicat Premium Data Transfer

 Source Server         : gyu
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : manager

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 01/03/2020 14:12:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` bigint NOT NULL COMMENT '主键',
  `file_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
  `file_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint NOT NULL COMMENT '主键',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '菜单父ID',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_operation
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation`;
CREATE TABLE `sys_operation`  (
  `id` bigint NOT NULL COMMENT '主键',
  `operation_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作名称',
  `operation_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作编码',
  `ljurlqz` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拦截ulr前缀',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '功能操作父ID',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_log`;
CREATE TABLE `sys_operation_log`  (
  `id` bigint NOT NULL COMMENT '主键',
  `operation_type_id` bigint NULL DEFAULT NULL COMMENT '操作类型ID',
  `operation_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作内容',
  `operation_user_id` bigint NULL DEFAULT NULL COMMENT '操作用户ID',
  `operation_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '操作时间',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_page_element
-- ----------------------------
DROP TABLE IF EXISTS `sys_page_element`;
CREATE TABLE `sys_page_element`  (
  `id` bigint NOT NULL COMMENT '主键',
  `page_element_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '页面元素名称',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_power
-- ----------------------------
DROP TABLE IF EXISTS `sys_power`;
CREATE TABLE `sys_power`  (
  `id` bigint NOT NULL COMMENT '主键',
  `power_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限类型',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_power_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_power_file`;
CREATE TABLE `sys_power_file`  (
  `id` bigint NOT NULL COMMENT '主键',
  `power_id` bigint NOT NULL COMMENT '权限ID',
  `file_id` bigint NOT NULL COMMENT '文件ID',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `powerid_fileid`(`power_id`, `file_id`) USING BTREE COMMENT '建立组合唯一约束'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_power_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_power_menu`;
CREATE TABLE `sys_power_menu`  (
  `id` bigint NOT NULL COMMENT '主键',
  `power_id` bigint NOT NULL COMMENT '权限ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `powerid_menuid`(`power_id`, `menu_id`) USING BTREE COMMENT '建立组合唯一约束'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_power_operation
-- ----------------------------
DROP TABLE IF EXISTS `sys_power_operation`;
CREATE TABLE `sys_power_operation`  (
  `id` bigint NOT NULL COMMENT '主键',
  `power_id` bigint NOT NULL COMMENT '权限ID',
  `operation_id` bigint NOT NULL COMMENT '文件ID',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `powerid_operationid`(`power_id`, `operation_id`) USING BTREE COMMENT '建立组合唯一约束'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_power_page
-- ----------------------------
DROP TABLE IF EXISTS `sys_power_page`;
CREATE TABLE `sys_power_page`  (
  `id` bigint NOT NULL COMMENT '主键',
  `power_id` bigint NOT NULL COMMENT '权限ID',
  `page_id` bigint NOT NULL COMMENT '页面元素ID',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `powerid_pageid`(`power_id`, `page_id`) USING BTREE COMMENT '建立组合唯一约束'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL COMMENT '主键',
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role_power
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_power`;
CREATE TABLE `sys_role_power`  (
  `id` bigint NOT NULL COMMENT '主键',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `power_id` bigint NOT NULL COMMENT '权限ID',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `powerid_roleid`(`power_id`, `role_id`) USING BTREE COMMENT '建立组合唯一约束'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint NOT NULL COMMENT '主键',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `password_salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码盐',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
  `login_count` int(11) NULL DEFAULT NULL COMMENT '登录次数',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '上一次登录时间',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  `is_last_final` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可用修改，0可以修改，1不可修改',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_name`(`user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group`;
CREATE TABLE `sys_user_group`  (
  `id` bigint NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户组名称',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_group_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group_role`;
CREATE TABLE `sys_user_group_role`  (
  `id` bigint NOT NULL COMMENT '主键',
  `user_group_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户组ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `usergid_roleid`(`user_group_id`, `role_id`) USING BTREE COMMENT '建立组合唯一约束'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_group_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group_user`;
CREATE TABLE `sys_user_group_user`  (
  `id` bigint NOT NULL COMMENT '主键',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `user_group_id` bigint NOT NULL COMMENT '用户组ID',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userid_groupid`(`user_id`, `user_group_id`) USING BTREE COMMENT '建立组合唯一约束'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_info`;
CREATE TABLE `sys_user_info`  (
  `id` bigint NOT NULL COMMENT '主键',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `id_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `addr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住所地址',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint NOT NULL COMMENT '主键',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) COMMENT '更新时间',
  `created_by` bigint NULL DEFAULT NULL COMMENT '创建者ID',
  `updated_by` bigint NULL DEFAULT NULL COMMENT '更新者ID',
 `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1表示删除，0表示未删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userid_roleid`(`user_id`, `role_id`) USING BTREE COMMENT '建立组合唯一约束'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
