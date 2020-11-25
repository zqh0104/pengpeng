/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : pp

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 13/01/2020 11:02:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (13, 'pp_chat_message', '聊天功能表', 'PpChatMessage', 'crud', 'com.pengpeng.system', 'system', 'message', '聊天功能', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (14, 'pp_commend_record', '点赞记录表', 'PpCommendRecord', 'crud', 'com.pengpeng.system', 'system', 'record', '点赞记录', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (15, 'pp_comment', '评论表', 'PpComment', 'crud', 'com.pengpeng.system', 'system', 'comment', '评论', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (16, 'pp_deposit_specs', '', 'PpDepositSpecs', 'crud', 'com.pengpeng.system', 'system', 'specs', NULL, 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (17, 'pp_dynamic', '发布动态表', 'PpDynamic', 'crud', 'com.pengpeng.system', 'system', 'dynamic', '发布动态', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (18, 'pp_earnings_alteration', '收益改变记录表 可以提取', 'PpEarningsAlteration', 'crud', 'com.pengpeng.system', 'system', 'alteration', '收益改变记录 可以提取', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (19, 'pp_feedback', '用户意见反馈表', 'PpFeedback', 'crud', 'com.pengpeng.system', 'system', 'feedback', '用户意见反馈', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (20, 'pp_file', '上传文件信息表', 'PpFile', 'crud', 'com.pengpeng.system', 'system', 'file', '上传文件信息', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (21, 'pp_files', '文件表', 'PpFiles', 'crud', 'com.pengpeng.system', 'system', 'files', '文件', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (23, 'pp_gift_record', '礼物记录表', 'PpGiftRecord', 'crud', 'com.pengpeng.system', 'system', 'record', '礼物记录', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (24, 'pp_income', '用户收入表', 'PpIncome', 'crud', 'com.pengpeng.system', 'system', 'income', '用户收入', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (25, 'pp_invite', '用户邀请关系表', 'PpInvite', 'crud', 'com.pengpeng.system', 'system', 'invite', '用户邀请关系', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (26, 'pp_level', '财富等级表', 'PpLevel', 'crud', 'com.pengpeng.system', 'system', 'level', '财富等级', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (27, 'pp_login', '登录信息表', 'PpLogin', 'crud', 'com.pengpeng.system', 'system', 'login', '登录信息', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (28, 'pp_member', '用户表', 'PpMember', 'crud', 'com.pengpeng.system', 'system', 'member', '用户', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (34, 'pp_slide_number', '用户滑动数', 'PpSlideNumber', 'crud', 'com.pengpeng.system', 'system', 'number', '用户滑动数', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (35, 'pp_slide_record', '', 'PpSlideRecord', 'crud', 'com.pengpeng.system', 'system', 'record', NULL, 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (36, 'pp_user_blacklist', '用户拉黑表', 'PpUserBlacklist', 'crud', 'com.pengpeng.system', 'system', 'blacklist', '用户拉黑', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (37, 'pp_user_focus', '用户喜欢表', 'PpUserFocus', 'crud', 'com.pengpeng.system', 'system', 'focus', '用户喜欢', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (38, 'pp_user_whistle_blowing', '用户举报表', 'PpUserWhistleBlowing', 'crud', 'com.pengpeng.system', 'system', 'blowing', '用户举报', 'pengpeng', NULL, 'admin', '2019-12-20 11:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (43, 'pp_detailed_statement', '收支明细表', 'PpDetailedStatement', 'crud', 'com.pengpeng.system', 'system', 'statement', '收支明细', 'pengpeng', NULL, 'admin', '2019-12-20 20:32:44', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (44, 'sys_user', '用户信息表', 'SysUser', 'crud', 'com.pengpeng.system', 'system', 'user', '用户信息', 'pengpeng', NULL, 'admin', '2019-12-21 09:34:01', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (45, 'pp_balace_record', '余额变动表 不可提取', 'PpBalaceRecord', 'crud', 'com.pengpeng.system', 'system', 'record', '余额变动 不可提取', 'pengpeng', NULL, 'admin', '2019-12-21 14:56:53', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (47, 'pp_recharge_spec', '充值规格表', 'PpRechargeSpec', 'crud', 'com.pengpeng.system', 'system', 'spec', '充值规格', 'pengpeng', NULL, 'admin', '2019-12-23 09:26:38', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (51, 'pp_recharge_record', '充值记录表', 'PpRechargeRecord', 'crud', 'com.pengpeng.system', 'system', 'record', '充值记录', 'pengpeng', NULL, 'admin', '2019-12-23 15:36:37', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (53, 'pp_withdraw_record', '用户提现记录表', 'PpWithdrawRecord', 'crud', 'com.pengpeng.system', 'system', 'record', '用户提现记录', 'pengpeng', NULL, 'admin', '2019-12-24 09:22:50', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (54, 'sys_privacy_agreement', '隐私协议', 'SysPrivacyAgreement', 'crud', 'com.pengpeng.system', 'system', 'agreement', '隐私协议', 'pengpeng', NULL, 'admin', '2019-12-24 09:41:49', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (55, 'sys_privacy_clause', '隐私条款', 'SysPrivacyClause', 'crud', 'com.pengpeng.system', 'system', 'clause', '隐私条款', 'pengpeng', NULL, 'admin', '2019-12-24 09:41:49', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (56, 'pp_note', '短信发送列表', 'PpNote', 'crud', 'com.pengpeng.system', 'system', 'note', '短信发送列', 'pengpeng', NULL, 'admin', '2019-12-26 09:54:50', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (57, 'pp_push', '推送记录列表', 'PpPush', 'crud', 'com.pengpeng.system', 'system', 'push', '推送记录列', 'pengpeng', NULL, 'admin', '2019-12-26 09:55:03', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (58, 'pp_gift', '礼物表', 'PpGift', 'crud', 'com.pengpeng.system', 'system', 'gift', '礼物', 'pengpeng', NULL, 'admin', '2019-12-27 09:45:06', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (59, 'sys_vip_content', '会员特权页面内容', 'SysVipContent', 'crud', 'com.pengpeng.system', 'system', 'content', '会员特权页面内容', 'pengpeng', NULL, 'admin', '2019-12-30 11:05:46', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (61, 'pp_member_spec', '会员规格表', 'PpMemberSpec', 'crud', 'com.pengpeng.system', 'system', 'spec', '会员规格', 'pengpeng', NULL, 'admin', '2020-01-02 14:08:35', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (63, 'sys_set', '系统设置表', 'SysSet', 'crud', 'com.pengpeng.system', 'system', 'set', '系统设置', 'pengpeng', NULL, 'admin', '2020-01-04 09:21:30', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (65, 'pp_vip_order', '会员开通记录表', 'PpVipOrder', 'crud', 'com.pengpeng.system', 'system', 'order', '会员开通记录', 'pengpeng', NULL, 'admin', '2020-01-04 11:00:52', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (66, 'pp_app_comment', '', 'PpAppComment', 'crud', 'com.pengpeng.system', 'system', 'comment', NULL, 'pengpeng', NULL, 'admin', '2020-01-07 10:49:44', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (67, 'sys_notice', '通知公告表', 'SysNotice', 'crud', 'com.pengpeng.system', 'system', 'notice', '通知公告', 'pengpeng', NULL, 'admin', '2020-01-09 11:41:02', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 514 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (126, '13', 'id', '聊天记录id', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (127, '13', 'user_id', '用户id', 'int(32)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (128, '13', 'chat_id', '聊天人id', 'int(32)', 'Long', 'chatId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (129, '13', 'chat_time', '最后聊天时间', 'datetime', 'Date', 'chatTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (130, '13', 'chat_content', '聊天内容', 'varchar(255)', 'String', 'chatContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (131, '14', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (132, '14', 'dynamic_id', '动态id', 'bigint(20)', 'Long', 'dynamicId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (133, '14', 'user_id', '用户id', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (134, '14', 'to_uId', '发布者id', 'bigint(20)', 'Long', 'toUid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (135, '14', 'status', '状态(0:取消  1:正常)', 'tinyint(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (136, '14', 'isread', '是否已读(0:未读 1:已读)', 'tinyint(1)', 'Integer', 'isread', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (137, '14', 'create_time', '点赞时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (138, '14', 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (139, '15', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (140, '15', 'dynamic_id', NULL, 'bigint(20)', 'Long', 'dynamicId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (141, '15', 'from_uid', '评论/回复人id', 'bigint(20)', 'Long', 'fromUid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (142, '15', 'to_uid', '源用户id', 'bigint(20)', 'Long', 'toUid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (143, '15', 'comment', '评论内容', 'varchar(255)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (144, '15', 'parent_id', '父Id', 'bigint(20)', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (145, '15', 'type', '评论类型(1:评论 2:回复)', 'tinyint(2)', 'Integer', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (146, '15', 'tree_code', '楼层值', 'int(11)', 'Long', 'treeCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (147, '15', 'tree', '层级关系', 'varchar(500)', 'String', 'tree', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 9, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (148, '15', 'isLooked', '是否查看过(0:未读 1:已读)', 'tinyint(1)', 'Integer', 'islooked', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (149, '15', 'status', '状态(0:删除  1:正常)', 'tinyint(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (150, '15', 'create_time', NULL, 'timestamp', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (151, '15', 'update_time', NULL, 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (152, '16', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (153, '16', 'money', '金额', 'decimal(8,2)', 'Double', 'money', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (154, '16', 'diamond', '需要钻石数量', 'int(11)', 'Long', 'diamond', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (155, '16', 'specs_name', '规格名称', 'varchar(10)', 'String', 'specsName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (156, '16', 'status', '状态(0:删除 1:正常)', 'tinyint(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (157, '16', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (158, '16', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (159, '17', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (160, '17', 'user_id', NULL, 'bigint(20)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (161, '17', 'dynamic_content', '内容', 'varchar(520)', 'String', 'dynamicContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (162, '17', 'commend_num', '点赞数', 'bigint(20)', 'Long', 'commendNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (163, '17', 'position', '发布位置', 'varchar(50)', 'String', 'position', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (164, '17', 'status', '状态(0:删除 1:正常)', 'tinyint(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (165, '17', 'longitude', '经度', 'varchar(10)', 'String', 'longitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (166, '17', 'latitude', '纬度', 'varchar(10)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (167, '17', 'create_time', '发布时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (168, '17', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (169, '18', '\r\nearnings_id', '收益id', 'int(11)', 'Long', '\r\nearningsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (170, '18', 'user_id', '用户id', 'int(11)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (171, '18', 'by_user_id', '赠送人', 'int(11)', 'Long', 'byUserId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (172, '18', '\r\nearnings_alteration_gold', '收益金币', 'varchar(255)', 'String', '\r\nearningsAlterationGold', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (173, '18', 'earnings_alteration_time', '收益时间', 'datetime', 'Date', 'earningsAlterationTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (174, '19', 'id', '意见反馈列表主键', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (175, '19', 'user_id', '用户id', 'int(32)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (176, '19', 'feedback_content', '反馈内容', 'varchar(255)', 'String', 'feedbackContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (177, '19', 'feedback_time', '反馈时间', 'datetime', 'Date', 'feedbackTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (178, '20', 'id', '用户注册协议页面主键', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (179, '20', 'file_name', '文件名字', 'varchar(255)', 'String', 'fileName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (180, '20', 'file_path', '文件路径', 'varchar(255)', 'String', 'filePath', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (181, '21', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (182, '21', 'file_id', '对应表的id主键', 'bigint(20)', 'Long', 'fileId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (183, '21', 'file_url', '文件地址', 'varchar(255)', 'String', 'fileUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (184, '21', 'file_type', '文件类型(1:图片 2:视频)', 'tinyint(2)', 'Integer', 'fileType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (185, '21', 'file_source', '文件来源(1:动态 2:评论 3:照片 4:反馈)', 'tinyint(2)', 'Integer', 'fileSource', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (186, '21', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (194, '23', 'id', '礼物记录表', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (195, '23', 'gift_id', '礼物Id', 'int(11)', 'Long', 'giftId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (196, '23', 'user_id', '赠送人id', 'int(32)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (197, '23', 'by_user_id', '收取人id', 'int(32)', 'Long', 'byUserId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (198, '23', 'gift_type', '礼物类型', 'varchar(255)', 'String', 'giftType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (199, '23', 'gift_number', '礼物数量', 'int(10)', 'Integer', 'giftNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (200, '23', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (201, '24', 'id', '收入记录主键', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (202, '24', 'user_id', '用户id', 'int(32)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (203, '24', 'presenter_id', '赠送人id', 'int(32)', 'Long', 'presenterId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (204, '24', 'presenter_gift', '赠送人礼物', 'varchar(255)', 'String', 'presenterGift', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (205, '24', 'income_money', '收入金额', 'decimal(10,2)', 'Double', 'incomeMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (206, '24', 'income_time', '收入时间', 'datetime', 'Date', 'incomeTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (207, '25', 'id', '用户邀请记录表', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (208, '25', 'user_id', '用户id', 'int(11)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (209, '25', 'by_user_id', '被邀请人', 'int(11)', 'Long', 'byUserId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (210, '26', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (211, '26', 'grade_name', '财富等级名称', 'varchar(10)', 'String', 'gradeName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (212, '26', 'grade_treasure', '财富值', 'int(11)', 'Long', 'gradeTreasure', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (213, '26', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (214, '26', 'update_time', NULL, 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (215, '27', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (216, '27', 'member_id', '会员id', 'bigint(20)', 'Long', 'memberId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (217, '27', 'login_phone', '登录手机号', 'varchar(11)', 'String', 'loginPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (218, '27', 'login_wx_openid', '微信登录openId', 'varchar(100)', 'String', 'loginWxOpenid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (219, '27', 'login_name', '登录名称', 'varchar(10)', 'String', 'loginName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (220, '27', 'login_type', '登录类型(1:手机号 2:微信)', 'tinyint(2)', 'Integer', 'loginType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (221, '27', 'password', '登录密码', 'varchar(60)', 'String', 'password', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (222, '27', 'salt', '盐加密', 'varchar(20)', 'String', 'salt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (223, '27', 'status', '帐号状态（0停用 1正常）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (224, '27', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (225, '27', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (226, '28', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (227, '28', 'nickname', '昵称', 'varchar(200)', 'String', 'nickname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (228, '28', 'head_url', '图像地址', 'varchar(255)', 'String', 'headUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (229, '28', 'birthday', '生日', 'date', 'Date', 'birthday', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (230, '28', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (231, '28', 'stature', '身高', 'int(10)', 'Integer', 'stature', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (232, '28', 'weight', '体重', 'int(10)', 'Integer', 'weight', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (233, '28', 'signature', '签名', 'varchar(50)', 'String', 'signature', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (234, '28', 'constellation', '星座', 'varchar(10)', 'String', 'constellation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (235, '28', 'hobby', '爱好', 'varchar(20)', 'String', 'hobby', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (236, '28', 'profession', '职业', 'varchar(10)', 'String', 'profession', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (237, '28', 'Invitation_code', '邀请码', 'varchar(255)', 'String', 'invitationCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (238, '28', 'parent_id', NULL, 'bigint(20)', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (239, '28', 'emotion_status', '情感状态 （）', 'varchar(10)', 'String', 'emotionStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 14, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (240, '28', 'make_friends_purpose', '交友目的', 'varchar(10)', 'String', 'makeFriendsPurpose', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (241, '28', 'city', '城市', 'varchar(10)', 'String', 'city', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (242, '28', 'country', '国家', 'varchar(10)', 'String', 'country', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (243, '28', 'address', '居住地', 'varchar(20)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (244, '28', 'phone', '手机号', 'varchar(11)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (245, '28', 'code', '区号', 'varchar(10)', 'String', 'code', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (246, '28', 'longitude', '经度', 'double(10,6)', 'Double', 'longitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (247, '28', 'latitude', '纬度', 'double(10,6)', 'Double', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (248, '28', 'isvip', '是否是vip(0:否 1:是)', 'tinyint(1)', 'Integer', 'isvip', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (249, '28', 'vip_open_time', 'vip开通时间', 'datetime', 'Date', 'vipOpenTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 24, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (250, '28', 'vip_close_time', 'vip失效时间', 'datetime', 'Date', 'vipCloseTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 25, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (251, '28', 'balance', '余额', 'int(10)', 'Integer', 'balance', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (252, '28', 'earnings', '收益', 'decimal(10,2)', 'Double', 'earnings', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (253, '28', 'treasure', '财富值', 'bigint(20)', 'Long', 'treasure', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (254, '28', 'treasure_level', '财富等级', 'varchar(10)', 'String', 'treasureLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 29, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (255, '28', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 30, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (256, '28', 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 31, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (257, '28', 'status', '会员状态(0封停  1正常)', 'tinyint(2)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 32, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (258, '28', 'attribute', '属性', 'varchar(10)', 'String', 'attribute', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 33, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (280, '34', 'id', '用户滑动记录主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (281, '34', 'user_id', '用户id', 'int(11)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (282, '34', 'slide_number', '滑动次数', 'int(11)', 'Long', 'slideNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (283, '34', 'maximum_slide_number', '最大滑动次数', 'int(255)', 'Long', 'maximumSlideNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (284, '34', 'slide_insert_time', '添加时间', 'datetime', 'Date', 'slideInsertTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (285, '34', 'slide_update_time', '修改时间', 'datetime', 'Date', 'slideUpdateTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (286, '35', 'id', NULL, 'bigint(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (287, '35', 'from_uid', '滑动人id', 'bigint(11)', 'Long', 'fromUid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (288, '35', 'to_uid', '被滑动人id', 'bigint(11)', 'Long', 'toUid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (289, '35', 'create_time', '滑动时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (290, '36', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (291, '36', 'user_id', '用户id', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (292, '36', 'defriend_user_id', '被拉黑用户id', 'bigint(20)', 'Long', 'defriendUserId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (293, '36', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (294, '36', 'update_time', NULL, 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (295, '37', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (296, '37', 'usera_id', NULL, 'bigint(20)', 'Long', 'useraId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (297, '37', 'userb_id', NULL, 'bigint(20)', 'Long', 'userbId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (298, '37', 'status', '状态(1:A喜欢B ,2:B喜欢A，3:互相喜欢)', 'tinyint(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (299, '37', 'creatime', NULL, 'datetime', 'Date', 'creatime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (300, '37', 'update_time', NULL, 'timestamp', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (301, '38', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (302, '38', 'user_id', '用户id', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (303, '38', 'report_user_id', '被举报用户id', 'bigint(20)', 'Long', 'reportUserId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (304, '38', 'report_content', '举报内容', 'varchar(255)', 'String', 'reportContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (305, '38', 'report_type', '举报类型', 'varchar(10)', 'String', 'reportType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (306, '38', 'report_image', '举报图片', 'varchar(255)', 'String', 'reportImage', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (307, '38', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2019-12-20 11:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (328, '43', 'id', '主键id 收支明细表主键', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-20 20:32:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (329, '43', 'member_id', '用户信息', 'bigint(255)', 'Long', 'memberId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-20 20:32:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (330, '43', 'gold', '金额', 'varchar(255)', 'String', 'gold', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-20 20:32:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (331, '43', 'cause', '原因', 'varchar(255)', 'String', 'cause', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-20 20:32:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (332, '43', 'type', '状态 1-余额 0-收入', 'int(255)', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2019-12-20 20:32:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (333, '43', 'time', '时间', 'datetime', 'Date', 'time', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2019-12-20 20:32:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (334, '44', 'user_id', '用户ID', 'bigint(20)', 'Long', 'userId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (335, '44', 'login_name', '登录账号', 'varchar(30)', 'String', 'loginName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (336, '44', 'user_name', '用户昵称', 'varchar(30)', 'String', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (337, '44', 'user_type', '用户类型（00系统用户）', 'varchar(2)', 'String', 'userType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (338, '44', 'email', '用户邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (339, '44', 'phonenumber', '手机号码', 'varchar(11)', 'String', 'phonenumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (340, '44', 'sex', '用户性别（0男 1女 2未知）', 'char(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (341, '44', 'avatar', '头像路径', 'varchar(100)', 'String', 'avatar', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (342, '44', 'password', '密码', 'varchar(50)', 'String', 'password', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (343, '44', 'salt', '盐加密', 'varchar(20)', 'String', 'salt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (344, '44', 'status', '帐号状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (345, '44', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (346, '44', 'login_ip', '最后登陆IP', 'varchar(50)', 'String', 'loginIp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (347, '44', 'login_date', '最后登陆时间', 'datetime', 'Date', 'loginDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (348, '44', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (349, '44', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (350, '44', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (351, '44', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (352, '44', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 19, 'admin', '2019-12-21 09:34:01', '', NULL);
INSERT INTO `gen_table_column` VALUES (353, '45', 'balance_id', '余额表id ', 'int(32)', 'Long', 'balanceId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-21 14:56:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (354, '45', 'other_id', '充值记录表id || 礼物赠送记录表id', 'int(11)', 'Long', 'otherId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-21 14:56:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (355, '45', 'user_id', '用户id', 'int(32)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-21 14:56:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (356, '45', 'type', '类型（1: 充值 2: 赠送）', 'tinyint(1)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2019-12-21 14:56:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (357, '45', 'balace_alteration_gold', '变动金额', 'varchar(255)', 'String', 'balaceAlterationGold', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-12-21 14:56:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (358, '45', 'balace_alteration_time', '变动时间', 'datetime', 'Date', 'balaceAlterationTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2019-12-21 14:56:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (363, '47', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-23 09:26:38', '', NULL);
INSERT INTO `gen_table_column` VALUES (364, '47', 'spec_money', '金额', 'varchar(10)', 'String', 'specMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-23 09:26:38', '', NULL);
INSERT INTO `gen_table_column` VALUES (365, '47', 'spec_val', '规格值', 'varchar(11)', 'String', 'specVal', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-23 09:26:38', '', NULL);
INSERT INTO `gen_table_column` VALUES (366, '47', 'status', '状态(0:删除 1:正常)', 'tinyint(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2019-12-23 09:26:38', '', NULL);
INSERT INTO `gen_table_column` VALUES (367, '47', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2019-12-23 09:26:38', '', NULL);
INSERT INTO `gen_table_column` VALUES (368, '47', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2019-12-23 09:26:38', '', NULL);
INSERT INTO `gen_table_column` VALUES (396, '51', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-23 15:36:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (397, '51', 'user_id', NULL, 'bigint(20)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-23 15:36:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (398, '51', 'recharge_money', '充值金额', 'decimal(8,2)', 'Double', 'rechargeMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-23 15:36:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (399, '51', 'recharge_diamond', '充值钻石数量', 'int(11)', 'Long', 'rechargeDiamond', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-23 15:36:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (400, '51', 'recharge_time', '充值时间', 'datetime', 'Date', 'rechargeTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2019-12-23 15:36:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (401, '51', 'recharge_type', '0-自动 1-手动', 'tinyint(255)', 'Long', 'rechargeType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 6, 'admin', '2019-12-23 15:36:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (405, '53', 'withdraw_id', '提现记录表', 'bigint(20)', 'Long', 'withdrawId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-24 09:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (406, '53', 'user_id', '用户id', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-24 09:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (407, '53', 'withdraw_way', '提现方式(1:微信 2:支付宝)', 'tinyint(1)', 'Integer', 'withdrawWay', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-24 09:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (408, '53', 'withdraw_gold', '提现金额', 'decimal(10,2)', 'Double', 'withdrawGold', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-24 09:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (409, '53', 'withdraw_account', '提现账户', 'varchar(100)', 'String', 'withdrawAccount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2019-12-24 09:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (410, '53', 'withdraw_status', '提现状态(0:审核不通过 1:审核中 2:审核通过 3:已打款)', 'tinyint(1)', 'Integer', 'withdrawStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2019-12-24 09:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (411, '53', 'withdraw_time', '提现时间', 'datetime', 'Date', 'withdrawTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2019-12-24 09:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (412, '53', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2019-12-24 09:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (413, '53', 'withdraw_cause', '拒绝原因', 'varchar(255)', 'String', 'withdrawCause', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2019-12-24 09:22:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (414, '54', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-24 09:41:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (415, '54', 'agreement_content', NULL, 'varchar(3000)', 'String', 'agreementContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2019-12-24 09:41:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (416, '55', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-24 09:41:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (417, '55', 'clause_content', '隐私条款内容', 'varchar(3000)', 'String', 'clauseContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2019-12-24 09:41:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (418, '56', 'id', '短信发送表主键', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-26 09:54:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (419, '56', 'user_id', '用户id', 'int(32)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-26 09:54:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (420, '56', 'user_note', '短信内容', 'varchar(255)', 'String', 'userNote', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-26 09:54:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (421, '56', 'phone', '手机号', 'varchar(50)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-26 09:54:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (422, '56', 'status', '发送状态 （2:成功 0：失败）', 'tinyint(2)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2019-12-26 09:54:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (423, '56', 'create_time', '发送时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2019-12-26 09:54:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (424, '56', 'type', '类型（1:验证码）', 'tinyint(2)', 'Integer', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2019-12-26 09:54:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (425, '57', 'id', '用户推送列表主键', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-26 09:55:03', '', NULL);
INSERT INTO `gen_table_column` VALUES (426, '57', 'user_id', '用户id', 'int(11)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-26 09:55:03', '', NULL);
INSERT INTO `gen_table_column` VALUES (427, '57', 'push_content', '推送内容', 'varchar(255)', 'String', 'pushContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-26 09:55:03', '', NULL);
INSERT INTO `gen_table_column` VALUES (428, '58', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-27 09:45:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (429, '58', 'gift_name', '礼物名称', 'varchar(10)', 'String', 'giftName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2019-12-27 09:45:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (430, '58', 'diamond', '需要钻石数量', 'int(10)', 'Integer', 'diamond', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2019-12-27 09:45:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (431, '58', 'money', '礼物金额', 'decimal(8,2)', 'Double', 'money', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2019-12-27 09:45:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (432, '58', 'status', '状态(0:取消 1:启用)', 'tinyint(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2019-12-27 09:45:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (433, '58', 'gift_url', '礼物路径', 'varchar(255)', 'String', 'giftUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2019-12-27 09:45:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (434, '58', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2019-12-27 09:45:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (435, '58', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2019-12-27 09:45:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (436, '59', 'id', '会员特权页面', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2019-12-30 11:05:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (437, '59', 'vip_content', '会员特权页面内容', 'longtext', 'String', 'vipContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2019-12-30 11:05:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (455, '61', 'id', '主键', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-01-02 14:08:35', '', NULL);
INSERT INTO `gen_table_column` VALUES (456, '61', 'member_money', '原价', 'varchar(255)', 'String', 'memberMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-01-02 14:08:35', '', NULL);
INSERT INTO `gen_table_column` VALUES (457, '61', 'current_price', '现价', 'varchar(10)', 'String', 'currentPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-01-02 14:08:35', '', NULL);
INSERT INTO `gen_table_column` VALUES (458, '61', 'member_second', '时间', 'varchar(255)', 'String', 'memberSecond', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-01-02 14:08:35', '', NULL);
INSERT INTO `gen_table_column` VALUES (459, '61', 'member_second_type', '时间类型', 'varchar(255)', 'String', 'memberSecondType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2020-01-02 14:08:35', '', NULL);
INSERT INTO `gen_table_column` VALUES (466, '63', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (467, '63', 'each_day_num', '每天滑动次数', 'int(11)', 'Long', 'eachDayNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (468, '63', 'vip_day_num', '开通会员每天可滑动次数', 'int(11)', 'Long', 'vipDayNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (469, '63', 'register_free_num', '注册赠送滑动次数', 'int(11)', 'Long', 'registerFreeNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (470, '63', 'vip_free_num', '会员开通赠送滑动次数', 'int(11)', 'Long', 'vipFreeNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (471, '63', 'invite_free_num', '邀请好友赠送滑动次数', 'int(11)', 'Long', 'inviteFreeNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (472, '63', 'binding_free_num', '绑定关系赠送滑动次数', 'int(11)', 'Long', 'bindingFreeNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (473, '63', 'withdraw_lowest', '提现最低限制', 'decimal(8,2)', 'Double', 'withdrawLowest', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (474, '63', 'withdraw_star', '提现开始时间(号)', 'tinyint(2)', 'Integer', 'withdrawStar', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (475, '63', 'withdraw_over', '提现结束时间(号)', 'tinyint(2)', 'Integer', 'withdrawOver', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (476, '63', 'discount_rate', '折现比例', 'varchar(20)', 'String', 'discountRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (477, '63', 'treasure', '消费一钻石对应多少财富值', 'varchar(10)', 'String', 'treasure', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (478, '63', 'tim_admin', '腾讯im的管理员名', 'varchar(255)', 'String', 'timAdmin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (479, '63', 'tim_sig', '腾讯im的管理者秘钥', 'varchar(255)', 'String', 'timSig', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (480, '63', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (481, '63', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (482, '63', 'ext1', NULL, 'varchar(255)', 'String', 'ext1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (483, '63', 'ext2', NULL, 'varchar(255)', 'String', 'ext2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-01-04 09:21:30', '', NULL);
INSERT INTO `gen_table_column` VALUES (492, '65', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-01-04 11:00:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (493, '65', 'member_id', NULL, 'bigint(11)', 'Long', 'memberId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-01-04 11:00:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (494, '65', 'order_number', '订单号', 'varchar(32)', 'String', 'orderNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-01-04 11:00:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (495, '65', 'member_second', '开通多长时间', 'varchar(255)', 'String', 'memberSecond', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-01-04 11:00:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (496, '65', 'member_second_type', '时间类型', 'varchar(255)', 'String', 'memberSecondType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2020-01-04 11:00:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (497, '65', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2020-01-04 11:00:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (498, '65', 'buy_time', '购买时间', 'datetime', 'Date', 'buyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-01-04 11:00:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (499, '65', 'lose_time', '失效时间', 'datetime', 'Date', 'loseTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2020-01-04 11:00:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (500, '66', 'id', 'app评论信息', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-01-07 10:49:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (501, '66', 'comment_id', '评论人id', 'int(11)', 'Long', 'commentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-01-07 10:49:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (502, '66', 'star_level', '星级', 'int(255)', 'Long', 'starLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-01-07 10:49:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (503, '66', 'headline', '标题', 'varchar(255)', 'String', 'headline', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-01-07 10:49:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (504, '66', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-01-07 10:49:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (505, '67', 'notice_id', '公告ID', 'int(4)', 'Integer', 'noticeId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-01-09 11:41:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (506, '67', 'notice_title', '公告标题', 'varchar(50)', 'String', 'noticeTitle', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-01-09 11:41:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (507, '67', 'notice_type', '公告类型（1通知 2公告）', 'char(1)', 'String', 'noticeType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-01-09 11:41:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (508, '67', 'notice_content', '公告内容', 'varchar(2000)', 'String', 'noticeContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2020-01-09 11:41:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (509, '67', 'status', '公告状态（0正常 1关闭）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2020-01-09 11:41:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (510, '67', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2020-01-09 11:41:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (511, '67', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2020-01-09 11:41:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (512, '67', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2020-01-09 11:41:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (513, '67', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2020-01-09 11:41:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (514, '67', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2020-01-09 11:41:02', '', NULL);

-- ----------------------------
-- Table structure for pp_app_comment
-- ----------------------------
DROP TABLE IF EXISTS `pp_app_comment`;
CREATE TABLE `pp_app_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'app评论信息',
  `comment_id` int(11) NULL DEFAULT NULL COMMENT '评论人id',
  `star_level` int(255) NULL DEFAULT NULL COMMENT '星级',
  `headline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_app_comment
-- ----------------------------
INSERT INTO `pp_app_comment` VALUES (1, 22, 5, '测试', '测试');
INSERT INTO `pp_app_comment` VALUES (2, NULL, 5, '很好', '很好');
INSERT INTO `pp_app_comment` VALUES (3, 37, 5, '很好', '很好');

-- ----------------------------
-- Table structure for pp_balace_record
-- ----------------------------
DROP TABLE IF EXISTS `pp_balace_record`;
CREATE TABLE `pp_balace_record`  (
  `balance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '余额表id ',
  `other_id` int(11) NULL DEFAULT NULL COMMENT '充值记录表id || 礼物赠送记录表id',
  `user_id` int(32) NULL DEFAULT NULL COMMENT '用户id',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '类型（1: 充值 2: 赠送）',
  `balace_alteration_gold` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '变动金额变动的钻石数',
  `balace_alteration_time` datetime(0) NULL DEFAULT NULL COMMENT '变动时间',
  PRIMARY KEY (`balance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '余额变动表 不可提取' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_balace_record
-- ----------------------------
INSERT INTO `pp_balace_record` VALUES (1, 23, 22, 1, '5', '2019-12-05 18:23:27');
INSERT INTO `pp_balace_record` VALUES (2, 25, 22, 2, '30', '2019-12-10 18:23:46');
INSERT INTO `pp_balace_record` VALUES (3, 12, 37, 2, '5', '2019-12-20 16:37:06');
INSERT INTO `pp_balace_record` VALUES (4, 1, 37, 1, '10', '2019-12-20 16:37:19');
INSERT INTO `pp_balace_record` VALUES (5, 15, 37, 2, '20', '2019-12-20 16:37:38');
INSERT INTO `pp_balace_record` VALUES (6, 2, 37, 2, '5', '2019-12-21 17:47:29');
INSERT INTO `pp_balace_record` VALUES (7, 1, 36, 2, '20', '2019-12-24 15:10:29');
INSERT INTO `pp_balace_record` VALUES (8, 1, 36, 2, '20', '2019-12-24 15:11:07');
INSERT INTO `pp_balace_record` VALUES (9, 1, 36, 2, '20', '2019-12-24 15:13:19');
INSERT INTO `pp_balace_record` VALUES (10, 2, 35, 2, '5', '2019-12-28 12:01:01');
INSERT INTO `pp_balace_record` VALUES (11, 1, 35, 2, '10', '2019-12-28 13:31:41');
INSERT INTO `pp_balace_record` VALUES (12, 2, 35, 2, '5', '2019-12-28 13:32:22');
INSERT INTO `pp_balace_record` VALUES (13, 3, 35, 2, '15', '2019-12-28 13:39:48');
INSERT INTO `pp_balace_record` VALUES (14, 2, 35, 2, '5', '2019-12-28 16:04:42');
INSERT INTO `pp_balace_record` VALUES (15, 2, 35, 2, '5', '2019-12-28 16:04:48');
INSERT INTO `pp_balace_record` VALUES (16, 11, 35, 2, '50', '2019-12-28 16:09:42');
INSERT INTO `pp_balace_record` VALUES (17, 3, 35, 2, '15', '2019-12-28 16:10:14');
INSERT INTO `pp_balace_record` VALUES (18, 1, 35, 2, '10', '2019-12-28 16:11:14');
INSERT INTO `pp_balace_record` VALUES (19, 3, 35, 2, '15', '2019-12-28 16:15:32');
INSERT INTO `pp_balace_record` VALUES (20, 2, 35, 2, '5', '2019-12-28 16:15:45');
INSERT INTO `pp_balace_record` VALUES (21, 2, 35, 2, '5', '2019-12-28 16:16:36');
INSERT INTO `pp_balace_record` VALUES (22, 9, 35, 2, '999', '2019-12-28 16:16:45');
INSERT INTO `pp_balace_record` VALUES (23, 3, 35, 2, '15', '2019-12-28 16:23:19');
INSERT INTO `pp_balace_record` VALUES (24, 9, 35, 2, '999', '2019-12-28 16:25:40');
INSERT INTO `pp_balace_record` VALUES (25, 2, 35, 2, '5', '2019-12-28 19:49:13');
INSERT INTO `pp_balace_record` VALUES (26, 3, 35, 2, '15', '2019-12-28 19:55:10');
INSERT INTO `pp_balace_record` VALUES (27, 129, 37, 1, '1500', '2020-01-06 16:31:48');
INSERT INTO `pp_balace_record` VALUES (28, 2, 76, 2, '5', '2020-01-08 15:16:00');
INSERT INTO `pp_balace_record` VALUES (29, 2, 76, 2, '5', '2020-01-08 15:16:09');
INSERT INTO `pp_balace_record` VALUES (30, 14, 76, 2, '10', '2020-01-08 15:16:25');
INSERT INTO `pp_balace_record` VALUES (31, 1, 85, 2, '20', '2020-01-08 18:40:26');
INSERT INTO `pp_balace_record` VALUES (32, 1, 85, 2, '20', '2020-01-08 18:40:36');
INSERT INTO `pp_balace_record` VALUES (33, 1, 85, 2, '20', '2020-01-08 18:41:37');
INSERT INTO `pp_balace_record` VALUES (34, 1, 85, 2, '20', '2020-01-08 18:41:38');
INSERT INTO `pp_balace_record` VALUES (35, 1, 85, 2, '20', '2020-01-08 18:41:55');
INSERT INTO `pp_balace_record` VALUES (36, 1, 85, 2, '20', '2020-01-08 18:43:45');
INSERT INTO `pp_balace_record` VALUES (37, 1, 85, 2, '20', '2020-01-08 18:44:35');
INSERT INTO `pp_balace_record` VALUES (38, 1, 85, 2, '20', '2020-01-08 18:44:52');
INSERT INTO `pp_balace_record` VALUES (39, 1, 85, 2, '20', '2020-01-08 18:45:44');
INSERT INTO `pp_balace_record` VALUES (40, 1, 85, 2, '20', '2020-01-08 18:46:48');
INSERT INTO `pp_balace_record` VALUES (41, 1, 85, 2, '20', '2020-01-08 18:47:03');
INSERT INTO `pp_balace_record` VALUES (42, 1, 85, 2, '20', '2020-01-08 18:48:45');
INSERT INTO `pp_balace_record` VALUES (43, 1, 85, 2, '20', '2020-01-08 18:50:22');
INSERT INTO `pp_balace_record` VALUES (44, 1, 85, 2, '20', '2020-01-08 18:50:35');
INSERT INTO `pp_balace_record` VALUES (45, 1, 85, 2, '20', '2020-01-08 18:50:40');
INSERT INTO `pp_balace_record` VALUES (46, 1, 85, 2, '20', '2020-01-08 18:51:49');
INSERT INTO `pp_balace_record` VALUES (47, 1, 85, 2, '20', '2020-01-08 18:52:03');
INSERT INTO `pp_balace_record` VALUES (48, 1, 85, 2, '20', '2020-01-08 18:52:46');
INSERT INTO `pp_balace_record` VALUES (49, 1, 85, 2, '20', '2020-01-08 19:01:51');
INSERT INTO `pp_balace_record` VALUES (50, 1, 85, 2, '20', '2020-01-08 19:05:44');
INSERT INTO `pp_balace_record` VALUES (51, 1, 85, 2, '20', '2020-01-09 09:24:20');
INSERT INTO `pp_balace_record` VALUES (52, 1, 85, 2, '20', '2020-01-09 09:25:58');
INSERT INTO `pp_balace_record` VALUES (53, 1, 85, 2, '20', '2020-01-09 09:26:10');
INSERT INTO `pp_balace_record` VALUES (54, 1, 85, 2, '20', '2020-01-09 09:27:51');
INSERT INTO `pp_balace_record` VALUES (55, 1, 85, 2, '20', '2020-01-09 09:28:59');
INSERT INTO `pp_balace_record` VALUES (56, 1, 85, 2, '20', '2020-01-09 09:33:52');
INSERT INTO `pp_balace_record` VALUES (57, 1, 85, 2, '20', '2020-01-09 09:38:46');
INSERT INTO `pp_balace_record` VALUES (58, 1, 85, 2, '20', '2020-01-09 09:39:32');
INSERT INTO `pp_balace_record` VALUES (59, 1, 85, 2, '20', '2020-01-09 09:48:59');
INSERT INTO `pp_balace_record` VALUES (60, 1, 85, 2, '20', '2020-01-09 09:50:01');
INSERT INTO `pp_balace_record` VALUES (61, 1, 85, 2, '20', '2020-01-09 09:51:39');
INSERT INTO `pp_balace_record` VALUES (62, 1, 85, 2, '20', '2020-01-09 09:52:12');
INSERT INTO `pp_balace_record` VALUES (63, 1, 85, 2, '20', '2020-01-09 09:53:22');
INSERT INTO `pp_balace_record` VALUES (64, 1, 85, 2, '20', '2020-01-09 09:54:09');
INSERT INTO `pp_balace_record` VALUES (65, 1, 85, 2, '20', '2020-01-09 09:55:03');
INSERT INTO `pp_balace_record` VALUES (66, 1, 85, 2, '20', '2020-01-09 09:55:13');
INSERT INTO `pp_balace_record` VALUES (67, 1, 85, 2, '20', '2020-01-09 09:55:31');
INSERT INTO `pp_balace_record` VALUES (68, 1, 85, 2, '20', '2020-01-09 09:55:40');
INSERT INTO `pp_balace_record` VALUES (69, 1, 85, 2, '20', '2020-01-09 09:56:56');
INSERT INTO `pp_balace_record` VALUES (70, 1, 85, 2, '20', '2020-01-09 09:57:14');
INSERT INTO `pp_balace_record` VALUES (71, 1, 85, 2, '20', '2020-01-09 10:00:41');
INSERT INTO `pp_balace_record` VALUES (72, 1, 81, 2, '10', '2020-01-09 13:59:31');
INSERT INTO `pp_balace_record` VALUES (73, 1, 81, 2, '10', '2020-01-09 13:59:57');
INSERT INTO `pp_balace_record` VALUES (74, 15, 81, 2, '5', '2020-01-09 14:00:08');
INSERT INTO `pp_balace_record` VALUES (75, 3, 81, 2, '30', '2020-01-09 14:03:59');
INSERT INTO `pp_balace_record` VALUES (76, 1, 81, 2, '10', '2020-01-09 14:52:10');
INSERT INTO `pp_balace_record` VALUES (77, 2, 86, 2, '5', '2020-01-10 10:22:40');
INSERT INTO `pp_balace_record` VALUES (78, 2, 76, 2, '40', '2020-01-10 10:51:11');
INSERT INTO `pp_balace_record` VALUES (79, 2, 86, 2, '5', '2020-01-10 11:21:56');
INSERT INTO `pp_balace_record` VALUES (80, 2, 86, 2, '5', '2020-01-10 11:22:08');
INSERT INTO `pp_balace_record` VALUES (81, 5, 86, 2, '800', '2020-01-10 11:22:35');
INSERT INTO `pp_balace_record` VALUES (82, 12, 86, 2, '800', '2020-01-10 11:25:15');
INSERT INTO `pp_balace_record` VALUES (83, 1, 86, 2, '10', '2020-01-10 11:26:51');
INSERT INTO `pp_balace_record` VALUES (84, 3, 86, 2, '15', '2020-01-10 11:27:36');
INSERT INTO `pp_balace_record` VALUES (85, 2, 86, 2, '5', '2020-01-10 11:37:34');
INSERT INTO `pp_balace_record` VALUES (86, 2, 76, 2, '25', '2020-01-10 17:41:53');
INSERT INTO `pp_balace_record` VALUES (87, 3, 76, 2, '60', '2020-01-10 17:42:34');
INSERT INTO `pp_balace_record` VALUES (88, 3, 76, 2, '60', '2020-01-10 17:43:01');
INSERT INTO `pp_balace_record` VALUES (89, 3, 76, 2, '60', '2020-01-10 17:43:13');
INSERT INTO `pp_balace_record` VALUES (90, 14, 76, 2, '80', '2020-01-10 17:45:36');
INSERT INTO `pp_balace_record` VALUES (91, 14, 76, 2, '40', '2020-01-10 17:46:04');
INSERT INTO `pp_balace_record` VALUES (92, 5, 76, 2, '700', '2020-01-10 17:46:38');
INSERT INTO `pp_balace_record` VALUES (93, 13, 76, 2, '100', '2020-01-10 17:49:44');
INSERT INTO `pp_balace_record` VALUES (94, 9, 37, 2, '999', '2020-01-10 17:59:00');
INSERT INTO `pp_balace_record` VALUES (95, 13, 37, 2, '100', '2020-01-10 18:00:37');
INSERT INTO `pp_balace_record` VALUES (96, 13, 37, 2, '100', '2020-01-10 18:00:40');
INSERT INTO `pp_balace_record` VALUES (97, 1, 37, 2, '10', '2020-01-10 18:02:17');
INSERT INTO `pp_balace_record` VALUES (98, 12, 37, 2, '100', '2020-01-10 18:02:22');
INSERT INTO `pp_balace_record` VALUES (99, 13, 37, 2, '100', '2020-01-10 18:02:31');
INSERT INTO `pp_balace_record` VALUES (100, 14, 37, 2, '10', '2020-01-10 18:02:54');
INSERT INTO `pp_balace_record` VALUES (101, 3, 37, 2, '15', '2020-01-10 18:08:52');
INSERT INTO `pp_balace_record` VALUES (102, 1, 37, 2, '100', '2020-01-10 18:46:02');
INSERT INTO `pp_balace_record` VALUES (103, 1, 37, 2, '100', '2020-01-10 18:52:20');
INSERT INTO `pp_balace_record` VALUES (104, 137, 37, 2, '50', '2020-01-10 19:01:28');
INSERT INTO `pp_balace_record` VALUES (105, 1, 37, 2, '10', '2020-01-10 19:01:09');
INSERT INTO `pp_balace_record` VALUES (106, 3, 37, 2, '15', '2020-01-10 19:04:36');
INSERT INTO `pp_balace_record` VALUES (107, 140, 76, 2, '100', '2020-01-10 19:10:53');
INSERT INTO `pp_balace_record` VALUES (108, 141, 76, 2, '500', '2020-01-10 19:11:03');
INSERT INTO `pp_balace_record` VALUES (109, 142, 37, 2, '50', '2020-01-10 19:15:18');
INSERT INTO `pp_balace_record` VALUES (110, 143, 37, 2, '150', '2020-01-10 19:16:28');
INSERT INTO `pp_balace_record` VALUES (111, 14, 37, 2, '10', '2020-01-11 09:27:24');
INSERT INTO `pp_balace_record` VALUES (112, 14, 79, 2, '60', '2020-01-11 09:31:13');
INSERT INTO `pp_balace_record` VALUES (113, 146, 86, 2, '100', '2020-01-11 14:25:40');
INSERT INTO `pp_balace_record` VALUES (114, 147, 86, 2, '100', '2020-01-11 14:26:17');
INSERT INTO `pp_balace_record` VALUES (115, 148, 86, 2, '100', '2020-01-11 14:26:39');
INSERT INTO `pp_balace_record` VALUES (116, 149, 114, 2, '15', '2020-01-11 16:47:31');
INSERT INTO `pp_balace_record` VALUES (117, 150, 114, 2, '120', '2020-01-11 16:47:37');
INSERT INTO `pp_balace_record` VALUES (118, 151, 114, 2, '700', '2020-01-11 16:47:43');

-- ----------------------------
-- Table structure for pp_commend_record
-- ----------------------------
DROP TABLE IF EXISTS `pp_commend_record`;
CREATE TABLE `pp_commend_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dynamic_id` bigint(20) NOT NULL COMMENT '动态id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `to_uId` bigint(20) NULL DEFAULT NULL COMMENT '发布者id',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态(0:取消  1:正常)',
  `isread` tinyint(1) NULL DEFAULT 0 COMMENT '是否已读(0:未读 1:已读)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '点赞时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dynamic_id`(`dynamic_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '点赞记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_commend_record
-- ----------------------------
INSERT INTO `pp_commend_record` VALUES (1, 271, 63, 37, 1, 1, '2019-12-12 10:30:59', '2020-01-04 16:11:16');
INSERT INTO `pp_commend_record` VALUES (51, 269, 37, 37, 0, 0, '2020-01-04 16:20:36', '2020-01-06 16:18:46');
INSERT INTO `pp_commend_record` VALUES (52, 268, 37, 37, 1, 1, '2020-01-04 16:20:51', '2020-01-06 16:18:22');
INSERT INTO `pp_commend_record` VALUES (53, 274, 37, 37, 1, 1, '2020-01-04 16:22:34', '2020-01-10 14:25:27');
INSERT INTO `pp_commend_record` VALUES (54, 272, 37, 37, 0, 0, '2020-01-04 16:22:56', '2020-01-04 19:50:49');
INSERT INTO `pp_commend_record` VALUES (55, 267, 37, 37, 0, 0, '2020-01-04 16:25:07', '2020-01-04 19:42:37');
INSERT INTO `pp_commend_record` VALUES (56, 271, 37, 37, 0, 0, '2020-01-04 17:10:55', '2020-01-04 19:42:47');
INSERT INTO `pp_commend_record` VALUES (57, 273, 37, 37, 1, 1, '2020-01-04 17:11:45', '2020-01-10 14:25:27');
INSERT INTO `pp_commend_record` VALUES (58, 243, 37, 37, 0, 0, '2020-01-04 18:38:32', '2020-01-04 19:42:30');
INSERT INTO `pp_commend_record` VALUES (59, 275, 81, 81, 0, 0, '2020-01-04 19:00:57', '2020-01-04 19:00:57');
INSERT INTO `pp_commend_record` VALUES (60, 253, 37, 37, 0, 0, '2020-01-04 19:02:46', '2020-01-04 19:09:45');
INSERT INTO `pp_commend_record` VALUES (61, 266, 37, 37, 0, 0, '2020-01-04 19:42:05', '2020-01-04 19:42:33');
INSERT INTO `pp_commend_record` VALUES (62, 265, 37, 37, 1, 1, '2020-01-04 19:42:08', '2020-01-10 14:25:27');
INSERT INTO `pp_commend_record` VALUES (63, 264, 37, 37, 0, 0, '2020-01-04 19:42:11', '2020-01-04 19:42:11');
INSERT INTO `pp_commend_record` VALUES (64, 242, 37, 37, 0, 0, '2020-01-04 19:42:15', '2020-01-04 19:42:28');
INSERT INTO `pp_commend_record` VALUES (65, 241, 37, 37, 0, 0, '2020-01-04 19:42:17', '2020-01-04 19:42:26');
INSERT INTO `pp_commend_record` VALUES (66, 240, 37, 37, 0, 0, '2020-01-04 19:42:18', '2020-01-04 19:42:27');
INSERT INTO `pp_commend_record` VALUES (67, 239, 37, 37, 0, 0, '2020-01-04 19:42:21', '2020-01-04 19:42:25');
INSERT INTO `pp_commend_record` VALUES (68, 238, 37, 37, 0, 0, '2020-01-04 19:42:23', '2020-01-04 19:42:24');
INSERT INTO `pp_commend_record` VALUES (69, 285, 76, 76, 0, 1, '2020-01-07 10:49:45', '2020-01-07 15:55:12');
INSERT INTO `pp_commend_record` VALUES (70, 282, 37, 37, 1, 1, '2020-01-07 10:51:31', '2020-01-10 14:25:27');
INSERT INTO `pp_commend_record` VALUES (71, 281, 37, 37, 1, 1, '2020-01-07 10:51:34', '2020-01-10 14:25:27');
INSERT INTO `pp_commend_record` VALUES (72, 280, 37, 37, 1, 1, '2020-01-07 10:51:37', '2020-01-10 14:25:27');
INSERT INTO `pp_commend_record` VALUES (73, 279, 37, 37, 1, 1, '2020-01-07 10:51:38', '2020-01-10 14:25:27');
INSERT INTO `pp_commend_record` VALUES (74, 278, 37, 37, 0, 0, '2020-01-07 10:51:40', '2020-01-10 14:24:43');
INSERT INTO `pp_commend_record` VALUES (75, 288, 76, 76, 0, 1, '2020-01-07 11:26:20', '2020-01-07 15:20:00');
INSERT INTO `pp_commend_record` VALUES (76, 287, 76, 76, 1, 1, '2020-01-07 11:26:21', '2020-01-07 11:25:51');
INSERT INTO `pp_commend_record` VALUES (77, 289, 76, 76, 0, 1, '2020-01-07 14:27:19', '2020-01-07 15:19:53');
INSERT INTO `pp_commend_record` VALUES (78, 291, 76, 76, 0, 0, '2020-01-07 16:09:01', '2020-01-07 16:10:50');
INSERT INTO `pp_commend_record` VALUES (79, 297, 76, 76, 1, 1, '2020-01-08 10:21:33', '2020-01-09 16:50:35');
INSERT INTO `pp_commend_record` VALUES (80, 54, 85, 52, 0, 0, '2020-01-09 10:21:10', '2020-01-09 10:25:22');
INSERT INTO `pp_commend_record` VALUES (81, 298, 76, 76, 1, 1, '2020-01-09 16:49:01', '2020-01-09 17:38:13');
INSERT INTO `pp_commend_record` VALUES (82, 299, 76, 76, 0, 1, '2020-01-09 17:19:20', '2020-01-09 18:14:00');
INSERT INTO `pp_commend_record` VALUES (83, 54, 91, 52, 1, 0, '2020-01-10 11:52:14', '2020-01-10 14:45:05');
INSERT INTO `pp_commend_record` VALUES (84, 286, 37, 37, 1, 1, '2020-01-10 14:21:01', '2020-01-10 14:25:27');
INSERT INTO `pp_commend_record` VALUES (85, 276, 37, 37, 0, 0, '2020-01-10 14:22:16', '2020-01-10 14:25:52');
INSERT INTO `pp_commend_record` VALUES (86, 304, 94, 93, 1, 0, '2020-01-10 14:47:15', NULL);
INSERT INTO `pp_commend_record` VALUES (87, 307, 37, 37, 1, 1, '2020-01-11 09:33:28', '2020-01-11 16:28:17');
INSERT INTO `pp_commend_record` VALUES (88, 46, 37, 22, 1, 0, '2020-01-11 09:33:30', NULL);
INSERT INTO `pp_commend_record` VALUES (89, 5, 37, 22, 1, 0, '2020-01-11 09:33:32', NULL);
INSERT INTO `pp_commend_record` VALUES (90, 318, 76, 76, 0, 0, '2020-01-13 09:39:15', '2020-01-13 09:56:01');
INSERT INTO `pp_commend_record` VALUES (91, 313, 76, 76, 0, 0, '2020-01-13 09:53:05', '2020-01-13 09:55:58');

-- ----------------------------
-- Table structure for pp_comment
-- ----------------------------
DROP TABLE IF EXISTS `pp_comment`;
CREATE TABLE `pp_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dynamic_id` bigint(20) NOT NULL,
  `from_uid` bigint(20) NOT NULL COMMENT '评论/回复人id',
  `to_uid` bigint(20) NULL DEFAULT NULL COMMENT '源用户id',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父Id',
  `type` tinyint(2) NOT NULL DEFAULT 1 COMMENT '评论类型(1:评论 2:回复)',
  `tree_code` int(11) NOT NULL COMMENT '楼层值',
  `tree` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '层级关系',
  `isLooked` tinyint(1) NULL DEFAULT 0 COMMENT '是否查看过(0:未读 1:已读)',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态(0:删除  1:正常)',
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `to_uid`(`to_uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 284 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_comment
-- ----------------------------
INSERT INTO `pp_comment` VALUES (60, 7, 25, 37, '只要有心智，有感悟，启迪和帮助无处不在。', NULL, 1, 1, NULL, 1, 1, '2019-12-13 10:39:48', '2019-12-28 15:19:46');
INSERT INTO `pp_comment` VALUES (61, 7, 26, 37, '记住，自己的路，自己走，别人只能影响你，但绝对不能决定你！', NULL, 1, 2, NULL, 1, 1, '2019-12-13 10:40:11', '2019-12-28 15:19:48');
INSERT INTO `pp_comment` VALUES (62, 7, 27, 37, '无人理睬时，坚定执着；有人羡慕时，心如止水。', NULL, 1, 3, NULL, 1, 1, '2019-12-13 10:40:20', '2019-12-28 15:19:50');
INSERT INTO `pp_comment` VALUES (63, 7, 28, 37, '不要在小人小事上浪费时间，将军有剑，不斩苍蝇。', NULL, 1, 4, NULL, 1, 1, '2019-12-13 10:40:26', '2019-12-28 15:19:53');
INSERT INTO `pp_comment` VALUES (64, 7, 29, 37, '你又不吃胡萝卜怎么能说它不好吃呢？所以请认真喜欢你的白菜就好了。', NULL, 1, 5, NULL, 1, 1, '2019-12-13 10:40:33', '2019-12-28 15:19:55');
INSERT INTO `pp_comment` VALUES (65, 7, 25, 37, '努力不是头脑发热的一己执念，知道什么时候该放弃也许更加宝贵。', NULL, 1, 6, NULL, 1, 1, '2019-12-13 10:40:37', '2019-12-28 15:20:03');
INSERT INTO `pp_comment` VALUES (66, 7, 25, 37, '与怪物战斗的人，应当小心自己不要成为怪物。当你远远凝视深渊时，深渊也在凝视你。', NULL, 1, 7, NULL, 1, 1, '2019-12-13 10:40:41', '2019-12-28 15:19:57');
INSERT INTO `pp_comment` VALUES (67, 7, 25, NULL, '同样的错误你并不会犯两次，第二次犯错误的时候，其实已经不是错误了，而是你的选择。', NULL, 1, 8, NULL, 0, 1, '2019-12-13 10:40:49', '2019-12-13 18:34:42');
INSERT INTO `pp_comment` VALUES (70, 47, 25, NULL, '只要有心智，有感悟，启迪和帮助无处不在。', NULL, 1, 11, NULL, 0, 1, '2019-12-13 10:41:07', '2019-12-14 14:07:01');
INSERT INTO `pp_comment` VALUES (71, 206, 22, NULL, '大事难事看担当，逆境顺境看胸襟，有舍有得看智慧，是成是败看坚持。', NULL, 1, 12, NULL, 0, 1, '2019-12-13 10:41:28', '2019-12-28 11:41:03');
INSERT INTO `pp_comment` VALUES (93, 206, 22, 24, '与怪物战斗的人，应当小心自己不要成为怪物。当你远远凝视深渊时，深渊也在凝视你。', 71, 2, 13, '12:13', 1, 1, '2019-12-13 11:19:01', '2019-12-28 11:41:03');
INSERT INTO `pp_comment` VALUES (94, 206, 23, 22, '同样的错误你并不会犯两次，第二次犯错误的时候，其实已经不是错误了，而是你的选择。', 93, 2, 14, '12:13:14', 1, 1, '2019-12-13 11:19:09', '2019-12-28 11:41:03');
INSERT INTO `pp_comment` VALUES (95, 206, 26, 23, '包容能像哆啦A梦神奇的口袋一样，装下很多东西。', 94, 2, 15, '12:13:14:15', 1, 1, '2019-12-13 11:19:17', '2019-12-28 11:41:03');
INSERT INTO `pp_comment` VALUES (96, 206, 24, 26, '与其埋怨世界，不如改变自己。管好自己的心，做好自己的事，比什么都强。人生无完美，曲折亦风景。', 61, 2, 16, '12:16', 0, 1, '2019-12-13 11:19:29', '2019-12-28 11:41:03');
INSERT INTO `pp_comment` VALUES (97, 22, 25, 27, '与其埋怨世界，不如改变自己。管好自己的心，做好自己的事，比什么都强。人生无完美，曲折亦风景。', 62, 2, 17, '3:17', 0, 1, '2019-12-13 11:19:36', '2019-12-27 17:26:42');
INSERT INTO `pp_comment` VALUES (99, 47, 25, 25, '与其埋怨世界，不如改变自己。管好自己的心，做好自己的事，比什么都强。人生无完美，曲折亦风景。', 97, 2, 19, '3:17:19', 1, 1, '2019-12-13 11:20:40', '2019-12-14 14:07:01');
INSERT INTO `pp_comment` VALUES (105, 5, 37, 22, '测试', NULL, 1, 1, NULL, 0, 1, '2019-12-21 14:06:45', NULL);
INSERT INTO `pp_comment` VALUES (106, 5, 37, 22, '测试', NULL, 1, 2, NULL, 0, 1, '2019-12-21 14:07:03', NULL);
INSERT INTO `pp_comment` VALUES (246, 254, 37, 37, '11111', NULL, 1, 1, NULL, 1, 1, '2020-01-03 17:06:36', NULL);
INSERT INTO `pp_comment` VALUES (247, 254, 37, 37, '11111', NULL, 1, 2, NULL, 1, 1, '2020-01-03 17:12:19', NULL);
INSERT INTO `pp_comment` VALUES (248, 254, 37, 37, '的萨芬', NULL, 1, 3, NULL, 1, 1, '2020-01-03 17:32:29', NULL);
INSERT INTO `pp_comment` VALUES (249, 254, 37, 37, '瑞华特', NULL, 1, 4, NULL, 1, 1, '2020-01-03 17:33:10', NULL);
INSERT INTO `pp_comment` VALUES (250, 254, 37, 37, '亲王若琪瓦尔', NULL, 1, 5, NULL, 1, 1, '2020-01-03 17:39:16', NULL);
INSERT INTO `pp_comment` VALUES (251, 254, 37, 37, '亲王若琪瓦尔', 246, 2, 6, '1:6', 1, 1, '2020-01-03 17:39:21', NULL);
INSERT INTO `pp_comment` VALUES (252, 254, 37, 37, '2222222', 248, 2, 7, '3:7', 1, 1, '2020-01-03 17:40:33', NULL);
INSERT INTO `pp_comment` VALUES (253, 251, 37, 37, '111', NULL, 1, 1, NULL, 1, 1, '2020-01-03 18:28:47', NULL);
INSERT INTO `pp_comment` VALUES (254, 254, 37, 37, '温热我国', 249, 2, 8, '4:8', 1, 1, '2020-01-03 18:32:40', NULL);
INSERT INTO `pp_comment` VALUES (255, 255, 37, 37, '123456', NULL, 1, 1, NULL, 1, 1, '2020-01-04 09:28:05', NULL);
INSERT INTO `pp_comment` VALUES (256, 265, 37, 37, '123456', NULL, 1, 1, NULL, 1, 1, '2020-01-04 09:52:45', NULL);
INSERT INTO `pp_comment` VALUES (257, 266, 37, 37, '你好', NULL, 1, 1, NULL, 1, 1, '2020-01-04 10:03:21', NULL);
INSERT INTO `pp_comment` VALUES (258, 270, 37, 37, '123', NULL, 1, 1, NULL, 1, 1, '2020-01-04 10:44:18', NULL);
INSERT INTO `pp_comment` VALUES (259, 260, 37, 37, '123', NULL, 1, 1, NULL, 1, 1, '2020-01-04 10:52:00', NULL);
INSERT INTO `pp_comment` VALUES (260, 271, 37, 37, 'shituranzousan', NULL, 1, 1, NULL, 1, 1, '2020-01-04 11:46:30', NULL);
INSERT INTO `pp_comment` VALUES (261, 272, 37, 37, '丛林法则', NULL, 1, 1, NULL, 1, 1, '2020-01-04 11:49:58', NULL);
INSERT INTO `pp_comment` VALUES (262, 271, 37, 37, '123', 260, 2, 2, '1:2', 1, 1, '2020-01-04 11:54:01', NULL);
INSERT INTO `pp_comment` VALUES (263, 272, 37, 37, '123', 261, 2, 2, '1:2', 1, 1, '2020-01-04 11:54:20', NULL);
INSERT INTO `pp_comment` VALUES (264, 269, 37, 37, '你好', NULL, 1, 1, NULL, 1, 1, '2020-01-04 16:20:43', NULL);
INSERT INTO `pp_comment` VALUES (265, 272, 37, 37, '456', 263, 2, 3, '1:2:3', 1, 1, '2020-01-04 16:23:04', NULL);
INSERT INTO `pp_comment` VALUES (266, 274, 37, 37, '123', NULL, 1, 1, NULL, 1, 1, '2020-01-04 16:30:59', NULL);
INSERT INTO `pp_comment` VALUES (267, 273, 37, 37, 'Hdbbd', NULL, 1, 1, NULL, 1, 1, '2020-01-04 19:44:44', NULL);
INSERT INTO `pp_comment` VALUES (268, 269, 37, 37, 'xiaowanzi', NULL, 1, 2, NULL, 1, 1, '2020-01-06 16:16:16', NULL);
INSERT INTO `pp_comment` VALUES (269, 275, 76, 81, '士大夫似的', NULL, 1, 1, NULL, 0, 1, '2020-01-07 10:06:53', NULL);
INSERT INTO `pp_comment` VALUES (270, 287, 76, 76, '你', NULL, 1, 1, NULL, 1, 1, '2020-01-07 15:56:21', NULL);
INSERT INTO `pp_comment` VALUES (271, 298, 76, 76, '123', NULL, 1, 1, NULL, 1, 1, '2020-01-08 10:21:46', NULL);
INSERT INTO `pp_comment` VALUES (272, 288, 81, 76, 'ngnfgnf n', NULL, 1, 1, NULL, 1, 1, '2020-01-08 14:07:44', '2020-01-09 16:50:33');
INSERT INTO `pp_comment` VALUES (273, 54, 85, 52, '与其埋怨世界，不如改变自己。管好自己的心，做好自己的事，比什么都强。人生无完美，曲折亦风景。', NULL, 1, 1, NULL, 0, 1, '2020-01-09 10:31:05', NULL);
INSERT INTO `pp_comment` VALUES (274, 54, 85, 52, '与其埋怨世界，不如改变自己。管好自己的心，做好自己的事，比什么都强。人生无完美，曲折亦风景。', NULL, 1, 2, NULL, 0, 1, '2020-01-09 10:31:27', NULL);
INSERT INTO `pp_comment` VALUES (275, 54, 85, 52, '与其埋怨世界，不如改变自己。管好自己的心，做好自己的事，比什么都强。人生无完美，曲折亦风景。', NULL, 1, 3, NULL, 0, 1, '2020-01-09 10:31:43', NULL);
INSERT INTO `pp_comment` VALUES (276, 54, 85, 52, '与其埋怨世界，不如改变自己。管好自己的心，做好自己的事，比什么都强。人生无完美，曲折亦风景。', NULL, 1, 4, NULL, 0, 1, '2020-01-09 10:32:00', NULL);
INSERT INTO `pp_comment` VALUES (277, 299, 76, 76, '123', NULL, 1, 1, NULL, 1, 1, '2020-01-09 17:19:24', NULL);
INSERT INTO `pp_comment` VALUES (278, 299, 76, 76, '123', NULL, 1, 2, NULL, 1, 1, '2020-01-09 17:37:25', NULL);
INSERT INTO `pp_comment` VALUES (279, 298, 76, 76, '456', NULL, 1, 2, NULL, 1, 1, '2020-01-09 17:38:07', '2020-01-09 17:38:47');
INSERT INTO `pp_comment` VALUES (280, 299, 76, 76, '789', NULL, 1, 3, NULL, 1, 1, '2020-01-09 17:39:04', '2020-01-09 17:42:22');
INSERT INTO `pp_comment` VALUES (281, 298, 76, 76, '789', NULL, 1, 3, NULL, 1, 1, '2020-01-09 17:39:11', '2020-01-09 17:42:22');
INSERT INTO `pp_comment` VALUES (282, 305, 94, 93, '什么情况', NULL, 1, 1, NULL, 0, 1, '2020-01-10 14:47:27', NULL);
INSERT INTO `pp_comment` VALUES (283, 318, 76, 76, '孩子你慢慢来', NULL, 1, 1, NULL, 1, 1, '2020-01-13 09:39:12', '2020-01-13 11:01:35');
INSERT INTO `pp_comment` VALUES (284, 319, 76, 76, '123', NULL, 1, 1, NULL, 1, 1, '2020-01-13 10:13:43', '2020-01-13 11:01:35');
INSERT INTO `pp_comment` VALUES (285, 319, 76, 76, '112233', 284, 2, 2, '1:2', 0, 1, '2020-01-13 10:17:37', NULL);
INSERT INTO `pp_comment` VALUES (286, 319, 76, 76, '456', NULL, 1, 3, NULL, 1, 1, '2020-01-13 10:18:47', '2020-01-13 11:01:35');
INSERT INTO `pp_comment` VALUES (287, 319, 76, 76, '789', NULL, 1, 4, NULL, 1, 1, '2020-01-13 10:21:25', '2020-01-13 11:01:35');
INSERT INTO `pp_comment` VALUES (288, 318, 76, 76, '111', NULL, 1, 2, NULL, 1, 1, '2020-01-13 10:58:21', '2020-01-13 11:01:35');
INSERT INTO `pp_comment` VALUES (289, 319, 76, 76, '111', NULL, 1, 5, NULL, 1, 1, '2020-01-13 10:58:34', '2020-01-13 11:01:35');

-- ----------------------------
-- Table structure for pp_deposit_specs
-- ----------------------------
DROP TABLE IF EXISTS `pp_deposit_specs`;
CREATE TABLE `pp_deposit_specs`  (
  `id` bigint(20) NOT NULL,
  `money` decimal(8, 2) NULL DEFAULT NULL COMMENT '金额',
  `diamond` int(11) NULL DEFAULT NULL COMMENT '需要钻石数量',
  `specs_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格名称',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态(0:删除 1:正常)',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `pp_dynamic`;
CREATE TABLE `pp_dynamic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `dynamic_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `commend_num` bigint(20) NULL DEFAULT 0 COMMENT '点赞数',
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布位置',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态(0:删除 1:正常)',
  `longitude` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `latitude` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `isvisible` tinyint(1) NULL DEFAULT 1 COMMENT '是否可见（1：好友可见  2：个人可见 3：被关注可见）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 319 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '发布动态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_dynamic
-- ----------------------------
INSERT INTO `pp_dynamic` VALUES (5, 22, '开心', 2, NULL, 1, NULL, NULL, 1, NULL, '2020-01-11 09:36:52');
INSERT INTO `pp_dynamic` VALUES (7, 25, '今天天气好', 0, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-14 11:00:11', '2019-12-25 11:02:02');
INSERT INTO `pp_dynamic` VALUES (43, 25, '今天天气好', 0, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-14 11:06:13', NULL);
INSERT INTO `pp_dynamic` VALUES (46, 22, '今天天气好', 1, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-14 11:33:06', '2020-01-11 09:36:50');
INSERT INTO `pp_dynamic` VALUES (48, 26, '今天天气好', 0, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-18 10:44:06', '2019-12-26 10:10:18');
INSERT INTO `pp_dynamic` VALUES (49, 26, '今天天气好', 0, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-18 10:44:07', '2019-12-26 10:10:18');
INSERT INTO `pp_dynamic` VALUES (50, 27, '今天天气好', 1, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-18 11:23:03', '2019-12-26 10:10:21');
INSERT INTO `pp_dynamic` VALUES (51, 35, '今天天气好', 1, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-18 11:24:27', '2019-12-25 14:22:38');
INSERT INTO `pp_dynamic` VALUES (52, 35, '今天天气好', 0, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-19 10:43:15', '2019-12-25 14:22:38');
INSERT INTO `pp_dynamic` VALUES (53, 26, '今天天气好', 0, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-19 10:43:27', '2019-12-25 14:22:40');
INSERT INTO `pp_dynamic` VALUES (54, 52, '今天天气好', -11, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-19 16:34:23', '2020-01-10 14:45:04');
INSERT INTO `pp_dynamic` VALUES (60, 35, '1哈哈镜', 0, NULL, 1, NULL, NULL, 1, '2019-12-25 18:59:57', NULL);
INSERT INTO `pp_dynamic` VALUES (122, 25, '今天天气好5435435', 0, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-26 16:20:44', NULL);
INSERT INTO `pp_dynamic` VALUES (143, 25, '今天天气好5435435', 0, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-26 17:20:22', NULL);
INSERT INTO `pp_dynamic` VALUES (159, 35, '2', 0, NULL, 1, NULL, NULL, 1, '2019-12-27 09:21:06', NULL);
INSERT INTO `pp_dynamic` VALUES (160, 35, '看看', 0, NULL, 1, NULL, NULL, 1, '2019-12-27 09:23:03', NULL);
INSERT INTO `pp_dynamic` VALUES (176, 25, '今天天气好5435435', 0, '中国栾川', 1, '22.33', '11.22', 1, '2019-12-27 10:37:43', NULL);
INSERT INTO `pp_dynamic` VALUES (177, 35, '1', 0, NULL, 1, NULL, NULL, 1, '2019-12-27 10:41:02', NULL);
INSERT INTO `pp_dynamic` VALUES (178, 35, '11', 0, NULL, 1, NULL, NULL, 1, '2019-12-27 10:42:32', NULL);
INSERT INTO `pp_dynamic` VALUES (185, 35, 'vhhh', 0, NULL, 1, NULL, NULL, 1, '2019-12-27 11:28:21', NULL);
INSERT INTO `pp_dynamic` VALUES (204, 35, '1111111111', 0, '所在位置', 1, NULL, NULL, 1, '2019-12-28 11:34:27', NULL);
INSERT INTO `pp_dynamic` VALUES (270, 70, '你在哪里呢？我在这里等你', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-04 10:28:49', '2020-01-04 11:59:08');
INSERT INTO `pp_dynamic` VALUES (275, 81, 'dsgfds', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-04 17:11:59', '2020-01-04 19:00:57');
INSERT INTO `pp_dynamic` VALUES (284, 76, '一个人一开始不喜欢吃东西', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 10:15:53', NULL);
INSERT INTO `pp_dynamic` VALUES (285, 76, '以后就我世界上比在街上激动的即便是地儿', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 10:16:50', '2020-01-07 15:55:12');
INSERT INTO `pp_dynamic` VALUES (287, 76, '333', 1, '所在位置', 1, NULL, NULL, 1, '2020-01-07 11:24:12', '2020-01-07 11:25:10');
INSERT INTO `pp_dynamic` VALUES (288, 76, '哦哦哦', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 11:26:13', '2020-01-07 15:20:00');
INSERT INTO `pp_dynamic` VALUES (289, 76, '3333', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 11:41:57', '2020-01-07 15:19:53');
INSERT INTO `pp_dynamic` VALUES (290, 76, '这些天我真的是好是不开心', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 12:03:04', NULL);
INSERT INTO `pp_dynamic` VALUES (291, 76, '1', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 12:03:21', '2020-01-07 16:10:50');
INSERT INTO `pp_dynamic` VALUES (292, 86, '啦啦啦', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 15:27:09', NULL);
INSERT INTO `pp_dynamic` VALUES (293, 76, '3333', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 16:14:22', NULL);
INSERT INTO `pp_dynamic` VALUES (294, 76, '333', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 16:43:31', NULL);
INSERT INTO `pp_dynamic` VALUES (295, 76, '11', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 19:23:41', NULL);
INSERT INTO `pp_dynamic` VALUES (296, 76, '222', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-07 19:24:07', NULL);
INSERT INTO `pp_dynamic` VALUES (297, 76, '333', 1, '所在位置', 1, NULL, NULL, 1, '2020-01-07 19:24:29', '2020-01-08 10:20:08');
INSERT INTO `pp_dynamic` VALUES (298, 76, '444', 1, '所在位置', 1, NULL, NULL, 1, '2020-01-07 19:24:48', '2020-01-09 17:37:44');
INSERT INTO `pp_dynamic` VALUES (299, 76, '111', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-09 17:18:45', '2020-01-09 18:14:00');
INSERT INTO `pp_dynamic` VALUES (300, 76, '222', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-10 10:01:43', NULL);
INSERT INTO `pp_dynamic` VALUES (301, 76, '2', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-10 10:06:29', NULL);
INSERT INTO `pp_dynamic` VALUES (302, 76, '22', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-10 10:06:59', NULL);
INSERT INTO `pp_dynamic` VALUES (303, 93, '什么情况了', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-10 14:17:14', NULL);
INSERT INTO `pp_dynamic` VALUES (304, 93, '什么情况', 1, '所在位置', 1, NULL, NULL, 1, '2020-01-10 14:18:43', '2020-01-10 14:50:49');
INSERT INTO `pp_dynamic` VALUES (305, 93, '啊', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-10 14:23:23', NULL);
INSERT INTO `pp_dynamic` VALUES (307, 37, '123', 1, '所在位置', 1, NULL, NULL, 1, '2020-01-10 17:50:52', '2020-01-11 09:36:49');
INSERT INTO `pp_dynamic` VALUES (308, 95, '每时每刻都要注意光线的变化。摄影时光的艺术，不管 是眼光、烛光，还是电脑屏幕产生的光。', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 14:02:22', NULL);
INSERT INTO `pp_dynamic` VALUES (309, 95, '皮卡丘', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 14:07:38', NULL);
INSERT INTO `pp_dynamic` VALUES (310, 95, '皮卡丘 ', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 14:10:01', NULL);
INSERT INTO `pp_dynamic` VALUES (311, 95, '皮卡皮卡皮', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 14:10:35', NULL);
INSERT INTO `pp_dynamic` VALUES (312, 76, '1', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 14:30:18', NULL);
INSERT INTO `pp_dynamic` VALUES (313, 76, '11211', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 14:57:03', '2020-01-13 09:55:58');
INSERT INTO `pp_dynamic` VALUES (314, 76, '44', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 15:18:28', NULL);
INSERT INTO `pp_dynamic` VALUES (315, 76, NULL, 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 15:24:29', NULL);
INSERT INTO `pp_dynamic` VALUES (316, 76, '有一天', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 15:26:07', NULL);
INSERT INTO `pp_dynamic` VALUES (317, 76, NULL, 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 15:34:39', NULL);
INSERT INTO `pp_dynamic` VALUES (318, 76, '我的母亲也曾经坐在草地上远远地看着我爬行吧？现在，母亲的手背上布满了老人斑，那只曾经牵过我、抚过我头发的手。生命的来处和去处，我突然明白了，不透过书本和思考，透过那正在爬的孩子。\n\n24、那吊在墙上，胸膛流着血的，本来是个“真”的人。他用他特别温暖厚实的手抚摸病人的脸；用他坚定诚恳的声音告诉手握石头的人，爱比审判重要；用身上的血和伤痕告诉软弱的人，牺牲有时候比生命还重要。\n\n25、台湾不能只靠钱，还要有内涵。台湾人以前只顾自己求生存，现在富足了，就会渐渐的‘放眼世界’，不是口号，真正的开始放眼世界，扩大关怀的范围，台湾要有自己的世界观，用中国人的观点独立地了解世界。\n我的母亲也曾经坐在草地上远远地看着我爬行吧？现在，母亲的手背上布满了老人斑，那只曾经牵过我、抚过我头发的手。生命的来处和去处，我突然明白了，不透过书本和思考，透过那正在爬的孩子。\n\n24、那吊在墙上，胸膛流着血的，本来是个“真”的人。他用他特别温暖厚实的手抚摸病人的脸；用他坚定诚恳的声音告诉手握石头的人，爱比审判重要；用身上的血和伤痕告诉软弱的人，牺牲有时候比生命还重要。\n\n25、台湾不能只靠钱，还要有内涵。台湾人以前只顾自己求生存，现在富足了，就会渐渐的‘放眼世界’，不是口号，真正的开始放眼世界，扩大关怀的范围，台湾要有自己的世界观，用中国人的观点独立地了解世界。', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-11 15:56:36', '2020-01-13 09:56:01');
INSERT INTO `pp_dynamic` VALUES (319, 76, '123', 0, '所在位置', 1, NULL, NULL, 1, '2020-01-13 10:00:29', NULL);

-- ----------------------------
-- Table structure for pp_earnings_alteration
-- ----------------------------
DROP TABLE IF EXISTS `pp_earnings_alteration`;
CREATE TABLE `pp_earnings_alteration`  (
  `
earnings_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收益id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `by_user_id` int(11) NOT NULL COMMENT '赠送人',
  `
earnings_alteration_gold` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收益金币',
  `earnings_alteration_time` datetime(0) NULL DEFAULT NULL COMMENT '收益时间',
  PRIMARY KEY (`
earnings_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收益改变记录表 可以提取' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_feedback
-- ----------------------------
DROP TABLE IF EXISTS `pp_feedback`;
CREATE TABLE `pp_feedback`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '意见反馈列表主键',
  `user_id` int(32) NULL DEFAULT NULL COMMENT '用户id',
  `feedback_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '反馈内容',
  `feedback_time` datetime(0) NULL DEFAULT NULL COMMENT '反馈时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户意见反馈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_feedback
-- ----------------------------
INSERT INTO `pp_feedback` VALUES (25, 37, '111111', '2019-12-24 16:54:53');
INSERT INTO `pp_feedback` VALUES (27, 37, 'QQQQ', '2019-12-24 16:56:27');
INSERT INTO `pp_feedback` VALUES (29, 37, '123', '2019-12-25 18:15:20');
INSERT INTO `pp_feedback` VALUES (30, 37, '111', '2019-12-26 09:51:18');
INSERT INTO `pp_feedback` VALUES (31, 76, '活塞的护卫评分vbtefffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', '2020-01-07 10:39:15');
INSERT INTO `pp_feedback` VALUES (32, 76, '啦咯啦咯啦咯啦咯啦咯啦咯啦', '2020-01-07 10:39:23');
INSERT INTO `pp_feedback` VALUES (33, 76, '摸摸', '2020-01-07 10:39:29');
INSERT INTO `pp_feedback` VALUES (34, 60, '把', '2020-01-10 16:56:05');

-- ----------------------------
-- Table structure for pp_file
-- ----------------------------
DROP TABLE IF EXISTS `pp_file`;
CREATE TABLE `pp_file`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户注册协议页面主键',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名字',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传文件信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_files
-- ----------------------------
DROP TABLE IF EXISTS `pp_files`;
CREATE TABLE `pp_files`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_id` bigint(20) NULL DEFAULT NULL COMMENT '对应表的id主键',
  `file_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件地址',
  `file_type` tinyint(2) NULL DEFAULT NULL COMMENT '文件类型(1:图片 2:视频)',
  `file_source` tinyint(2) NULL DEFAULT NULL COMMENT '文件来源(1:动态 2:评论 3:照片 4:反馈  5:举报)',
  `violation` tinyint(1) NULL DEFAULT 1 COMMENT '是否违规（1：不违规 2：违规）',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `file_id`(`file_id`) USING BTREE,
  INDEX `file_source`(`file_source`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1560 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_files
-- ----------------------------
INSERT INTO `pp_files` VALUES (77, 42, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:00:11');
INSERT INTO `pp_files` VALUES (78, 36, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 3, 1, 1, '2019-12-14 11:06:13');
INSERT INTO `pp_files` VALUES (79, 36, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 3, 1, 1, '2019-12-14 11:06:13');
INSERT INTO `pp_files` VALUES (80, 26, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:06:13');
INSERT INTO `pp_files` VALUES (81, 26, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:06:13');
INSERT INTO `pp_files` VALUES (82, 24, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 3, 1, 1, '2019-12-14 11:06:13');
INSERT INTO `pp_files` VALUES (83, 24, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 3, 1, 1, '2019-12-14 11:06:13');
INSERT INTO `pp_files` VALUES (84, 24, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 3, 1, 1, '2019-12-14 11:06:13');
INSERT INTO `pp_files` VALUES (85, 24, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 3, 1, 1, '2019-12-14 11:06:13');
INSERT INTO `pp_files` VALUES (86, 24, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 3, 1, 1, '2019-12-14 11:06:13');
INSERT INTO `pp_files` VALUES (87, 43, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:06:13');
INSERT INTO `pp_files` VALUES (88, 101, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:07:04');
INSERT INTO `pp_files` VALUES (89, 101, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:07:04');
INSERT INTO `pp_files` VALUES (90, 101, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:07:04');
INSERT INTO `pp_files` VALUES (91, 60, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:07:04');
INSERT INTO `pp_files` VALUES (92, 60, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:07:04');
INSERT INTO `pp_files` VALUES (93, 60, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:07:04');
INSERT INTO `pp_files` VALUES (94, 60, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:07:04');
INSERT INTO `pp_files` VALUES (95, 60, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:07:04');
INSERT INTO `pp_files` VALUES (96, 102, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:07:04');
INSERT INTO `pp_files` VALUES (97, 102, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:07:04');
INSERT INTO `pp_files` VALUES (98, 102, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:07:43');
INSERT INTO `pp_files` VALUES (99, 56, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:07:43');
INSERT INTO `pp_files` VALUES (100, 56, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:07:43');
INSERT INTO `pp_files` VALUES (101, 56, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:07:43');
INSERT INTO `pp_files` VALUES (102, 56, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:07:43');
INSERT INTO `pp_files` VALUES (103, 10, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 5, 1, '2019-12-14 11:07:43');
INSERT INTO `pp_files` VALUES (104, 10, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 5, 1, '2019-12-14 11:07:43');
INSERT INTO `pp_files` VALUES (105, 10, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 5, 1, '2019-12-14 11:07:43');
INSERT INTO `pp_files` VALUES (106, 102, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:07:43');
INSERT INTO `pp_files` VALUES (107, 102, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:07:43');
INSERT INTO `pp_files` VALUES (108, 5, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-05 11:10:59');
INSERT INTO `pp_files` VALUES (109, 27, 'abc', 1, 1, 1, '2019-12-11 11:11:29');
INSERT INTO `pp_files` VALUES (110, 8, 'test', 1, 1, 1, '2019-12-11 11:11:59');
INSERT INTO `pp_files` VALUES (111, 103, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:12:10');
INSERT INTO `pp_files` VALUES (112, 103, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:12:10');
INSERT INTO `pp_files` VALUES (113, 103, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:12:10');
INSERT INTO `pp_files` VALUES (114, 103, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:12:10');
INSERT INTO `pp_files` VALUES (115, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:10');
INSERT INTO `pp_files` VALUES (116, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:12:10');
INSERT INTO `pp_files` VALUES (117, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:12:10');
INSERT INTO `pp_files` VALUES (118, 103, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:10');
INSERT INTO `pp_files` VALUES (119, 103, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:12:10');
INSERT INTO `pp_files` VALUES (120, 103, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:12:10');
INSERT INTO `pp_files` VALUES (121, 44, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:19');
INSERT INTO `pp_files` VALUES (122, 44, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:19');
INSERT INTO `pp_files` VALUES (123, 44, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:19');
INSERT INTO `pp_files` VALUES (124, 44, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:19');
INSERT INTO `pp_files` VALUES (125, 44, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:19');
INSERT INTO `pp_files` VALUES (126, 44, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:19');
INSERT INTO `pp_files` VALUES (127, 44, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:19');
INSERT INTO `pp_files` VALUES (128, 44, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:19');
INSERT INTO `pp_files` VALUES (129, 44, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:19');
INSERT INTO `pp_files` VALUES (130, 44, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:12:19');
INSERT INTO `pp_files` VALUES (131, 45, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:29:29');
INSERT INTO `pp_files` VALUES (132, 45, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:29:29');
INSERT INTO `pp_files` VALUES (133, 45, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:29:29');
INSERT INTO `pp_files` VALUES (134, 45, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:29:29');
INSERT INTO `pp_files` VALUES (135, 45, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:29:29');
INSERT INTO `pp_files` VALUES (136, 45, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:29:29');
INSERT INTO `pp_files` VALUES (137, 45, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:29:29');
INSERT INTO `pp_files` VALUES (138, 45, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:29:29');
INSERT INTO `pp_files` VALUES (139, 45, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:29:29');
INSERT INTO `pp_files` VALUES (140, 45, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:29:29');
INSERT INTO `pp_files` VALUES (141, 46, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:33:06');
INSERT INTO `pp_files` VALUES (142, 46, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:33:06');
INSERT INTO `pp_files` VALUES (143, 25, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:33:06');
INSERT INTO `pp_files` VALUES (144, 25, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-14 11:33:06');
INSERT INTO `pp_files` VALUES (145, 25, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:33:06');
INSERT INTO `pp_files` VALUES (146, 25, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:33:06');
INSERT INTO `pp_files` VALUES (147, 46, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:33:06');
INSERT INTO `pp_files` VALUES (148, 46, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:33:06');
INSERT INTO `pp_files` VALUES (149, 46, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:33:06');
INSERT INTO `pp_files` VALUES (150, 70, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:33:06');
INSERT INTO `pp_files` VALUES (151, 47, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:33:17');
INSERT INTO `pp_files` VALUES (152, 47, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:33:17');
INSERT INTO `pp_files` VALUES (153, 47, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:33:17');
INSERT INTO `pp_files` VALUES (154, 47, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-14 11:33:17');
INSERT INTO `pp_files` VALUES (159, 96, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:33:17');
INSERT INTO `pp_files` VALUES (160, 96, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-14 11:33:17');
INSERT INTO `pp_files` VALUES (161, 96, 'http://file02.16sucai.com/d/file/2015/0408/779334da99e40adb587d0ba715eca102.jpg', 2, 2, 1, '2019-12-14 11:33:58');
INSERT INTO `pp_files` VALUES (166, 11, 'http://cdn.duitang.com/uploads/item/201409/08/20140908130732_kVXzh.jpeg', 1, 4, 1, '2019-12-14 16:34:56');
INSERT INTO `pp_files` VALUES (170, 48, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 10:44:06');
INSERT INTO `pp_files` VALUES (171, 48, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 10:44:06');
INSERT INTO `pp_files` VALUES (172, 48, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 10:44:06');
INSERT INTO `pp_files` VALUES (173, 48, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 10:44:06');
INSERT INTO `pp_files` VALUES (174, 48, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 10:44:06');
INSERT INTO `pp_files` VALUES (175, 48, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 10:44:06');
INSERT INTO `pp_files` VALUES (176, 48, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 10:44:06');
INSERT INTO `pp_files` VALUES (177, 48, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (178, 48, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (179, 48, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (180, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (181, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (182, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (183, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (184, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (185, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (186, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (187, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (188, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (189, 49, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 10:44:07');
INSERT INTO `pp_files` VALUES (190, 50, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:23:03');
INSERT INTO `pp_files` VALUES (191, 50, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:23:03');
INSERT INTO `pp_files` VALUES (192, 50, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:23:03');
INSERT INTO `pp_files` VALUES (193, 50, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:23:03');
INSERT INTO `pp_files` VALUES (194, 50, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:23:03');
INSERT INTO `pp_files` VALUES (195, 50, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:23:03');
INSERT INTO `pp_files` VALUES (196, 50, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:23:03');
INSERT INTO `pp_files` VALUES (197, 50, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:23:03');
INSERT INTO `pp_files` VALUES (198, 50, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:23:03');
INSERT INTO `pp_files` VALUES (199, 50, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:23:03');
INSERT INTO `pp_files` VALUES (200, 51, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:24:27');
INSERT INTO `pp_files` VALUES (201, 51, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-18 11:24:27');
INSERT INTO `pp_files` VALUES (202, 51, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 11:24:27');
INSERT INTO `pp_files` VALUES (203, 51, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 11:24:27');
INSERT INTO `pp_files` VALUES (204, 51, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 11:24:27');
INSERT INTO `pp_files` VALUES (205, 51, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 11:24:27');
INSERT INTO `pp_files` VALUES (206, 51, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 11:24:27');
INSERT INTO `pp_files` VALUES (207, 51, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 11:24:27');
INSERT INTO `pp_files` VALUES (208, 51, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 11:24:27');
INSERT INTO `pp_files` VALUES (209, 51, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-18 11:24:27');
INSERT INTO `pp_files` VALUES (210, 52, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 10:43:15');
INSERT INTO `pp_files` VALUES (211, 52, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 10:43:15');
INSERT INTO `pp_files` VALUES (212, 52, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 10:43:15');
INSERT INTO `pp_files` VALUES (213, 52, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-19 10:43:15');
INSERT INTO `pp_files` VALUES (214, 52, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-19 10:43:15');
INSERT INTO `pp_files` VALUES (215, 52, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-19 10:43:15');
INSERT INTO `pp_files` VALUES (216, 52, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-19 10:43:15');
INSERT INTO `pp_files` VALUES (217, 52, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-19 10:43:15');
INSERT INTO `pp_files` VALUES (218, 52, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-19 10:43:15');
INSERT INTO `pp_files` VALUES (219, 52, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 3, 1, '2019-12-19 10:43:15');
INSERT INTO `pp_files` VALUES (220, 53, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 10:43:27');
INSERT INTO `pp_files` VALUES (221, 53, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 10:43:27');
INSERT INTO `pp_files` VALUES (222, 53, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 10:43:27');
INSERT INTO `pp_files` VALUES (223, 53, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 10:43:27');
INSERT INTO `pp_files` VALUES (224, 53, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-19 10:43:27');
INSERT INTO `pp_files` VALUES (225, 53, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-19 10:43:27');
INSERT INTO `pp_files` VALUES (226, 53, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-19 10:43:27');
INSERT INTO `pp_files` VALUES (227, 53, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-19 10:43:27');
INSERT INTO `pp_files` VALUES (228, 53, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-19 10:43:27');
INSERT INTO `pp_files` VALUES (229, 53, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 2, 1, '2019-12-19 10:43:27');
INSERT INTO `pp_files` VALUES (230, 54, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 16:34:23');
INSERT INTO `pp_files` VALUES (231, 54, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 16:34:23');
INSERT INTO `pp_files` VALUES (232, 54, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 16:34:23');
INSERT INTO `pp_files` VALUES (233, 54, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 16:34:23');
INSERT INTO `pp_files` VALUES (234, 54, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 16:34:23');
INSERT INTO `pp_files` VALUES (235, 54, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 16:34:23');
INSERT INTO `pp_files` VALUES (236, 54, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 16:34:23');
INSERT INTO `pp_files` VALUES (237, 54, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 16:34:23');
INSERT INTO `pp_files` VALUES (238, 54, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 16:34:23');
INSERT INTO `pp_files` VALUES (239, 54, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-19 16:34:23');
INSERT INTO `pp_files` VALUES (240, 12, '[object Undefined]', 1, 4, 1, '2019-12-21 16:33:42');
INSERT INTO `pp_files` VALUES (241, 13, '[object Undefined]', 1, 4, 1, '2019-12-21 16:35:35');
INSERT INTO `pp_files` VALUES (242, 14, '[object Undefined]', 1, 4, 1, '2019-12-24 13:52:15');
INSERT INTO `pp_files` VALUES (243, 15, '[object Undefined]', 1, 4, 1, '2019-12-24 13:53:48');
INSERT INTO `pp_files` VALUES (244, 16, '[object Undefined]', 1, 4, 1, '2019-12-24 13:54:29');
INSERT INTO `pp_files` VALUES (247, 19, '[object Undefined]', 1, 4, 1, '2019-12-24 13:56:35');
INSERT INTO `pp_files` VALUES (248, 20, '[object Undefined]', 1, 4, 1, '2019-12-24 13:57:44');
INSERT INTO `pp_files` VALUES (253, 23, 'http://insgle.huaren58.com/48b21cf7-fb87-49e4-8178-260815b9b5a0', 1, 4, 1, '2019-12-24 14:01:15');
INSERT INTO `pp_files` VALUES (254, 27, 'http://insgle.huaren58.com/f1623f38-f66f-4ba8-b853-00b5be926dd7', 1, 4, 1, '2019-12-24 16:56:27');
INSERT INTO `pp_files` VALUES (255, 27, 'http://insgle.huaren58.com/68c7ee50-9a24-4401-89ae-dd312332d71b', 1, 4, 1, '2019-12-24 16:56:27');
INSERT INTO `pp_files` VALUES (256, 28, 'http://insgle.huaren58.com/7dee10e8-5f52-4108-aac1-64a29044c44e', 1, 4, 1, '2019-12-24 19:40:50');
INSERT INTO `pp_files` VALUES (257, 28, 'http://insgle.huaren58.com/eb664f8f-8012-432e-a997-86cb0daae52c', 1, 4, 1, '2019-12-24 19:40:50');
INSERT INTO `pp_files` VALUES (258, 55, 'blob:http://localhost:8080/f0fe0272-1389-4c3d-ace2-fadbeffa1db3', 1, 1, 1, '2019-12-25 15:46:17');
INSERT INTO `pp_files` VALUES (259, 55, 'blob:http://localhost:8080/f6b94215-25b0-46dc-837a-573305d95156', 1, 1, 1, '2019-12-25 15:46:17');
INSERT INTO `pp_files` VALUES (260, 55, 'blob:http://localhost:8080/5074d4c8-b8af-4c29-b589-61df2ec57108', 1, 1, 1, '2019-12-25 15:46:17');
INSERT INTO `pp_files` VALUES (261, 56, 'http://insgle.huaren58.com/378af45c-79ea-49ad-b8ad-5e51336b24e7', 1, 1, 1, '2019-12-25 15:50:05');
INSERT INTO `pp_files` VALUES (262, 56, 'http://insgle.huaren58.com/d0a90d32-871f-4eb7-ba03-e7acc69f60c6', 1, 1, 1, '2019-12-25 15:50:05');
INSERT INTO `pp_files` VALUES (263, 56, 'http://insgle.huaren58.com/fe4c65ed-38af-4710-aeb3-77d2123d3a3b', 1, 1, 1, '2019-12-25 15:50:05');
INSERT INTO `pp_files` VALUES (264, 57, NULL, 1, 1, 1, '2019-12-25 16:09:52');
INSERT INTO `pp_files` VALUES (265, 58, 'http://insgle.huaren58.com/1d88d333-f0b9-4e85-a7e3-75078eb2421f', 1, 1, 1, '2019-12-25 16:10:51');
INSERT INTO `pp_files` VALUES (266, 58, 'http://insgle.huaren58.com/fc875b15-7a3a-458d-baa5-f000df175d52', 1, 1, 1, '2019-12-25 16:10:51');
INSERT INTO `pp_files` VALUES (267, 58, 'http://insgle.huaren58.com/03229f30-b8ef-430b-83ef-3036670be0d6', 1, 1, 1, '2019-12-25 16:10:51');
INSERT INTO `pp_files` VALUES (268, 29, 'http://insgle.huaren58.com/9a500be3-2d10-4bc2-9f4a-7d7dedac1cc1', 1, 4, 1, '2019-12-25 18:15:20');
INSERT INTO `pp_files` VALUES (269, 59, 'http://insgle.huaren58.com/d00ea2c0-021a-423f-80f5-136b0dce6b9b', 1, 1, 1, '2019-12-25 18:15:45');
INSERT INTO `pp_files` VALUES (270, 60, 'http://insgle.huaren58.com/cebc3e7f-f5f6-4701-a230-0617cf22aedd', 1, 1, 1, '2019-12-25 18:59:57');
INSERT INTO `pp_files` VALUES (271, 30, 'http://insgle.huaren58.com/5cee6e8a-7b2d-4058-9a5c-48280faf2ad0', 1, 4, 1, '2019-12-26 09:51:18');
INSERT INTO `pp_files` VALUES (272, 30, 'http://insgle.huaren58.com/1cbc32b4-d6b5-460a-ba95-ab500704125b', 1, 4, 1, '2019-12-26 09:51:18');
INSERT INTO `pp_files` VALUES (273, 30, 'http://insgle.huaren58.com/51b22466-cdc7-49c8-bb35-e9743bd9f678', 1, 4, 1, '2019-12-26 09:51:18');
INSERT INTO `pp_files` VALUES (274, 30, 'http://insgle.huaren58.com/85c3ff04-d495-4845-8871-6e4338b7faa4', 1, 4, 1, '2019-12-26 09:51:18');
INSERT INTO `pp_files` VALUES (275, 61, 'http://insgle.huaren58.com/40a6b379-f60e-48d6-bcb4-3b704d3f1f0b', 1, 1, 1, '2019-12-26 09:51:42');
INSERT INTO `pp_files` VALUES (276, 61, 'http://insgle.huaren58.com/16389ec4-5001-45f8-bae8-3763a915b1dc', 1, 1, 1, '2019-12-26 09:51:42');
INSERT INTO `pp_files` VALUES (277, 61, 'http://insgle.huaren58.com/82bf8de6-fe84-44f3-b14c-bd07b77a0474', 1, 1, 1, '2019-12-26 09:51:42');
INSERT INTO `pp_files` VALUES (278, 62, NULL, 1, 1, 1, '2019-12-26 11:33:49');
INSERT INTO `pp_files` VALUES (279, 63, 'http://insgle.huaren58.com/c4a947ba-997d-4d26-afc4-98d177672384', 1, 1, 1, '2019-12-26 11:34:09');
INSERT INTO `pp_files` VALUES (280, 63, 'http://insgle.huaren58.com/54f0ff73-581f-4ea7-b2e9-4d7afada4916', 1, 1, 1, '2019-12-26 11:34:09');
INSERT INTO `pp_files` VALUES (281, 63, 'http://insgle.huaren58.com/fc7f1959-3ecd-41dc-96ce-044c50ac7356', 1, 1, 1, '2019-12-26 11:34:09');
INSERT INTO `pp_files` VALUES (282, 63, 'http://insgle.huaren58.com/54b71b6a-217c-4298-8d4e-b57a72c36a58', 1, 1, 1, '2019-12-26 11:34:09');
INSERT INTO `pp_files` VALUES (283, 64, 'http://insgle.huaren58.com/f6025857-ebe0-47c5-8ebd-f2a76cbb4bde', 1, 1, 1, '2019-12-26 11:36:56');
INSERT INTO `pp_files` VALUES (284, 64, 'http://insgle.huaren58.com/c81a9f88-fc42-48b9-999e-5fb5ccde0067', 1, 1, 1, '2019-12-26 11:36:56');
INSERT INTO `pp_files` VALUES (285, 65, NULL, 1, 1, 1, '2019-12-26 11:38:00');
INSERT INTO `pp_files` VALUES (286, 66, 'http://insgle.huaren58.com/e1874643-4514-4b0b-a3a8-fd7153f59a18', 1, 1, 1, '2019-12-26 13:43:20');
INSERT INTO `pp_files` VALUES (287, 66, 'http://insgle.huaren58.com/2c1b4c71-84d0-4796-b66a-b3cdb2b5ba93', 1, 1, 1, '2019-12-26 13:43:20');
INSERT INTO `pp_files` VALUES (288, 66, 'http://insgle.huaren58.com/1cecea7b-c84a-40e2-8220-d2a8cb74a099', 1, 1, 1, '2019-12-26 13:43:20');
INSERT INTO `pp_files` VALUES (289, 67, 'http://insgle.huaren58.com/4cd09560-6f6d-46c0-a411-148f059e9bd0', 1, 1, 1, '2019-12-26 13:46:07');
INSERT INTO `pp_files` VALUES (290, 67, 'http://insgle.huaren58.com/0644fb2a-e750-4f95-9f4c-b3d99468e4a1', 1, 1, 1, '2019-12-26 13:46:07');
INSERT INTO `pp_files` VALUES (291, 67, 'http://insgle.huaren58.com/cc5cfa2a-186e-410b-98e0-20f8b1425332', 1, 1, 1, '2019-12-26 13:46:07');
INSERT INTO `pp_files` VALUES (292, 68, 'http://insgle.huaren58.com/b8601489-b0b7-4dbf-8c8e-381e62e64889', 1, 1, 1, '2019-12-26 13:50:44');
INSERT INTO `pp_files` VALUES (293, 68, 'http://insgle.huaren58.com/068863ee-49a9-45aa-beeb-e9639374a295', 1, 1, 1, '2019-12-26 13:50:44');
INSERT INTO `pp_files` VALUES (294, 69, 'http://insgle.huaren58.com/68d3a6bd-a07b-4061-921c-ea8f9c951720', 1, 1, 1, '2019-12-26 14:17:45');
INSERT INTO `pp_files` VALUES (295, 69, 'http://insgle.huaren58.com/854522aa-c1fa-4e44-8bd2-2ce61138a616', 1, 1, 1, '2019-12-26 14:17:45');
INSERT INTO `pp_files` VALUES (296, 69, 'http://insgle.huaren58.com/d63fd6b2-96fe-40a3-9ca1-7b801e98f174', 1, 1, 1, '2019-12-26 14:17:45');
INSERT INTO `pp_files` VALUES (297, 69, 'http://insgle.huaren58.com/7b2f4597-6ea8-44f8-9aa0-e39801151169', 1, 1, 1, '2019-12-26 14:17:45');
INSERT INTO `pp_files` VALUES (298, 70, 'http://insgle.huaren58.com/ac8f5666-f141-44ff-ad97-30225c64f3d0', 1, 1, 1, '2019-12-26 14:25:16');
INSERT INTO `pp_files` VALUES (299, 70, 'http://insgle.huaren58.com/77e617ec-71b7-4c06-89fe-c4b1d6065134', 1, 1, 1, '2019-12-26 14:25:16');
INSERT INTO `pp_files` VALUES (300, 70, 'http://insgle.huaren58.com/b9f8701e-5bc7-4bd4-a697-c1861e4ae31d', 1, 1, 1, '2019-12-26 14:25:16');
INSERT INTO `pp_files` VALUES (301, 70, 'http://insgle.huaren58.com/35ce965b-8a53-4a79-bbce-223e4777d45c', 1, 1, 1, '2019-12-26 14:25:16');
INSERT INTO `pp_files` VALUES (302, 71, 'http://insgle.huaren58.com/c7b56b25-e631-4874-af77-6a003dcdcb8d', 1, 1, 1, '2019-12-26 14:25:36');
INSERT INTO `pp_files` VALUES (303, 71, 'http://insgle.huaren58.com/e1b49390-fbe0-481c-a032-e0761b5dfb94', 1, 1, 1, '2019-12-26 14:25:36');
INSERT INTO `pp_files` VALUES (304, 71, 'http://insgle.huaren58.com/bd5c18fc-22de-4732-a2f1-d2957e5756f5', 1, 1, 1, '2019-12-26 14:25:36');
INSERT INTO `pp_files` VALUES (305, 71, 'http://insgle.huaren58.com/3acc819f-9b90-4994-98e2-f264a9b24bfc', 1, 1, 1, '2019-12-26 14:25:36');
INSERT INTO `pp_files` VALUES (306, 72, 'http://insgle.huaren58.com/0105530a-1547-492b-bbc8-c6549ec4953c', 1, 1, 1, '2019-12-26 14:28:25');
INSERT INTO `pp_files` VALUES (307, 72, 'http://insgle.huaren58.com/eef2923f-6d54-46ac-b12c-219ec15bac6e', 1, 1, 1, '2019-12-26 14:28:25');
INSERT INTO `pp_files` VALUES (308, 72, 'http://insgle.huaren58.com/ddfe2913-5f58-42ea-9167-a335a8a677c6', 1, 1, 1, '2019-12-26 14:28:25');
INSERT INTO `pp_files` VALUES (309, 72, 'http://insgle.huaren58.com/ab25db90-1cba-4ab2-9bd4-57055f1830e0', 1, 1, 1, '2019-12-26 14:28:25');
INSERT INTO `pp_files` VALUES (310, 73, 'http://insgle.huaren58.com/410931af-4df9-48c8-9a76-00cbd0a08109', 1, 1, 1, '2019-12-26 14:39:15');
INSERT INTO `pp_files` VALUES (311, 73, 'http://insgle.huaren58.com/bece577a-b05e-4a74-97ad-0eb6f47951cb', 1, 1, 1, '2019-12-26 14:39:15');
INSERT INTO `pp_files` VALUES (312, 73, 'http://insgle.huaren58.com/715246fe-82c3-409a-a80e-2cfd33c17c76', 1, 1, 1, '2019-12-26 14:39:15');
INSERT INTO `pp_files` VALUES (313, 73, 'http://insgle.huaren58.com/e8dcd31f-4b96-477a-8ce5-79e3d4d6f330', 1, 1, 1, '2019-12-26 14:39:15');
INSERT INTO `pp_files` VALUES (314, 73, 'http://insgle.huaren58.com/4c924265-84bf-4f0f-a484-1fbc0f3d26be', 1, 1, 1, '2019-12-26 14:39:15');
INSERT INTO `pp_files` VALUES (315, 74, 'http://insgle.huaren58.com/55a82d84-5902-4bb7-bd20-a61b1346b1ff', 1, 1, 1, '2019-12-26 14:42:35');
INSERT INTO `pp_files` VALUES (316, 74, 'http://insgle.huaren58.com/3ae6f39e-6b56-4eb4-8082-ca03b6d57e34', 1, 1, 1, '2019-12-26 14:42:35');
INSERT INTO `pp_files` VALUES (317, 74, 'http://insgle.huaren58.com/5ceac9c0-2380-4a62-988d-e78d9ec37357', 1, 1, 1, '2019-12-26 14:42:35');
INSERT INTO `pp_files` VALUES (318, 74, 'http://insgle.huaren58.com/d7e70574-3eff-44f1-b8d7-2746917ead3e', 1, 1, 1, '2019-12-26 14:42:35');
INSERT INTO `pp_files` VALUES (319, 75, NULL, 1, 1, 1, '2019-12-26 14:43:42');
INSERT INTO `pp_files` VALUES (321, 77, NULL, 1, 1, 1, '2019-12-26 14:56:27');
INSERT INTO `pp_files` VALUES (322, 78, NULL, 1, 1, 1, '2019-12-26 14:59:11');
INSERT INTO `pp_files` VALUES (323, 79, NULL, 1, 1, 1, '2019-12-26 15:01:01');
INSERT INTO `pp_files` VALUES (324, 80, NULL, 1, 1, 1, '2019-12-26 15:02:18');
INSERT INTO `pp_files` VALUES (325, 82, 'http://insgle.huaren58.com/0749ca98-b469-4175-9899-02bc7676db39', 1, 1, 1, '2019-12-26 15:13:08');
INSERT INTO `pp_files` VALUES (326, 82, 'http://insgle.huaren58.com/c86e98b4-a7f7-405a-ac35-8812f059b771', 1, 1, 1, '2019-12-26 15:13:08');
INSERT INTO `pp_files` VALUES (327, 82, 'http://insgle.huaren58.com/755de5b6-f607-4cd5-b535-87f50e08c2ea', 1, 1, 1, '2019-12-26 15:13:08');
INSERT INTO `pp_files` VALUES (328, 82, 'http://insgle.huaren58.com/76b7237c-bbb5-4570-a95c-f346f2b670a1', 1, 1, 1, '2019-12-26 15:13:08');
INSERT INTO `pp_files` VALUES (329, 82, 'http://insgle.huaren58.com/de65dea6-f15f-42ec-b71a-4990df71c352', 1, 1, 1, '2019-12-26 15:13:08');
INSERT INTO `pp_files` VALUES (330, 82, 'http://insgle.huaren58.com/73067742-50b6-4c61-b81c-faa832ab762c', 1, 1, 1, '2019-12-26 15:13:08');
INSERT INTO `pp_files` VALUES (331, 83, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-26 15:15:04');
INSERT INTO `pp_files` VALUES (332, 83, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-26 15:15:04');
INSERT INTO `pp_files` VALUES (333, 84, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-26 15:15:22');
INSERT INTO `pp_files` VALUES (334, 84, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-26 15:15:22');
INSERT INTO `pp_files` VALUES (335, 85, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-26 15:16:15');
INSERT INTO `pp_files` VALUES (336, 85, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-26 15:16:15');
INSERT INTO `pp_files` VALUES (337, 86, 'http://insgle.huaren58.com/9a9b720e-527a-4c12-8979-6fe8e149ea6b', 1, 1, 1, '2019-12-26 15:19:00');
INSERT INTO `pp_files` VALUES (338, 86, 'http://insgle.huaren58.com/0062136f-cffe-4b86-ac22-53d747fb8645', 1, 1, 1, '2019-12-26 15:19:00');
INSERT INTO `pp_files` VALUES (339, 86, 'http://insgle.huaren58.com/38a7741c-1308-4950-8371-196508acc4c9', 1, 1, 1, '2019-12-26 15:19:00');
INSERT INTO `pp_files` VALUES (340, 86, 'http://insgle.huaren58.com/89340d4d-1675-4cd5-aea1-3180f10a680f', 1, 1, 1, '2019-12-26 15:19:00');
INSERT INTO `pp_files` VALUES (341, 86, 'http://insgle.huaren58.com/43b2a8c3-7972-4192-8829-e6409bd92144', 1, 1, 1, '2019-12-26 15:19:00');
INSERT INTO `pp_files` VALUES (342, 86, 'http://insgle.huaren58.com/9db09df7-adfc-407a-9a2e-8008a1af31a8', 1, 1, 1, '2019-12-26 15:19:00');
INSERT INTO `pp_files` VALUES (343, 86, 'http://insgle.huaren58.com/0e002d59-7041-4fe1-98a9-d8f3ce14231c', 1, 1, 1, '2019-12-26 15:19:00');
INSERT INTO `pp_files` VALUES (344, 87, 'http://insgle.huaren58.com/fb5d2707-ed3a-49b0-ac85-9a1259644333', 1, 1, 1, '2019-12-26 15:39:02');
INSERT INTO `pp_files` VALUES (345, 88, 'http://insgle.huaren58.com/295f83ff-d33e-4539-9203-77d258167ccc', 1, 1, 1, '2019-12-26 15:45:06');
INSERT INTO `pp_files` VALUES (346, 89, 'http://insgle.huaren58.com/170a3550-6d94-4897-b089-4c2deacf0d05', 1, 1, 1, '2019-12-26 15:45:16');
INSERT INTO `pp_files` VALUES (347, 89, 'http://insgle.huaren58.com/40991ea0-9b9b-4583-bf14-404d3c4e2b4e', 1, 1, 1, '2019-12-26 15:45:16');
INSERT INTO `pp_files` VALUES (348, 90, 'http://insgle.huaren58.com/8315d058-04ac-4c40-b2b5-780bf93e15ec', 1, 1, 1, '2019-12-26 15:45:25');
INSERT INTO `pp_files` VALUES (349, 90, 'http://insgle.huaren58.com/e6a022ae-674b-486f-ae05-70ec5931a9a1', 1, 1, 1, '2019-12-26 15:45:25');
INSERT INTO `pp_files` VALUES (350, 90, 'http://insgle.huaren58.com/d34a90ee-2129-40c9-a3cc-2942e0185cf8', 1, 1, 1, '2019-12-26 15:45:25');
INSERT INTO `pp_files` VALUES (351, 91, 'http://insgle.huaren58.com/a2978871-e749-42b1-a5a6-ce8ab96edfc5', 1, 1, 1, '2019-12-26 15:45:42');
INSERT INTO `pp_files` VALUES (352, 91, 'http://insgle.huaren58.com/2f45288a-b667-45d4-a515-3ab7494c9a65', 1, 1, 1, '2019-12-26 15:45:42');
INSERT INTO `pp_files` VALUES (353, 91, 'http://insgle.huaren58.com/20b6b302-b18d-4a2e-b5d3-c29d9e1451f6', 1, 1, 1, '2019-12-26 15:45:42');
INSERT INTO `pp_files` VALUES (354, 91, 'http://insgle.huaren58.com/2098db9a-ad39-4013-b6ac-4d69b6ca13e6', 1, 1, 1, '2019-12-26 15:45:42');
INSERT INTO `pp_files` VALUES (355, 92, 'http://insgle.huaren58.com/f3716e37-e94c-4fd7-9f75-5130dcce6cb9', 1, 1, 1, '2019-12-26 15:45:54');
INSERT INTO `pp_files` VALUES (356, 92, 'http://insgle.huaren58.com/86a78e20-d5e6-4c58-99ce-308936927a8a', 1, 1, 1, '2019-12-26 15:45:54');
INSERT INTO `pp_files` VALUES (357, 92, 'http://insgle.huaren58.com/4857f0b0-35ac-40c5-a902-2e359794245d', 1, 1, 1, '2019-12-26 15:45:54');
INSERT INTO `pp_files` VALUES (358, 92, 'http://insgle.huaren58.com/28a0af09-08ec-4f9a-bf52-0981736646ce', 1, 1, 1, '2019-12-26 15:45:54');
INSERT INTO `pp_files` VALUES (359, 92, 'http://insgle.huaren58.com/428a7fc6-cdc8-4d3f-a255-093233f4c02d', 1, 1, 1, '2019-12-26 15:45:54');
INSERT INTO `pp_files` VALUES (360, 93, 'http://insgle.huaren58.com/0ce21f8d-4707-4d9f-b459-777d50691c4c', 1, 1, 1, '2019-12-26 15:46:06');
INSERT INTO `pp_files` VALUES (361, 93, 'http://insgle.huaren58.com/c1b68e32-3245-4142-b2dd-b899478b12b0', 1, 1, 1, '2019-12-26 15:46:06');
INSERT INTO `pp_files` VALUES (362, 93, 'http://insgle.huaren58.com/faab60d5-3c47-4d9e-8a26-fb1f65199bec', 1, 1, 1, '2019-12-26 15:46:06');
INSERT INTO `pp_files` VALUES (363, 93, 'http://insgle.huaren58.com/e6a100a0-1e21-4eea-b64a-4cb7f92a09ae', 1, 1, 1, '2019-12-26 15:46:06');
INSERT INTO `pp_files` VALUES (364, 93, 'http://insgle.huaren58.com/b4327fa9-5707-47f3-8f75-6a7a3d759252', 1, 1, 1, '2019-12-26 15:46:06');
INSERT INTO `pp_files` VALUES (365, 93, 'http://insgle.huaren58.com/31400a8d-67b8-42f6-bf61-38a7da488d13', 1, 1, 1, '2019-12-26 15:46:06');
INSERT INTO `pp_files` VALUES (366, 94, 'http://insgle.huaren58.com/66463101-b744-43a0-8304-ea6ce93ad5a5', 1, 1, 1, '2019-12-26 15:47:14');
INSERT INTO `pp_files` VALUES (367, 94, 'http://insgle.huaren58.com/03477920-762d-49ac-b5f6-63834f898f2f', 1, 1, 1, '2019-12-26 15:47:14');
INSERT INTO `pp_files` VALUES (368, 95, 'http://insgle.huaren58.com/baa68acd-084b-49ff-a642-33e2a99c9a14', 1, 1, 1, '2019-12-26 15:53:59');
INSERT INTO `pp_files` VALUES (369, 95, 'http://insgle.huaren58.com/cb8a68f7-0f39-42e3-ad7e-8f25b049e778', 1, 1, 1, '2019-12-26 15:53:59');
INSERT INTO `pp_files` VALUES (370, 96, 'http://insgle.huaren58.com/2831351f-bd34-4563-aa78-0edc788399da', 1, 1, 1, '2019-12-26 16:02:26');
INSERT INTO `pp_files` VALUES (371, 96, 'http://insgle.huaren58.com/932cc6b7-0216-4f94-84b3-3da3f5283116', 1, 1, 1, '2019-12-26 16:02:26');
INSERT INTO `pp_files` VALUES (372, 96, 'http://insgle.huaren58.com/f7a68fc0-285d-4dcf-b13d-3afa7174d8d9', 1, 1, 1, '2019-12-26 16:02:26');
INSERT INTO `pp_files` VALUES (373, 97, 'http://insgle.huaren58.com/0309d733-f531-4077-befa-705f44cd601f', 1, 1, 1, '2019-12-26 16:03:07');
INSERT INTO `pp_files` VALUES (374, 97, 'http://insgle.huaren58.com/30b611b5-800f-481b-abd3-60204c3f3b99', 1, 1, 1, '2019-12-26 16:03:07');
INSERT INTO `pp_files` VALUES (375, 97, 'http://insgle.huaren58.com/aeccca56-bcbe-4390-8c2a-d22e379be62b', 1, 1, 1, '2019-12-26 16:03:07');
INSERT INTO `pp_files` VALUES (376, 99, 'http://insgle.huaren58.com/98e88f91-feed-4e34-a911-900bb06c7129', 1, 1, 1, '2019-12-26 16:04:53');
INSERT INTO `pp_files` VALUES (377, 100, 'http://insgle.huaren58.com/aad66d24-41d8-4c38-acde-564cea5a2c92', 1, 1, 1, '2019-12-26 16:05:03');
INSERT INTO `pp_files` VALUES (378, 100, 'http://insgle.huaren58.com/91ec4b85-b2b6-4637-ab35-cdf3904b3983', 1, 1, 1, '2019-12-26 16:05:03');
INSERT INTO `pp_files` VALUES (379, 101, 'http://insgle.huaren58.com/5f83e476-f8a7-4e51-ac5f-cd5aaf137dc2', 1, 1, 1, '2019-12-26 16:05:23');
INSERT INTO `pp_files` VALUES (380, 101, 'http://insgle.huaren58.com/070b9cdc-7a5e-4b76-a788-075d427179b9', 1, 1, 1, '2019-12-26 16:05:23');
INSERT INTO `pp_files` VALUES (381, 102, 'http://insgle.huaren58.com/95d627dc-b18e-49b8-a820-cd83c9ab6478', 1, 1, 1, '2019-12-26 16:05:50');
INSERT INTO `pp_files` VALUES (382, 102, 'http://insgle.huaren58.com/1f6838d0-4398-405b-ae3d-5442d6bf43ef', 1, 1, 1, '2019-12-26 16:05:50');
INSERT INTO `pp_files` VALUES (383, 102, 'http://insgle.huaren58.com/053fa62f-bff4-4d03-9a67-c095c5b2cebd', 1, 1, 1, '2019-12-26 16:05:50');
INSERT INTO `pp_files` VALUES (384, 102, 'http://insgle.huaren58.com/346f110d-6637-4f63-94b2-3b2db96045be', 1, 1, 1, '2019-12-26 16:05:50');
INSERT INTO `pp_files` VALUES (385, 102, 'http://insgle.huaren58.com/ef4c8be2-f423-4fee-9e43-fe0468e9dd53', 1, 1, 1, '2019-12-26 16:05:50');
INSERT INTO `pp_files` VALUES (386, 102, 'http://insgle.huaren58.com/ec571fe2-24fc-4046-9c24-3f10b44e36e5', 1, 1, 1, '2019-12-26 16:05:50');
INSERT INTO `pp_files` VALUES (387, 102, 'http://insgle.huaren58.com/09e01859-e17f-40be-aa28-fbf639f036d6', 1, 1, 1, '2019-12-26 16:05:50');
INSERT INTO `pp_files` VALUES (388, 102, 'http://insgle.huaren58.com/6fb6708f-a7c9-46e1-9117-75a1fbe8c5a8', 1, 1, 1, '2019-12-26 16:05:50');
INSERT INTO `pp_files` VALUES (389, 102, 'http://insgle.huaren58.com/1e60e93c-9d53-42de-9b70-de6a7a79db4e', 1, 1, 1, '2019-12-26 16:05:50');
INSERT INTO `pp_files` VALUES (390, 103, 'http://insgle.huaren58.com/a72f8d2b-d059-418e-bea5-762afdee8493', 1, 1, 1, '2019-12-26 16:06:15');
INSERT INTO `pp_files` VALUES (391, 104, 'http://insgle.huaren58.com/6fbcc1bc-4c76-47d0-88fb-2ab4a3fb0d22', 1, 1, 1, '2019-12-26 16:06:33');
INSERT INTO `pp_files` VALUES (392, 105, 'http://insgle.huaren58.com/74a897b6-c02f-45ca-a47c-721d47f1d183', 1, 1, 1, '2019-12-26 16:06:45');
INSERT INTO `pp_files` VALUES (393, 105, 'http://insgle.huaren58.com/07cf5d68-432f-43dd-b023-ac7bb296adc1', 1, 1, 1, '2019-12-26 16:06:45');
INSERT INTO `pp_files` VALUES (394, 106, 'http://insgle.huaren58.com/50119da0-c408-4beb-a91d-a4732bdb418a', 1, 1, 1, '2019-12-26 16:06:58');
INSERT INTO `pp_files` VALUES (395, 106, 'http://insgle.huaren58.com/c59568c3-26ee-4fe4-8a38-1fbdfdc0aefc', 1, 1, 1, '2019-12-26 16:06:58');
INSERT INTO `pp_files` VALUES (396, 106, 'http://insgle.huaren58.com/458ec8b7-74cb-4eed-bdcf-a1e445625577', 1, 1, 1, '2019-12-26 16:06:58');
INSERT INTO `pp_files` VALUES (397, 107, 'http://insgle.huaren58.com/fc0993bd-da88-4955-b8e2-d72aa2a8e119', 1, 1, 1, '2019-12-26 16:07:11');
INSERT INTO `pp_files` VALUES (398, 107, 'http://insgle.huaren58.com/307a83f8-f7e9-4b3f-ae52-492ff043d07e', 1, 1, 1, '2019-12-26 16:07:11');
INSERT INTO `pp_files` VALUES (399, 107, 'http://insgle.huaren58.com/3d1a342e-48af-4fd6-8eb8-dd3366ca72ba', 1, 1, 1, '2019-12-26 16:07:11');
INSERT INTO `pp_files` VALUES (400, 107, 'http://insgle.huaren58.com/00079089-7a7f-47b4-a302-0da9c0b0d6ec', 1, 1, 1, '2019-12-26 16:07:11');
INSERT INTO `pp_files` VALUES (401, 108, 'http://insgle.huaren58.com/39ad7e24-8d40-41d7-95e2-29a0de4678c5', 1, 1, 1, '2019-12-26 16:10:01');
INSERT INTO `pp_files` VALUES (402, 109, 'http://insgle.huaren58.com/944935be-1891-4cd6-957b-69880b5bd09f', 1, 1, 1, '2019-12-26 16:10:15');
INSERT INTO `pp_files` VALUES (403, 109, 'http://insgle.huaren58.com/f617d315-7db6-4eb2-8726-5cdcbeec9972', 1, 1, 1, '2019-12-26 16:10:15');
INSERT INTO `pp_files` VALUES (404, 110, 'http://insgle.huaren58.com/3690356e-56f8-482f-ab97-b8e80ba39c65', 1, 1, 1, '2019-12-26 16:10:29');
INSERT INTO `pp_files` VALUES (405, 110, 'http://insgle.huaren58.com/22fc9655-f2ac-40f8-90d0-d73bd6ead9f4', 1, 1, 1, '2019-12-26 16:10:29');
INSERT INTO `pp_files` VALUES (406, 110, 'http://insgle.huaren58.com/576b6fd7-478d-4b72-9c4a-f6b3d9951cde', 1, 1, 1, '2019-12-26 16:10:29');
INSERT INTO `pp_files` VALUES (407, 111, 'http://insgle.huaren58.com/6761234c-ac27-462a-8fc5-936227720996', 1, 1, 1, '2019-12-26 16:10:42');
INSERT INTO `pp_files` VALUES (408, 111, 'http://insgle.huaren58.com/a59a4838-1098-48e8-830f-afb6c3479fdb', 1, 1, 1, '2019-12-26 16:10:42');
INSERT INTO `pp_files` VALUES (409, 111, 'http://insgle.huaren58.com/5f3470d5-d3c2-4dae-a596-519ae552ba5f', 1, 1, 1, '2019-12-26 16:10:42');
INSERT INTO `pp_files` VALUES (410, 111, 'http://insgle.huaren58.com/863231f2-2569-483f-ba94-1facd7876f17', 1, 1, 1, '2019-12-26 16:10:42');
INSERT INTO `pp_files` VALUES (411, 112, 'http://insgle.huaren58.com/c7e1fa88-7998-412d-a5d8-6d419bc71657', 1, 1, 1, '2019-12-26 16:11:34');
INSERT INTO `pp_files` VALUES (412, 112, 'http://insgle.huaren58.com/e96c3ce3-3b5c-47fe-a1c2-2b70b7376201', 1, 1, 1, '2019-12-26 16:11:34');
INSERT INTO `pp_files` VALUES (413, 112, 'http://insgle.huaren58.com/fc397ad4-38a9-4b4a-bc8c-325c7c94fc2a', 1, 1, 1, '2019-12-26 16:11:34');
INSERT INTO `pp_files` VALUES (414, 112, 'http://insgle.huaren58.com/65f8315c-f024-4759-8f68-ba1adb3bc33a', 1, 1, 1, '2019-12-26 16:11:34');
INSERT INTO `pp_files` VALUES (415, 112, 'http://insgle.huaren58.com/39d2f04c-4fe4-4163-96b7-cf3ed61bf253', 1, 1, 1, '2019-12-26 16:11:34');
INSERT INTO `pp_files` VALUES (416, 112, 'http://insgle.huaren58.com/eccceefb-960f-4c1a-a82d-d77f914ecdf6', 1, 1, 1, '2019-12-26 16:11:34');
INSERT INTO `pp_files` VALUES (417, 112, 'http://insgle.huaren58.com/20df6b51-4994-408a-9c19-782335999dde', 1, 1, 1, '2019-12-26 16:11:34');
INSERT INTO `pp_files` VALUES (418, 113, 'http://insgle.huaren58.com/034dccd6-7c8f-48fa-9fc5-f8f88b669860', 1, 1, 1, '2019-12-26 16:12:59');
INSERT INTO `pp_files` VALUES (419, 113, 'http://insgle.huaren58.com/35012da3-8ad7-4f3c-b633-22ff8a5bfdf1', 1, 1, 1, '2019-12-26 16:12:59');
INSERT INTO `pp_files` VALUES (420, 113, 'http://insgle.huaren58.com/da79a042-e1ad-471f-9cc1-e58cd7cc2f13', 1, 1, 1, '2019-12-26 16:12:59');
INSERT INTO `pp_files` VALUES (421, 113, 'http://insgle.huaren58.com/ab16407e-a621-49e6-bf3c-cb589579949c', 1, 1, 1, '2019-12-26 16:12:59');
INSERT INTO `pp_files` VALUES (422, 113, 'http://insgle.huaren58.com/fe244f95-b7a0-4592-9de0-1a0ab6e1f009', 1, 1, 1, '2019-12-26 16:12:59');
INSERT INTO `pp_files` VALUES (423, 113, 'http://insgle.huaren58.com/c7660861-185c-4929-80c7-fbcb691182aa', 1, 1, 1, '2019-12-26 16:12:59');
INSERT INTO `pp_files` VALUES (424, 114, 'http://insgle.huaren58.com/37094ccc-d8a8-4c73-9fe6-4faa866777a6', 1, 1, 1, '2019-12-26 16:14:10');
INSERT INTO `pp_files` VALUES (425, 114, 'http://insgle.huaren58.com/79fea03c-5ebb-4825-a316-bbea3a12b934', 1, 1, 1, '2019-12-26 16:14:10');
INSERT INTO `pp_files` VALUES (426, 114, 'http://insgle.huaren58.com/0792847f-adf8-4cf5-a469-b0c9dbc2753a', 1, 1, 1, '2019-12-26 16:14:10');
INSERT INTO `pp_files` VALUES (427, 114, 'http://insgle.huaren58.com/344e5aed-8e5d-4880-ad27-c2c935e88840', 1, 1, 1, '2019-12-26 16:14:10');
INSERT INTO `pp_files` VALUES (428, 114, 'http://insgle.huaren58.com/3f828c61-5254-4889-853b-a5c31427a0fd', 1, 1, 1, '2019-12-26 16:14:10');
INSERT INTO `pp_files` VALUES (429, 114, 'http://insgle.huaren58.com/1146f883-4742-4054-85a0-9921538e6159', 1, 1, 1, '2019-12-26 16:14:10');
INSERT INTO `pp_files` VALUES (430, 115, 'http://insgle.huaren58.com/061b0b0b-8a1f-47ab-8f79-cf9711f94d5f', 1, 1, 1, '2019-12-26 16:15:34');
INSERT INTO `pp_files` VALUES (431, 115, 'http://insgle.huaren58.com/1cde0156-a222-4903-83a9-98915b54f4f1', 1, 1, 1, '2019-12-26 16:15:34');
INSERT INTO `pp_files` VALUES (432, 115, 'http://insgle.huaren58.com/9cb29ffd-fe37-4f67-8176-f270fce2f83f', 1, 1, 1, '2019-12-26 16:15:34');
INSERT INTO `pp_files` VALUES (433, 115, 'http://insgle.huaren58.com/5ea95653-26de-45f4-922a-2574582d1c1f', 1, 1, 1, '2019-12-26 16:15:34');
INSERT INTO `pp_files` VALUES (434, 115, 'http://insgle.huaren58.com/86b54711-fff9-4be0-a368-eac4b1990c62', 1, 1, 1, '2019-12-26 16:15:34');
INSERT INTO `pp_files` VALUES (435, 115, 'http://insgle.huaren58.com/1260b2aa-5b5a-4a11-b235-e49e5fd28333', 1, 1, 1, '2019-12-26 16:15:34');
INSERT INTO `pp_files` VALUES (436, 116, 'http://insgle.huaren58.com/d013acc8-5272-48f7-8034-4189bf254a01', 1, 1, 1, '2019-12-26 16:16:47');
INSERT INTO `pp_files` VALUES (437, 116, 'http://insgle.huaren58.com/0e664af7-03ba-450e-9d75-b0001f071216', 1, 1, 1, '2019-12-26 16:16:47');
INSERT INTO `pp_files` VALUES (438, 116, 'http://insgle.huaren58.com/efc467fa-8498-4764-9f14-7cd02f12ef77', 1, 1, 1, '2019-12-26 16:16:47');
INSERT INTO `pp_files` VALUES (439, 116, 'http://insgle.huaren58.com/47467538-a374-4b92-ad48-f9ba508b194e', 1, 1, 1, '2019-12-26 16:16:47');
INSERT INTO `pp_files` VALUES (440, 116, 'http://insgle.huaren58.com/4f027f92-d613-4088-9254-13f66abbfa81', 1, 1, 1, '2019-12-26 16:16:47');
INSERT INTO `pp_files` VALUES (441, 117, 'http://insgle.huaren58.com/a75d02c0-f97d-4002-ada1-7ddb374bba40', 1, 1, 1, '2019-12-26 16:18:25');
INSERT INTO `pp_files` VALUES (442, 117, 'http://insgle.huaren58.com/2f3235e9-52b3-4f18-8316-b8ee2a0c90b9', 1, 1, 1, '2019-12-26 16:18:25');
INSERT INTO `pp_files` VALUES (443, 117, 'http://insgle.huaren58.com/c6709ade-3304-42e9-8608-8c833b9b925a', 1, 1, 1, '2019-12-26 16:18:25');
INSERT INTO `pp_files` VALUES (444, 117, 'http://insgle.huaren58.com/34cd724e-228a-414b-8237-024916cbaebe', 1, 1, 1, '2019-12-26 16:18:25');
INSERT INTO `pp_files` VALUES (445, 117, 'http://insgle.huaren58.com/0d58a530-de5f-461f-8972-54b7767637d5', 1, 1, 1, '2019-12-26 16:18:25');
INSERT INTO `pp_files` VALUES (446, 118, 'http://insgle.huaren58.com/be97d354-1dd4-4202-a29d-2096468e8ccf', 1, 1, 1, '2019-12-26 16:19:23');
INSERT INTO `pp_files` VALUES (447, 118, 'http://insgle.huaren58.com/665b22fc-ef37-48eb-bbf4-bc9c9502fdd8', 1, 1, 1, '2019-12-26 16:19:23');
INSERT INTO `pp_files` VALUES (448, 118, 'http://insgle.huaren58.com/5dadf862-e9c8-47aa-a503-5b430fbd1f45', 1, 1, 1, '2019-12-26 16:19:23');
INSERT INTO `pp_files` VALUES (449, 118, 'http://insgle.huaren58.com/ec8c4018-b991-4f2b-a8c6-8b65fb61c9c8', 1, 1, 1, '2019-12-26 16:19:23');
INSERT INTO `pp_files` VALUES (450, 118, 'http://insgle.huaren58.com/b58512ae-dfcb-4fa9-8220-626d61bbd592', 1, 1, 1, '2019-12-26 16:19:23');
INSERT INTO `pp_files` VALUES (451, 118, 'http://insgle.huaren58.com/c47e421d-911e-4739-8784-2d0523bce0de', 1, 1, 1, '2019-12-26 16:19:23');
INSERT INTO `pp_files` VALUES (452, 118, 'http://insgle.huaren58.com/dc51ffc8-cc20-4052-8dd6-679e3d7a798a', 1, 1, 1, '2019-12-26 16:19:23');
INSERT INTO `pp_files` VALUES (453, 119, 'http://insgle.huaren58.com/2b905a00-3660-4765-915b-007e5794ff4e', 1, 1, 1, '2019-12-26 16:19:44');
INSERT INTO `pp_files` VALUES (454, 119, 'http://insgle.huaren58.com/157cc2d4-e492-492a-9aba-3d1ba3bbedae', 1, 1, 1, '2019-12-26 16:19:44');
INSERT INTO `pp_files` VALUES (455, 119, 'http://insgle.huaren58.com/ce24e188-0e29-456b-80ec-fe0da868bdfa', 1, 1, 1, '2019-12-26 16:19:44');
INSERT INTO `pp_files` VALUES (456, 119, 'http://insgle.huaren58.com/92a36562-acd7-4639-9389-75d9f96dee54', 1, 1, 1, '2019-12-26 16:19:44');
INSERT INTO `pp_files` VALUES (457, 119, 'http://insgle.huaren58.com/a70d1c54-5b4c-4768-a03c-5b2cf29d3582', 1, 1, 1, '2019-12-26 16:19:44');
INSERT INTO `pp_files` VALUES (458, 119, 'http://insgle.huaren58.com/bac3ab34-41c0-41d7-87f2-66e9f306a5c0', 1, 1, 1, '2019-12-26 16:19:44');
INSERT INTO `pp_files` VALUES (459, 120, 'http://insgle.huaren58.com/9e1fbeb8-90d2-4646-882a-c62671d5057a', 1, 1, 1, '2019-12-26 16:20:14');
INSERT INTO `pp_files` VALUES (460, 120, 'http://insgle.huaren58.com/3258c80d-2a56-401a-b3ae-16bc20c9e880', 1, 1, 1, '2019-12-26 16:20:14');
INSERT INTO `pp_files` VALUES (461, 120, 'http://insgle.huaren58.com/954dd41f-2cbd-43ef-b345-402ba760b1ea', 1, 1, 1, '2019-12-26 16:20:14');
INSERT INTO `pp_files` VALUES (462, 120, 'http://insgle.huaren58.com/ca9d6a27-9858-4fb0-ace5-f0ffab50bcb4', 1, 1, 1, '2019-12-26 16:20:14');
INSERT INTO `pp_files` VALUES (463, 120, 'http://insgle.huaren58.com/af8ae7d1-bcd6-49f0-a904-595359f2e2cb', 1, 1, 1, '2019-12-26 16:20:14');
INSERT INTO `pp_files` VALUES (464, 120, 'http://insgle.huaren58.com/e312d708-bebf-4506-8072-b4386ac95188', 1, 1, 1, '2019-12-26 16:20:14');
INSERT INTO `pp_files` VALUES (465, 121, 'http://insgle.huaren58.com/c3c0a398-2e37-447f-b16a-5588f32183fb', 1, 1, 1, '2019-12-26 16:20:29');
INSERT INTO `pp_files` VALUES (466, 122, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-26 16:20:44');
INSERT INTO `pp_files` VALUES (467, 122, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-26 16:20:44');
INSERT INTO `pp_files` VALUES (468, 123, 'http://insgle.huaren58.com/51bf52d8-5201-4db8-a220-64179afa11b1', 1, 1, 1, '2019-12-26 16:20:48');
INSERT INTO `pp_files` VALUES (469, 124, 'http://insgle.huaren58.com/879e2076-6e54-428a-9c19-93aa0f59d641', 1, 1, 1, '2019-12-26 16:20:56');
INSERT INTO `pp_files` VALUES (470, 124, 'http://insgle.huaren58.com/dce7369e-5ac2-4356-aaa3-5edb12e817d7', 1, 1, 1, '2019-12-26 16:20:56');
INSERT INTO `pp_files` VALUES (471, 125, 'http://insgle.huaren58.com/061e8736-fcd5-42e9-bd26-511a75f270dc', 1, 1, 1, '2019-12-26 16:21:05');
INSERT INTO `pp_files` VALUES (472, 125, 'http://insgle.huaren58.com/0821781a-304a-4e2a-8651-a67ceedc5f20', 1, 1, 1, '2019-12-26 16:21:05');
INSERT INTO `pp_files` VALUES (473, 125, 'http://insgle.huaren58.com/ea4d2400-92f4-4e1e-b341-247097770044', 1, 1, 1, '2019-12-26 16:21:05');
INSERT INTO `pp_files` VALUES (474, 126, 'http://insgle.huaren58.com/c6684e94-ae4c-40a0-b1ca-7da53e8999d8', 1, 1, 1, '2019-12-26 16:21:22');
INSERT INTO `pp_files` VALUES (475, 126, 'http://insgle.huaren58.com/cbc2b58e-f9d0-4dbc-93ff-05588e0d324f', 1, 1, 1, '2019-12-26 16:21:22');
INSERT INTO `pp_files` VALUES (476, 126, 'http://insgle.huaren58.com/7e798d46-8464-4d79-838e-6c83fd03f5ac', 1, 1, 1, '2019-12-26 16:21:22');
INSERT INTO `pp_files` VALUES (477, 127, 'http://insgle.huaren58.com/5a0f1f45-b366-4bc8-a903-55112769e75f', 1, 1, 1, '2019-12-26 16:21:37');
INSERT INTO `pp_files` VALUES (478, 127, 'http://insgle.huaren58.com/24f6708f-0ea9-46f7-bff1-0424a75950d5', 1, 1, 1, '2019-12-26 16:21:37');
INSERT INTO `pp_files` VALUES (479, 127, 'http://insgle.huaren58.com/bca1604a-5b9c-4b5c-8e2d-81ae5b1c73dd', 1, 1, 1, '2019-12-26 16:21:37');
INSERT INTO `pp_files` VALUES (480, 127, 'http://insgle.huaren58.com/f3827c50-b50f-487d-9100-23005fdfb780', 1, 1, 1, '2019-12-26 16:21:37');
INSERT INTO `pp_files` VALUES (481, 128, 'http://insgle.huaren58.com/376aa46e-b347-4403-8e16-3781aa82b658', 1, 1, 1, '2019-12-26 16:22:39');
INSERT INTO `pp_files` VALUES (482, 128, 'http://insgle.huaren58.com/7779e4fb-a709-42aa-b464-d951a7e6d272', 1, 1, 1, '2019-12-26 16:22:39');
INSERT INTO `pp_files` VALUES (483, 128, 'http://insgle.huaren58.com/1cad64f8-67a7-4fdd-aeb2-48fab65325ea', 1, 1, 1, '2019-12-26 16:22:39');
INSERT INTO `pp_files` VALUES (484, 128, 'http://insgle.huaren58.com/c26268f4-11f2-472e-857d-93f78478721d', 1, 1, 1, '2019-12-26 16:22:39');
INSERT INTO `pp_files` VALUES (485, 128, 'http://insgle.huaren58.com/bcea2ce0-b823-4116-949a-ec5e10ff289a', 1, 1, 1, '2019-12-26 16:22:39');
INSERT INTO `pp_files` VALUES (486, 128, 'http://insgle.huaren58.com/296e2502-c937-428b-8f3c-f6ca5edee999', 1, 1, 1, '2019-12-26 16:22:39');
INSERT INTO `pp_files` VALUES (487, 128, 'http://insgle.huaren58.com/6468ed34-bb2f-435c-948b-07f1ef0e1c7b', 1, 1, 1, '2019-12-26 16:22:39');
INSERT INTO `pp_files` VALUES (488, 129, 'http://insgle.huaren58.com/4c4865fa-4c4f-4c10-bb74-0f61a55c2694', 1, 1, 1, '2019-12-26 16:22:58');
INSERT INTO `pp_files` VALUES (489, 129, 'http://insgle.huaren58.com/72d1679e-c4c5-4eed-9e59-9fb3df0a9da9', 1, 1, 1, '2019-12-26 16:22:58');
INSERT INTO `pp_files` VALUES (490, 129, 'http://insgle.huaren58.com/38283dbc-d9b0-4202-8437-3178c05b1bc2', 1, 1, 1, '2019-12-26 16:22:58');
INSERT INTO `pp_files` VALUES (491, 129, 'http://insgle.huaren58.com/45488fe3-b3a8-47d0-929a-43b3d28f0ca4', 1, 1, 1, '2019-12-26 16:22:58');
INSERT INTO `pp_files` VALUES (492, 129, 'http://insgle.huaren58.com/2abb7c5c-146f-4480-b07c-c69a6a9f1156', 1, 1, 1, '2019-12-26 16:22:58');
INSERT INTO `pp_files` VALUES (493, 129, 'http://insgle.huaren58.com/12854930-fe60-4793-b86d-ece862363cbc', 1, 1, 1, '2019-12-26 16:22:58');
INSERT INTO `pp_files` VALUES (494, 129, 'http://insgle.huaren58.com/2131fbe1-0950-4fbb-b1b2-85a4b6a948f6', 1, 1, 1, '2019-12-26 16:22:58');
INSERT INTO `pp_files` VALUES (495, 130, 'http://insgle.huaren58.com/353e2298-83fd-484d-bf6e-ac9c5640f14e', 1, 1, 1, '2019-12-26 16:23:37');
INSERT INTO `pp_files` VALUES (496, 130, 'http://insgle.huaren58.com/f8b50e26-4234-4435-b2fb-367baf48138c', 1, 1, 1, '2019-12-26 16:23:37');
INSERT INTO `pp_files` VALUES (497, 130, 'http://insgle.huaren58.com/f93d12e6-e14b-4eaa-be4c-04989546200f', 1, 1, 1, '2019-12-26 16:23:37');
INSERT INTO `pp_files` VALUES (498, 130, 'http://insgle.huaren58.com/28e06d24-90bf-46ba-8833-4b07fa8d508f', 1, 1, 1, '2019-12-26 16:23:37');
INSERT INTO `pp_files` VALUES (499, 130, 'http://insgle.huaren58.com/7542031b-7db9-409a-a360-9a41e0ba7b6d', 1, 1, 1, '2019-12-26 16:23:37');
INSERT INTO `pp_files` VALUES (500, 130, 'http://insgle.huaren58.com/49a040d8-890b-4c87-9c00-311b5363d324', 1, 1, 1, '2019-12-26 16:23:37');
INSERT INTO `pp_files` VALUES (501, 131, 'http://insgle.huaren58.com/fe0e0a9e-568e-4218-9448-2e2cdd8f7fcb', 1, 1, 1, '2019-12-26 16:24:49');
INSERT INTO `pp_files` VALUES (502, 131, 'http://insgle.huaren58.com/3ae21366-f297-457d-9217-b4fe2b37fba9', 1, 1, 1, '2019-12-26 16:24:49');
INSERT INTO `pp_files` VALUES (503, 131, 'http://insgle.huaren58.com/af0264e3-40f7-43e7-92ae-218258690037', 1, 1, 1, '2019-12-26 16:24:49');
INSERT INTO `pp_files` VALUES (504, 131, 'http://insgle.huaren58.com/d78e1e2a-645b-4275-b73a-16f8f15d7b76', 1, 1, 1, '2019-12-26 16:24:49');
INSERT INTO `pp_files` VALUES (505, 131, 'http://insgle.huaren58.com/6918e36b-13de-46ff-9151-afa9dd36c97a', 1, 1, 1, '2019-12-26 16:24:49');
INSERT INTO `pp_files` VALUES (506, 131, 'http://insgle.huaren58.com/32ef221c-a09c-467e-8a32-db3345e5db7d', 1, 1, 1, '2019-12-26 16:24:49');
INSERT INTO `pp_files` VALUES (507, 132, 'http://insgle.huaren58.com/52c9c0eb-17a9-4343-a67d-0ed4c8de5a6b', 1, 1, 1, '2019-12-26 16:25:07');
INSERT INTO `pp_files` VALUES (508, 132, 'http://insgle.huaren58.com/b90b101b-1004-4e5c-8f7f-d32bc3ce52de', 1, 1, 1, '2019-12-26 16:25:07');
INSERT INTO `pp_files` VALUES (509, 132, 'http://insgle.huaren58.com/39e054df-34d9-47a9-9b48-fadc34b74b85', 1, 1, 1, '2019-12-26 16:25:07');
INSERT INTO `pp_files` VALUES (510, 132, 'http://insgle.huaren58.com/23446bea-743a-492d-8293-ac66f0db5135', 1, 1, 1, '2019-12-26 16:25:07');
INSERT INTO `pp_files` VALUES (511, 132, 'http://insgle.huaren58.com/6290637f-dd21-4bee-8b1c-8950fc22174f', 1, 1, 1, '2019-12-26 16:25:07');
INSERT INTO `pp_files` VALUES (512, 132, 'http://insgle.huaren58.com/7b84dd28-89cc-4cf1-ac93-a5968dbbd8d5', 1, 1, 1, '2019-12-26 16:25:07');
INSERT INTO `pp_files` VALUES (513, 132, 'http://insgle.huaren58.com/d16dfdd1-b607-4283-ac45-82f1a99b575d', 1, 1, 1, '2019-12-26 16:25:07');
INSERT INTO `pp_files` VALUES (514, 133, 'http://insgle.huaren58.com/b43bddff-29e9-48af-8775-b40c84b2ffda', 1, 1, 1, '2019-12-26 16:25:27');
INSERT INTO `pp_files` VALUES (515, 133, 'http://insgle.huaren58.com/2dd2b100-9fec-4bc0-ad59-f217bd6b3fa0', 1, 1, 1, '2019-12-26 16:25:27');
INSERT INTO `pp_files` VALUES (516, 133, 'http://insgle.huaren58.com/4a6100b1-da13-47b9-8a01-c9374bae905c', 1, 1, 1, '2019-12-26 16:25:27');
INSERT INTO `pp_files` VALUES (517, 133, 'http://insgle.huaren58.com/f3b9a35b-4fee-4084-9992-201f26d33ac6', 1, 1, 1, '2019-12-26 16:25:27');
INSERT INTO `pp_files` VALUES (518, 133, 'http://insgle.huaren58.com/7a67d181-5cf3-4448-a802-92de2e11a994', 1, 1, 1, '2019-12-26 16:25:27');
INSERT INTO `pp_files` VALUES (519, 133, 'http://insgle.huaren58.com/4247cf2f-975b-4559-ba64-e0e82f14db14', 1, 1, 1, '2019-12-26 16:25:27');
INSERT INTO `pp_files` VALUES (520, 133, 'http://insgle.huaren58.com/427863d0-a494-4dce-9f13-5fd31e4d6120', 1, 1, 1, '2019-12-26 16:25:27');
INSERT INTO `pp_files` VALUES (521, 134, 'http://insgle.huaren58.com/dc4bf9cf-6ca6-4c0b-86ec-c4a954407949', 1, 1, 1, '2019-12-26 16:25:44');
INSERT INTO `pp_files` VALUES (522, 134, 'http://insgle.huaren58.com/15d99796-3f03-49ec-857b-a517b10fee45', 1, 1, 1, '2019-12-26 16:25:44');
INSERT INTO `pp_files` VALUES (523, 134, 'http://insgle.huaren58.com/8ca77eb5-c2e3-4dff-89f4-bf7a798fa1a4', 1, 1, 1, '2019-12-26 16:25:44');
INSERT INTO `pp_files` VALUES (524, 134, 'http://insgle.huaren58.com/4a499a4c-cc4e-4af8-b8ec-578b41c3db3c', 1, 1, 1, '2019-12-26 16:25:44');
INSERT INTO `pp_files` VALUES (525, 134, 'http://insgle.huaren58.com/a2f991cf-8b66-4c86-99f1-8b37c9c12b21', 1, 1, 1, '2019-12-26 16:25:44');
INSERT INTO `pp_files` VALUES (526, 134, 'http://insgle.huaren58.com/c216fa76-f008-48d5-bad7-0cf97ff5724c', 1, 1, 1, '2019-12-26 16:25:44');
INSERT INTO `pp_files` VALUES (527, 134, 'http://insgle.huaren58.com/5b758f12-efab-4d63-a446-5e3ab43c6f48', 1, 1, 1, '2019-12-26 16:25:44');
INSERT INTO `pp_files` VALUES (528, 135, 'http://insgle.huaren58.com/4cfb22ce-0c85-42ab-8bbe-f66fbc5b3231', 1, 1, 1, '2019-12-26 16:26:07');
INSERT INTO `pp_files` VALUES (529, 135, 'http://insgle.huaren58.com/669ae450-3cbf-4828-87b2-98432303b32d', 1, 1, 1, '2019-12-26 16:26:07');
INSERT INTO `pp_files` VALUES (530, 135, 'http://insgle.huaren58.com/b2795e72-6b2f-4798-b8f8-8a01fb2f33a6', 1, 1, 1, '2019-12-26 16:26:07');
INSERT INTO `pp_files` VALUES (531, 135, 'http://insgle.huaren58.com/88fb1ed1-c906-4172-90a4-fdaa839b6926', 1, 1, 1, '2019-12-26 16:26:07');
INSERT INTO `pp_files` VALUES (532, 135, 'http://insgle.huaren58.com/4f04cbce-c303-4170-b69e-2048875a276b', 1, 1, 1, '2019-12-26 16:26:07');
INSERT INTO `pp_files` VALUES (533, 135, 'http://insgle.huaren58.com/83f066d2-f00e-4de3-8a99-b672439cc52c', 1, 1, 1, '2019-12-26 16:26:07');
INSERT INTO `pp_files` VALUES (534, 135, 'http://insgle.huaren58.com/b2e05493-3628-456a-9362-f3381566d2cc', 1, 1, 1, '2019-12-26 16:26:07');
INSERT INTO `pp_files` VALUES (535, 135, 'http://insgle.huaren58.com/f932fefd-e1bc-41cd-849c-d405307e5a73', 1, 1, 1, '2019-12-26 16:26:07');
INSERT INTO `pp_files` VALUES (536, 135, 'http://insgle.huaren58.com/25bcae1e-0571-4653-ad43-24cb714adc8c', 1, 1, 1, '2019-12-26 16:26:07');
INSERT INTO `pp_files` VALUES (537, 136, 'http://insgle.huaren58.com/e233300b-61ca-4cf9-b5d8-6438eee9897a', 1, 1, 1, '2019-12-26 16:26:22');
INSERT INTO `pp_files` VALUES (538, 136, 'http://insgle.huaren58.com/b61c87c7-7298-42f7-a572-304b86b75d1b', 1, 1, 1, '2019-12-26 16:26:22');
INSERT INTO `pp_files` VALUES (539, 136, 'http://insgle.huaren58.com/dcda74d5-6b24-4a49-8068-5ba82a9e1368', 1, 1, 1, '2019-12-26 16:26:22');
INSERT INTO `pp_files` VALUES (540, 136, 'http://insgle.huaren58.com/8ccd743c-39ba-4b1e-976c-c23ae49269cb', 1, 1, 1, '2019-12-26 16:26:22');
INSERT INTO `pp_files` VALUES (541, 136, 'http://insgle.huaren58.com/b5459b03-aa68-4146-916c-5d478b563f2d', 1, 1, 1, '2019-12-26 16:26:22');
INSERT INTO `pp_files` VALUES (542, 136, 'http://insgle.huaren58.com/e0a119f0-2d2f-4260-ad09-daf49a2d4cd9', 1, 1, 1, '2019-12-26 16:26:22');
INSERT INTO `pp_files` VALUES (543, 137, 'http://insgle.huaren58.com/55ec669d-dc48-4744-a1de-f567173a42cb', 1, 1, 1, '2019-12-26 16:26:31');
INSERT INTO `pp_files` VALUES (544, 138, 'http://insgle.huaren58.com/d5a4d814-d603-4e31-86af-b3d846870f06', 1, 1, 1, '2019-12-26 16:32:08');
INSERT INTO `pp_files` VALUES (545, 138, 'http://insgle.huaren58.com/ceccfbb1-0cb0-459b-88af-eff11c8a070c', 1, 1, 1, '2019-12-26 16:32:08');
INSERT INTO `pp_files` VALUES (546, 139, 'http://insgle.huaren58.com/00fc88f5-611d-4ce3-b855-f6dcd186db00', 1, 1, 1, '2019-12-26 16:54:58');
INSERT INTO `pp_files` VALUES (547, 139, 'http://insgle.huaren58.com/6735962f-f71f-48c9-adc2-957769dc3556', 1, 1, 1, '2019-12-26 16:54:58');
INSERT INTO `pp_files` VALUES (548, 140, 'http://insgle.huaren58.com/21309f9b-472b-4d41-98ac-ef6e483b09f6', 1, 1, 1, '2019-12-26 17:14:29');
INSERT INTO `pp_files` VALUES (549, 140, 'http://insgle.huaren58.com/70e19094-a2d3-4af4-8db1-28c1466ff742', 1, 1, 1, '2019-12-26 17:14:29');
INSERT INTO `pp_files` VALUES (550, 140, 'http://insgle.huaren58.com/8f61d763-202e-46b5-ae8b-ab16b9526ac5', 1, 1, 1, '2019-12-26 17:14:29');
INSERT INTO `pp_files` VALUES (551, 140, 'http://insgle.huaren58.com/3a85a449-bf42-488f-b6d9-c64d4b7c3d86', 1, 1, 1, '2019-12-26 17:14:29');
INSERT INTO `pp_files` VALUES (552, 141, 'http://insgle.huaren58.com/95f054e3-f8a6-408a-aefd-aebf38d4a0cf', 1, 1, 1, '2019-12-26 17:14:46');
INSERT INTO `pp_files` VALUES (553, 141, 'http://insgle.huaren58.com/c3e13716-5b70-42a3-ad5a-33df5dcc71c8', 1, 1, 1, '2019-12-26 17:14:46');
INSERT INTO `pp_files` VALUES (554, 141, 'http://insgle.huaren58.com/d686f162-a5a7-4ade-9894-6ed5e5156466', 1, 1, 1, '2019-12-26 17:14:46');
INSERT INTO `pp_files` VALUES (555, 141, 'http://insgle.huaren58.com/7c70775c-89fd-4a73-9cc4-4e6d4994d4b7', 1, 1, 1, '2019-12-26 17:14:46');
INSERT INTO `pp_files` VALUES (556, 142, 'http://insgle.huaren58.com/c3cb3f53-0c41-421b-baf0-0be9893ad764', 1, 1, 1, '2019-12-26 17:17:05');
INSERT INTO `pp_files` VALUES (557, 142, 'http://insgle.huaren58.com/d591b2d6-700e-4c13-9409-65609ddb2940', 1, 1, 1, '2019-12-26 17:17:05');
INSERT INTO `pp_files` VALUES (558, 142, 'http://insgle.huaren58.com/87cee3df-388d-40b4-b138-9b450873885b', 1, 1, 1, '2019-12-26 17:17:05');
INSERT INTO `pp_files` VALUES (559, 142, 'http://insgle.huaren58.com/cd2e35a7-3abf-4f84-8033-0cec1cd2c503', 1, 1, 1, '2019-12-26 17:17:05');
INSERT INTO `pp_files` VALUES (560, 142, 'http://insgle.huaren58.com/c9c61619-b7a2-4f78-bdd3-3c5e56192094', 1, 1, 1, '2019-12-26 17:17:05');
INSERT INTO `pp_files` VALUES (561, 143, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-26 17:20:22');
INSERT INTO `pp_files` VALUES (562, 143, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-26 17:20:22');
INSERT INTO `pp_files` VALUES (563, 144, 'http://insgle.huaren58.com/a7468e06-8208-4b27-9114-dc90ad309f6c', 1, 1, 1, '2019-12-26 17:20:54');
INSERT INTO `pp_files` VALUES (564, 144, 'http://insgle.huaren58.com/8b85101f-aaa7-40c3-a5d1-d66e3da5f1df', 1, 1, 1, '2019-12-26 17:20:54');
INSERT INTO `pp_files` VALUES (565, 144, 'http://insgle.huaren58.com/0d57c760-b864-43dc-971b-fdf84e9da7e7', 1, 1, 1, '2019-12-26 17:20:54');
INSERT INTO `pp_files` VALUES (566, 144, 'http://insgle.huaren58.com/02fc136d-cac3-4ff3-b870-1fd6dd48afdd', 1, 1, 1, '2019-12-26 17:20:54');
INSERT INTO `pp_files` VALUES (567, 145, 'http://insgle.huaren58.com/64c88b60-f169-423f-b645-abd9eee1c2e9', 1, 1, 1, '2019-12-26 17:21:09');
INSERT INTO `pp_files` VALUES (568, 145, 'http://insgle.huaren58.com/8b2e84a6-ca1a-4a24-8f1d-d7dead4266a2', 1, 1, 1, '2019-12-26 17:21:09');
INSERT INTO `pp_files` VALUES (569, 146, 'http://insgle.huaren58.com/292a5181-ca5f-4f7a-b8ff-7284e100c1a4', 1, 1, 1, '2019-12-26 17:22:19');
INSERT INTO `pp_files` VALUES (570, 146, 'http://insgle.huaren58.com/714bcf74-edec-4a85-b43c-716e01567cf0', 1, 1, 1, '2019-12-26 17:22:19');
INSERT INTO `pp_files` VALUES (571, 147, 'http://insgle.huaren58.com/c2895822-6f0a-4a3f-9c40-2d040e72f247', 1, 1, 1, '2019-12-26 17:42:45');
INSERT INTO `pp_files` VALUES (572, 147, 'http://insgle.huaren58.com/abb5c2ba-d0df-4e9b-a810-957736e8b03b', 1, 1, 1, '2019-12-26 17:42:45');
INSERT INTO `pp_files` VALUES (573, 149, 'http://insgle.huaren58.com/d5b5f428-c89a-4a07-819a-06763c9f2f49', 1, 1, 1, '2019-12-26 17:43:35');
INSERT INTO `pp_files` VALUES (574, 155, 'http://insgle.huaren58.com/90217f88-85f9-4b6b-80c6-18bf6b1dfc5c', 1, 1, 1, '2019-12-27 09:13:43');
INSERT INTO `pp_files` VALUES (575, 155, 'http://insgle.huaren58.com/96e206db-5b45-4a7b-a2f5-90a7400ec950', 1, 1, 1, '2019-12-27 09:13:43');
INSERT INTO `pp_files` VALUES (576, 155, 'http://insgle.huaren58.com/47631610-7e9f-4a45-818c-62a8b6e58312', 1, 1, 1, '2019-12-27 09:13:43');
INSERT INTO `pp_files` VALUES (577, 156, 'http://insgle.huaren58.com/02e7b4e6-58c0-40ca-98ad-6f2be29ee1c8', 1, 1, 1, '2019-12-27 09:15:58');
INSERT INTO `pp_files` VALUES (578, 157, 'http://insgle.huaren58.com/93620564-c886-471c-86d7-03ee0cc0b393', 1, 1, 1, '2019-12-27 09:17:59');
INSERT INTO `pp_files` VALUES (579, 157, 'http://insgle.huaren58.com/7564cfff-b311-4bcb-85e7-bc67c106eaae', 1, 1, 1, '2019-12-27 09:18:01');
INSERT INTO `pp_files` VALUES (580, 158, 'http://insgle.huaren58.com/f24668e3-9154-430c-ba55-c196a21daf95', 1, 1, 1, '2019-12-27 09:19:10');
INSERT INTO `pp_files` VALUES (581, 159, 'http://insgle.huaren58.com/2d5cbbcd-e32a-4d1d-86f7-ec9cb35fe761', 1, 1, 1, '2019-12-27 09:21:06');
INSERT INTO `pp_files` VALUES (582, 159, 'http://insgle.huaren58.com/830319ae-a524-4d33-8146-6ed6dfd3ad07', 1, 1, 1, '2019-12-27 09:21:06');
INSERT INTO `pp_files` VALUES (583, 160, 'http://insgle.huaren58.com/155fbe86-79a0-43da-a38f-8ac4611391d2', 1, 1, 1, '2019-12-27 09:23:03');
INSERT INTO `pp_files` VALUES (584, 162, 'http://insgle.huaren58.com/68105dd4-daf3-4612-9c1e-084202fb5a17', 1, 1, 1, '2019-12-27 09:24:19');
INSERT INTO `pp_files` VALUES (585, 162, 'http://insgle.huaren58.com/c55d2f98-bd96-4a61-8d83-5e363c6986a7', 1, 1, 1, '2019-12-27 09:24:19');
INSERT INTO `pp_files` VALUES (586, 162, 'http://insgle.huaren58.com/eccf9c25-21c5-4d78-9e42-9edbc9f94a93', 1, 1, 1, '2019-12-27 09:24:19');
INSERT INTO `pp_files` VALUES (587, 162, 'http://insgle.huaren58.com/7dc4355e-454d-43f7-8af2-c1e0f5803613', 1, 1, 1, '2019-12-27 09:24:19');
INSERT INTO `pp_files` VALUES (588, 163, 'http://insgle.huaren58.com/1ad567fa-4b0e-446e-9010-c08fa318045e', 1, 1, 1, '2019-12-27 09:24:42');
INSERT INTO `pp_files` VALUES (589, 163, 'http://insgle.huaren58.com/ca4e62e0-afe4-49ad-a3e7-48b9ec50b20a', 1, 1, 1, '2019-12-27 09:24:42');
INSERT INTO `pp_files` VALUES (590, 163, 'http://insgle.huaren58.com/6d040751-6691-4b7a-98e6-5537434204ae', 1, 1, 1, '2019-12-27 09:24:42');
INSERT INTO `pp_files` VALUES (591, 163, 'http://insgle.huaren58.com/a4babdcb-153d-4ada-8e07-010484cfb76f', 1, 1, 1, '2019-12-27 09:24:42');
INSERT INTO `pp_files` VALUES (592, 163, 'http://insgle.huaren58.com/32694d23-6582-431a-8d9e-e545714efb56', 1, 1, 1, '2019-12-27 09:24:42');
INSERT INTO `pp_files` VALUES (593, 165, 'http://insgle.huaren58.com/2ef4b210-2bb7-484e-8c44-5bb31259e2b2', 1, 1, 1, '2019-12-27 09:25:11');
INSERT INTO `pp_files` VALUES (594, 167, 'http://insgle.huaren58.com/84b086d7-8332-423e-8959-b60e2d834d70', 1, 1, 1, '2019-12-27 09:26:53');
INSERT INTO `pp_files` VALUES (595, 167, 'http://insgle.huaren58.com/3192ceaf-e0d7-48c3-8090-08ec6acd3985', 1, 1, 1, '2019-12-27 09:26:53');
INSERT INTO `pp_files` VALUES (596, 168, 'http://insgle.huaren58.com/8d3249b7-b3f3-4908-a218-bda0cd5bea70', 1, 1, 1, '2019-12-27 09:27:49');
INSERT INTO `pp_files` VALUES (597, 169, 'http://insgle.huaren58.com/91a229f7-fa38-4002-ba35-ad956bfafbf9', 1, 1, 1, '2019-12-27 09:28:03');
INSERT INTO `pp_files` VALUES (598, 169, 'http://insgle.huaren58.com/9d59aa57-9145-40a8-b445-1cb4c4725ccd', 1, 1, 1, '2019-12-27 09:28:03');
INSERT INTO `pp_files` VALUES (599, 171, 'http://insgle.huaren58.com/d1ab9a05-72cc-4229-b9c7-8e1a2232ad07', 1, 1, 1, '2019-12-27 09:28:29');
INSERT INTO `pp_files` VALUES (600, 172, 'http://insgle.huaren58.com/c1d4187e-c8ed-4eec-b310-5ac3a036edbe', 1, 1, 1, '2019-12-27 09:29:08');
INSERT INTO `pp_files` VALUES (601, 172, 'http://insgle.huaren58.com/ba2bbf6a-c297-403f-9b3a-883761f94aa3', 1, 1, 1, '2019-12-27 09:29:08');
INSERT INTO `pp_files` VALUES (602, 173, 'http://insgle.huaren58.com/58d4d314-98e1-4b29-b9ac-4314e11b9a72', 1, 1, 1, '2019-12-27 09:29:25');
INSERT INTO `pp_files` VALUES (603, 173, 'http://insgle.huaren58.com/a4632826-07b1-45c5-bc1a-c719da03526e', 1, 1, 1, '2019-12-27 09:29:25');
INSERT INTO `pp_files` VALUES (604, 173, 'http://insgle.huaren58.com/22c71137-48d5-4349-b38e-84df14116795', 1, 1, 1, '2019-12-27 09:29:25');
INSERT INTO `pp_files` VALUES (605, 174, 'http://insgle.huaren58.com/bf080c22-800f-4cac-980a-4ebc03a98138', 1, 1, 1, '2019-12-27 09:30:39');
INSERT INTO `pp_files` VALUES (606, 174, 'http://insgle.huaren58.com/dfb3ef0c-4e59-4a71-be64-41444a7af37a', 1, 1, 1, '2019-12-27 09:30:39');
INSERT INTO `pp_files` VALUES (607, 176, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-27 10:37:43');
INSERT INTO `pp_files` VALUES (608, 176, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', 1, 1, 1, '2019-12-27 10:37:43');
INSERT INTO `pp_files` VALUES (609, 177, 'http://insgle.huaren58.com/5b0e1c09-7b84-4aac-877a-38b88913650d', 1, 1, 1, '2019-12-27 10:41:02');
INSERT INTO `pp_files` VALUES (610, 177, 'http://insgle.huaren58.com/58214de4-92fb-4acc-8474-28d808667e8d', 1, 1, 1, '2019-12-27 10:41:02');
INSERT INTO `pp_files` VALUES (611, 179, 'http://insgle.huaren58.com/19f70f41-fa7d-4b81-aaac-01daad00d518', 1, 1, 1, '2019-12-27 11:10:05');
INSERT INTO `pp_files` VALUES (612, 180, 'http://insgle.huaren58.com/effb87d2-f940-49cd-b35f-44b68bd5acaf', 1, 1, 1, '2019-12-27 11:13:22');
INSERT INTO `pp_files` VALUES (613, 181, 'http://insgle.huaren58.com/42399d28-7506-45ea-b75b-e97d66acb051', 2, 1, 1, '2019-12-27 11:16:48');
INSERT INTO `pp_files` VALUES (614, 183, 'http://insgle.huaren58.com/e795a0d6-1424-4038-ac6a-323a8ff519b6', 2, 1, 1, '2019-12-27 11:19:09');
INSERT INTO `pp_files` VALUES (615, 184, 'http://insgle.huaren58.com/3eab9bbf-4e4f-44e6-a121-e15244e35751', 1, 1, 1, '2019-12-27 11:19:30');
INSERT INTO `pp_files` VALUES (616, 184, 'http://insgle.huaren58.com/84a6b0f5-d05d-43fa-ad5f-14274863728c', 1, 1, 1, '2019-12-27 11:19:30');
INSERT INTO `pp_files` VALUES (617, 184, 'http://insgle.huaren58.com/2ba06562-f2ce-4aa0-9714-a66417e1fa92', 1, 1, 1, '2019-12-27 11:19:30');
INSERT INTO `pp_files` VALUES (618, 184, 'http://insgle.huaren58.com/990feb5c-cee1-49e7-b003-3dd2520ddf04', 1, 1, 1, '2019-12-27 11:19:30');
INSERT INTO `pp_files` VALUES (619, 184, 'http://insgle.huaren58.com/c70ca0cc-9a39-41a0-8d02-4984dbff6857', 1, 1, 1, '2019-12-27 11:19:30');
INSERT INTO `pp_files` VALUES (620, 185, 'http://insgle.huaren58.com/5b011632-dc4f-4161-a590-3a9b460a432b', 2, 1, 1, '2019-12-27 11:28:21');
INSERT INTO `pp_files` VALUES (621, 186, 'http://insgle.huaren58.com/2c9dd619-5f9b-4938-baa4-11807502037e', 1, 1, 1, '2019-12-27 14:13:44');
INSERT INTO `pp_files` VALUES (622, 186, 'http://insgle.huaren58.com/807bceee-a399-4d8a-89b6-e3e1906d4bf3', 1, 1, 1, '2019-12-27 14:13:44');
INSERT INTO `pp_files` VALUES (623, 187, 'http://insgle.huaren58.com/96cd00a5-af64-4813-a32d-9c9c1e5b5bc2', 2, 1, 1, '2019-12-27 14:14:37');
INSERT INTO `pp_files` VALUES (624, 188, 'http://insgle.huaren58.com/7833d25c-eaa7-4789-b432-3d7252e5be3f', 1, 1, 1, '2019-12-27 14:25:48');
INSERT INTO `pp_files` VALUES (625, 189, 'http://insgle.huaren58.com/b3528064-85f5-4064-8cae-9ceaed006fae', 1, 1, 1, '2019-12-27 14:25:58');
INSERT INTO `pp_files` VALUES (626, 190, 'http://insgle.huaren58.com/6b8bb515-5c23-4692-ac8e-3c6da63c3587', 1, 1, 1, '2019-12-27 15:43:01');
INSERT INTO `pp_files` VALUES (627, 191, 'http://insgle.huaren58.com/d8af1bff-81b7-4255-b018-27a16160e9a2', 1, 1, 1, '2019-12-27 15:44:25');
INSERT INTO `pp_files` VALUES (628, 192, 'http://insgle.huaren58.com/ea480da6-c20a-41e6-9059-4327ef4f35c8', 1, 1, 1, '2019-12-27 15:45:14');
INSERT INTO `pp_files` VALUES (629, 193, 'http://insgle.huaren58.com/52f661a6-a473-4d73-9e1c-1a2ddc986777', 1, 1, 1, '2019-12-27 15:46:43');
INSERT INTO `pp_files` VALUES (630, 198, 'http://insgle.huaren58.com/443ea3cf-4d10-49dc-8828-5983b32eb176', 2, 1, 1, '2019-12-27 16:34:52');
INSERT INTO `pp_files` VALUES (631, 199, 'http://insgle.huaren58.com/8e314d2d-d172-49f3-b963-3649efa56e6c', 2, 1, 1, '2019-12-27 16:35:49');
INSERT INTO `pp_files` VALUES (632, 200, 'http://insgle.huaren58.com/1bf3e76c-aeeb-48bd-a846-a8300a7422f3', 1, 1, 1, '2019-12-27 16:37:54');
INSERT INTO `pp_files` VALUES (633, 200, 'http://insgle.huaren58.com/65639754-21fa-41f5-b7fb-ca071ec3b30d', 1, 1, 1, '2019-12-27 16:37:54');
INSERT INTO `pp_files` VALUES (634, 200, 'http://insgle.huaren58.com/f18180f6-341b-4432-ae0a-c6b3a81ee3a8', 1, 1, 1, '2019-12-27 16:37:54');
INSERT INTO `pp_files` VALUES (635, 200, 'http://insgle.huaren58.com/f4070047-7246-44c0-8e09-4c5f20cd91f6', 1, 1, 1, '2019-12-27 16:37:54');
INSERT INTO `pp_files` VALUES (636, 201, 'http://insgle.huaren58.com/b2f887f2-5fc8-4c51-97a7-f2d88ebc8e2a', 1, 1, 1, '2019-12-27 16:38:08');
INSERT INTO `pp_files` VALUES (637, 202, 'http://insgle.huaren58.com/8d829f00-34c0-4d40-84bc-77340d9dc12d', 1, 1, 1, '2019-12-27 16:38:19');
INSERT INTO `pp_files` VALUES (638, 203, 'http://insgle.huaren58.com/e1f95977-4e76-477f-a4b8-e75353bfc4f3', 2, 1, 1, '2019-12-27 16:38:40');
INSERT INTO `pp_files` VALUES (639, 204, 'http://insgle.huaren58.com/439614bf-d91e-4553-a8c6-accc3eb0fe5f', 1, 1, 1, '2019-12-28 11:34:27');
INSERT INTO `pp_files` VALUES (640, 204, 'http://insgle.huaren58.com/cf8ed216-9d37-4f0e-aec4-641307d1de94', 1, 1, 1, '2019-12-28 11:34:27');
INSERT INTO `pp_files` VALUES (641, 204, 'http://insgle.huaren58.com/668b979e-52f0-4acf-9a8e-8070c30a6242', 1, 1, 1, '2019-12-28 11:34:27');
INSERT INTO `pp_files` VALUES (642, 204, 'http://insgle.huaren58.com/4bed2e7c-dd73-4b8a-ab15-95232bf10fb1', 1, 1, 1, '2019-12-28 11:34:27');
INSERT INTO `pp_files` VALUES (643, 204, 'http://insgle.huaren58.com/30305ca7-cc4d-4634-8e3b-85910a014f03', 1, 1, 1, '2019-12-28 11:34:27');
INSERT INTO `pp_files` VALUES (644, 204, 'http://insgle.huaren58.com/53b90bcd-3b18-4d68-be2e-895fab13825b', 1, 1, 1, '2019-12-28 11:34:27');
INSERT INTO `pp_files` VALUES (645, 206, 'http://insgle.huaren58.com/5281f1d7-dc07-462b-b7cb-d0aaaebd95af', 1, 1, 1, '2019-12-28 11:39:57');
INSERT INTO `pp_files` VALUES (646, 207, 'http://insgle.huaren58.com/6a825a57-743a-4a22-bfe4-251918048fc4', 1, 1, 1, '2019-12-30 17:18:37');
INSERT INTO `pp_files` VALUES (647, 207, 'http://insgle.huaren58.com/5c0cedc8-a0c0-449c-9e64-058feb0014ff', 1, 1, 1, '2019-12-30 17:18:37');
INSERT INTO `pp_files` VALUES (648, 207, 'http://insgle.huaren58.com/9990abb3-f3e2-446b-8639-dc149999c185', 1, 1, 1, '2019-12-30 17:18:37');
INSERT INTO `pp_files` VALUES (649, 207, 'http://insgle.huaren58.com/07323c2a-5d61-491a-8119-77df08cc35dc', 1, 1, 1, '2019-12-30 17:18:37');
INSERT INTO `pp_files` VALUES (650, 207, 'http://insgle.huaren58.com/9b1d12ef-f638-4333-b9ac-e85cb4e49c36', 1, 1, 1, '2019-12-30 17:18:37');
INSERT INTO `pp_files` VALUES (651, 207, 'http://insgle.huaren58.com/cea470b1-602f-46bc-bc88-fbbeb5ddb3f0', 1, 1, 1, '2019-12-30 17:18:37');
INSERT INTO `pp_files` VALUES (652, 208, 'http://insgle.huaren58.com/37b86258-5f96-4360-98f4-55549e603799', 2, 1, 1, '2019-12-30 17:39:46');
INSERT INTO `pp_files` VALUES (653, 209, 'http://insgle.huaren58.com/47c2887f-e747-4eb5-b60f-d35b50fde187', 2, 1, 1, '2019-12-30 18:51:52');
INSERT INTO `pp_files` VALUES (654, 210, 'http://insgle.huaren58.com/b4ddc8dc-851a-4ca5-aab9-85200b102f42', 1, 1, 1, '2019-12-31 16:59:44');
INSERT INTO `pp_files` VALUES (655, 210, 'http://insgle.huaren58.com/36b2b0cf-7dc8-4146-9b17-6f52014ef261', 1, 1, 1, '2019-12-31 16:59:44');
INSERT INTO `pp_files` VALUES (656, 210, 'http://insgle.huaren58.com/d3c1048b-4cda-443d-9a12-62077ad2ddab', 1, 1, 1, '2019-12-31 16:59:44');
INSERT INTO `pp_files` VALUES (657, 211, 'http://insgle.huaren58.com/6b30d59d-6e6a-48d8-8e41-f4a216e512d8', 1, 1, 1, '2019-12-31 17:01:21');
INSERT INTO `pp_files` VALUES (658, 211, 'http://insgle.huaren58.com/eceb2d2f-4255-4bd6-95da-b0fe8e7322d7', 1, 1, 1, '2019-12-31 17:01:21');
INSERT INTO `pp_files` VALUES (659, 211, 'http://insgle.huaren58.com/fbeddf1c-4307-49de-9301-6c0bfb8be209', 1, 1, 1, '2019-12-31 17:01:21');
INSERT INTO `pp_files` VALUES (660, 217, '{\"url\":\"http://insgle.huaren58.com/20c947b0-5092-4d79-8077-1b35057fb6f1\"', 1, 1, 1, '2020-01-02 11:49:15');
INSERT INTO `pp_files` VALUES (661, 217, '\"pulp\":false}', 1, 1, 1, '2020-01-02 11:49:15');
INSERT INTO `pp_files` VALUES (662, 218, '{\"url\":\"http://insgle.huaren58.com/e2a9f5a5-eb42-4328-99fa-20bd3cb3b100\"', 1, 1, 1, '2020-01-02 11:50:05');
INSERT INTO `pp_files` VALUES (663, 218, '\"pulp\":false}', 1, 1, 1, '2020-01-02 11:50:05');
INSERT INTO `pp_files` VALUES (664, 218, '{\"url\":\"http://insgle.huaren58.com/e0cdead6-487a-48c2-b923-999d077f2a22\"', 1, 1, 1, '2020-01-02 11:50:05');
INSERT INTO `pp_files` VALUES (665, 218, '\"pulp\":false}', 1, 1, 1, '2020-01-02 11:50:05');
INSERT INTO `pp_files` VALUES (666, 219, '{\"url\":\"http://insgle.huaren58.com/42fdb066-4584-4c09-b63c-bf6ace3b14e6\"', 1, 1, 1, '2020-01-02 11:51:28');
INSERT INTO `pp_files` VALUES (667, 219, '\"pulp\":false}', 1, 1, 1, '2020-01-02 11:51:28');
INSERT INTO `pp_files` VALUES (668, 220, '{\"url\":\"http://insgle.huaren58.com/6afd91a1-c279-4956-8c4d-562e8f7c670a\"', 1, 1, 1, '2020-01-02 12:00:45');
INSERT INTO `pp_files` VALUES (669, 220, '\"pulp\":false}', 1, 1, 1, '2020-01-02 12:00:45');
INSERT INTO `pp_files` VALUES (670, 221, '{\"url\":\"http://insgle.huaren58.com/78b1aee8-f50f-4101-88d7-17a434ce8cba\"', 1, 1, 1, '2020-01-02 12:03:08');
INSERT INTO `pp_files` VALUES (671, 221, '\"pulp\":false}', 1, 1, 1, '2020-01-02 12:03:08');
INSERT INTO `pp_files` VALUES (672, 222, '[object Object]', 1, 1, 1, '2020-01-02 13:06:40');
INSERT INTO `pp_files` VALUES (673, 223, '[object Object]', 1, 1, 1, '2020-01-02 13:41:38');
INSERT INTO `pp_files` VALUES (674, 224, '[object Object]', 1, 1, 1, '2020-01-02 14:12:28');
INSERT INTO `pp_files` VALUES (675, 225, 'http://insgle.huaren58.com/7b622bd3-659a-4e3d-bebb-32303d4bd299', 1, 1, 1, '2020-01-02 14:13:17');
INSERT INTO `pp_files` VALUES (676, 226, 'http://insgle.huaren58.com/fa9e1a08-2171-48dc-9f60-28ae1513a218', 1, 1, 1, '2020-01-02 15:51:00');
INSERT INTO `pp_files` VALUES (677, 226, 'http://insgle.huaren58.com/a5fbcdc7-ec87-405d-bf17-63eebcce5684', 1, 1, 1, '2020-01-02 15:51:00');
INSERT INTO `pp_files` VALUES (678, 226, 'http://insgle.huaren58.com/1d559d33-90e4-4ba8-b896-83351ae1eb02', 1, 1, 1, '2020-01-02 15:51:00');
INSERT INTO `pp_files` VALUES (679, 226, 'http://insgle.huaren58.com/85249431-5f6d-48b0-aec9-b06f467ad5af', 1, 1, 1, '2020-01-02 15:51:00');
INSERT INTO `pp_files` VALUES (680, 228, 'http://insgle.huaren58.com/2fec9702-3cf7-4cae-b809-3668c6331d45', 1, 1, 1, '2020-01-02 17:47:26');
INSERT INTO `pp_files` VALUES (681, 228, 'http://insgle.huaren58.com/43daf89c-aeec-4c0c-ab51-c98670df90d6', 1, 1, 1, '2020-01-02 17:47:26');
INSERT INTO `pp_files` VALUES (682, 229, 'http://insgle.huaren58.com/10533974-6c47-4e9f-b229-f258030d4852', 1, 1, 1, '2020-01-02 17:48:11');
INSERT INTO `pp_files` VALUES (683, 230, 'http://insgle.huaren58.com/fbbdac8c-7de3-4a11-8210-69cdf9f60361', 1, 1, 1, '2020-01-02 18:27:28');
INSERT INTO `pp_files` VALUES (684, 231, 'http://insgle.huaren58.com/ac2fd878-53f1-45c1-97db-9e8379ab7fd2', 1, 1, 1, '2020-01-02 18:39:03');
INSERT INTO `pp_files` VALUES (685, 232, 'http://insgle.huaren58.com/99224e7b-dfb6-4154-84ea-444cf80f4fc3', 1, 1, 1, '2020-01-02 18:39:17');
INSERT INTO `pp_files` VALUES (686, 232, 'http://insgle.huaren58.com/f2ee097f-7df0-4fa2-be97-501417ad0488', 1, 1, 1, '2020-01-02 18:39:17');
INSERT INTO `pp_files` VALUES (687, 233, 'http://insgle.huaren58.com/5ad5b745-c63e-42d5-b778-bd2cbe8430fc', 1, 1, 1, '2020-01-02 18:39:56');
INSERT INTO `pp_files` VALUES (688, 234, 'http://insgle.huaren58.com/3bee95d6-653d-45c1-b4e5-75b56e3dfcba', 1, 1, 1, '2020-01-02 18:41:40');
INSERT INTO `pp_files` VALUES (689, 235, 'http://insgle.huaren58.com/c482af34-bd3d-462f-9806-d1330637fa61', 1, 1, 1, '2020-01-02 18:44:16');
INSERT INTO `pp_files` VALUES (690, 236, 'http://insgle.huaren58.com/7a03137c-7ca8-41dc-961f-19d82c548666', 1, 1, 1, '2020-01-02 18:52:28');
INSERT INTO `pp_files` VALUES (691, 242, 'http://insgle.huaren58.com/655a3c33-dd61-4de3-b648-fc443a7ace8d', 1, 1, 1, '2020-01-03 09:18:45');
INSERT INTO `pp_files` VALUES (692, 249, '[object Object]', 2, 1, 1, '2020-01-03 10:43:59');
INSERT INTO `pp_files` VALUES (693, 250, 'http://insgle.huaren58.com/b1511f89-d980-47c5-a562-7a0ac80466bc', 2, 1, 1, '2020-01-03 10:46:08');
INSERT INTO `pp_files` VALUES (694, 252, 'http://insgle.huaren58.com/b9bdea0e-c909-4635-b0ef-59ab363b57f5', 1, 1, 1, '2020-01-03 11:14:05');
INSERT INTO `pp_files` VALUES (695, 255, 'http://insgle.huaren58.com/cdb83b5e-6c47-44f3-9bc1-49f511f7dd52', 1, 1, 1, '2020-01-03 18:36:40');
INSERT INTO `pp_files` VALUES (696, 255, 'http://insgle.huaren58.com/d2fa1044-ff52-4f20-83f2-507352951cb8', 1, 1, 1, '2020-01-03 18:36:40');
INSERT INTO `pp_files` VALUES (697, 255, 'http://insgle.huaren58.com/60e1447a-1217-4e97-a6be-220a5269aee1', 1, 1, 1, '2020-01-03 18:36:40');
INSERT INTO `pp_files` VALUES (698, 256, 'http://insgle.huaren58.com/4ee88f75-8354-4fab-a56a-fd6d41758828', 1, 1, 1, '2020-01-04 09:36:15');
INSERT INTO `pp_files` VALUES (699, 257, 'http://insgle.huaren58.com/8e9fea24-a7ae-4532-a22f-1c66f1f62342', 1, 1, 1, '2020-01-04 09:36:28');
INSERT INTO `pp_files` VALUES (700, 257, 'http://insgle.huaren58.com/011221e9-5aa4-4217-bc07-6d0c903625b4', 1, 1, 1, '2020-01-04 09:36:28');
INSERT INTO `pp_files` VALUES (701, 258, 'http://insgle.huaren58.com/1b36389c-2900-4655-85a5-896c9bfc3a6f', 1, 1, 1, '2020-01-04 09:36:43');
INSERT INTO `pp_files` VALUES (702, 258, 'http://insgle.huaren58.com/1de5dfec-38ca-4821-ba29-abf579ab9eff', 1, 1, 1, '2020-01-04 09:36:43');
INSERT INTO `pp_files` VALUES (703, 258, 'http://insgle.huaren58.com/d7a22f6b-4a8b-4933-af2a-e94548212c2c', 1, 1, 1, '2020-01-04 09:36:43');
INSERT INTO `pp_files` VALUES (704, 259, 'http://insgle.huaren58.com/ef918fcc-a52d-4252-8ba2-4ade3c02c6af', 1, 1, 1, '2020-01-04 09:36:53');
INSERT INTO `pp_files` VALUES (705, 259, 'http://insgle.huaren58.com/2bc24823-5dae-4e89-947a-0b3f203d5f40', 1, 1, 1, '2020-01-04 09:36:53');
INSERT INTO `pp_files` VALUES (706, 259, 'http://insgle.huaren58.com/66e18115-7fdf-4824-af9c-b81a2c1cd5a2', 1, 1, 1, '2020-01-04 09:36:53');
INSERT INTO `pp_files` VALUES (707, 259, 'http://insgle.huaren58.com/3918210c-acd2-41e0-92ae-835d17eb88cb', 1, 1, 1, '2020-01-04 09:36:53');
INSERT INTO `pp_files` VALUES (708, 260, 'http://insgle.huaren58.com/251251ec-0374-4713-975d-98e73ba64650', 1, 1, 1, '2020-01-04 09:37:04');
INSERT INTO `pp_files` VALUES (709, 260, 'http://insgle.huaren58.com/e65a78db-1fc9-47fd-a57b-1f19af568399', 1, 1, 1, '2020-01-04 09:37:04');
INSERT INTO `pp_files` VALUES (710, 260, 'http://insgle.huaren58.com/f363d03f-0bb2-4be7-a71c-324f7fcf9c8a', 1, 1, 1, '2020-01-04 09:37:04');
INSERT INTO `pp_files` VALUES (711, 260, 'http://insgle.huaren58.com/cb757003-263d-4233-8ae3-b8cfa56b7bba', 1, 1, 1, '2020-01-04 09:37:04');
INSERT INTO `pp_files` VALUES (712, 260, 'http://insgle.huaren58.com/37a80a13-ab44-4907-84ee-da0ac6db6783', 1, 1, 1, '2020-01-04 09:37:04');
INSERT INTO `pp_files` VALUES (713, 261, 'http://insgle.huaren58.com/1487a897-28bd-4d03-85cc-36c46d312fac', 1, 1, 1, '2020-01-04 09:37:17');
INSERT INTO `pp_files` VALUES (714, 261, 'http://insgle.huaren58.com/5a9414dc-bfda-419e-84ef-c6fb1bbe968f', 1, 1, 1, '2020-01-04 09:37:17');
INSERT INTO `pp_files` VALUES (715, 261, 'http://insgle.huaren58.com/9819b565-8d50-45bb-9607-15a414173ceb', 1, 1, 1, '2020-01-04 09:37:17');
INSERT INTO `pp_files` VALUES (716, 261, 'http://insgle.huaren58.com/87580247-b270-4963-823a-01f63ba67aa8', 1, 1, 1, '2020-01-04 09:37:17');
INSERT INTO `pp_files` VALUES (717, 261, 'http://insgle.huaren58.com/08e3ee1a-f8a2-46ad-9fa1-f5e542d6fb9b', 1, 1, 1, '2020-01-04 09:37:17');
INSERT INTO `pp_files` VALUES (718, 261, 'http://insgle.huaren58.com/407238ea-2a39-47f0-9de1-976b840a6443', 1, 1, 1, '2020-01-04 09:37:17');
INSERT INTO `pp_files` VALUES (719, 262, 'http://insgle.huaren58.com/dd11b2a8-e596-45cf-a3b2-34b957d20dba', 1, 1, 1, '2020-01-04 09:37:29');
INSERT INTO `pp_files` VALUES (720, 262, 'http://insgle.huaren58.com/a7df832e-83bd-4e89-b8ce-af97b5edf2cf', 1, 1, 1, '2020-01-04 09:37:29');
INSERT INTO `pp_files` VALUES (721, 262, 'http://insgle.huaren58.com/da34eb22-91e9-4b62-9d22-8d9dca5caa42', 1, 1, 1, '2020-01-04 09:37:29');
INSERT INTO `pp_files` VALUES (722, 262, 'http://insgle.huaren58.com/45156429-2fc5-4835-b70b-a7114c09375c', 1, 1, 1, '2020-01-04 09:37:29');
INSERT INTO `pp_files` VALUES (723, 262, 'http://insgle.huaren58.com/c42d01bd-f937-4d6d-8aff-c25a0e29290c', 1, 1, 1, '2020-01-04 09:37:29');
INSERT INTO `pp_files` VALUES (724, 262, 'http://insgle.huaren58.com/c21e05f3-9333-47f3-9a9e-ac177b01f5c4', 1, 1, 1, '2020-01-04 09:37:29');
INSERT INTO `pp_files` VALUES (725, 262, 'http://insgle.huaren58.com/3de8d584-6660-4484-92e7-41d18f76dccb', 1, 1, 1, '2020-01-04 09:37:29');
INSERT INTO `pp_files` VALUES (726, 263, 'http://insgle.huaren58.com/ba932005-5029-455f-91b9-a82cb09f6711', 1, 1, 1, '2020-01-04 09:37:46');
INSERT INTO `pp_files` VALUES (727, 263, 'http://insgle.huaren58.com/f7223c18-6b8b-4808-b90c-07277a26948a', 1, 1, 1, '2020-01-04 09:37:46');
INSERT INTO `pp_files` VALUES (728, 263, 'http://insgle.huaren58.com/4108245a-2941-4b5b-8d7e-ae6e4f5e2c14', 1, 1, 1, '2020-01-04 09:37:46');
INSERT INTO `pp_files` VALUES (729, 263, 'http://insgle.huaren58.com/8ec8ec6b-04c6-434f-b92f-3336627de3d8', 1, 1, 1, '2020-01-04 09:37:46');
INSERT INTO `pp_files` VALUES (730, 263, 'http://insgle.huaren58.com/02dacda8-f7ed-425f-b62e-723b6d004c00', 1, 1, 1, '2020-01-04 09:37:46');
INSERT INTO `pp_files` VALUES (731, 263, 'http://insgle.huaren58.com/49f73098-0ac1-443b-a845-de4a412e6b40', 1, 1, 1, '2020-01-04 09:37:46');
INSERT INTO `pp_files` VALUES (732, 263, 'http://insgle.huaren58.com/140b78d1-15a0-463e-af94-53f66dd9b835', 1, 1, 1, '2020-01-04 09:37:46');
INSERT INTO `pp_files` VALUES (733, 263, 'http://insgle.huaren58.com/fbedbc8a-f14a-40fd-a3aa-d1020294638d', 1, 1, 1, '2020-01-04 09:37:46');
INSERT INTO `pp_files` VALUES (734, 264, 'http://insgle.huaren58.com/81e61cd8-c3c0-4b3c-848f-ff9a4d1445c5', 1, 1, 1, '2020-01-04 09:38:05');
INSERT INTO `pp_files` VALUES (735, 264, 'http://insgle.huaren58.com/ec371632-2669-466e-af76-d8d1cbfa10c7', 1, 1, 1, '2020-01-04 09:38:05');
INSERT INTO `pp_files` VALUES (736, 264, 'http://insgle.huaren58.com/0474f244-4433-4db6-bdf0-a3577c7936fb', 1, 1, 1, '2020-01-04 09:38:05');
INSERT INTO `pp_files` VALUES (737, 264, 'http://insgle.huaren58.com/d75fcee9-c99e-44d3-8dcd-14abc5522551', 1, 1, 1, '2020-01-04 09:38:05');
INSERT INTO `pp_files` VALUES (738, 264, 'http://insgle.huaren58.com/ad7968af-335f-4542-9355-860eb97481eb', 1, 1, 1, '2020-01-04 09:38:05');
INSERT INTO `pp_files` VALUES (739, 264, 'http://insgle.huaren58.com/e695b704-80f2-404c-a8aa-d8521ea97688', 1, 1, 1, '2020-01-04 09:38:05');
INSERT INTO `pp_files` VALUES (740, 264, 'http://insgle.huaren58.com/79b14bb5-8a7d-4b11-9d9c-452c67f1cc7a', 1, 1, 1, '2020-01-04 09:38:05');
INSERT INTO `pp_files` VALUES (741, 264, 'http://insgle.huaren58.com/56a01bcc-7f7b-465d-8a34-2b0346bbd967', 1, 1, 1, '2020-01-04 09:38:05');
INSERT INTO `pp_files` VALUES (742, 264, 'http://insgle.huaren58.com/f3ebb96f-06f8-4c40-a355-6521b5a6863f', 1, 1, 1, '2020-01-04 09:38:05');
INSERT INTO `pp_files` VALUES (743, 265, 'http://insgle.huaren58.com/f2f5a0b2-f51d-437d-b3b4-146a2449f8c3', 1, 1, 1, '2020-01-04 09:51:52');
INSERT INTO `pp_files` VALUES (744, 265, 'http://insgle.huaren58.com/26891687-861d-4e42-b6c7-c2847cecb486', 1, 1, 1, '2020-01-04 09:51:52');
INSERT INTO `pp_files` VALUES (745, 268, 'http://insgle.huaren58.com/7e67105f-9db2-432d-bbc2-a9a27ed001e8', 1, 1, 1, '2020-01-04 10:27:32');
INSERT INTO `pp_files` VALUES (746, 268, 'http://insgle.huaren58.com/ced9bd6a-313b-419e-be39-27297b5491f5', 1, 1, 1, '2020-01-04 10:27:32');
INSERT INTO `pp_files` VALUES (747, 269, 'http://insgle.huaren58.com/011c46f6-53b4-4ea6-9842-302233325670', 1, 1, 1, '2020-01-04 10:28:07');
INSERT INTO `pp_files` VALUES (748, 270, 'http://insgle.huaren58.com/7a5ae2f4-f5e3-4d99-b3f5-61a9781be42f', 2, 1, 1, '2020-01-04 10:28:49');
INSERT INTO `pp_files` VALUES (749, 271, 'http://insgle.huaren58.com/791c89eb-89a2-4cc9-8fcf-67bf5f0521a2', 2, 1, 1, '2020-01-04 11:01:34');
INSERT INTO `pp_files` VALUES (750, 276, 'http://insgle.huaren58.com/5e308951-3d7a-4cca-af47-81c5d9dce654', 1, 1, 1, '2020-01-06 17:29:20');
INSERT INTO `pp_files` VALUES (751, 276, 'http://insgle.huaren58.com/c7e8bbc1-fee4-4f91-9844-490d92a085a7', 1, 1, 1, '2020-01-06 17:29:20');
INSERT INTO `pp_files` VALUES (752, 277, 'http://insgle.huaren58.com/fbadac08-ed4d-49cc-a1eb-f3a3dad55636', 1, 1, 1, '2020-01-07 09:32:58');
INSERT INTO `pp_files` VALUES (753, 278, 'http://insgle.huaren58.com/6e284aeb-6a5c-4c77-b8f4-8a6757e634c2', 1, 1, 1, '2020-01-07 09:34:57');
INSERT INTO `pp_files` VALUES (754, 279, 'http://insgle.huaren58.com/1a1fa603-3e91-4b62-9578-c2c2cc1ee0e2', 1, 1, 1, '2020-01-07 09:35:48');
INSERT INTO `pp_files` VALUES (755, 279, 'http://insgle.huaren58.com/d7df366a-4eba-42a8-b765-58f4e674a51d', 1, 1, 1, '2020-01-07 09:35:48');
INSERT INTO `pp_files` VALUES (756, 279, 'http://insgle.huaren58.com/0b84c527-631a-42b3-930e-68441bd3821c', 1, 1, 1, '2020-01-07 09:35:48');
INSERT INTO `pp_files` VALUES (757, 279, 'http://insgle.huaren58.com/500ee166-8ade-472c-a5da-d9f4fc637618', 1, 1, 1, '2020-01-07 09:35:48');
INSERT INTO `pp_files` VALUES (758, 280, 'http://insgle.huaren58.com/27524f05-6ed9-493e-aaf0-d452a1039f75', 1, 1, 1, '2020-01-07 09:37:55');
INSERT INTO `pp_files` VALUES (759, 280, 'http://insgle.huaren58.com/ebbb6e7b-13f7-40bf-b4ac-d46f25c99965', 1, 1, 1, '2020-01-07 09:37:55');
INSERT INTO `pp_files` VALUES (760, 280, 'http://insgle.huaren58.com/2a15fc74-a254-483d-9995-1a990fb9a502', 1, 1, 1, '2020-01-07 09:37:55');
INSERT INTO `pp_files` VALUES (761, 280, 'http://insgle.huaren58.com/324a118a-71fb-42c2-afd5-6c39a62cd926', 1, 1, 1, '2020-01-07 09:37:55');
INSERT INTO `pp_files` VALUES (762, 281, 'http://insgle.huaren58.com/e86a64dc-6220-4458-9c59-4a01c60585c7', 1, 1, 1, '2020-01-07 09:38:19');
INSERT INTO `pp_files` VALUES (763, 281, 'http://insgle.huaren58.com/fd6fcc0c-1ac1-4d80-9244-dcb00215aa0b', 1, 1, 1, '2020-01-07 09:38:19');
INSERT INTO `pp_files` VALUES (764, 281, 'http://insgle.huaren58.com/7c502cf2-a9b3-4f54-b80f-49c1b1704846', 1, 1, 1, '2020-01-07 09:38:19');
INSERT INTO `pp_files` VALUES (765, 282, 'http://insgle.huaren58.com/78724cd1-2744-4f0f-8d1f-3c28d1e082e0', 1, 1, 1, '2020-01-07 09:45:43');
INSERT INTO `pp_files` VALUES (766, 282, 'http://insgle.huaren58.com/929dcc50-c651-4a7e-a9b0-b1ca59bc8526', 1, 1, 1, '2020-01-07 09:45:43');
INSERT INTO `pp_files` VALUES (767, 282, 'http://insgle.huaren58.com/355d6fe4-f6dd-442d-be79-4c6b179899ef', 1, 1, 1, '2020-01-07 09:45:43');
INSERT INTO `pp_files` VALUES (768, 282, 'http://insgle.huaren58.com/9d5566c7-b104-47f4-89e9-efccae6580e4', 1, 1, 1, '2020-01-07 09:45:43');
INSERT INTO `pp_files` VALUES (769, 282, 'http://insgle.huaren58.com/11c4fb77-1134-4278-b6d2-05da3edbff90', 1, 1, 1, '2020-01-07 09:45:43');
INSERT INTO `pp_files` VALUES (770, 285, 'http://insgle.huaren58.com/60cd3be0-8bd6-4070-9426-751ef68c1b14', 1, 1, 1, '2020-01-07 10:16:50');
INSERT INTO `pp_files` VALUES (771, 285, 'http://insgle.huaren58.com/e3e94b6c-7e17-4123-aafc-e516e58e0dbc', 1, 1, 1, '2020-01-07 10:16:50');
INSERT INTO `pp_files` VALUES (772, 31, 'http://insgle.huaren58.com/fa0816c2-924b-4c17-874a-8784285e98c4', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (773, 31, 'http://insgle.huaren58.com/ec2cee34-2c8d-4b47-aecb-7b9b99e9c1d8', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (774, 31, 'http://insgle.huaren58.com/85d73b13-0821-4f92-a363-2b5f181136b8', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (775, 31, 'http://insgle.huaren58.com/275203e1-a50f-4f50-a49b-12db8db3719d', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (776, 31, 'http://insgle.huaren58.com/655c992b-0318-4d61-8076-f87523b499ce', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (777, 31, 'http://insgle.huaren58.com/7808fc20-2b92-4cee-b789-86ba305f8191', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (778, 31, 'http://insgle.huaren58.com/37d8be4a-c2e8-4b95-a1e4-ea6816068317', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (779, 31, 'http://insgle.huaren58.com/c790ac7f-227e-485f-a512-95801a8272d7', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (780, 31, 'http://insgle.huaren58.com/da94dc01-d936-4fa7-9453-72681bed8da7', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (781, 31, 'http://insgle.huaren58.com/082e59fd-28f9-4077-9e3c-e1958869cf96', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (782, 31, 'http://insgle.huaren58.com/e70c17fc-c994-4409-a040-814352c341ae', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (783, 31, 'http://insgle.huaren58.com/da565e61-c665-4436-a361-dc1b34777361', 1, 4, 1, '2020-01-07 10:39:15');
INSERT INTO `pp_files` VALUES (784, 286, 'http://insgle.huaren58.com/834d9985-efc7-4ba4-bf88-fb5dd7b6bc55', 1, 1, 1, '2020-01-07 11:05:47');
INSERT INTO `pp_files` VALUES (785, 286, 'http://insgle.huaren58.com/4e5f80cb-9e8b-4940-a180-d32c2f50d26a', 1, 1, 1, '2020-01-07 11:05:47');
INSERT INTO `pp_files` VALUES (786, 286, 'http://insgle.huaren58.com/2a823c48-faa0-49ed-9104-32bd7820840a', 1, 1, 1, '2020-01-07 11:05:47');
INSERT INTO `pp_files` VALUES (787, 289, 'http://insgle.huaren58.com/321c0fb7-0d22-4515-ae6e-548a4bbfecf8', 1, 1, 1, '2020-01-07 11:41:57');
INSERT INTO `pp_files` VALUES (788, 289, 'http://insgle.huaren58.com/c1704bb2-674f-4a70-b76d-712da9db4cd0', 1, 1, 1, '2020-01-07 11:41:57');
INSERT INTO `pp_files` VALUES (789, 289, 'http://insgle.huaren58.com/4143a3b2-cb91-48fc-9740-1bb744b5960d', 1, 1, 1, '2020-01-07 11:41:57');
INSERT INTO `pp_files` VALUES (790, 293, 'http://insgle.huaren58.com/1c4330a8-8dd8-4076-9b85-92ea1f60876c', 1, 1, 2, '2020-01-07 16:14:22');
INSERT INTO `pp_files` VALUES (791, 293, 'http://insgle.huaren58.com/789d3223-6c73-4eb2-87b1-72a491b3125a', 1, 1, 2, '2020-01-07 16:14:22');
INSERT INTO `pp_files` VALUES (792, 293, 'http://insgle.huaren58.com/8a8be742-5472-45ed-93a8-3e640c543a24', 1, 1, 2, '2020-01-07 16:14:22');
INSERT INTO `pp_files` VALUES (793, 294, 'http://insgle.huaren58.com/594e24d5-bade-43d3-8231-10ed7fbb3289', 1, 1, 2, '2020-01-07 16:43:31');
INSERT INTO `pp_files` VALUES (794, 294, 'http://insgle.huaren58.com/2c2e3576-1cc3-4e22-8ba4-0f29c8a29c31', 1, 1, 2, '2020-01-07 16:43:31');
INSERT INTO `pp_files` VALUES (797, 295, 'http://insgle.huaren58.com/14c82a3a-ed98-4d42-98ff-4a53ec768905', 1, 1, 1, '2020-01-07 19:23:41');
INSERT INTO `pp_files` VALUES (798, 296, 'http://insgle.huaren58.com/45f85409-ef6c-487f-a573-f38ea43dcfa7', 1, 1, 1, '2020-01-07 19:24:07');
INSERT INTO `pp_files` VALUES (799, 297, 'http://insgle.huaren58.com/7e89f27f-3e73-4aa1-aeb3-46f8d351c84b', 1, 1, 1, '2020-01-07 19:24:29');
INSERT INTO `pp_files` VALUES (800, 297, 'http://insgle.huaren58.com/3cd78521-20fc-4b94-a304-5c8ff6aa9cf1', 1, 1, 1, '2020-01-07 19:24:29');
INSERT INTO `pp_files` VALUES (801, 297, 'http://insgle.huaren58.com/d8d5d2fa-fa35-45e2-b515-72a219a4eccc', 1, 1, 1, '2020-01-07 19:24:29');
INSERT INTO `pp_files` VALUES (802, 298, 'http://insgle.huaren58.com/5c8cba90-fd32-43ff-ab28-87f82a373469', 1, 1, 1, '2020-01-07 19:24:48');
INSERT INTO `pp_files` VALUES (803, 298, 'http://insgle.huaren58.com/5baa05ad-04a2-4088-83b2-453091be7206', 1, 1, 1, '2020-01-07 19:24:48');
INSERT INTO `pp_files` VALUES (804, 298, 'http://insgle.huaren58.com/cc9b9b7c-2e95-4fd3-8ecf-235d5e7fee0f', 1, 1, 1, '2020-01-07 19:24:48');
INSERT INTO `pp_files` VALUES (805, 298, 'http://insgle.huaren58.com/3dda9760-ad27-4628-ba8c-3dfd9e73c03f', 1, 1, 1, '2020-01-07 19:24:48');
INSERT INTO `pp_files` VALUES (1354, 22, 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', 1, 3, 1, '2020-01-08 19:31:51');
INSERT INTO `pp_files` VALUES (1355, 22, 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-485983f52bcd3277', 1, 3, 1, '2020-01-08 19:33:00');
INSERT INTO `pp_files` VALUES (1356, 22, 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', 1, 3, 1, '2020-01-08 19:33:02');
INSERT INTO `pp_files` VALUES (1424, 76, 'http://insgle.huaren58.com/50867380-ddd7-4125-8f11-eb78ce1c96e4', 1, 3, 1, '2020-01-08 20:42:57');
INSERT INTO `pp_files` VALUES (1425, 76, 'http://insgle.huaren58.com/484f9cea-2d40-40b5-abf5-a2bc70709a62', 1, 3, 1, '2020-01-08 20:44:10');
INSERT INTO `pp_files` VALUES (1428, 299, 'http://insgle.huaren58.com/d2ffbade-434d-44ec-babd-d7a208f1433a', 1, 1, 1, '2020-01-09 17:18:45');
INSERT INTO `pp_files` VALUES (1429, 299, 'http://insgle.huaren58.com/4b7190ac-fb9b-4b1d-be57-47e732523615', 1, 1, 1, '2020-01-09 17:18:45');
INSERT INTO `pp_files` VALUES (1430, 299, 'http://insgle.huaren58.com/26206876-6f6e-43e2-a406-5e25dc218d40', 1, 1, 1, '2020-01-09 17:18:45');
INSERT INTO `pp_files` VALUES (1431, 299, 'http://insgle.huaren58.com/7c8c178b-a676-4e6c-8e01-b80e47f55a07', 1, 1, 1, '2020-01-09 17:18:45');
INSERT INTO `pp_files` VALUES (1432, 301, 'http://insgle.huaren58.com/ebab085f-1bce-4ff2-a334-3d38e82acd5a', 1, 1, 1, '2020-01-10 10:06:29');
INSERT INTO `pp_files` VALUES (1433, 301, 'http://insgle.huaren58.com/1045bc67-e5e5-40b3-b005-876d6a3c8362', 1, 1, 1, '2020-01-10 10:06:29');
INSERT INTO `pp_files` VALUES (1434, 302, 'http://insgle.huaren58.com/32ae4b52-a4ca-4d1b-b4b3-f96b7fed6903', 1, 1, 1, '2020-01-10 10:06:59');
INSERT INTO `pp_files` VALUES (1435, 302, 'http://insgle.huaren58.com/48bb2baa-29cd-4b1b-bbcc-35770d50be94', 1, 1, 1, '2020-01-10 10:06:59');
INSERT INTO `pp_files` VALUES (1461, 93, 'http://insgle.huaren58.com/c593e3e0-5a85-4912-b903-599ca583cd42', 1, 3, 1, '2020-01-10 14:19:44');
INSERT INTO `pp_files` VALUES (1462, 303, 'http://insgle.huaren58.com/91767c97-75b4-47f0-a5a6-70ed724f7ac3', 2, 1, 1, '2020-01-10 14:17:14');
INSERT INTO `pp_files` VALUES (1463, 305, 'http://insgle.huaren58.com/f39d09c0-bded-466a-9b6c-394aeebac05c', 1, 1, 1, '2020-01-10 14:23:23');
INSERT INTO `pp_files` VALUES (1520, 37, 'http://insgle.huaren58.com/bd11c752-adb7-44e5-b3f1-bef53a248b75', 1, 3, 1, '2020-01-10 17:58:05');
INSERT INTO `pp_files` VALUES (1521, 37, 'http://insgle.huaren58.com/e5a9e1e7-988b-4236-9711-5cc3347526d0', 1, 3, 1, '2020-01-10 17:58:06');
INSERT INTO `pp_files` VALUES (1522, 309, 'http://insgle.huaren58.com/1c33f8d1-c74f-49f3-aa60-1d79e62c1b91', 1, 1, 1, '2020-01-11 14:07:38');
INSERT INTO `pp_files` VALUES (1523, 311, 'http://insgle.huaren58.com/189a0ba6-d30d-480c-915b-3a3e91394743', 1, 1, 1, '2020-01-11 14:10:35');
INSERT INTO `pp_files` VALUES (1524, 311, 'http://insgle.huaren58.com/e07bd4c0-3269-496e-9398-c1be36082325', 1, 1, 1, '2020-01-11 14:10:35');
INSERT INTO `pp_files` VALUES (1525, 312, 'http://insgle.huaren58.com/5b6f7a42-82fa-4239-a283-7a5405231310', 1, 1, 1, '2020-01-11 14:30:18');
INSERT INTO `pp_files` VALUES (1526, 312, 'http://insgle.huaren58.com/d2cb9096-402c-4782-98c1-338b7cd2f44b', 1, 1, 1, '2020-01-11 14:30:18');
INSERT INTO `pp_files` VALUES (1527, 314, 'http://insgle.huaren58.com/7f29807d-b120-4e52-aea9-4bde896771e6', 2, 1, 1, '2020-01-11 15:18:28');
INSERT INTO `pp_files` VALUES (1528, 315, 'http://insgle.huaren58.com/e18c1609-f002-4caa-8100-8c289f38cc5b', 2, 1, 1, '2020-01-11 15:24:29');
INSERT INTO `pp_files` VALUES (1529, 316, 'http://insgle.huaren58.com/5d9823c0-67bb-4cbc-a7b3-2f4003009f64', 2, 1, 1, '2020-01-11 15:26:07');
INSERT INTO `pp_files` VALUES (1530, 113, 'http://insgle.huaren58.com/74baabc2-3d17-4a3b-90c4-c495af10a709', 1, 3, 1, '2020-01-11 15:32:31');
INSERT INTO `pp_files` VALUES (1531, 113, 'http://insgle.huaren58.com/de8a69ac-0c39-46ee-a7d8-9269f56a07ed', 1, 3, 1, '2020-01-11 15:32:31');
INSERT INTO `pp_files` VALUES (1532, 113, 'http://insgle.huaren58.com/5340e984-e63f-4a17-8738-1c0e9dc68ce4', 1, 3, 1, '2020-01-11 15:32:31');
INSERT INTO `pp_files` VALUES (1533, 113, 'http://insgle.huaren58.com/f8e3e79a-c64a-47c9-ae14-8c63a01c4ab2', 1, 3, 1, '2020-01-11 15:32:31');
INSERT INTO `pp_files` VALUES (1534, 113, 'http://insgle.huaren58.com/e586de00-bf43-48f7-b6f7-7862875d3cc5', 1, 3, 1, '2020-01-11 15:32:31');
INSERT INTO `pp_files` VALUES (1535, 113, 'http://insgle.huaren58.com/6887e34f-8a26-4e84-94ff-796446a5a953', 1, 3, 1, '2020-01-11 15:32:32');
INSERT INTO `pp_files` VALUES (1536, 113, 'http://insgle.huaren58.com/b751bc24-0d68-429c-975f-0f311404f45e', 1, 3, 1, '2020-01-11 15:32:32');
INSERT INTO `pp_files` VALUES (1537, 113, 'http://insgle.huaren58.com/b6fe4197-a8a6-4483-b66a-10f7432cf5f0', 1, 3, 1, '2020-01-11 15:32:32');
INSERT INTO `pp_files` VALUES (1538, 113, 'http://insgle.huaren58.com/e10747e7-60ec-44df-9cdd-cc7e0ea1692b', 1, 3, 1, '2020-01-11 15:32:44');
INSERT INTO `pp_files` VALUES (1539, 113, 'http://insgle.huaren58.com/c44e8d80-dd83-4466-8600-b77c94fc4073', 1, 3, 1, '2020-01-11 15:32:44');
INSERT INTO `pp_files` VALUES (1540, 113, 'http://insgle.huaren58.com/4d5b7110-be9d-47bf-973d-e68fb54be0ca', 1, 3, 1, '2020-01-11 15:32:44');
INSERT INTO `pp_files` VALUES (1541, 113, 'http://insgle.huaren58.com/7d6f4a86-0d53-48af-9b68-cecafd112980', 1, 3, 1, '2020-01-11 15:32:44');
INSERT INTO `pp_files` VALUES (1542, 113, 'http://insgle.huaren58.com/a2e8da35-e03f-4183-9ce3-458fc416a29c', 1, 3, 1, '2020-01-11 15:32:44');
INSERT INTO `pp_files` VALUES (1543, 113, 'http://insgle.huaren58.com/3d8258d7-5c9f-4728-a717-64145c193455', 1, 3, 1, '2020-01-11 15:32:44');
INSERT INTO `pp_files` VALUES (1544, 113, 'http://insgle.huaren58.com/dcfdd9af-3627-4187-9006-3fde0d222fda', 1, 3, 1, '2020-01-11 15:32:44');
INSERT INTO `pp_files` VALUES (1545, 113, 'http://insgle.huaren58.com/c3b9128f-dc54-4215-841a-73ced2510bd4', 1, 3, 1, '2020-01-11 15:32:44');
INSERT INTO `pp_files` VALUES (1546, 113, 'http://insgle.huaren58.com/bc49b97a-9139-4f82-a35c-c5fe14a228ba', 1, 3, 1, '2020-01-11 15:32:44');
INSERT INTO `pp_files` VALUES (1547, 317, 'http://insgle.huaren58.com/2671489a-6e20-4b46-add8-6fe5acc155f9', 2, 1, 1, '2020-01-11 15:34:39');
INSERT INTO `pp_files` VALUES (1548, 114, 'http://insgle.huaren58.com/4f259fb6-91b5-42be-9100-e2a5faf3ea7a', 1, 3, 1, '2020-01-11 17:00:20');
INSERT INTO `pp_files` VALUES (1549, 114, 'http://insgle.huaren58.com/b700ca99-f76f-4f0d-aced-5d393d41dd2d', 1, 3, 1, '2020-01-11 17:00:20');
INSERT INTO `pp_files` VALUES (1550, 114, 'http://insgle.huaren58.com/54af6343-dce3-48c9-96fd-9f0cbee5659a', 1, 3, 1, '2020-01-11 17:00:20');
INSERT INTO `pp_files` VALUES (1551, 114, 'http://insgle.huaren58.com/1eab4321-f924-4f63-a722-77406db44775', 1, 3, 1, '2020-01-11 17:00:37');
INSERT INTO `pp_files` VALUES (1552, 114, 'http://insgle.huaren58.com/3a806b4c-15b7-4816-b1ed-19d217decf9b', 1, 3, 1, '2020-01-11 17:00:37');
INSERT INTO `pp_files` VALUES (1553, 114, 'http://insgle.huaren58.com/74ed7303-ce65-45e6-b7e4-45422e2c8732', 1, 3, 1, '2020-01-11 17:00:37');
INSERT INTO `pp_files` VALUES (1554, 114, 'http://insgle.huaren58.com/b71ef133-e44f-4457-83e9-54128501a15c', 1, 3, 1, '2020-01-11 17:00:37');
INSERT INTO `pp_files` VALUES (1555, 114, 'http://insgle.huaren58.com/3f59efe4-515f-4201-8927-ed933f9e3143', 1, 3, 1, '2020-01-11 17:00:37');
INSERT INTO `pp_files` VALUES (1556, 114, 'http://insgle.huaren58.com/5210f0fa-fd29-4e8b-b1ad-b2700ae98f40', 1, 3, 1, '2020-01-11 17:00:37');
INSERT INTO `pp_files` VALUES (1557, 114, 'http://insgle.huaren58.com/bd11600d-ed1b-4dcb-a5ac-176fae5ffe53', 1, 3, 1, '2020-01-11 17:00:37');
INSERT INTO `pp_files` VALUES (1558, 114, 'http://insgle.huaren58.com/41e7f9e6-eaa2-4e33-84b2-e077a25aa25b', 1, 3, 1, '2020-01-11 17:00:37');
INSERT INTO `pp_files` VALUES (1559, 114, 'http://insgle.huaren58.com/d9498f93-3981-4706-a525-51f4e12095d6', 1, 3, 1, '2020-01-11 17:00:38');
INSERT INTO `pp_files` VALUES (1560, 319, 'http://insgle.huaren58.com/da7e7086-09e3-4b63-8bc5-2f319a07a9ef', 2, 1, 1, '2020-01-13 10:00:29');

-- ----------------------------
-- Table structure for pp_gift
-- ----------------------------
DROP TABLE IF EXISTS `pp_gift`;
CREATE TABLE `pp_gift`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '礼物名称',
  `diamond` int(10) NOT NULL COMMENT '需要钻石数量',
  `money` decimal(8, 2) NULL DEFAULT NULL COMMENT '礼物金额',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态(0:取消 1:启用)',
  `gift_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '礼物路径',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '礼物表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_gift
-- ----------------------------
INSERT INTO `pp_gift` VALUES (1, '飞机', 10, 12.50, 0, 'http://img3.imgtn.bdimg.com/it/u=3563320627,133946822&fm=26&gp=0.jpg', '2019-12-11 16:59:49', '2019-12-27 11:47:13');
INSERT INTO `pp_gift` VALUES (2, '鲜花', 5, 5.00, 1, 'http://file02.16sucai.com/d/file/2014/0704/e53c868ee9e8e7b28c424b56afe2066d.jpg', '2019-12-16 13:49:36', '2019-12-27 09:35:11');
INSERT INTO `pp_gift` VALUES (3, '汽车', 15, 15.00, 1, 'http://img5.imgtn.bdimg.com/it/u=3777632262,1910177031&fm=15&gp=0.jpg', '2019-12-16 13:50:23', '2019-12-27 09:36:58');
INSERT INTO `pp_gift` VALUES (5, '礼物', 100, 10.00, 0, 'http://img5.imgtn.bdimg.com/it/u=2196397064,3841535905&fm=26&gp=0.jpg', '2019-12-21 10:38:17', '2019-12-27 17:01:15');
INSERT INTO `pp_gift` VALUES (9, '测试', 999, 10.00, 0, 'http://q2fysf8c1.bkt.clouddn.com/ca34025d-464e-48ce-927e-0bf18fa88d02', '2019-12-27 15:44:01', '2019-12-27 17:06:44');
INSERT INTO `pp_gift` VALUES (10, '测试', 5, 100.00, 0, NULL, '2019-12-27 16:29:10', '2019-12-27 17:00:50');
INSERT INTO `pp_gift` VALUES (11, '爱心', 50, 100.00, 1, 'http://q2fysf8c1.bkt.clouddn.com/b0552c8a-42e6-47a1-9cd1-01db64c253a3', '2019-12-27 17:09:10', NULL);
INSERT INTO `pp_gift` VALUES (12, '火箭', 100, 10.00, 1, 'http://q2fysf8c1.bkt.clouddn.com/f73e74ed-910b-444d-90f6-44617e8e2310', '2019-12-27 17:17:04', NULL);
INSERT INTO `pp_gift` VALUES (13, '鲜花', 100, 100.00, 1, 'http://q2fysf8c1.bkt.clouddn.com/5b74b80d-112c-41de-819b-c23ac2ce19b3', '2019-12-27 17:17:20', NULL);
INSERT INTO `pp_gift` VALUES (14, '星星', 10, 10.00, 0, 'http://q2fysf8c1.bkt.clouddn.com/8b6e3e10-020d-48a9-b041-d98b4027dbec', '2019-12-27 17:18:36', '2019-12-31 14:14:50');
INSERT INTO `pp_gift` VALUES (15, '爱', 5, 100.00, 1, 'http://q2fysf8c1.bkt.clouddn.com/59a4a53a-0b30-4526-94b0-f582bc1d971b', '2019-12-27 17:18:53', NULL);

-- ----------------------------
-- Table structure for pp_gift_record
-- ----------------------------
DROP TABLE IF EXISTS `pp_gift_record`;
CREATE TABLE `pp_gift_record`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '礼物记录表',
  `gift_id` int(11) NULL DEFAULT NULL COMMENT '礼物Id',
  `user_id` int(32) NULL DEFAULT NULL COMMENT '赠送人id',
  `by_user_id` int(32) NULL DEFAULT NULL COMMENT '收取人id',
  `gift_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '礼物类型',
  `gift_number` int(10) NULL DEFAULT NULL COMMENT '礼物数量',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '礼物记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_gift_record
-- ----------------------------
INSERT INTO `pp_gift_record` VALUES (1, 1, 23, 22, '', 6, '2019-12-11 17:49:36');
INSERT INTO `pp_gift_record` VALUES (2, 2, 23, 22, '', 6, '2019-12-11 17:49:39');
INSERT INTO `pp_gift_record` VALUES (3, 3, 23, 22, '', 6, '2019-12-11 17:49:47');
INSERT INTO `pp_gift_record` VALUES (4, 3, 23, 22, '', 6, '2019-12-11 17:49:48');
INSERT INTO `pp_gift_record` VALUES (5, 2, 23, 22, '', 6, '2019-12-11 17:49:50');
INSERT INTO `pp_gift_record` VALUES (6, 1, 23, 22, '', 6, '2019-12-11 17:51:53');
INSERT INTO `pp_gift_record` VALUES (7, 1, 23, 23, NULL, 2, '2019-12-11 17:51:54');
INSERT INTO `pp_gift_record` VALUES (8, 1, NULL, 23, NULL, 2, '2019-12-11 17:51:54');
INSERT INTO `pp_gift_record` VALUES (9, 1, NULL, 23, NULL, 2, '2019-12-11 17:53:57');
INSERT INTO `pp_gift_record` VALUES (10, 1, NULL, 23, NULL, 2, '2019-12-11 17:53:58');
INSERT INTO `pp_gift_record` VALUES (11, 1, NULL, 23, NULL, 2, '2019-12-12 15:55:24');
INSERT INTO `pp_gift_record` VALUES (12, 1, 25, 23, NULL, 2, '2019-12-12 15:56:26');
INSERT INTO `pp_gift_record` VALUES (13, 1, 36, 37, NULL, 10, '2019-12-18 18:11:10');
INSERT INTO `pp_gift_record` VALUES (14, 1, 36, 37, NULL, 10, '2019-12-18 18:12:05');
INSERT INTO `pp_gift_record` VALUES (15, 1, 36, 37, NULL, 10, '2019-12-18 18:14:19');
INSERT INTO `pp_gift_record` VALUES (16, 1, 36, 23, NULL, 2, '2019-12-19 10:25:27');
INSERT INTO `pp_gift_record` VALUES (17, 1, 36, 23, NULL, 2, '2019-12-19 10:25:48');
INSERT INTO `pp_gift_record` VALUES (18, 1, 36, 23, NULL, 2, '2019-12-19 10:26:25');
INSERT INTO `pp_gift_record` VALUES (19, 1, 36, 23, NULL, 2, '2019-12-19 10:28:38');
INSERT INTO `pp_gift_record` VALUES (20, 1, 36, 23, NULL, 2, '2019-12-19 10:30:11');
INSERT INTO `pp_gift_record` VALUES (21, 1, 36, 23, NULL, 2, '2019-12-19 10:31:23');
INSERT INTO `pp_gift_record` VALUES (22, 1, 36, 23, NULL, 2, '2019-12-19 10:41:28');
INSERT INTO `pp_gift_record` VALUES (23, 1, 36, 23, NULL, 2, '2019-12-19 10:41:33');
INSERT INTO `pp_gift_record` VALUES (24, 1, 36, 23, NULL, 2, '2019-12-19 10:41:52');
INSERT INTO `pp_gift_record` VALUES (25, 1, 36, 23, NULL, 2, '2019-12-19 11:00:08');
INSERT INTO `pp_gift_record` VALUES (26, 1, 36, 23, NULL, 2, '2019-12-19 11:03:43');
INSERT INTO `pp_gift_record` VALUES (27, 1, 36, 23, NULL, 2, '2019-12-19 11:03:55');
INSERT INTO `pp_gift_record` VALUES (28, 1, 36, 23, NULL, 2, '2019-12-19 11:04:02');
INSERT INTO `pp_gift_record` VALUES (29, 1, 36, 23, NULL, 2, '2019-12-21 13:59:39');
INSERT INTO `pp_gift_record` VALUES (30, 1, 36, 23, NULL, 2, '2019-12-21 14:00:22');
INSERT INTO `pp_gift_record` VALUES (31, 1, 36, 23, NULL, 2, '2019-12-21 14:00:52');
INSERT INTO `pp_gift_record` VALUES (32, 1, 36, 23, NULL, 2, '2019-12-21 14:00:57');
INSERT INTO `pp_gift_record` VALUES (33, 1, 36, 23, NULL, 2, '2019-12-21 14:01:24');
INSERT INTO `pp_gift_record` VALUES (34, 1, 36, 23, NULL, 2, '2019-12-21 14:01:54');
INSERT INTO `pp_gift_record` VALUES (35, 1, 36, 23, NULL, 2, '2019-12-21 14:02:25');
INSERT INTO `pp_gift_record` VALUES (36, 1, 36, 23, NULL, 2, '2019-12-21 14:03:54');
INSERT INTO `pp_gift_record` VALUES (37, 2, 37, 22, '飞机', 1, '2019-12-21 17:35:19');
INSERT INTO `pp_gift_record` VALUES (38, 2, 37, 22, '花', 1, '2019-12-21 17:35:47');
INSERT INTO `pp_gift_record` VALUES (39, 2, 37, 22, '火箭', 1, '2019-12-21 17:44:31');
INSERT INTO `pp_gift_record` VALUES (40, 2, 37, 22, '花', 1, '2019-12-21 17:47:18');
INSERT INTO `pp_gift_record` VALUES (41, 1, 36, 23, NULL, 2, '2019-12-24 15:10:29');
INSERT INTO `pp_gift_record` VALUES (42, 1, 36, 23, NULL, 2, '2019-12-24 15:11:07');
INSERT INTO `pp_gift_record` VALUES (43, 1, 36, 23, NULL, 2, '2019-12-24 15:13:19');
INSERT INTO `pp_gift_record` VALUES (44, 2, 35, 64, NULL, 1, '2019-12-28 12:01:01');
INSERT INTO `pp_gift_record` VALUES (45, 1, 35, 64, NULL, 1, '2019-12-28 13:31:41');
INSERT INTO `pp_gift_record` VALUES (46, 2, 35, 64, NULL, 1, '2019-12-28 13:32:22');
INSERT INTO `pp_gift_record` VALUES (47, 3, 35, 64, NULL, 1, '2019-12-28 13:39:48');
INSERT INTO `pp_gift_record` VALUES (48, 2, 35, 62, NULL, 1, '2019-12-28 16:04:42');
INSERT INTO `pp_gift_record` VALUES (49, 2, 35, 62, NULL, 1, '2019-12-28 16:04:48');
INSERT INTO `pp_gift_record` VALUES (50, 11, 35, 62, NULL, 1, '2019-12-28 16:09:42');
INSERT INTO `pp_gift_record` VALUES (51, 3, 35, 62, NULL, 1, '2019-12-28 16:10:14');
INSERT INTO `pp_gift_record` VALUES (52, 1, 35, 62, NULL, 1, '2019-12-28 16:11:14');
INSERT INTO `pp_gift_record` VALUES (53, 3, 35, 62, NULL, 1, '2019-12-28 16:15:32');
INSERT INTO `pp_gift_record` VALUES (54, 2, 35, 62, NULL, 1, '2019-12-28 16:15:45');
INSERT INTO `pp_gift_record` VALUES (55, 2, 35, 62, NULL, 1, '2019-12-28 16:16:36');
INSERT INTO `pp_gift_record` VALUES (56, 9, 35, 62, NULL, 1, '2019-12-28 16:16:45');
INSERT INTO `pp_gift_record` VALUES (57, 3, 35, 62, NULL, 1, '2019-12-28 16:23:19');
INSERT INTO `pp_gift_record` VALUES (58, 9, 35, 62, NULL, 1, '2019-12-28 16:25:40');
INSERT INTO `pp_gift_record` VALUES (59, 2, 35, 62, NULL, 1, '2019-12-28 19:49:13');
INSERT INTO `pp_gift_record` VALUES (60, 3, 35, 56, NULL, 1, '2019-12-28 19:55:10');
INSERT INTO `pp_gift_record` VALUES (61, 2, 76, 22, NULL, 1, '2020-01-08 15:16:00');
INSERT INTO `pp_gift_record` VALUES (62, 2, 76, 22, NULL, 1, '2020-01-08 15:16:09');
INSERT INTO `pp_gift_record` VALUES (63, 14, 76, 22, NULL, 1, '2020-01-08 15:16:25');
INSERT INTO `pp_gift_record` VALUES (64, 1, 85, 76, NULL, 2, '2020-01-08 18:40:26');
INSERT INTO `pp_gift_record` VALUES (65, 1, 85, 76, NULL, 2, '2020-01-08 18:40:33');
INSERT INTO `pp_gift_record` VALUES (66, 1, 85, 76, NULL, 2, '2020-01-08 18:41:37');
INSERT INTO `pp_gift_record` VALUES (67, 1, 85, 76, NULL, 2, '2020-01-08 18:41:38');
INSERT INTO `pp_gift_record` VALUES (68, 1, 85, 76, NULL, 2, '2020-01-08 18:41:44');
INSERT INTO `pp_gift_record` VALUES (69, 1, 85, 76, NULL, 2, '2020-01-08 18:43:45');
INSERT INTO `pp_gift_record` VALUES (70, 1, 85, 76, NULL, 2, '2020-01-08 18:44:35');
INSERT INTO `pp_gift_record` VALUES (71, 1, 85, 76, NULL, 2, '2020-01-08 18:44:52');
INSERT INTO `pp_gift_record` VALUES (72, 1, 85, 76, NULL, 2, '2020-01-08 18:45:44');
INSERT INTO `pp_gift_record` VALUES (73, 1, 85, 76, NULL, 2, '2020-01-08 18:46:48');
INSERT INTO `pp_gift_record` VALUES (74, 1, 85, 76, NULL, 2, '2020-01-08 18:47:03');
INSERT INTO `pp_gift_record` VALUES (75, 1, 85, 76, NULL, 2, '2020-01-08 18:48:45');
INSERT INTO `pp_gift_record` VALUES (76, 1, 85, 76, NULL, 2, '2020-01-08 18:50:22');
INSERT INTO `pp_gift_record` VALUES (77, 1, 85, 76, NULL, 2, '2020-01-08 18:50:35');
INSERT INTO `pp_gift_record` VALUES (78, 1, 85, 76, NULL, 2, '2020-01-08 18:50:40');
INSERT INTO `pp_gift_record` VALUES (79, 1, 85, 76, NULL, 2, '2020-01-08 18:51:49');
INSERT INTO `pp_gift_record` VALUES (80, 1, 85, 76, NULL, 2, '2020-01-08 18:52:03');
INSERT INTO `pp_gift_record` VALUES (81, 1, 85, 76, NULL, 2, '2020-01-08 18:52:46');
INSERT INTO `pp_gift_record` VALUES (82, 1, 85, 76, NULL, 2, '2020-01-08 19:01:51');
INSERT INTO `pp_gift_record` VALUES (83, 1, 85, 76, NULL, 2, '2020-01-08 19:05:44');
INSERT INTO `pp_gift_record` VALUES (84, 1, 85, 76, NULL, 2, '2020-01-09 09:24:20');
INSERT INTO `pp_gift_record` VALUES (85, 1, 85, 76, NULL, 2, '2020-01-09 09:25:58');
INSERT INTO `pp_gift_record` VALUES (86, 1, 85, 76, NULL, 2, '2020-01-09 09:26:10');
INSERT INTO `pp_gift_record` VALUES (87, 1, 85, 76, NULL, 2, '2020-01-09 09:27:51');
INSERT INTO `pp_gift_record` VALUES (88, 1, 85, 76, NULL, 2, '2020-01-09 09:28:59');
INSERT INTO `pp_gift_record` VALUES (89, 1, 85, 76, NULL, 2, '2020-01-09 09:33:52');
INSERT INTO `pp_gift_record` VALUES (90, 1, 85, 76, NULL, 2, '2020-01-09 09:38:46');
INSERT INTO `pp_gift_record` VALUES (91, 1, 85, 76, NULL, 2, '2020-01-09 09:39:32');
INSERT INTO `pp_gift_record` VALUES (92, 1, 85, 76, NULL, 2, '2020-01-09 09:48:59');
INSERT INTO `pp_gift_record` VALUES (93, 1, 85, 76, NULL, 2, '2020-01-09 09:50:01');
INSERT INTO `pp_gift_record` VALUES (94, 1, 85, 76, NULL, 2, '2020-01-09 09:51:39');
INSERT INTO `pp_gift_record` VALUES (95, 1, 85, 76, NULL, 2, '2020-01-09 09:52:12');
INSERT INTO `pp_gift_record` VALUES (96, 1, 85, 76, NULL, 2, '2020-01-09 09:53:22');
INSERT INTO `pp_gift_record` VALUES (97, 1, 85, 76, NULL, 2, '2020-01-09 09:54:09');
INSERT INTO `pp_gift_record` VALUES (98, 1, 85, 76, NULL, 2, '2020-01-09 09:55:03');
INSERT INTO `pp_gift_record` VALUES (99, 1, 85, 76, NULL, 2, '2020-01-09 09:55:13');
INSERT INTO `pp_gift_record` VALUES (100, 1, 85, 76, NULL, 2, '2020-01-09 09:55:31');
INSERT INTO `pp_gift_record` VALUES (101, 1, 85, 76, NULL, 2, '2020-01-09 09:55:40');
INSERT INTO `pp_gift_record` VALUES (102, 1, 85, 76, NULL, 2, '2020-01-09 09:56:56');
INSERT INTO `pp_gift_record` VALUES (103, 1, 85, 76, NULL, 2, '2020-01-09 09:57:14');
INSERT INTO `pp_gift_record` VALUES (104, 1, 85, 76, NULL, 2, '2020-01-09 10:00:41');
INSERT INTO `pp_gift_record` VALUES (105, 1, 81, 78, NULL, 1, '2020-01-09 13:59:31');
INSERT INTO `pp_gift_record` VALUES (106, 1, 81, 78, NULL, 1, '2020-01-09 13:59:57');
INSERT INTO `pp_gift_record` VALUES (107, 15, 81, 78, NULL, 1, '2020-01-09 14:00:08');
INSERT INTO `pp_gift_record` VALUES (108, 3, 81, 78, NULL, 2, '2020-01-09 14:03:59');
INSERT INTO `pp_gift_record` VALUES (109, 1, 81, 76, NULL, 1, '2020-01-09 14:52:10');
INSERT INTO `pp_gift_record` VALUES (110, 2, 86, 79, NULL, 1, '2020-01-10 10:22:40');
INSERT INTO `pp_gift_record` VALUES (111, 2, 76, 79, NULL, 8, '2020-01-10 10:51:11');
INSERT INTO `pp_gift_record` VALUES (112, 2, 86, 22, NULL, 1, '2020-01-10 11:21:56');
INSERT INTO `pp_gift_record` VALUES (113, 2, 86, 22, NULL, 1, '2020-01-10 11:22:08');
INSERT INTO `pp_gift_record` VALUES (114, 5, 86, 22, NULL, 8, '2020-01-10 11:22:35');
INSERT INTO `pp_gift_record` VALUES (115, 12, 86, 22, NULL, 8, '2020-01-10 11:25:15');
INSERT INTO `pp_gift_record` VALUES (116, 1, 86, 22, NULL, 1, '2020-01-10 11:26:51');
INSERT INTO `pp_gift_record` VALUES (117, 3, 86, 22, NULL, 1, '2020-01-10 11:27:36');
INSERT INTO `pp_gift_record` VALUES (118, 2, 86, 22, NULL, 1, '2020-01-10 11:37:34');
INSERT INTO `pp_gift_record` VALUES (119, 2, 76, 85, NULL, 5, '2020-01-10 17:41:53');
INSERT INTO `pp_gift_record` VALUES (120, 3, 76, 85, NULL, 4, '2020-01-10 17:42:34');
INSERT INTO `pp_gift_record` VALUES (121, 3, 76, 85, NULL, 4, '2020-01-10 17:43:01');
INSERT INTO `pp_gift_record` VALUES (122, 3, 76, 85, NULL, 4, '2020-01-10 17:43:13');
INSERT INTO `pp_gift_record` VALUES (123, 14, 76, 85, NULL, 8, '2020-01-10 17:45:36');
INSERT INTO `pp_gift_record` VALUES (124, 14, 76, 85, NULL, 4, '2020-01-10 17:46:04');
INSERT INTO `pp_gift_record` VALUES (125, 5, 76, 85, NULL, 7, '2020-01-10 17:46:38');
INSERT INTO `pp_gift_record` VALUES (126, 13, 76, 85, NULL, 1, '2020-01-10 17:49:44');
INSERT INTO `pp_gift_record` VALUES (127, 9, 37, 94, NULL, 1, '2020-01-10 17:59:00');
INSERT INTO `pp_gift_record` VALUES (128, 13, 37, 94, NULL, 1, '2020-01-10 18:00:37');
INSERT INTO `pp_gift_record` VALUES (129, 13, 37, 94, NULL, 1, '2020-01-10 18:00:40');
INSERT INTO `pp_gift_record` VALUES (130, 1, 37, 94, NULL, 1, '2020-01-10 18:02:17');
INSERT INTO `pp_gift_record` VALUES (131, 12, 37, 94, NULL, 1, '2020-01-10 18:02:22');
INSERT INTO `pp_gift_record` VALUES (132, 13, 37, 94, NULL, 1, '2020-01-10 18:02:31');
INSERT INTO `pp_gift_record` VALUES (133, 14, 37, 94, NULL, 1, '2020-01-10 18:02:54');
INSERT INTO `pp_gift_record` VALUES (134, 3, 37, 94, NULL, 1, '2020-01-10 18:08:52');
INSERT INTO `pp_gift_record` VALUES (135, 1, 37, 22, NULL, 10, '2020-01-10 18:45:54');
INSERT INTO `pp_gift_record` VALUES (136, 1, 37, 22, NULL, 10, '2020-01-10 18:52:00');
INSERT INTO `pp_gift_record` VALUES (137, 2, 37, 23, NULL, 10, '2020-01-10 19:01:21');
INSERT INTO `pp_gift_record` VALUES (138, 1, 37, 63, NULL, 1, '2020-01-10 19:01:09');
INSERT INTO `pp_gift_record` VALUES (139, 3, 37, 63, NULL, 1, '2020-01-10 19:04:36');
INSERT INTO `pp_gift_record` VALUES (140, 5, 76, 84, NULL, 1, '2020-01-10 19:10:53');
INSERT INTO `pp_gift_record` VALUES (141, 13, 76, 84, NULL, 5, '2020-01-10 19:11:03');
INSERT INTO `pp_gift_record` VALUES (142, 2, 37, 76, NULL, 10, '2020-01-10 19:15:18');
INSERT INTO `pp_gift_record` VALUES (143, 3, 37, 76, NULL, 10, '2020-01-10 19:16:28');
INSERT INTO `pp_gift_record` VALUES (144, 14, 37, 63, NULL, 1, '2020-01-11 09:27:24');
INSERT INTO `pp_gift_record` VALUES (145, 14, 79, 37, NULL, 6, '2020-01-11 09:31:13');
INSERT INTO `pp_gift_record` VALUES (146, 12, 86, 96, NULL, 1, '2020-01-11 14:25:40');
INSERT INTO `pp_gift_record` VALUES (147, 12, 86, 96, NULL, 1, '2020-01-11 14:26:17');
INSERT INTO `pp_gift_record` VALUES (148, 5, 86, 96, NULL, 1, '2020-01-11 14:26:39');
INSERT INTO `pp_gift_record` VALUES (149, 3, 114, 76, NULL, 1, '2020-01-11 16:47:31');
INSERT INTO `pp_gift_record` VALUES (150, 3, 114, 76, NULL, 8, '2020-01-11 16:47:37');
INSERT INTO `pp_gift_record` VALUES (151, 13, 114, 76, NULL, 7, '2020-01-11 16:47:43');

-- ----------------------------
-- Table structure for pp_income
-- ----------------------------
DROP TABLE IF EXISTS `pp_income`;
CREATE TABLE `pp_income`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '收入记录主键',
  `user_id` int(32) NULL DEFAULT NULL COMMENT '用户id',
  `presenter_id` int(32) NULL DEFAULT NULL COMMENT '赠送人id',
  `presenter_gift` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '赠送人礼物',
  `income_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '收入金额',
  `income_time` datetime(0) NULL DEFAULT NULL COMMENT '收入时间',
  `gift_number` int(11) NULL DEFAULT NULL COMMENT '礼物数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户收入表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_income
-- ----------------------------
INSERT INTO `pp_income` VALUES (1, 37, 23, '1', 5.00, '2019-12-03 09:02:00', NULL);
INSERT INTO `pp_income` VALUES (2, 37, 36, '飞机', 0.25, '2019-12-19 10:26:33', 5);
INSERT INTO `pp_income` VALUES (3, 37, 25, '飞机', 0.25, '2019-12-19 10:29:50', 5);
INSERT INTO `pp_income` VALUES (4, 37, 22, '飞机', 0.25, '2019-12-19 10:30:30', 5);
INSERT INTO `pp_income` VALUES (5, 37, 35, '飞机', 0.25, '2019-12-19 10:31:23', 5);
INSERT INTO `pp_income` VALUES (6, 37, 36, '飞机', 0.25, '2019-12-19 10:41:28', 5);
INSERT INTO `pp_income` VALUES (7, 23, 36, '飞机', 0.25, '2019-12-19 10:41:33', 5);
INSERT INTO `pp_income` VALUES (8, 23, 36, '飞机', 0.25, '2019-12-19 10:41:52', NULL);
INSERT INTO `pp_income` VALUES (9, 23, 36, '飞机', 0.25, '2019-12-19 11:01:41', NULL);
INSERT INTO `pp_income` VALUES (10, 23, 36, '飞机', 0.25, '2019-12-19 11:03:43', NULL);
INSERT INTO `pp_income` VALUES (11, 23, 36, '飞机', 0.25, '2019-12-19 11:03:55', NULL);
INSERT INTO `pp_income` VALUES (12, 23, 36, '飞机', 0.25, '2019-12-19 11:04:02', NULL);
INSERT INTO `pp_income` VALUES (13, 23, 36, '飞机', 0.25, '2019-12-21 14:03:58', NULL);
INSERT INTO `pp_income` VALUES (14, 22, 37, '鲜花', 0.06, '2019-12-21 17:47:29', NULL);
INSERT INTO `pp_income` VALUES (15, 23, 36, '飞机', 2.50, '2019-12-24 15:10:29', 2);
INSERT INTO `pp_income` VALUES (16, 23, 36, '飞机', 2.50, '2019-12-24 15:11:07', 2);
INSERT INTO `pp_income` VALUES (17, 23, 36, '飞机', 2.50, '2019-12-24 15:13:19', 2);
INSERT INTO `pp_income` VALUES (18, 64, 35, '鲜花', 0.63, '2019-12-28 12:01:02', 1);
INSERT INTO `pp_income` VALUES (19, 64, 35, '飞机', 1.25, '2019-12-28 13:31:41', 1);
INSERT INTO `pp_income` VALUES (20, 64, 35, '鲜花', 0.63, '2019-12-28 13:32:22', 1);
INSERT INTO `pp_income` VALUES (21, 64, 35, '汽车', 1.88, '2019-12-28 13:39:48', 1);
INSERT INTO `pp_income` VALUES (22, 62, 35, '鲜花', 0.63, '2019-12-28 16:04:42', 1);
INSERT INTO `pp_income` VALUES (23, 62, 35, '鲜花', 0.63, '2019-12-28 16:04:48', 1);
INSERT INTO `pp_income` VALUES (24, 62, 35, '爱心', 6.25, '2019-12-28 16:09:42', 1);
INSERT INTO `pp_income` VALUES (25, 62, 35, '汽车', 1.88, '2019-12-28 16:10:14', 1);
INSERT INTO `pp_income` VALUES (26, 62, 35, '飞机', 1.25, '2019-12-28 16:11:14', 1);
INSERT INTO `pp_income` VALUES (27, 62, 35, '汽车', 1.88, '2019-12-28 16:15:32', 1);
INSERT INTO `pp_income` VALUES (28, 62, 35, '鲜花', 0.63, '2019-12-28 16:15:45', 1);
INSERT INTO `pp_income` VALUES (29, 62, 35, '鲜花', 0.63, '2019-12-28 16:16:36', 1);
INSERT INTO `pp_income` VALUES (30, 62, 35, '测试', 124.88, '2019-12-28 16:16:45', 1);
INSERT INTO `pp_income` VALUES (31, 62, 35, '汽车', 1.88, '2019-12-28 16:23:19', 1);
INSERT INTO `pp_income` VALUES (32, 62, 35, '测试', 124.88, '2019-12-28 16:25:40', 1);
INSERT INTO `pp_income` VALUES (33, 62, 35, '鲜花', 0.63, '2019-12-28 19:49:13', 1);
INSERT INTO `pp_income` VALUES (34, 56, 35, '汽车', 1.88, '2019-12-28 19:55:11', 1);
INSERT INTO `pp_income` VALUES (35, 22, 76, '鲜花', 0.63, '2020-01-08 15:16:00', 1);
INSERT INTO `pp_income` VALUES (36, 22, 76, '鲜花', 0.63, '2020-01-08 15:16:10', 1);
INSERT INTO `pp_income` VALUES (37, 22, 76, '星星', 1.25, '2020-01-08 15:16:25', 1);
INSERT INTO `pp_income` VALUES (38, 76, 85, '飞机', 2.50, '2020-01-08 18:40:26', 2);
INSERT INTO `pp_income` VALUES (39, 76, 85, '飞机', 2.50, '2020-01-08 18:40:36', 2);
INSERT INTO `pp_income` VALUES (40, 76, 85, '飞机', 2.50, '2020-01-08 18:41:37', 2);
INSERT INTO `pp_income` VALUES (41, 76, 85, '飞机', 2.50, '2020-01-08 18:41:38', 2);
INSERT INTO `pp_income` VALUES (42, 76, 85, '飞机', 2.50, '2020-01-08 18:41:55', 2);
INSERT INTO `pp_income` VALUES (43, 76, 85, '飞机', 2.50, '2020-01-08 18:43:45', 2);
INSERT INTO `pp_income` VALUES (44, 76, 85, '飞机', 2.50, '2020-01-08 18:44:35', 2);
INSERT INTO `pp_income` VALUES (45, 76, 85, '飞机', 2.50, '2020-01-08 18:44:52', 2);
INSERT INTO `pp_income` VALUES (46, 76, 85, '飞机', 2.50, '2020-01-08 18:45:44', 2);
INSERT INTO `pp_income` VALUES (47, 76, 85, '飞机', 2.50, '2020-01-08 18:46:48', 2);
INSERT INTO `pp_income` VALUES (48, 76, 85, '飞机', 2.50, '2020-01-08 18:47:03', 2);
INSERT INTO `pp_income` VALUES (49, 76, 85, '飞机', 2.50, '2020-01-08 18:48:45', 2);
INSERT INTO `pp_income` VALUES (50, 76, 85, '飞机', 2.50, '2020-01-08 18:50:22', 2);
INSERT INTO `pp_income` VALUES (51, 76, 85, '飞机', 2.50, '2020-01-08 18:50:35', 2);
INSERT INTO `pp_income` VALUES (52, 76, 85, '飞机', 2.50, '2020-01-08 18:50:40', 2);
INSERT INTO `pp_income` VALUES (53, 76, 85, '飞机', 2.50, '2020-01-08 18:51:49', 2);
INSERT INTO `pp_income` VALUES (54, 76, 85, '飞机', 2.50, '2020-01-08 18:52:03', 2);
INSERT INTO `pp_income` VALUES (55, 76, 85, '飞机', 2.50, '2020-01-08 18:52:46', 2);
INSERT INTO `pp_income` VALUES (56, 76, 85, '飞机', 2.50, '2020-01-08 19:01:51', 2);
INSERT INTO `pp_income` VALUES (57, 76, 85, '飞机', 2.50, '2020-01-08 19:05:44', 2);
INSERT INTO `pp_income` VALUES (58, 76, 85, '飞机', 2.50, '2020-01-09 09:24:20', 2);
INSERT INTO `pp_income` VALUES (59, 76, 85, '飞机', 2.50, '2020-01-09 09:25:58', 2);
INSERT INTO `pp_income` VALUES (60, 76, 85, '飞机', 2.50, '2020-01-09 09:26:10', 2);
INSERT INTO `pp_income` VALUES (61, 76, 85, '飞机', 2.50, '2020-01-09 09:27:51', 2);
INSERT INTO `pp_income` VALUES (62, 76, 85, '飞机', 2.50, '2020-01-09 09:28:59', 2);
INSERT INTO `pp_income` VALUES (63, 76, 85, '飞机', 2.50, '2020-01-09 09:33:52', 2);
INSERT INTO `pp_income` VALUES (64, 76, 85, '飞机', 2.50, '2020-01-09 09:38:46', 2);
INSERT INTO `pp_income` VALUES (65, 76, 85, '飞机', 2.50, '2020-01-09 09:39:32', 2);
INSERT INTO `pp_income` VALUES (66, 76, 85, '飞机', 2.50, '2020-01-09 09:48:59', 2);
INSERT INTO `pp_income` VALUES (67, 76, 85, '飞机', 2.50, '2020-01-09 09:50:01', 2);
INSERT INTO `pp_income` VALUES (68, 76, 85, '飞机', 2.50, '2020-01-09 09:51:39', 2);
INSERT INTO `pp_income` VALUES (69, 76, 85, '飞机', 2.50, '2020-01-09 09:52:12', 2);
INSERT INTO `pp_income` VALUES (70, 76, 85, '飞机', 2.50, '2020-01-09 09:53:22', 2);
INSERT INTO `pp_income` VALUES (71, 76, 85, '飞机', 2.50, '2020-01-09 09:54:09', 2);
INSERT INTO `pp_income` VALUES (72, 76, 85, '飞机', 2.50, '2020-01-09 09:55:03', 2);
INSERT INTO `pp_income` VALUES (73, 76, 85, '飞机', 2.50, '2020-01-09 09:55:13', 2);
INSERT INTO `pp_income` VALUES (74, 76, 85, '飞机', 2.50, '2020-01-09 09:55:31', 2);
INSERT INTO `pp_income` VALUES (75, 76, 85, '飞机', 2.50, '2020-01-09 09:55:40', 2);
INSERT INTO `pp_income` VALUES (76, 76, 85, '飞机', 2.50, '2020-01-09 09:56:56', 2);
INSERT INTO `pp_income` VALUES (77, 76, 85, '飞机', 2.50, '2020-01-09 09:57:14', 2);
INSERT INTO `pp_income` VALUES (78, 76, 85, '飞机', 2.50, '2020-01-09 10:00:41', 2);
INSERT INTO `pp_income` VALUES (79, 78, 81, '飞机', 1.25, '2020-01-09 13:59:31', 1);
INSERT INTO `pp_income` VALUES (80, 78, 81, '飞机', 1.25, '2020-01-09 13:59:57', 1);
INSERT INTO `pp_income` VALUES (81, 78, 81, '爱', 0.63, '2020-01-09 14:00:08', 1);
INSERT INTO `pp_income` VALUES (82, 78, 81, '汽车', 3.75, '2020-01-09 14:03:59', 2);
INSERT INTO `pp_income` VALUES (83, 76, 81, '飞机', 1.25, '2020-01-09 14:52:10', 1);
INSERT INTO `pp_income` VALUES (84, 79, 86, '鲜花', 0.63, '2020-01-10 10:22:40', 1);
INSERT INTO `pp_income` VALUES (85, 79, 76, '鲜花', 5.00, '2020-01-10 10:51:11', 8);
INSERT INTO `pp_income` VALUES (86, 22, 86, '鲜花', 0.63, '2020-01-10 11:21:56', 1);
INSERT INTO `pp_income` VALUES (87, 22, 86, '鲜花', 0.63, '2020-01-10 11:22:08', 1);
INSERT INTO `pp_income` VALUES (88, 22, 86, '礼物', 100.00, '2020-01-10 11:22:35', 8);
INSERT INTO `pp_income` VALUES (89, 22, 86, '火箭', 100.00, '2020-01-10 11:25:15', 8);
INSERT INTO `pp_income` VALUES (90, 22, 86, '飞机', 1.25, '2020-01-10 11:26:51', 1);
INSERT INTO `pp_income` VALUES (91, 22, 86, '汽车', 1.88, '2020-01-10 11:27:36', 1);
INSERT INTO `pp_income` VALUES (92, 22, 86, '鲜花', 0.63, '2020-01-10 11:37:34', 1);
INSERT INTO `pp_income` VALUES (93, 85, 76, '鲜花', 3.13, '2020-01-10 17:41:53', 5);
INSERT INTO `pp_income` VALUES (94, 85, 76, '汽车', 7.50, '2020-01-10 17:42:34', 4);
INSERT INTO `pp_income` VALUES (95, 85, 76, '汽车', 7.50, '2020-01-10 17:43:01', 4);
INSERT INTO `pp_income` VALUES (96, 85, 76, '汽车', 7.50, '2020-01-10 17:43:13', 4);
INSERT INTO `pp_income` VALUES (97, 85, 76, '星星', 10.00, '2020-01-10 17:45:36', 8);
INSERT INTO `pp_income` VALUES (98, 85, 76, '星星', 5.00, '2020-01-10 17:46:04', 4);
INSERT INTO `pp_income` VALUES (99, 85, 76, '礼物', 87.50, '2020-01-10 17:46:38', 7);
INSERT INTO `pp_income` VALUES (100, 85, 76, '鲜花', 12.50, '2020-01-10 17:49:44', 1);
INSERT INTO `pp_income` VALUES (101, 94, 37, '测试', 124.88, '2020-01-10 17:59:00', 1);
INSERT INTO `pp_income` VALUES (102, 94, 37, '鲜花', 12.50, '2020-01-10 18:00:37', 1);
INSERT INTO `pp_income` VALUES (103, 94, 37, '鲜花', 12.50, '2020-01-10 18:00:40', 1);
INSERT INTO `pp_income` VALUES (104, 94, 37, '飞机', 1.25, '2020-01-10 18:02:17', 1);
INSERT INTO `pp_income` VALUES (105, 94, 37, '火箭', 12.50, '2020-01-10 18:02:22', 1);
INSERT INTO `pp_income` VALUES (106, 94, 37, '鲜花', 12.50, '2020-01-10 18:02:31', 1);
INSERT INTO `pp_income` VALUES (107, 94, 37, '星星', 1.25, '2020-01-10 18:02:54', 1);
INSERT INTO `pp_income` VALUES (108, 94, 37, '汽车', 1.88, '2020-01-10 18:08:52', 1);
INSERT INTO `pp_income` VALUES (109, 22, 37, '飞机', 12.50, '2020-01-10 18:46:07', 10);
INSERT INTO `pp_income` VALUES (110, 22, 37, '飞机', 12.50, '2020-01-10 18:52:21', 10);
INSERT INTO `pp_income` VALUES (111, 23, 37, '鲜花', 6.25, '2020-01-10 19:01:34', 10);
INSERT INTO `pp_income` VALUES (112, 63, 37, '飞机', 1.25, '2020-01-10 19:01:09', 1);
INSERT INTO `pp_income` VALUES (113, 63, 37, '汽车', 1.88, '2020-01-10 19:04:36', 1);
INSERT INTO `pp_income` VALUES (114, 84, 76, '礼物', 12.50, '2020-01-10 19:10:53', 1);
INSERT INTO `pp_income` VALUES (115, 84, 76, '鲜花', 62.50, '2020-01-10 19:11:03', 5);
INSERT INTO `pp_income` VALUES (116, 76, 37, '鲜花', 6.25, '2020-01-10 19:15:18', 10);
INSERT INTO `pp_income` VALUES (117, 76, 37, '汽车', 18.75, '2020-01-10 19:16:28', 10);
INSERT INTO `pp_income` VALUES (118, 63, 37, '星星', 1.25, '2020-01-11 09:27:24', 1);
INSERT INTO `pp_income` VALUES (119, 37, 79, '星星', 7.50, '2020-01-11 09:31:13', 6);
INSERT INTO `pp_income` VALUES (120, 96, 86, '火箭', 12.50, '2020-01-11 14:25:40', 1);
INSERT INTO `pp_income` VALUES (121, 96, 86, '火箭', 12.50, '2020-01-11 14:26:17', 1);
INSERT INTO `pp_income` VALUES (122, 96, 86, '礼物', 12.50, '2020-01-11 14:26:39', 1);
INSERT INTO `pp_income` VALUES (123, 76, 114, '汽车', 1.88, '2020-01-11 16:47:31', 1);
INSERT INTO `pp_income` VALUES (124, 76, 114, '汽车', 15.00, '2020-01-11 16:47:37', 8);
INSERT INTO `pp_income` VALUES (125, 76, 114, '鲜花', 87.50, '2020-01-11 16:47:43', 7);

-- ----------------------------
-- Table structure for pp_invite
-- ----------------------------
DROP TABLE IF EXISTS `pp_invite`;
CREATE TABLE `pp_invite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户邀请记录表',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `by_user_id` int(11) NULL DEFAULT NULL COMMENT '被邀请人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户邀请关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_invite
-- ----------------------------
INSERT INTO `pp_invite` VALUES (5, 37, 22);

-- ----------------------------
-- Table structure for pp_level
-- ----------------------------
DROP TABLE IF EXISTS `pp_level`;
CREATE TABLE `pp_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '财富等级名称',
  `grade_treasure` int(11) NULL DEFAULT NULL COMMENT '财富值',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '财富等级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_level
-- ----------------------------
INSERT INTO `pp_level` VALUES (1, '1', 15, '2019-12-19 09:59:15', '2019-12-20 11:33:40');
INSERT INTO `pp_level` VALUES (2, '2', 35, '2019-12-19 09:59:17', '2019-12-20 11:33:22');
INSERT INTO `pp_level` VALUES (3, '3', 60, '2019-12-19 09:59:19', NULL);
INSERT INTO `pp_level` VALUES (4, '4', 100, '2019-12-19 09:59:21', NULL);
INSERT INTO `pp_level` VALUES (5, '5', 200, '2019-12-19 09:59:23', NULL);

-- ----------------------------
-- Table structure for pp_login
-- ----------------------------
DROP TABLE IF EXISTS `pp_login`;
CREATE TABLE `pp_login`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NULL DEFAULT NULL COMMENT '会员id',
  `login_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录手机号',
  `login_wx_openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信登录openId',
  `login_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名称',
  `login_type` tinyint(2) NULL DEFAULT 1 COMMENT '登录类型(1:手机号 2:微信)',
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '帐号状态（0停用 1正常）',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_login
-- ----------------------------
INSERT INTO `pp_login` VALUES (10, 23, '15538292917', NULL, NULL, 1, '', '111111', '1', '2019-12-11 15:21:15', '2019-12-19 15:30:15');
INSERT INTO `pp_login` VALUES (11, 22, '15538292911', NULL, NULL, 1, '8c3833e26269c1a5775ea83c77c67359', '111111', '1', '2019-12-11 15:21:18', '2019-12-19 15:30:15');
INSERT INTO `pp_login` VALUES (12, 24, '15538292913', NULL, NULL, 1, '0d45e5cff6b0609075decda99f23711c', '111111', '1', '2019-12-12 15:12:08', '2019-12-19 15:30:15');
INSERT INTO `pp_login` VALUES (13, 25, '15538292915', NULL, NULL, 1, '0d45e5cff6b0609075decda99f23711c', '111111', '1', '2019-12-12 15:15:07', '2019-12-19 15:30:15');
INSERT INTO `pp_login` VALUES (14, 26, '15538292919', NULL, NULL, 1, '0d45e5cff6b0609075decda99f23711c', '111111', '1', '2019-12-13 09:22:03', '2019-12-19 15:30:15');
INSERT INTO `pp_login` VALUES (24, 35, '15090475050', NULL, NULL, 1, 'c5840b76a132ebb5b30e444b2019f827', '599108', '1', '2019-12-17 09:37:35', '2019-12-31 16:02:39');
INSERT INTO `pp_login` VALUES (26, 37, '13015535410', NULL, NULL, 1, '4dfb355ef12a2260b5c1e79695b644e7', '632996', '1', '2019-12-18 09:37:36', '2020-01-04 10:25:46');
INSERT INTO `pp_login` VALUES (35, 52, NULL, 'iOiJwaG9uZSIsImN1cnJlbnRUaW1lTWlsbGlzIjoi', NULL, 2, NULL, NULL, '1', '2019-12-19 15:31:19', NULL);
INSERT INTO `pp_login` VALUES (36, 53, '15538292920', NULL, NULL, 1, '3aee4759c5b36257a0dfeaf3afd01470', '368610', '1', '2019-12-20 13:01:09', NULL);
INSERT INTO `pp_login` VALUES (37, 54, NULL, 'oRrdQt8K9KbWOEe-o4RIvul6Hrdg', NULL, 2, NULL, NULL, '1', '2019-12-20 15:54:31', NULL);
INSERT INTO `pp_login` VALUES (38, 55, '15538292955', NULL, NULL, 1, 'c35994b4c40350ba2e677a50d5e05d44', '382929', '1', '2019-12-21 09:58:46', NULL);
INSERT INTO `pp_login` VALUES (39, 56, '15738382929', NULL, NULL, 1, '01e66e2cc260e4bb3900da4f48acb578', '383829', '1', '2019-12-21 11:12:53', NULL);
INSERT INTO `pp_login` VALUES (43, 60, NULL, 'oRrdQtwr_0UDgnN_Md81JcFf2s2o', NULL, 2, NULL, NULL, '1', '2019-12-21 18:22:39', NULL);
INSERT INTO `pp_login` VALUES (45, 62, '13849914687', NULL, NULL, 1, 'ac8f3a191d6ef59b061853998a4a3159', '499146', '1', '2019-12-23 14:47:21', NULL);
INSERT INTO `pp_login` VALUES (46, 63, '18845980000', NULL, NULL, 1, 'ba98335c7bdb6da4c5e802eb0cf0616b', '459800', '1', '2019-12-23 14:51:20', NULL);
INSERT INTO `pp_login` VALUES (47, 64, '15899994444', NULL, NULL, 1, '4c971e9f47b405ca77023aab0e13e086', '999944', '1', '2019-12-23 14:55:18', NULL);
INSERT INTO `pp_login` VALUES (49, 66, '15877678898', NULL, NULL, 1, '1c8d769cf612e72dfd88ce9912aaeca7', '776788', '1', '2019-12-23 14:57:51', NULL);
INSERT INTO `pp_login` VALUES (59, 76, '15090474640', NULL, NULL, 1, 'bc9846d3b4693f81be6c3338caa9dffc', '150221', '1', '2019-12-31 16:48:41', NULL);
INSERT INTO `pp_login` VALUES (63, 79, '13525605050', NULL, NULL, 1, '9be6a7a5baf7c41798e988d85756435c', '195360', '1', '2020-01-02 16:39:29', '2020-01-11 10:55:22');
INSERT INTO `pp_login` VALUES (64, 80, NULL, 'ozhztjqWm-fb1O7xL0Yegw7Net30', NULL, 2, NULL, NULL, '1', '2020-01-03 09:37:02', NULL);
INSERT INTO `pp_login` VALUES (65, 81, '13673379816', NULL, NULL, 1, '2dc88c71d70d797560bca8bf3470e676', '069292', '1', '2020-01-04 15:34:30', NULL);
INSERT INTO `pp_login` VALUES (66, 82, NULL, 'oRrdQt63hOf7bCg5ZWuQDwTW6I9M', NULL, 2, NULL, NULL, '1', '2020-01-07 10:23:49', NULL);
INSERT INTO `pp_login` VALUES (70, 86, '15850748346', NULL, NULL, 1, '4fb2bd55ee5829bb326650ec388c9aae', '183636', '1', '2020-01-07 15:05:36', NULL);
INSERT INTO `pp_login` VALUES (71, 87, NULL, 'orDU4uEwLfGRgfXTlZl_8D1YDFqk', NULL, 2, NULL, NULL, '1', '2020-01-07 18:28:04', NULL);
INSERT INTO `pp_login` VALUES (72, 88, '13688888888', NULL, NULL, 1, '19fb51bfb6922049c92b071ca7b7903b', '176876', '1', '2020-01-09 14:16:02', NULL);
INSERT INTO `pp_login` VALUES (73, 89, '13333333333', NULL, NULL, 1, 'f82036de484b59896d0e6be5b312473b', '117681', '1', '2020-01-09 14:48:12', NULL);
INSERT INTO `pp_login` VALUES (75, 91, '15538292910', NULL, NULL, 1, '534d4e2a9ae9be8aac7f0fa978a55db4', '195274', '1', '2020-01-09 15:30:40', NULL);
INSERT INTO `pp_login` VALUES (76, 92, '15538292912', NULL, NULL, 1, '76d20a1b18fc87110f97e3cd39e59794', '222222', '1', '2020-01-10 09:28:29', NULL);
INSERT INTO `pp_login` VALUES (77, 93, '13812342234', NULL, NULL, 1, '02b89312a4202b10a7ec735a1720c57a', '222222', '1', '2020-01-10 13:41:17', NULL);
INSERT INTO `pp_login` VALUES (78, 94, '13912341234', NULL, NULL, 1, '7f6f98442768fa877477a1b43ccb6b2e', '222222', '1', '2020-01-10 14:26:02', NULL);
INSERT INTO `pp_login` VALUES (79, 95, '13525602692', NULL, NULL, 1, 'fff00796026dbb9c112f08fd8b5ec4b1', '293898', '1', '2020-01-11 11:00:03', NULL);
INSERT INTO `pp_login` VALUES (84, 97, '13488888888', NULL, NULL, 1, 'a783ccd5abbdd1bc22bd7009138a00bc', '222222', '1', '2020-01-11 11:44:06', NULL);
INSERT INTO `pp_login` VALUES (85, 101, '13322222222', NULL, NULL, 1, 'df2fa39d121b4c296502881c6de10550', '611554', '1', '2020-01-11 11:45:05', NULL);
INSERT INTO `pp_login` VALUES (86, 102, '13111111111', NULL, NULL, 1, 'f4e1cbf9b5dbe423a54de6843fae7be0', '453367', '1', '2020-01-11 11:47:41', NULL);
INSERT INTO `pp_login` VALUES (87, 103, '13666666666', NULL, NULL, 1, 'd15d774bdd5e9160ed581249633994ec', '222222', '1', '2020-01-11 11:59:29', NULL);
INSERT INTO `pp_login` VALUES (88, 104, '13666666667', NULL, NULL, 1, '6f3bac4dd1a5cc54d3e4ab2048c47b7b', '222222', '1', '2020-01-11 11:59:51', NULL);
INSERT INTO `pp_login` VALUES (89, 105, '13112341234', NULL, NULL, 1, 'f7231bd5dc836d3e4e05076083e09e5d', '222222', '1', '2020-01-11 13:36:07', NULL);
INSERT INTO `pp_login` VALUES (90, 106, '13112345678', NULL, NULL, 1, '848d93611b00000866d2b31ba7a05223', '222222', '1', '2020-01-11 13:43:14', NULL);
INSERT INTO `pp_login` VALUES (91, 107, '13222222222', NULL, NULL, 1, 'f84b18ca93efcc5658380094d238d537', '222222', '1', '2020-01-11 13:51:38', NULL);
INSERT INTO `pp_login` VALUES (92, 108, '15000000000', NULL, NULL, 1, '0e63d37e892777c5b50c94a307422054', '222222', '1', '2020-01-11 14:03:51', NULL);
INSERT INTO `pp_login` VALUES (93, 109, '13777777777', NULL, NULL, 1, '0cb9620dd8829a250df7121f66f34de2', '222222', '1', '2020-01-11 14:07:21', NULL);
INSERT INTO `pp_login` VALUES (94, 110, '13200000000', NULL, NULL, 1, 'c81314bc79bc12c8e3001bf66d90b389', '222222', '1', '2020-01-11 14:08:51', NULL);
INSERT INTO `pp_login` VALUES (95, 111, '13600000000', NULL, NULL, 1, 'd2380fb3750b7eae1d7db0916c93f8ff', '222222', '1', '2020-01-11 14:39:18', NULL);
INSERT INTO `pp_login` VALUES (96, 112, '13400000000', NULL, NULL, 1, '2c12b03f27b2111f67a344d53c5538c1', '222222', '1', '2020-01-11 14:43:13', NULL);
INSERT INTO `pp_login` VALUES (97, 113, '17000000000', NULL, NULL, 1, 'a0058ef4086a26de9644251f5d53f1e6', '222222', '1', '2020-01-11 15:24:00', NULL);
INSERT INTO `pp_login` VALUES (98, 114, '18000000000', NULL, NULL, 1, '80b2ae11f6297a30caae4a2078bef302', '222222', '1', '2020-01-11 15:32:07', NULL);
INSERT INTO `pp_login` VALUES (99, 115, '15900000000', NULL, NULL, 1, '804a1c450b1dd4fa23d1ee94e7f85be6', '222222', '1', '2020-01-11 17:25:32', NULL);
INSERT INTO `pp_login` VALUES (100, 116, '13112345672', NULL, NULL, 1, '83eaf5ddfafb61c3b2620704cce81804', '222222', '1', '2020-01-11 17:28:48', NULL);
INSERT INTO `pp_login` VALUES (101, 117, '$phone', NULL, NULL, 1, '61e04e6637d490f40953bac222cb1c11', '222222', '1', '2020-01-11 17:30:31', NULL);
INSERT INTO `pp_login` VALUES (102, 118, '18700000000', NULL, NULL, 1, 'f1f8a077149c901994871e9bbc5d3d32', '222222', '1', '2020-01-13 09:55:58', NULL);
INSERT INTO `pp_login` VALUES (103, 119, '18700000001', NULL, NULL, 1, '0c2695757beff43950bdbb2813f17034', '222222', '1', '2020-01-13 09:57:57', NULL);
INSERT INTO `pp_login` VALUES (104, 120, '18900000000', NULL, NULL, 1, 'c1fa6430cb3fa132e1c68770b5e88a49', '222222', '1', '2020-01-13 10:42:22', NULL);

-- ----------------------------
-- Table structure for pp_member
-- ----------------------------
DROP TABLE IF EXISTS `pp_member`;
CREATE TABLE `pp_member`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `head_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图像地址',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `stature` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身高',
  `weight` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '体重',
  `signature` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名',
  `constellation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '星座',
  `hobby` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '爱好',
  `profession` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `Invitation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邀请码',
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `emotion_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '情感状态 （）',
  `make_friends_purpose` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交友目的',
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `country` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '居住地',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区号',
  `longitude` double(10, 6) NULL DEFAULT NULL COMMENT '经度',
  `latitude` double(10, 6) NULL DEFAULT NULL COMMENT '纬度',
  `isvip` tinyint(1) NULL DEFAULT 0 COMMENT '是否是vip(0:否 1:是)',
  `vip_open_time` datetime(0) NULL DEFAULT NULL COMMENT 'vip开通时间',
  `vip_close_time` datetime(0) NULL DEFAULT NULL COMMENT 'vip失效时间',
  `balance` int(10) NULL DEFAULT 0 COMMENT '余额',
  `earnings` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '收益',
  `treasure` bigint(20) NULL DEFAULT 0 COMMENT '财富值',
  `treasure_level` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '财富等级',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '会员状态(0封停  1正常)',
  `attribute` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性',
  `isactive` tinyint(1) NULL DEFAULT 0 COMMENT '活跃开关',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_member
-- ----------------------------
INSERT INTO `pp_member` VALUES (22, 'test', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1996-10-03', '男', '0', '0', '花花世界', '射手座', '游戏，篮球', '白领', 'abcabc', 23, '单身', '玩耍', '甘肃', '中国', '兰州', '15538292917', NULL, 104.062500, 35.782171, 1, '2020-01-04 09:40:21', '2020-02-04 09:40:21', 10000, 462.59, 0, '0', '2019-12-11 15:21:15', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (23, '小黄', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1996-10-02', '男', '165', '60', '花花世界', '射手座', '游戏，排球', '白领', 'RTGTGXT', NULL, '单身', '玩耍', '郑州', '中国', '管城区', '15538292911', NULL, 113.350000, 34.790000, 1, '2019-12-13 11:58:59', '2019-12-05 14:52:56', 10000, 16.75, 0, '0', '2019-12-11 15:21:18', '2020-01-11 16:47:18', 0, NULL, 0);
INSERT INTO `pp_member` VALUES (24, '小黄', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1996-10-02', '男', '165', '60', '花花世界分手的句子', '射手座', '游戏，排球', '白领', 'RTGTGXH', NULL, '单身', '玩耍', '郑州', '中国', '管城区', '15538292913', NULL, 112.440000, 34.700000, 0, NULL, NULL, 10000, 0.00, 0, '0', '2019-12-12 15:12:08', '2020-01-11 16:47:18', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (26, '张三', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1996-10-02', '男', '165', '60', '花花世界', '射手座', '游戏，排球', '白领', 'RTGTGX8', NULL, '单身', '玩耍', '郑州', '中国', '管城区', '15538292915', NULL, 108.950000, 34.270000, 0, NULL, NULL, 10000, 0.00, 0, '0', '2019-12-12 15:15:07', '2020-01-11 16:47:18', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (27, '李四', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1999-12-01', '男', '165', '60', '花花世界', '射手座', '游戏，排球', '白领', 'RTGTGXJ', NULL, '已婚', '玩耍', '郑州', '中国', '管城区', '15538292919', '86', 107.630000, 34.460000, 0, NULL, NULL, 10000, 0.00, 0, '0', '2019-12-13 09:22:03', '2020-01-11 16:47:18', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (35, '仙女豆', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '2019-08-30', '男', '0', '0', '慢慢来吧，慢慢相遇', NULL, '乒乓球', 'HR', 'RLJ7JD2', NULL, '分', '暴富', NULL, NULL, '中国河南洛阳', '15090474640', NULL, 107.760000, 34.290000, 0, NULL, NULL, 10000, 0.00, 2178000, '5', '2019-12-17 09:37:35', '2020-01-11 16:47:39', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (37, '一又十七', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '2020-04-04', '男', '150cm', '40KG', '1111111', '白羊', '篮球,国外游', '医生', '7WUS8KS', NULL, '单身', '暴富', '郑州', '郑州', '郑州', '13015535410', NULL, 104.062500, 35.782171, 0, '2019-12-24 19:44:05', '2019-12-26 16:59:46', 8081, 8.75, 1919005, '5', '2019-12-18 09:37:36', '2020-01-11 16:47:18', 1, 'sm', 0);
INSERT INTO `pp_member` VALUES (52, '王五3反反复复付付反反复复付付反反复复付付fffffffffff方法', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1970-04-04', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '单身', NULL, NULL, NULL, NULL, NULL, NULL, 113.350000, 34.790000, 0, NULL, NULL, 10000, 0.00, 0, '0', '2019-12-19 15:31:19', '2020-01-11 16:47:44', 0, NULL, 0);
INSERT INTO `pp_member` VALUES (53, '狄仁杰', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1996-10-02', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'RTGTGX4', NULL, '已婚', NULL, NULL, NULL, NULL, '15538292920', NULL, 112.440000, 34.700000, 0, NULL, NULL, 10000, 0.00, 0, '0', '2019-12-20 13:01:09', '2020-01-11 16:47:48', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (54, '我是54', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '2019-12-26', '男', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '已婚', NULL, NULL, NULL, NULL, NULL, NULL, 108.950000, 34.270000, 0, NULL, NULL, 10000, 0.00, 0, '0', '2019-12-20 15:54:31', '2020-01-11 16:47:54', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (55, '黄飞鸿111', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '2019-12-20', '女', '188', '70', '离离原上草', '黄牛做', '功夫', '功夫', 'RTGTGCP', NULL, '单身,打游戏', NULL, '加利福尼亚', '美国', '武馆', '15538292955', NULL, 107.630000, 34.460000, 0, NULL, NULL, 10000, 0.00, 0, '0', '2019-12-21 09:58:46', '2020-01-11 16:43:03', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (56, '小爱同学', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '2019-12-15', '女', '123', '11', 'HIA', '射手座', '聊天', '机器', 'RVLZMSH', NULL, '单身,交朋友', NULL, NULL, NULL, NULL, '15738382929', NULL, 107.760000, 34.290000, 1, '2019-12-21 00:00:00', '2019-12-27 00:00:00', 10000, 1.88, 0, '0', '2019-12-21 11:12:53', '2020-01-11 16:43:06', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (60, '钱', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '2019-12-21', '男', '0', '0', '呵呵哈哈哈', NULL, '舞蹈,户外探险', '厨师', 'LYU8BEFJJ', NULL, '', '暴富', NULL, NULL, '中国河南洛阳', NULL, NULL, 113.674639, 34.826456, 0, NULL, NULL, 10000, 0.00, 0, '0', '2019-12-21 18:22:39', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (62, '叶小龙', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '2019-12-10', '女', '188', '66', '嘻嘻哈哈的', '魔蝎', 'kungfu', '经纪人', '7U4ZPZB', NULL, '已婚,打游戏', NULL, NULL, NULL, NULL, '13849914687', NULL, 113.674639, 34.826456, 1, '2019-12-23 00:00:00', '2019-12-31 00:00:00', 10000, 266.05, 0, '0', '2019-12-23 14:47:21', '2020-01-11 16:43:08', 1, NULL, 1);
INSERT INTO `pp_member` VALUES (63, '步惊云', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '2019-01-08', '女', '178', '77', NULL, '处女座', '屠龙', NULL, 'HHDAV6F', NULL, '单身', '打游戏', NULL, NULL, NULL, '18845980000', NULL, 113.350000, 34.790000, 1, '2019-12-24 00:00:00', '2019-12-31 00:00:00', 10000, 4.38, 0, '0', '2019-12-23 14:51:20', '2020-01-11 16:43:11', 1, NULL, 1);
INSERT INTO `pp_member` VALUES (64, '聂风', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '2019-12-12', '女', '188', NULL, NULL, NULL, NULL, NULL, 'RKPYMM7', NULL, '单身', '交朋友', NULL, NULL, NULL, '15899994444', NULL, 112.440000, 34.700000, 1, '2019-12-23 00:00:00', '2019-12-26 00:00:00', 10000, 4.39, 0, '0', '2019-12-23 14:55:18', '2020-01-11 16:43:13', 1, NULL, 1);
INSERT INTO `pp_member` VALUES (66, '海绵宝宝', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1996-10-02', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'RKC5ZKS', NULL, '单身', '交朋友', NULL, NULL, NULL, '15877678898', NULL, 108.950000, 34.270000, 1, '2019-12-23 00:00:00', '2020-01-02 00:00:00', 10000, 0.00, 0, '0', '2019-12-23 14:57:51', '2020-01-11 16:43:16', 1, NULL, 1);
INSERT INTO `pp_member` VALUES (76, '鹿小仙女', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '2018-06-08', '男', '0', '0', '慢慢来吧', '双子', '户外探险', 'HR', 'LYAYSZ5GG', NULL, '单身', '暴富', '三环以内', '三环以内', '三环以内', '15090474640', NULL, 113.674634, 34.826416, 0, '2020-01-07 14:32:32', '2020-02-05 14:32:32', 8235, 233.13, 1785000, '5', '2019-12-31 16:48:41', '2020-01-13 10:15:05', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (77, 'test', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1971-04-04', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYASEMDR9', NULL, '', NULL, NULL, NULL, NULL, '15538292910', NULL, 107.760000, 34.290000, 0, NULL, NULL, 10000, 0.00, 0, '0', '2020-01-02 16:35:37', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (78, '小悦悦', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1972-04-04', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'LYASE7792', NULL, NULL, NULL, NULL, NULL, NULL, '13525602692', NULL, 113.674639, 34.826456, 0, NULL, NULL, 10000, 6.88, 0, '0', '2020-01-02 16:36:34', '2020-01-11 16:46:21', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (79, '皓月小姐姐', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1973-01-02', '女', '200', '65', '让法国人给个人', NULL, '舞蹈', 'HR', 'LYASEHJQJ', NULL, '', '脱单', NULL, NULL, '中国河南郑州', '13525605050', NULL, 113.674639, 34.826456, 0, NULL, NULL, 9940, 5.63, 60000, '5', '2020-01-02 16:39:29', '2020-01-11 16:44:39', 1, '65KG', 0);
INSERT INTO `pp_member` VALUES (80, '红星', '../../../static/pho0.jpg', '1974-04-04', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYAD24AKW', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 113.674639, 34.826456, 0, NULL, NULL, 10000, 0.00, 0, '0', '2020-01-03 09:37:02', '2020-01-13 10:06:49', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (81, 'dfsd', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1975-01-04', '男', '0', '0', '是大多数都是', NULL, '瑜伽,舞蹈,台球,国外游,户外探险', '程序员', 'LYAJJDX4L', NULL, '', '脱单', NULL, NULL, '中国河南郑州', '13673379816', NULL, 113.674639, 34.826456, 0, NULL, NULL, 9935, 0.00, 65000, '5', '2020-01-04 15:34:30', '2020-01-11 16:44:48', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (82, '杜崇', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1976-04-04', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'LYANALTLT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 113.674639, 34.826456, 0, NULL, NULL, 10000, 0.00, 0, '0', '2020-01-07 10:23:49', '2020-01-11 16:46:21', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (84, '王妈', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1977-04-04', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'LYABLC5SL', NULL, NULL, NULL, NULL, NULL, NULL, '15538292910', NULL, 113.674639, 34.826456, 0, NULL, NULL, 10000, 75.00, 0, '0', '2020-01-07 11:36:17', '2020-01-11 16:46:21', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (85, '燕双鹰', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1978-04-04', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'LYABL95Y2', NULL, NULL, NULL, NULL, NULL, NULL, '15538292910', NULL, 113.674639, 34.826456, 0, NULL, NULL, 9180, 140.63, 820000, '5', '2020-01-07 11:37:22', '2020-01-11 16:46:21', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (86, '赵', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1979-04-04', '女', '150', '', '啦啦', NULL, '瑜伽,舞蹈,篮球,乒乓球,台球,国内游,国外游,户外探险', '厨师', 'LYABYXYN5', NULL, '', '暴富', NULL, NULL, '中国河南洛阳', '15850748346', NULL, 113.674600, 34.826487, 0, NULL, NULL, 8055, 0.00, 1945000, '5', '2020-01-07 15:05:36', '2020-01-11 16:45:25', 1, '', 0);
INSERT INTO `pp_member` VALUES (87, '杜崇', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1971-04-04', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'LYAB44XW3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 113.674639, 34.826456, 0, NULL, NULL, 10000, 0.00, 0, '0', '2020-01-07 18:28:04', '2020-01-11 16:46:21', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (88, NULL, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1980-04-04', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYN5T5W96', NULL, '', NULL, NULL, NULL, NULL, '13688888888', NULL, 113.674639, 34.826456, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-09 14:16:02', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (89, NULL, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1981-04-04', '男', NULL, NULL, NULL, NULL, NULL, NULL, 'LYN52NBN5', NULL, NULL, NULL, NULL, NULL, NULL, '13333333333', NULL, 113.674639, 34.826456, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-09 14:48:12', '2020-01-11 16:47:18', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (90, NULL, 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1982-04-04', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'LYN5SYYVM', NULL, NULL, NULL, NULL, NULL, NULL, '15538292910', NULL, 113.674639, 34.826456, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-09 15:13:33', '2020-01-11 16:46:21', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (91, NULL, '../../../static/pho0.jpg', '1983-04-04', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYN58745F', NULL, '', NULL, NULL, NULL, NULL, '15538292910', NULL, 113.674639, 34.826456, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-09 15:30:40', '2020-01-13 10:00:34', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (92, NULL, 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1984-04-04', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'LYNCHGZXG', NULL, NULL, NULL, NULL, NULL, NULL, '15538292912', NULL, 113.674639, 34.826456, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-10 09:28:29', '2020-01-11 16:46:21', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (93, '？', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1996-01-01', '男', '167cm', '65KG', '不想', '魔羯', '瑜伽,舞蹈,篮球,乒乓球,台球,国内游,国外游,户外探险', '护士', 'LYNCBHC59', NULL, '', NULL, '洛阳', '洛阳', '洛阳', '13812342234', NULL, 113.674639, 34.826456, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-10 13:41:17', '2020-01-11 16:47:18', 1, 'sm', 0);
INSERT INTO `pp_member` VALUES (94, '测试二', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1995-11-01', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYN3GWWQF', NULL, '', NULL, NULL, NULL, NULL, '13912341234', NULL, 113.674596, 34.826505, 0, NULL, NULL, 0, 179.26, 0, '0', '2020-01-10 14:26:02', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (95, '微笑的你', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1994-11-01', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNZ9EVM6', NULL, '', NULL, NULL, NULL, NULL, '13525602692', NULL, 113.674597, 34.826468, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 11:00:03', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (97, '测试15', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1993-11-01', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'LYNZ6396N', NULL, NULL, NULL, NULL, NULL, NULL, '13488888888', NULL, NULL, NULL, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 11:44:03', '2020-01-11 16:46:21', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (101, '测试8', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1992-11-01', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNZ6Z59C', NULL, '', NULL, NULL, NULL, NULL, '13322222222', NULL, 113.674597, 34.826494, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 11:45:05', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (102, '测试7', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1991-11-01', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNZ6YU8N', NULL, '', NULL, NULL, NULL, NULL, '13111111111', NULL, 113.674593, 34.826485, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 11:47:41', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (103, '测试6', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1990-11-01', '女', NULL, NULL, NULL, NULL, NULL, NULL, 'LYNZ7W2RQ', NULL, NULL, NULL, NULL, NULL, NULL, '13666666666', NULL, NULL, NULL, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 11:59:29', '2020-01-11 16:46:21', 1, NULL, 0);
INSERT INTO `pp_member` VALUES (104, '测试5', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1989-11-01', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNZ75CCX', NULL, '', NULL, NULL, NULL, NULL, '13666666667', NULL, 113.674593, 34.826485, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 11:59:51', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (105, '测试4', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1988-11-01', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNZHDR9M', NULL, '', NULL, NULL, NULL, NULL, '13112341234', NULL, 113.674593, 34.826485, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 13:36:07', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (106, '测试3', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1987-05-01', '女', '0', '55', NULL, NULL, NULL, NULL, 'LYNZSLTJS', NULL, '', NULL, NULL, NULL, NULL, '13112345678', NULL, 113.674593, 34.826479, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 13:43:14', '2020-01-11 16:46:21', 1, '45KG', 0);
INSERT INTO `pp_member` VALUES (107, '测试12', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1986-11-01', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNZS2PNM', NULL, '', NULL, NULL, NULL, NULL, '13222222222', NULL, 113.674593, 34.826479, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 13:51:38', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (108, '测试11', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1985-11-01', '女', '0', '0', NULL, NULL, NULL, NULL, 'LYNZ83CNP', NULL, '', NULL, NULL, NULL, NULL, '15000000000', NULL, 113.674593, 34.826479, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 14:03:51', '2020-01-11 16:46:21', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (109, '测试10', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1984-11-01', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNZ8YDLH', NULL, '', NULL, NULL, NULL, NULL, '13777777777', NULL, 113.674593, 34.826479, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 14:07:21', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (110, '测试', 'http://q2fysf8c1.bkt.clouddn.com/3c961162-5edb-4859-b9a4-83f52bcd3277', '1983-08-01', '女', '200', '40', NULL, NULL, NULL, NULL, 'LYNZ827C4', NULL, '', NULL, NULL, NULL, NULL, '13200000000', NULL, 113.674592, 34.826490, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 14:08:51', '2020-01-11 17:23:30', 1, '45KG', 0);
INSERT INTO `pp_member` VALUES (111, NULL, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1982-11-01', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNZV9548', NULL, '', NULL, NULL, NULL, NULL, '13600000000', NULL, 113.674597, 34.826468, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 14:39:18', '2020-01-11 16:47:18', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (112, '测试17', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '2020-01-07', '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNZVTMFP', NULL, '', NULL, NULL, NULL, NULL, '13400000000', NULL, 113.674594, 34.826472, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 14:43:13', '2020-01-13 09:54:23', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (113, '测试18', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1981-11-01', '男', '0', '0', NULL, '天蝎', NULL, NULL, 'LYNZJKBMD', NULL, '', NULL, '洛阳', '洛阳', '洛阳', '17000000000', NULL, 113.674593, 34.826488, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 15:24:00', '2020-01-11 17:01:45', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (114, '测试19', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3893070012,3803260660&fm=26&gp=0.jpg', '1980-11-01', '男', '150cm', '45KG', NULL, NULL, NULL, '程序员', 'LYNZ49QA6', NULL, '单身', '脱单', '安哥拉', '安哥拉', '安哥拉', '18000000000', NULL, 113.674577, 34.826475, 1, '2020-01-07 14:32:32', '2020-02-05 14:32:32', 9165, 0.00, 835000, '5', '2020-01-11 15:32:07', '2020-01-13 09:35:10', 1, 'sm', 0);
INSERT INTO `pp_member` VALUES (115, NULL, '../../../static/denglu/cancomer.png', NULL, '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNZN42ER', NULL, '', NULL, NULL, NULL, NULL, '15900000000', NULL, 113.674596, 34.826506, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-11 17:25:32', '2020-01-13 09:33:14', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (118, NULL, '../../../static/denglu/cancomer.png', NULL, '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNRZQ4RB', NULL, '', NULL, NULL, NULL, NULL, '18700000000', NULL, 113.674594, 34.826472, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-13 09:55:58', '2020-01-13 09:56:06', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (119, NULL, '../../../static/denglu/cancomer.png', NULL, '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNRZN7KB', NULL, '', NULL, NULL, NULL, NULL, '18700000001', NULL, 113.674577, 34.826475, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-13 09:57:57', '2020-01-13 10:33:48', 1, 'undefined', 0);
INSERT INTO `pp_member` VALUES (120, NULL, '../../../static/denglu/cancomer.png', NULL, '男', '0', '0', NULL, NULL, NULL, NULL, 'LYNR7TJZB', NULL, '', NULL, NULL, NULL, NULL, '18900000000', NULL, 113.674596, 34.826497, 0, NULL, NULL, 0, 0.00, 0, '0', '2020-01-13 10:42:22', '2020-01-13 10:42:30', 1, 'undefined', 0);

-- ----------------------------
-- Table structure for pp_member_spec
-- ----------------------------
DROP TABLE IF EXISTS `pp_member_spec`;
CREATE TABLE `pp_member_spec`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原价',
  `current_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现价',
  `member_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `member_second_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员规格表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_member_spec
-- ----------------------------
INSERT INTO `pp_member_spec` VALUES (1, '5.99', '0.01', '1', 'month');
INSERT INTO `pp_member_spec` VALUES (11, '100', '50', '6', 'month');
INSERT INTO `pp_member_spec` VALUES (12, '30', '20', '12', 'month');

-- ----------------------------
-- Table structure for pp_note
-- ----------------------------
DROP TABLE IF EXISTS `pp_note`;
CREATE TABLE `pp_note`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '短信发送表主键',
  `user_id` int(32) NULL DEFAULT NULL COMMENT '用户id',
  `user_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '短信内容',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(11) NULL DEFAULT NULL COMMENT '发送状态 （2:成功 0：失败）',
  `type` tinyint(2) NULL DEFAULT 1 COMMENT '类型（1:验证码）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信发送列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_note
-- ----------------------------
INSERT INTO `pp_note` VALUES (2, NULL, '684633', '15538292910', 1, 1, '2019-12-26 10:07:24');
INSERT INTO `pp_note` VALUES (3, NULL, '980777', '15090474640', 2, 1, '2019-12-31 16:22:20');
INSERT INTO `pp_note` VALUES (4, NULL, '713692', '15090474640', 2, 1, '2019-12-31 16:26:56');
INSERT INTO `pp_note` VALUES (5, NULL, '850600', '15090474640', 2, 1, '2019-12-31 16:28:11');
INSERT INTO `pp_note` VALUES (6, NULL, '865981', '15090474640', 2, 1, '2019-12-31 16:34:59');
INSERT INTO `pp_note` VALUES (7, NULL, '872871', '15090474640', 2, 1, '2019-12-31 16:42:15');
INSERT INTO `pp_note` VALUES (8, NULL, '150221', '15090474640', 2, 1, '2019-12-31 16:47:56');
INSERT INTO `pp_note` VALUES (9, NULL, '833868', '13673379816', 2, 1, '2020-01-02 10:52:04');
INSERT INTO `pp_note` VALUES (10, NULL, '272030', '13525602692', 2, 1, '2020-01-02 16:19:50');
INSERT INTO `pp_note` VALUES (11, NULL, '999131', '13525602692', 2, 1, '2020-01-02 16:21:30');
INSERT INTO `pp_note` VALUES (12, NULL, '016603', '13525602692', 2, 1, '2020-01-02 16:25:01');
INSERT INTO `pp_note` VALUES (13, NULL, '795360', '13525602692', 2, 1, '2020-01-02 16:36:08');
INSERT INTO `pp_note` VALUES (14, NULL, '180291', '15538292910', 2, 1, '2020-01-03 15:38:57');
INSERT INTO `pp_note` VALUES (15, NULL, '069292', '13673379816', 2, 1, '2020-01-04 15:33:42');
INSERT INTO `pp_note` VALUES (16, NULL, '298602', '15538292910', 2, 1, '2020-01-06 10:48:37');
INSERT INTO `pp_note` VALUES (17, NULL, '871996', '15538292910', 2, 1, '2020-01-06 11:03:24');
INSERT INTO `pp_note` VALUES (18, NULL, '123398', '15538292910', 2, 1, '2020-01-07 09:44:53');
INSERT INTO `pp_note` VALUES (19, NULL, '242198', '15538292910', 2, 1, '2020-01-07 09:47:48');
INSERT INTO `pp_note` VALUES (20, NULL, '441741', '13673379816', 2, 1, '2020-01-07 10:14:45');
INSERT INTO `pp_note` VALUES (21, NULL, '216472', '15850748346', 2, 1, '2020-01-07 10:16:57');
INSERT INTO `pp_note` VALUES (22, NULL, '261115', '15850748346', 2, 1, '2020-01-07 10:18:13');
INSERT INTO `pp_note` VALUES (23, NULL, '867661', '15850748346', 2, 1, '2020-01-07 10:19:35');
INSERT INTO `pp_note` VALUES (24, NULL, '637341', '15850748346', 2, 1, '2020-01-07 10:20:41');
INSERT INTO `pp_note` VALUES (25, NULL, '344113', '15850748346', 2, 1, '2020-01-07 11:07:53');
INSERT INTO `pp_note` VALUES (26, NULL, '816251', '15538292910', 2, 1, '2020-01-07 11:16:24');
INSERT INTO `pp_note` VALUES (27, NULL, '888511', '15538292910', 2, 1, '2020-01-07 11:31:05');
INSERT INTO `pp_note` VALUES (28, NULL, '183636', '15850748346', 2, 1, '2020-01-07 15:04:45');
INSERT INTO `pp_note` VALUES (29, NULL, '813735', '15850566553', 2, 1, '2020-01-07 18:50:47');
INSERT INTO `pp_note` VALUES (30, NULL, '343818', '15850566553', 2, 1, '2020-01-07 18:54:14');
INSERT INTO `pp_note` VALUES (31, NULL, '463859', '13673379816', 2, 1, '2020-01-08 09:35:49');
INSERT INTO `pp_note` VALUES (32, NULL, '729411', '13655483621', 2, 1, '2020-01-08 10:04:06');
INSERT INTO `pp_note` VALUES (33, NULL, '912192', '13655483621', 2, 1, '2020-01-08 10:07:16');
INSERT INTO `pp_note` VALUES (34, NULL, '847669', '15850748346', 2, 1, '2020-01-08 10:07:59');
INSERT INTO `pp_note` VALUES (35, NULL, '623921', '15850748346', 2, 1, '2020-01-08 10:10:01');
INSERT INTO `pp_note` VALUES (36, NULL, '771424', '15538292910', 2, 1, '2020-01-09 15:03:09');
INSERT INTO `pp_note` VALUES (37, NULL, '911797', '15538292910', 2, 1, '2020-01-09 15:03:22');
INSERT INTO `pp_note` VALUES (38, NULL, '583853', '15538292910', 2, 1, '2020-01-09 15:05:41');
INSERT INTO `pp_note` VALUES (39, NULL, '271623', '15538292910', 2, 1, '2020-01-09 15:06:11');
INSERT INTO `pp_note` VALUES (40, NULL, '917951', '15538292910', 2, 1, '2020-01-09 15:07:29');
INSERT INTO `pp_note` VALUES (41, NULL, '866614', '15538292910', 2, 1, '2020-01-09 15:08:06');
INSERT INTO `pp_note` VALUES (42, NULL, '184585', '15538292910', 0, 1, '2020-01-09 15:08:43');
INSERT INTO `pp_note` VALUES (43, NULL, '556216', '15538292910', 2, 1, '2020-01-09 15:08:53');
INSERT INTO `pp_note` VALUES (44, NULL, '112511', '15538292910', 2, 1, '2020-01-09 15:13:13');
INSERT INTO `pp_note` VALUES (45, NULL, '168116', '15538292910', 0, 1, '2020-01-09 15:25:26');
INSERT INTO `pp_note` VALUES (46, NULL, '868195', '15538292910', 0, 1, '2020-01-09 15:25:36');
INSERT INTO `pp_note` VALUES (47, NULL, '872917', '15538292910', 2, 1, '2020-01-09 15:25:42');
INSERT INTO `pp_note` VALUES (48, NULL, '785314', '15538292910', 2, 1, '2020-01-09 15:26:35');
INSERT INTO `pp_note` VALUES (49, NULL, '676815', '15538292910', 0, 1, '2020-01-09 15:26:38');
INSERT INTO `pp_note` VALUES (50, NULL, '981933', '15538292910', 0, 1, '2020-01-09 15:26:51');
INSERT INTO `pp_note` VALUES (51, NULL, '145349', '15538292910', 0, 1, '2020-01-09 15:27:51');
INSERT INTO `pp_note` VALUES (52, NULL, '691864', '15538292910', 0, 1, '2020-01-09 15:28:59');
INSERT INTO `pp_note` VALUES (53, NULL, '918147', '15538292910', 0, 1, '2020-01-09 15:30:16');
INSERT INTO `pp_note` VALUES (54, NULL, '195274', '15538292910', 2, 1, '2020-01-09 15:30:20');
INSERT INTO `pp_note` VALUES (55, NULL, '112147', '15555555555', 0, 1, '2020-01-10 09:46:34');
INSERT INTO `pp_note` VALUES (56, NULL, '853111', '15850748346', 2, 1, '2020-01-10 09:47:50');
INSERT INTO `pp_note` VALUES (57, NULL, '515172', '15555555555', 0, 1, '2020-01-10 09:49:51');
INSERT INTO `pp_note` VALUES (58, NULL, '178616', '13363636936', 2, 1, '2020-01-10 09:51:37');
INSERT INTO `pp_note` VALUES (59, NULL, '369521', '17798643652', 2, 1, '2020-01-10 09:52:31');
INSERT INTO `pp_note` VALUES (60, NULL, '579489', '15850748346', 2, 1, '2020-01-10 10:20:46');
INSERT INTO `pp_note` VALUES (61, NULL, '798477', '15850748346', 2, 1, '2020-01-10 10:26:53');
INSERT INTO `pp_note` VALUES (62, NULL, '441173', '15538292910', 2, 1, '2020-01-10 13:38:44');
INSERT INTO `pp_note` VALUES (63, NULL, '684198', '13333333333', 0, 1, '2020-01-10 13:39:44');
INSERT INTO `pp_note` VALUES (64, NULL, '221149', '13812342234', 2, 1, '2020-01-10 13:41:08');
INSERT INTO `pp_note` VALUES (65, NULL, '178521', '15538292910', 0, 1, '2020-01-10 17:03:40');
INSERT INTO `pp_note` VALUES (66, NULL, '718291', '15538292910', 0, 1, '2020-01-10 17:04:44');
INSERT INTO `pp_note` VALUES (67, NULL, '265453', '15538292910', 0, 1, '2020-01-10 17:05:45');
INSERT INTO `pp_note` VALUES (68, NULL, '183236', '15538292910', 0, 1, '2020-01-10 17:06:23');
INSERT INTO `pp_note` VALUES (69, NULL, '171696', '15538292910', 0, 1, '2020-01-10 17:07:57');
INSERT INTO `pp_note` VALUES (70, NULL, '686528', '15538292910', 2, 1, '2020-01-10 17:08:34');
INSERT INTO `pp_note` VALUES (71, NULL, '293898', '13525602692', 2, 1, '2020-01-11 10:54:25');
INSERT INTO `pp_note` VALUES (72, NULL, '215585', '13488888888', 0, 1, '2020-01-11 11:34:19');
INSERT INTO `pp_note` VALUES (73, NULL, '611554', '13322222222', 0, 1, '2020-01-11 11:41:15');
INSERT INTO `pp_note` VALUES (74, NULL, '453367', '13111111111', 0, 1, '2020-01-11 11:43:46');
INSERT INTO `pp_note` VALUES (75, NULL, '451414', '13333333333', 0, 1, '2020-01-11 11:47:07');
INSERT INTO `pp_note` VALUES (76, NULL, '111186', '13333333333', 0, 1, '2020-01-11 11:48:09');
INSERT INTO `pp_note` VALUES (77, NULL, '198712', '15538292910', 0, 1, '2020-01-11 18:18:37');
INSERT INTO `pp_note` VALUES (78, NULL, '135111', '15538292910', 2, 1, '2020-01-11 18:18:43');
INSERT INTO `pp_note` VALUES (79, NULL, '535511', '15538292910', 0, 1, '2020-01-11 18:19:00');
INSERT INTO `pp_note` VALUES (80, NULL, '891995', '15850748346', 0, 1, '2020-01-11 18:32:28');
INSERT INTO `pp_note` VALUES (81, NULL, '811312', '15863521312', 0, 1, '2020-01-11 18:33:12');

-- ----------------------------
-- Table structure for pp_push
-- ----------------------------
DROP TABLE IF EXISTS `pp_push`;
CREATE TABLE `pp_push`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户推送列表主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `push_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推送记录列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_push
-- ----------------------------
INSERT INTO `pp_push` VALUES (1, 22, 'abc');

-- ----------------------------
-- Table structure for pp_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `pp_recharge_record`;
CREATE TABLE `pp_recharge_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '充值订单编号',
  `user_id` bigint(20) NOT NULL,
  `recharge_money` decimal(8, 2) NULL DEFAULT NULL COMMENT '充值金额',
  `recharge_diamond` int(11) NULL DEFAULT NULL COMMENT '充值钻石数量',
  `recharge_time` datetime(0) NULL DEFAULT NULL COMMENT '充值时间',
  `recharge_type` tinyint(2) NULL DEFAULT NULL COMMENT '0-自动 1-手动',
  `rechage_status` tinyint(1) NULL DEFAULT 0 COMMENT '充值状态（0:充值失败 充值成功）',
  `pay_type` tinyint(1) NULL DEFAULT NULL COMMENT '支付方式（1:支付宝  2：微信）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 375 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_recharge_record
-- ----------------------------
INSERT INTO `pp_recharge_record` VALUES (67, 'DD202001031578016664789', 80, 50.00, 600, '2020-01-03 09:57:45', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (68, 'DD202001031578016667759', 80, 50.00, 600, '2020-01-03 09:57:48', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (69, 'DD202001031578016671543', 80, 50.00, 600, '2020-01-03 09:57:52', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (70, 'DD202001031578017065241', 80, 50.00, 600, '2020-01-03 10:04:26', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (71, 'DD202001031578017093657', 80, 50.00, 600, '2020-01-03 10:04:54', 0, 1, 2);
INSERT INTO `pp_recharge_record` VALUES (72, 'DD202001031578017209103', 80, 50.00, 600, '2020-01-03 10:06:49', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (73, 'DD202001031578017229438', 80, 50.00, 600, '2020-01-03 10:07:10', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (74, 'DD202001041578123706239', 81, 50.00, 600, '2020-01-04 15:41:47', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (75, 'DD202001041578126909376', 76, 50.00, 600, '2020-01-04 16:35:10', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (76, 'DD202001041578126910258', 76, 50.00, 600, '2020-01-04 16:35:10', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (77, 'DD202001041578126914209', 76, 50.00, 600, '2020-01-04 16:35:14', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (78, 'DD202001041578126916516', 76, 50.00, 600, '2020-01-04 16:35:17', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (79, 'DD202001041578126917975', 76, 50.00, 600, '2020-01-04 16:35:18', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (80, 'DD202001041578126919338', 76, 50.00, 600, '2020-01-04 16:35:20', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (81, 'DD202001041578126921300', 76, 50.00, 600, '2020-01-04 16:35:21', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (82, 'DD202001041578126922831', 76, 50.00, 600, '2020-01-04 16:35:23', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (83, 'DD202001041578126923742', 76, 50.00, 600, '2020-01-04 16:35:24', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (84, 'DD202001041578126924241', 76, 50.00, 600, '2020-01-04 16:35:24', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (85, 'DD202001041578126924418', 76, 50.00, 600, '2020-01-04 16:35:25', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (86, 'DD202001041578126924570', 76, 50.00, 600, '2020-01-04 16:35:25', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (87, 'DD202001041578126925755', 76, 50.00, 600, '2020-01-04 16:35:26', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (88, 'DD202001061578290300715', 37, 0.01, 1500, '2020-01-06 13:58:21', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (89, 'DD202001061578290321203', 37, 0.01, 1500, '2020-01-06 13:58:43', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (90, 'DD202001061578290310197', 37, 0.01, 1500, '2020-01-06 13:58:52', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (91, 'DD202001061578290402685', 37, 0.01, 1500, '2020-01-06 14:00:03', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (92, 'DD202001061578291418920', 37, 0.01, 1500, '2020-01-06 14:16:59', 0, 1, 1);
INSERT INTO `pp_recharge_record` VALUES (93, 'DD202001061578291603406', 37, 0.01, 1500, '2020-01-06 14:20:03', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (94, 'DD202001061578291618926', 37, 0.01, 1500, '2020-01-06 14:20:19', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (95, 'DD202001061578292105888', 37, 0.01, 1500, '2020-01-06 14:28:26', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (96, 'DD202001061578292195715', 37, 0.01, 1500, '2020-01-06 14:29:56', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (97, 'DD202001061578293346458', 37, 0.01, 1500, '2020-01-06 14:49:07', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (98, 'DD202001061578293657014', 37, 0.01, 1500, '2020-01-06 14:54:17', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (99, 'DD202001061578296244741', 37, 0.01, 1500, '2020-01-06 15:37:25', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (100, 'DD202001061578296246663', 37, 0.01, 1500, '2020-01-06 15:37:27', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (101, 'DD202001061578296288882', 37, 0.01, 1500, '2020-01-06 15:38:09', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (102, 'DD202001061578296305031', 37, 0.01, 1500, '2020-01-06 15:38:27', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (103, 'DD202001061578296435945', 37, 0.01, 1500, '2020-01-06 15:40:36', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (104, 'DD202001061578296441270', 37, 0.01, 1500, '2020-01-06 15:40:41', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (105, 'DD202001061578296865306', 37, 0.01, 1500, '2020-01-06 15:47:46', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (106, 'DD202001061578296868614', 37, 0.01, 1500, '2020-01-06 15:47:49', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (107, 'DD202001061578296950162', 80, 50.00, 600, '2020-01-06 15:49:10', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (108, 'DD202001061578296964648', 80, 50.00, 600, '2020-01-06 15:49:25', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (109, 'DD202001061578296969948', 80, 50.00, 600, '2020-01-06 15:49:30', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (110, 'DD202001061578296984750', 80, 50.00, 600, '2020-01-06 15:49:45', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (111, 'DD202001061578297218737', 37, 0.01, 1500, '2020-01-06 15:53:39', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (112, 'DD202001061578297228461', 37, 0.01, 1500, '2020-01-06 15:53:49', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (113, 'DD202001061578297293544', 37, 0.01, 1500, '2020-01-06 15:54:54', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (114, 'DD202001061578297312675', 37, 0.01, 1500, '2020-01-06 15:55:13', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (115, 'DD202001061578297318485', 37, 0.01, 1500, '2020-01-06 15:55:19', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (116, 'DD202001061578297323720', 37, 0.01, 1500, '2020-01-06 15:55:24', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (117, 'DD202001061578297325789', 37, 0.01, 1500, '2020-01-06 15:55:26', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (118, 'DD202001061578297330066', 37, 0.01, 1500, '2020-01-06 15:55:30', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (119, 'DD202001061578297330606', 37, 0.01, 1500, '2020-01-06 15:55:31', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (120, 'DD202001061578297331287', 37, 0.01, 1500, '2020-01-06 15:55:31', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (121, 'DD202001061578297332022', 37, 0.01, 1500, '2020-01-06 15:55:32', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (122, 'DD202001061578297334119', 37, 0.01, 1500, '2020-01-06 15:55:34', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (123, 'DD202001061578297495968', 80, 50.00, 600, '2020-01-06 15:58:16', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (124, 'DD202001061578297961282', 37, 0.01, 1500, '2020-01-06 16:06:02', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (125, 'DD202001061578297970398', 37, 0.01, 1500, '2020-01-06 16:06:10', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (126, 'DD202001061578297992163', 37, 0.01, 1500, '2020-01-06 16:06:32', 0, 1, 2);
INSERT INTO `pp_recharge_record` VALUES (127, 'DD202001061578298349698', 37, 0.01, 1500, '2020-01-06 16:12:30', 0, 1, 2);
INSERT INTO `pp_recharge_record` VALUES (128, 'DD202001061578299491960', 37, 0.01, 1500, '2020-01-06 16:31:32', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (129, 'DD202001061578299499455', 37, 0.01, 1500, '2020-01-06 16:31:39', 0, 1, 1);
INSERT INTO `pp_recharge_record` VALUES (130, 'DD202001061578309159377', 37, 0.01, 1500, '2020-01-06 19:12:40', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (131, 'DD202001061578309160303', 37, 0.01, 1500, '2020-01-06 19:12:40', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (132, 'DD202001061578309160987', 37, 0.01, 1500, '2020-01-06 19:12:41', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (133, 'DD202001061578309199210', 37, 0.01, 1500, '2020-01-06 19:13:19', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (134, 'DD202001061578309247371', 37, 0.01, 1500, '2020-01-06 19:14:08', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (135, 'DD202001061578309450586', 37, 0.01, 1500, '2020-01-06 19:17:31', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (136, 'DD202001061578309453953', 37, 0.01, 1500, '2020-01-06 19:17:34', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (137, 'DD202001061578309550806', 37, 0.01, 1500, '2020-01-06 19:19:11', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (138, 'DD202001061578309580020', 37, 0.01, 1500, '2020-01-06 19:19:40', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (139, 'DD202001061578309580896', 37, 0.01, 1500, '2020-01-06 19:19:41', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (140, 'DD202001061578309581529', 37, 0.01, 1500, '2020-01-06 19:19:42', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (141, 'DD202001061578309581699', 37, 0.01, 1500, '2020-01-06 19:19:42', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (142, 'DD202001061578309582198', 37, 0.01, 1500, '2020-01-06 19:19:42', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (143, 'DD202001061578309582361', 37, 0.01, 1500, '2020-01-06 19:19:43', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (144, 'DD202001061578309590101', 37, 0.01, 1500, '2020-01-06 19:19:50', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (145, 'DD202001061578309595844', 37, 0.01, 1500, '2020-01-06 19:19:56', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (146, 'DD202001061578309597152', 37, 0.01, 1500, '2020-01-06 19:19:57', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (147, 'DD202001061578309597323', 37, 0.01, 1500, '2020-01-06 19:19:58', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (148, 'DD202001061578309597734', 37, 0.01, 1500, '2020-01-06 19:19:58', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (149, 'DD202001061578309597870', 37, 0.01, 1500, '2020-01-06 19:19:58', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (150, 'DD202001061578309719707', 37, 0.01, 1500, '2020-01-06 19:22:00', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (151, 'DD202001061578309721521', 37, 0.01, 1500, '2020-01-06 19:22:02', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (152, 'DD202001061578309722444', 37, 0.01, 1500, '2020-01-06 19:22:03', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (153, 'DD202001061578309726551', 37, 0.01, 1500, '2020-01-06 19:22:07', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (154, 'DD202001061578309727312', 37, 0.01, 1500, '2020-01-06 19:22:07', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (155, 'DD202001061578309767325', 37, 0.01, 1500, '2020-01-06 19:22:48', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (156, 'DD202001061578309849007', 37, 0.01, 1500, '2020-01-06 19:24:09', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (157, 'DD202001061578309849886', 37, 0.01, 1500, '2020-01-06 19:24:10', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (158, 'DD202001061578309850564', 37, 0.01, 1500, '2020-01-06 19:24:11', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (159, 'DD202001061578309853052', 37, 0.01, 1500, '2020-01-06 19:24:13', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (160, 'DD202001061578309875138', 37, 0.01, 1500, '2020-01-06 19:24:35', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (161, 'DD202001061578309875898', 37, 0.01, 1500, '2020-01-06 19:24:36', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (162, 'DD202001061578309876061', 37, 0.01, 1500, '2020-01-06 19:24:36', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (163, 'DD202001061578309876445', 37, 0.01, 1500, '2020-01-06 19:24:37', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (164, 'DD202001061578309876613', 37, 0.01, 1500, '2020-01-06 19:24:37', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (165, 'DD202001061578309877173', 37, 0.01, 1500, '2020-01-06 19:24:37', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (166, 'DD202001061578309877376', 37, 0.01, 1500, '2020-01-06 19:24:38', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (167, 'DD202001061578309877882', 37, 0.01, 1500, '2020-01-06 19:24:38', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (168, 'DD202001061578309878044', 37, 0.01, 1500, '2020-01-06 19:24:38', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (169, 'DD202001061578309878365', 37, 0.01, 1500, '2020-01-06 19:24:39', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (170, 'DD202001061578309878521', 37, 0.01, 1500, '2020-01-06 19:24:39', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (171, 'DD202001061578309894100', 37, 0.01, 1500, '2020-01-06 19:24:54', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (172, 'DD202001061578309898320', 37, 0.01, 1500, '2020-01-06 19:24:58', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (173, 'DD202001061578309898872', 37, 0.01, 1500, '2020-01-06 19:24:59', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (174, 'DD202001061578309899290', 37, 0.01, 1500, '2020-01-06 19:24:59', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (175, 'DD202001061578309900253', 37, 0.01, 1500, '2020-01-06 19:25:00', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (176, 'DD202001061578309955338', 37, 50.00, 600, '2020-01-06 19:25:56', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (177, 'DD202001061578309956044', 37, 50.00, 600, '2020-01-06 19:25:56', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (178, 'DD202001061578309956505', 37, 50.00, 600, '2020-01-06 19:25:57', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (179, 'DD202001061578309956770', 37, 50.00, 600, '2020-01-06 19:25:57', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (180, 'DD202001061578309956891', 37, 50.00, 600, '2020-01-06 19:25:57', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (181, 'DD202001061578309957061', 37, 50.00, 600, '2020-01-06 19:25:57', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (182, 'DD202001061578309969646', 37, 50.00, 600, '2020-01-06 19:26:10', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (183, 'DD202001061578309969833', 37, 50.00, 600, '2020-01-06 19:26:10', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (184, 'DD202001061578309969983', 37, 50.00, 600, '2020-01-06 19:26:10', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (185, 'DD202001061578309970805', 37, 50.00, 600, '2020-01-06 19:26:11', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (186, 'DD202001061578309971189', 37, 50.00, 600, '2020-01-06 19:26:11', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (187, 'DD202001061578309971367', 37, 50.00, 600, '2020-01-06 19:26:12', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (188, 'DD202001061578309971733', 37, 50.00, 600, '2020-01-06 19:26:12', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (189, 'DD202001061578309971893', 37, 50.00, 600, '2020-01-06 19:26:12', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (190, 'DD202001061578309972026', 37, 50.00, 600, '2020-01-06 19:26:12', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (191, 'DD202001061578309973556', 37, 50.00, 600, '2020-01-06 19:26:14', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (192, 'DD202001061578309974072', 37, 50.00, 600, '2020-01-06 19:26:14', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (193, 'DD202001061578309974481', 37, 50.00, 600, '2020-01-06 19:26:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (194, 'DD202001061578309974626', 37, 50.00, 600, '2020-01-06 19:26:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (195, 'DD202001061578309977777', 37, 50.00, 600, '2020-01-06 19:26:18', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (196, 'DD202001061578309977982', 37, 50.00, 600, '2020-01-06 19:26:18', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (197, 'DD202001061578309978123', 37, 50.00, 600, '2020-01-06 19:26:18', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (198, 'DD202001061578309978283', 37, 50.00, 600, '2020-01-06 19:26:18', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (199, 'DD202001061578309978441', 37, 50.00, 600, '2020-01-06 19:26:19', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (200, 'DD202001061578309990741', 37, 0.01, 1500, '2020-01-06 19:26:31', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (201, 'DD202001061578309991416', 37, 0.01, 1500, '2020-01-06 19:26:32', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (202, 'DD202001061578309991565', 37, 0.01, 1500, '2020-01-06 19:26:32', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (203, 'DD202001061578309992044', 37, 0.01, 1500, '2020-01-06 19:26:32', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (204, 'DD202001061578309992940', 37, 0.01, 1500, '2020-01-06 19:26:33', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (205, 'DD202001061578309993103', 37, 0.01, 1500, '2020-01-06 19:26:33', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (206, 'DD202001061578309993638', 37, 0.01, 1500, '2020-01-06 19:26:34', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (207, 'DD202001061578309993803', 37, 0.01, 1500, '2020-01-06 19:26:34', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (208, 'DD202001061578309994289', 37, 0.01, 1500, '2020-01-06 19:26:34', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (209, 'DD202001061578309994715', 37, 0.01, 1500, '2020-01-06 19:26:35', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (210, 'DD202001061578309994877', 37, 0.01, 1500, '2020-01-06 19:26:35', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (211, 'DD202001061578309995592', 37, 0.01, 1500, '2020-01-06 19:26:36', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (212, 'DD202001061578309995756', 37, 0.01, 1500, '2020-01-06 19:26:36', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (213, 'DD202001061578309995848', 37, 0.01, 1500, '2020-01-06 19:26:36', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (214, 'DD202001061578310034082', 37, 0.01, 1500, '2020-01-06 19:27:14', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (215, 'DD202001061578310034748', 37, 0.01, 1500, '2020-01-06 19:27:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (216, 'DD202001061578310034951', 37, 0.01, 1500, '2020-01-06 19:27:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (217, 'DD202001061578310035175', 37, 0.01, 1500, '2020-01-06 19:27:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (218, 'DD202001061578310035405', 37, 0.01, 1500, '2020-01-06 19:27:16', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (219, 'DD202001061578310035706', 37, 0.01, 1500, '2020-01-06 19:27:16', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (220, 'DD202001061578310035850', 37, 0.01, 1500, '2020-01-06 19:27:16', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (221, 'DD202001061578310036185', 37, 0.01, 1500, '2020-01-06 19:27:16', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (222, 'DD202001061578310036347', 37, 0.01, 1500, '2020-01-06 19:27:16', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (223, 'DD202001061578310037836', 37, 0.01, 1500, '2020-01-06 19:27:18', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (224, 'DD202001061578310038022', 37, 0.01, 1500, '2020-01-06 19:27:18', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (225, 'DD202001061578310038398', 37, 0.01, 1500, '2020-01-06 19:27:19', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (226, 'DD202001061578310038662', 37, 0.01, 1500, '2020-01-06 19:27:19', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (227, 'DD202001061578310038913', 37, 0.01, 1500, '2020-01-06 19:27:19', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (228, 'DD202001061578310039093', 37, 0.01, 1500, '2020-01-06 19:27:19', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (229, 'DD202001061578310039710', 37, 0.01, 1500, '2020-01-06 19:27:20', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (230, 'DD202001061578310040126', 37, 0.01, 1500, '2020-01-06 19:27:20', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (231, 'DD202001061578310040313', 37, 0.01, 1500, '2020-01-06 19:27:20', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (232, 'DD202001061578310040622', 37, 0.01, 1500, '2020-01-06 19:27:21', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (233, 'DD202001061578310043469', 37, 0.01, 1500, '2020-01-06 19:27:24', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (234, 'DD202001061578310043618', 37, 0.01, 1500, '2020-01-06 19:27:24', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (235, 'DD202001061578310043986', 37, 0.01, 1500, '2020-01-06 19:27:24', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (236, 'DD202001061578310044137', 37, 0.01, 1500, '2020-01-06 19:27:24', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (237, 'DD202001061578310044646', 37, 0.01, 1500, '2020-01-06 19:27:25', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (238, 'DD202001061578310044822', 37, 0.01, 1500, '2020-01-06 19:27:25', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (239, 'DD202001061578310045462', 37, 0.01, 1500, '2020-01-06 19:27:26', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (240, 'DD202001061578310045701', 37, 0.01, 1500, '2020-01-06 19:27:26', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (241, 'DD202001061578310113548', 37, 0.01, 1500, '2020-01-06 19:28:34', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (242, 'DD202001061578310115376', 37, 0.01, 1500, '2020-01-06 19:28:36', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (243, 'DD202001061578310116354', 37, 0.01, 1500, '2020-01-06 19:28:37', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (244, 'DD202001061578310117674', 37, 0.01, 1500, '2020-01-06 19:28:38', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (245, 'DD202001061578310118462', 37, 0.01, 1500, '2020-01-06 19:28:39', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (246, 'DD202001061578310119276', 37, 0.01, 1500, '2020-01-06 19:28:39', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (247, 'DD202001061578310120027', 37, 0.01, 1500, '2020-01-06 19:28:40', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (248, 'DD202001061578310120608', 37, 0.01, 1500, '2020-01-06 19:28:41', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (249, 'DD202001061578310121260', 37, 0.01, 1500, '2020-01-06 19:28:41', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (250, 'DD202001061578310121647', 37, 0.01, 1500, '2020-01-06 19:28:42', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (251, 'DD202001061578310122075', 37, 0.01, 1500, '2020-01-06 19:28:42', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (252, 'DD202001061578310122556', 37, 0.01, 1500, '2020-01-06 19:28:43', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (253, 'DD202001061578310123288', 37, 0.01, 1500, '2020-01-06 19:28:43', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (254, 'DD202001061578310123967', 37, 0.01, 1500, '2020-01-06 19:28:44', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (255, 'DD202001061578310124722', 37, 0.01, 1500, '2020-01-06 19:28:45', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (256, 'DD202001061578310125559', 37, 0.01, 1500, '2020-01-06 19:28:46', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (257, 'DD202001061578310126450', 37, 0.01, 1500, '2020-01-06 19:28:47', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (258, 'DD202001061578310127127', 37, 0.01, 1500, '2020-01-06 19:28:47', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (259, 'DD202001061578310148034', 37, 0.01, 1500, '2020-01-06 19:29:08', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (260, 'DD202001061578310148521', 37, 0.01, 1500, '2020-01-06 19:29:09', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (261, 'DD202001061578310149119', 37, 0.01, 1500, '2020-01-06 19:29:09', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (262, 'DD202001061578310149640', 37, 0.01, 1500, '2020-01-06 19:29:10', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (263, 'DD202001061578310154473', 37, 0.01, 1500, '2020-01-06 19:29:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (264, 'DD202001061578310160126', 37, 0.01, 1500, '2020-01-06 19:29:20', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (265, 'DD202001061578310160604', 37, 0.01, 1500, '2020-01-06 19:29:21', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (266, 'DD202001061578310161039', 37, 0.01, 1500, '2020-01-06 19:29:21', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (267, 'DD202001061578310161521', 37, 0.01, 1500, '2020-01-06 19:29:22', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (268, 'DD202001061578310162049', 37, 0.01, 1500, '2020-01-06 19:29:22', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (269, 'DD202001061578310170159', 37, 0.01, 1500, '2020-01-06 19:29:30', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (270, 'DD202001061578310282722', 77, 50.00, 600, '2020-01-06 19:31:23', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (271, 'DD202001061578310285133', 77, 50.00, 600, '2020-01-06 19:31:25', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (272, 'DD202001061578310285818', 77, 50.00, 600, '2020-01-06 19:31:26', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (273, 'DD202001061578310312743', 77, 50.00, 600, '2020-01-06 19:31:53', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (274, 'DD202001061578310316281', 77, 50.00, 600, '2020-01-06 19:31:57', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (275, 'DD202001061578310521341', 80, 50.00, 600, '2020-01-06 19:35:22', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (276, 'DD202001061578310810307', 80, 0.01, 1500, '2020-01-06 19:40:11', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (277, 'DD202001071578359957148', 37, 0.01, 1500, '2020-01-07 09:19:19', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (278, 'DD202001071578360030547', 37, 0.01, 1500, '2020-01-07 09:20:31', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (279, 'DD202001071578364476870', 76, 0.01, 1500, '2020-01-07 10:34:37', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (280, 'DD202001071578364484694', 76, 0.01, 1500, '2020-01-07 10:34:45', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (281, 'DD202001071578364488802', 76, 0.01, 1500, '2020-01-07 10:34:49', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (282, 'DD202001071578386604289', 86, 0.01, 1500, '2020-01-07 16:43:24', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (283, 'DD202001071578388309744', 86, 0.01, 1500, '2020-01-07 17:11:50', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (284, 'DD202001101578650296088', 37, 0.01, 1500, '2020-01-10 17:58:16', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (285, 'DD202001101578650301750', 37, 0.01, 1500, '2020-01-10 17:58:22', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (286, 'DD202001101578650304456', 37, 0.01, 1500, '2020-01-10 17:58:25', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (287, 'DD202001101578650304829', 37, 0.01, 1500, '2020-01-10 17:58:25', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (288, 'DD202001101578650305072', 37, 0.01, 1500, '2020-01-10 17:58:25', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (289, 'DD202001101578650305328', 37, 0.01, 1500, '2020-01-10 17:58:26', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (290, 'DD202001101578650305631', 37, 0.01, 1500, '2020-01-10 17:58:26', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (291, 'DD202001101578650305940', 37, 0.01, 1500, '2020-01-10 17:58:26', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (292, 'DD202001101578650306163', 37, 0.01, 1500, '2020-01-10 17:58:26', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (293, 'DD202001101578650306352', 37, 0.01, 1500, '2020-01-10 17:58:27', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (294, 'DD202001101578650306387', 37, 0.01, 1500, '2020-01-10 17:58:27', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (295, 'DD202001101578650306548', 37, 0.01, 1500, '2020-01-10 17:58:27', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (296, 'DD202001101578650306679', 37, 0.01, 1500, '2020-01-10 17:58:27', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (297, 'DD202001101578650315961', 37, 0.01, 1500, '2020-01-10 17:58:36', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (298, 'DD202001111578728070348', 114, 0.01, 1500, '2020-01-11 15:34:30', 0, 0, 1);
INSERT INTO `pp_recharge_record` VALUES (299, 'DD202001111578738807229', 91, 50.00, 600, '2020-01-11 18:33:28', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (300, 'DD202001111578738809720', 91, 50.00, 600, '2020-01-11 18:33:30', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (301, 'DD202001111578738971020', 91, 50.00, 600, '2020-01-11 18:36:12', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (302, 'DD202001111578738972891', 91, 50.00, 600, '2020-01-11 18:36:13', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (303, 'DD202001111578738973896', 91, 50.00, 600, '2020-01-11 18:36:14', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (304, 'DD202001111578738974323', 91, 50.00, 600, '2020-01-11 18:36:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (305, 'DD202001111578738974535', 91, 50.00, 600, '2020-01-11 18:36:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (306, 'DD202001111578738975168', 91, 50.00, 600, '2020-01-11 18:36:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (307, 'DD202001111578739043408', 91, 50.00, 600, '2020-01-11 18:37:40', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (308, 'DD202001111578739083468', 91, 50.00, 600, '2020-01-11 18:38:08', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (309, 'DD202001111578739089256', 91, 50.00, 600, '2020-01-11 18:38:09', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (310, 'DD202001111578739093252', 91, 50.00, 600, '2020-01-11 18:38:13', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (311, 'DD202001111578739094178', 91, 50.00, 600, '2020-01-11 18:38:14', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (312, 'DD202001111578739094668', 91, 50.00, 600, '2020-01-11 18:38:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (313, 'DD202001111578739095087', 91, 50.00, 600, '2020-01-11 18:38:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (314, 'DD202001111578739095574', 91, 50.00, 600, '2020-01-11 18:38:16', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (315, 'DD202001111578739095749', 91, 50.00, 600, '2020-01-11 18:38:16', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (316, 'DD202001111578739096352', 91, 50.00, 600, '2020-01-11 18:38:17', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (317, 'DD202001111578739096539', 91, 50.00, 600, '2020-01-11 18:38:17', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (318, 'DD202001111578739097214', 91, 50.00, 600, '2020-01-11 18:38:17', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (319, 'DD202001111578739097370', 91, 50.00, 600, '2020-01-11 18:38:18', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (320, 'DD202001111578739097817', 91, 50.00, 600, '2020-01-11 18:38:18', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (321, 'DD202001111578739117676', 91, 50.00, 600, '2020-01-11 18:38:38', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (322, 'DD202001131578879407906', 91, 50.00, 600, '2020-01-13 09:36:48', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (323, 'DD202001131578879412284', 91, 50.00, 600, '2020-01-13 09:36:52', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (324, 'DD202001131578879413075', 91, 50.00, 600, '2020-01-13 09:36:53', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (325, 'DD202001131578879413703', 91, 50.00, 600, '2020-01-13 09:36:54', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (326, 'DD202001131578879414853', 91, 50.00, 600, '2020-01-13 09:36:55', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (327, 'DD202001131578879905417', 91, 50.00, 600, '2020-01-13 09:45:06', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (328, 'DD202001131578879907910', 91, 50.00, 600, '2020-01-13 09:45:08', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (329, 'DD202001131578879920486', 91, 50.00, 600, '2020-01-13 09:45:21', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (330, 'DD202001131578879922265', 91, 50.00, 600, '2020-01-13 09:45:22', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (331, 'DD202001131578879973656', 91, 50.00, 600, '2020-01-13 09:46:14', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (332, 'DD202001131578879975325', 91, 50.00, 600, '2020-01-13 09:46:15', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (333, 'DD202001131578879975979', 91, 50.00, 600, '2020-01-13 09:46:16', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (334, 'DD202001131578879976507', 91, 50.00, 600, '2020-01-13 09:46:17', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (335, 'DD202001131578879977021', 91, 50.00, 600, '2020-01-13 09:46:17', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (336, 'DD202001131578880000450', 91, 50.00, 600, '2020-01-13 09:46:41', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (337, 'DD202001131578880001757', 91, 50.00, 600, '2020-01-13 09:46:42', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (338, 'DD202001131578880003173', 91, 50.00, 600, '2020-01-13 09:46:43', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (339, 'DD202001131578880008242', 91, 50.00, 600, '2020-01-13 09:46:48', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (340, 'DD202001131578880467757', 91, 50.00, 600, '2020-01-13 09:54:28', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (341, 'DD202001131578880469174', 91, 50.00, 600, '2020-01-13 09:54:29', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (342, 'DD202001131578880472897', 91, 50.00, 600, '2020-01-13 09:54:33', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (343, 'DD202001131578880473332', 91, 50.00, 600, '2020-01-13 09:54:34', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (344, 'DD202001131578880474298', 91, 50.00, 600, '2020-01-13 09:54:34', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (345, 'DD202001131578880474773', 91, 50.00, 600, '2020-01-13 09:54:35', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (346, 'DD202001131578880476000', 91, 50.00, 600, '2020-01-13 09:54:36', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (347, 'DD202001131578880476543', 91, 50.00, 600, '2020-01-13 09:54:37', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (348, 'DD202001131578880477078', 91, 50.00, 600, '2020-01-13 09:54:37', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (349, 'DD202001131578880477704', 91, 50.00, 600, '2020-01-13 09:54:38', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (350, 'DD202001131578880478166', 91, 50.00, 600, '2020-01-13 09:54:38', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (351, 'DD202001131578880479107', 91, 50.00, 600, '2020-01-13 09:54:39', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (352, 'DD202001131578880479717', 91, 50.00, 600, '2020-01-13 09:54:40', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (353, 'DD202001131578880481219', 91, 50.00, 600, '2020-01-13 09:54:41', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (354, 'DD202001131578880494067', 91, 50.00, 600, '2020-01-13 09:54:54', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (355, 'DD202001131578880494943', 91, 50.00, 600, '2020-01-13 09:54:55', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (356, 'DD202001131578880495103', 91, 50.00, 600, '2020-01-13 09:54:55', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (357, 'DD202001131578880496028', 91, 50.00, 600, '2020-01-13 09:54:56', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (358, 'DD202001131578880496355', 91, 50.00, 600, '2020-01-13 09:54:57', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (359, 'DD202001131578880496471', 91, 50.00, 600, '2020-01-13 09:54:57', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (360, 'DD202001131578880496703', 91, 50.00, 600, '2020-01-13 09:54:57', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (361, 'DD202001131578880496859', 91, 50.00, 600, '2020-01-13 09:54:57', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (362, 'DD202001131578880501179', 91, 50.00, 600, '2020-01-13 09:55:01', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (363, 'DD202001131578880555790', 91, 50.00, 600, '2020-01-13 09:55:56', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (364, 'DD202001131578880559428', 91, 50.00, 600, '2020-01-13 09:56:00', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (365, 'DD202001131578880560724', 91, 50.00, 600, '2020-01-13 09:56:01', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (366, 'DD202001131578880561288', 91, 50.00, 600, '2020-01-13 09:56:01', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (367, 'DD202001131578880562047', 91, 50.00, 600, '2020-01-13 09:56:02', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (368, 'DD202001131578880562630', 91, 50.00, 600, '2020-01-13 09:56:03', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (369, 'DD202001131578880562923', 91, 50.00, 600, '2020-01-13 09:56:03', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (370, 'DD202001131578880837822', 91, 50.00, 600, '2020-01-13 10:00:38', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (371, 'DD202001131578880838832', 91, 50.00, 600, '2020-01-13 10:00:39', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (372, 'DD202001131578880839014', 91, 50.00, 600, '2020-01-13 10:00:39', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (373, 'DD202001131578880839606', 91, 50.00, 600, '2020-01-13 10:00:40', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (374, 'DD202001131578880841519', 91, 50.00, 600, '2020-01-13 10:00:42', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (375, 'DD202001131578881122084', 80, 50.00, 600, '2020-01-13 10:05:22', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (376, 'DD202001131578881129826', 91, 50.00, 600, '2020-01-13 10:05:30', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (377, 'DD202001131578881132837', 91, 50.00, 600, '2020-01-13 10:05:33', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (378, 'DD202001131578881156039', 91, 50.00, 600, '2020-01-13 10:05:56', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (379, 'DD202001131578881159116', 91, 50.00, 600, '2020-01-13 10:05:59', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (380, 'DD202001131578881165645', 91, 50.00, 600, '2020-01-13 10:06:06', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (381, 'DD202001131578881167144', 91, 50.00, 600, '2020-01-13 10:06:07', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (382, 'DD202001131578881212546', 80, 50.00, 600, '2020-01-13 10:06:53', 0, 0, 2);
INSERT INTO `pp_recharge_record` VALUES (383, 'DD202001131578881284045', 80, 50.00, 600, '2020-01-13 10:08:04', 0, 0, 2);

-- ----------------------------
-- Table structure for pp_recharge_spec
-- ----------------------------
DROP TABLE IF EXISTS `pp_recharge_spec`;
CREATE TABLE `pp_recharge_spec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_money` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '金额',
  `spec_val` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格值',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态(0:删除 1:正常)',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值规格表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_recharge_spec
-- ----------------------------
INSERT INTO `pp_recharge_spec` VALUES (2, '50', '600', 0, NULL, '2019-12-25 09:34:49');
INSERT INTO `pp_recharge_spec` VALUES (3, '0.01', '1500', 1, NULL, '2020-01-06 13:51:37');
INSERT INTO `pp_recharge_spec` VALUES (4, '10', '100', 1, NULL, NULL);

-- ----------------------------
-- Table structure for pp_slide_number
-- ----------------------------
DROP TABLE IF EXISTS `pp_slide_number`;
CREATE TABLE `pp_slide_number`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户滑动记录主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `slide_number` int(11) NULL DEFAULT 0 COMMENT '滑动次数',
  `maximum_slide_number` int(255) NULL DEFAULT NULL COMMENT '最大滑动次数',
  `slide_insert_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `slide_update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户滑动数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_slide_number
-- ----------------------------
INSERT INTO `pp_slide_number` VALUES (2, 23, 0, 50, NULL, '2019-12-18 14:02:35');
INSERT INTO `pp_slide_number` VALUES (3, 36, 3, 340, NULL, '2019-12-28 16:43:24');
INSERT INTO `pp_slide_number` VALUES (4, 1, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (5, 61, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (6, 62, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (7, 63, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (8, 64, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (10, 37, 5, 1060, NULL, '2020-01-09 14:45:12');
INSERT INTO `pp_slide_number` VALUES (11, 35, 213, 1000, NULL, '2019-12-25 09:25:19');
INSERT INTO `pp_slide_number` VALUES (12, 22, 10, 340, '2019-12-30 09:50:00', '2020-01-09 14:22:11');
INSERT INTO `pp_slide_number` VALUES (13, 70, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (14, 71, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (15, 72, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (16, 73, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (17, 74, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (18, 75, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (19, 76, 342, 6655, NULL, '2020-01-07 14:31:38');
INSERT INTO `pp_slide_number` VALUES (20, 77, 0, 302, NULL, '2020-01-07 10:38:41');
INSERT INTO `pp_slide_number` VALUES (21, 78, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (22, 79, 33, 2, NULL, '2020-01-11 09:34:12');
INSERT INTO `pp_slide_number` VALUES (23, 81, 0, 408, NULL, '2020-01-07 15:58:29');
INSERT INTO `pp_slide_number` VALUES (24, 84, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (25, 85, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (26, 86, 17, 1000, NULL, '2020-01-11 14:28:26');
INSERT INTO `pp_slide_number` VALUES (27, 88, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (28, 89, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (29, 90, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (30, 91, 2, 0, NULL, '2020-01-10 16:18:10');
INSERT INTO `pp_slide_number` VALUES (31, 92, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (32, 93, 100, 2, NULL, '2020-01-10 14:59:56');
INSERT INTO `pp_slide_number` VALUES (33, 94, 100, 2, NULL, '2020-01-10 15:00:00');
INSERT INTO `pp_slide_number` VALUES (34, 95, 26, 2, NULL, '2020-01-11 10:59:19');
INSERT INTO `pp_slide_number` VALUES (35, 100, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (36, 98, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (37, 99, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (38, 96, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (39, 97, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (40, 101, 2, 2, NULL, '2020-01-11 11:45:35');
INSERT INTO `pp_slide_number` VALUES (41, 102, 4, 0, NULL, '2020-01-11 11:48:19');
INSERT INTO `pp_slide_number` VALUES (42, 103, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (43, 104, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (44, 105, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (45, 106, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (46, 107, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (47, 108, 0, 2, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (48, 109, 0, 0, NULL, '2020-01-11 14:08:01');
INSERT INTO `pp_slide_number` VALUES (49, 110, 16, 10, NULL, '2020-01-11 14:16:14');
INSERT INTO `pp_slide_number` VALUES (50, 111, 0, 100, NULL, '2020-01-11 15:47:07');
INSERT INTO `pp_slide_number` VALUES (51, 112, 26, 10, NULL, '2020-01-11 14:44:40');
INSERT INTO `pp_slide_number` VALUES (52, 113, 18, 10, NULL, '2020-01-11 15:27:46');
INSERT INTO `pp_slide_number` VALUES (53, 114, 16, 10, NULL, '2020-01-11 15:35:50');
INSERT INTO `pp_slide_number` VALUES (54, 115, 9, 10, NULL, '2020-01-11 17:36:24');
INSERT INTO `pp_slide_number` VALUES (55, 116, 0, 10, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (56, 117, 0, 10, NULL, NULL);
INSERT INTO `pp_slide_number` VALUES (57, 118, 9, 10, NULL, '2020-01-13 09:59:19');
INSERT INTO `pp_slide_number` VALUES (58, 119, 45, 13, NULL, '2020-01-13 10:01:19');
INSERT INTO `pp_slide_number` VALUES (59, 120, 9, 10, NULL, '2020-01-13 10:45:22');

-- ----------------------------
-- Table structure for pp_slide_record
-- ----------------------------
DROP TABLE IF EXISTS `pp_slide_record`;
CREATE TABLE `pp_slide_record`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `from_uid` bigint(11) NULL DEFAULT NULL COMMENT '滑动人id',
  `to_uid` bigint(11) NULL DEFAULT NULL COMMENT '被滑动人id',
  `islike` tinyint(1) NULL DEFAULT 0 COMMENT '是否喜欢（0：不喜欢  1：喜欢）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '滑动时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 742 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_slide_record
-- ----------------------------
INSERT INTO `pp_slide_record` VALUES (13, 36, 26, 0, '2019-12-18 14:05:33');
INSERT INTO `pp_slide_record` VALUES (14, 36, 26, 0, '2019-12-18 14:05:33');
INSERT INTO `pp_slide_record` VALUES (15, 36, 27, 0, '2019-12-18 14:05:40');
INSERT INTO `pp_slide_record` VALUES (16, 36, 11, 0, '2019-12-19 14:07:10');
INSERT INTO `pp_slide_record` VALUES (17, 36, 37, 0, '2019-12-19 14:07:12');
INSERT INTO `pp_slide_record` VALUES (18, 36, 3, 0, '2019-12-19 14:07:14');
INSERT INTO `pp_slide_record` VALUES (20, 36, 26, 0, '2019-12-23 09:33:07');
INSERT INTO `pp_slide_record` VALUES (21, 36, 27, 1, '2019-12-23 09:34:25');
INSERT INTO `pp_slide_record` VALUES (22, 36, 28, 0, '2019-12-23 09:34:40');
INSERT INTO `pp_slide_record` VALUES (23, 35, 64, 1, '2019-12-23 18:05:39');
INSERT INTO `pp_slide_record` VALUES (24, 35, 63, 0, '2019-12-23 18:05:45');
INSERT INTO `pp_slide_record` VALUES (25, 35, 66, 1, '2019-12-23 18:05:49');
INSERT INTO `pp_slide_record` VALUES (26, 35, 64, 0, '2019-12-23 18:07:37');
INSERT INTO `pp_slide_record` VALUES (27, 35, 63, 0, '2019-12-23 18:07:38');
INSERT INTO `pp_slide_record` VALUES (28, 35, 64, 0, '2019-12-24 13:49:33');
INSERT INTO `pp_slide_record` VALUES (29, 35, 63, 0, '2019-12-24 13:49:33');
INSERT INTO `pp_slide_record` VALUES (30, 35, 66, 0, '2019-12-24 13:49:33');
INSERT INTO `pp_slide_record` VALUES (31, 35, 62, 0, '2019-12-24 13:49:34');
INSERT INTO `pp_slide_record` VALUES (32, 35, 56, 0, '2019-12-24 13:49:34');
INSERT INTO `pp_slide_record` VALUES (33, 35, 63, 1, '2019-12-24 14:38:09');
INSERT INTO `pp_slide_record` VALUES (34, 35, 63, 1, '2019-12-24 14:38:19');
INSERT INTO `pp_slide_record` VALUES (35, 35, 66, 1, '2019-12-24 14:38:20');
INSERT INTO `pp_slide_record` VALUES (36, 35, 62, 1, '2019-12-24 14:38:22');
INSERT INTO `pp_slide_record` VALUES (37, 35, 56, 1, '2019-12-24 14:38:42');
INSERT INTO `pp_slide_record` VALUES (38, 35, 64, 0, '2019-12-24 19:25:15');
INSERT INTO `pp_slide_record` VALUES (39, 35, 64, 0, '2019-12-24 19:25:15');
INSERT INTO `pp_slide_record` VALUES (40, 35, 63, 0, '2019-12-24 19:25:16');
INSERT INTO `pp_slide_record` VALUES (41, 35, 63, 0, '2019-12-24 19:25:16');
INSERT INTO `pp_slide_record` VALUES (42, 35, 66, 0, '2019-12-24 19:25:17');
INSERT INTO `pp_slide_record` VALUES (43, 37, 64, 0, '2019-12-24 19:26:53');
INSERT INTO `pp_slide_record` VALUES (44, 37, 64, 0, '2019-12-24 19:26:53');
INSERT INTO `pp_slide_record` VALUES (45, 37, 63, 0, '2019-12-24 19:26:55');
INSERT INTO `pp_slide_record` VALUES (46, 37, 63, 0, '2019-12-24 19:26:55');
INSERT INTO `pp_slide_record` VALUES (47, 37, 66, 0, '2019-12-24 19:26:56');
INSERT INTO `pp_slide_record` VALUES (48, 35, 64, 0, '2019-12-24 19:33:56');
INSERT INTO `pp_slide_record` VALUES (49, 35, 64, 0, '2019-12-24 19:33:56');
INSERT INTO `pp_slide_record` VALUES (50, 35, 64, 0, '2019-12-24 19:35:40');
INSERT INTO `pp_slide_record` VALUES (51, 35, 64, 0, '2019-12-24 19:35:40');
INSERT INTO `pp_slide_record` VALUES (52, 35, 63, 0, '2019-12-24 19:35:42');
INSERT INTO `pp_slide_record` VALUES (53, 35, 63, 0, '2019-12-24 19:35:42');
INSERT INTO `pp_slide_record` VALUES (54, 35, 66, 0, '2019-12-24 19:35:43');
INSERT INTO `pp_slide_record` VALUES (55, 35, 62, 0, '2019-12-25 09:19:36');
INSERT INTO `pp_slide_record` VALUES (56, 35, 62, 0, '2019-12-25 09:19:37');
INSERT INTO `pp_slide_record` VALUES (57, 35, 63, 0, '2019-12-25 09:19:38');
INSERT INTO `pp_slide_record` VALUES (58, 35, 63, 0, '2019-12-25 09:19:39');
INSERT INTO `pp_slide_record` VALUES (59, 35, 64, 0, '2019-12-25 09:19:39');
INSERT INTO `pp_slide_record` VALUES (60, 35, 62, 0, '2019-12-25 09:25:19');
INSERT INTO `pp_slide_record` VALUES (61, 35, 62, 0, '2019-12-25 09:25:20');
INSERT INTO `pp_slide_record` VALUES (62, 35, 63, 0, '2019-12-25 09:25:20');
INSERT INTO `pp_slide_record` VALUES (63, 35, 63, 0, '2019-12-25 09:25:21');
INSERT INTO `pp_slide_record` VALUES (64, 35, 64, 0, '2019-12-25 09:25:22');
INSERT INTO `pp_slide_record` VALUES (65, 35, 64, 0, '2019-12-25 09:25:22');
INSERT INTO `pp_slide_record` VALUES (66, 35, 66, 0, '2019-12-25 09:25:23');
INSERT INTO `pp_slide_record` VALUES (67, 35, 66, 0, '2019-12-25 09:25:23');
INSERT INTO `pp_slide_record` VALUES (68, 35, 56, 0, '2019-12-25 09:25:28');
INSERT INTO `pp_slide_record` VALUES (69, 35, 62, 0, '2019-12-25 09:26:29');
INSERT INTO `pp_slide_record` VALUES (70, 35, 62, 0, '2019-12-25 09:26:30');
INSERT INTO `pp_slide_record` VALUES (71, 35, 63, 0, '2019-12-25 09:26:30');
INSERT INTO `pp_slide_record` VALUES (72, 35, 63, 1, '2019-12-25 09:26:31');
INSERT INTO `pp_slide_record` VALUES (73, 35, 64, 0, '2019-12-25 09:26:31');
INSERT INTO `pp_slide_record` VALUES (74, 35, 64, 0, '2019-12-25 09:26:32');
INSERT INTO `pp_slide_record` VALUES (75, 35, 66, 0, '2019-12-25 09:26:32');
INSERT INTO `pp_slide_record` VALUES (76, 35, 66, 1, '2019-12-25 09:26:33');
INSERT INTO `pp_slide_record` VALUES (77, 35, 56, 0, '2019-12-25 09:26:33');
INSERT INTO `pp_slide_record` VALUES (78, 35, 56, 0, '2019-12-25 09:26:33');
INSERT INTO `pp_slide_record` VALUES (79, 35, 26, 0, '2019-12-25 09:26:34');
INSERT INTO `pp_slide_record` VALUES (80, 35, 26, 1, '2019-12-25 09:26:34');
INSERT INTO `pp_slide_record` VALUES (81, 35, 55, 0, '2019-12-25 09:26:35');
INSERT INTO `pp_slide_record` VALUES (82, 35, 55, 0, '2019-12-25 09:26:35');
INSERT INTO `pp_slide_record` VALUES (83, 35, 25, 0, '2019-12-25 09:26:35');
INSERT INTO `pp_slide_record` VALUES (84, 35, 25, 1, '2019-12-25 09:26:36');
INSERT INTO `pp_slide_record` VALUES (85, 35, 54, 0, '2019-12-25 09:26:36');
INSERT INTO `pp_slide_record` VALUES (86, 35, 54, 0, '2019-12-25 09:26:37');
INSERT INTO `pp_slide_record` VALUES (87, 35, 36, 0, '2019-12-25 09:26:37');
INSERT INTO `pp_slide_record` VALUES (88, 35, 36, 1, '2019-12-25 09:26:37');
INSERT INTO `pp_slide_record` VALUES (89, 35, 60, 0, '2019-12-25 09:26:38');
INSERT INTO `pp_slide_record` VALUES (90, 35, 60, 0, '2019-12-25 09:26:38');
INSERT INTO `pp_slide_record` VALUES (91, 35, 22, 0, '2019-12-25 09:26:38');
INSERT INTO `pp_slide_record` VALUES (92, 35, 22, 1, '2019-12-25 09:26:39');
INSERT INTO `pp_slide_record` VALUES (93, 35, 37, 0, '2019-12-25 09:26:40');
INSERT INTO `pp_slide_record` VALUES (94, 35, 37, 0, '2019-12-25 09:26:40');
INSERT INTO `pp_slide_record` VALUES (95, 35, 24, 0, '2019-12-25 09:26:41');
INSERT INTO `pp_slide_record` VALUES (96, 35, 24, 1, '2019-12-25 09:26:41');
INSERT INTO `pp_slide_record` VALUES (97, 35, 53, 0, '2019-12-25 09:26:42');
INSERT INTO `pp_slide_record` VALUES (98, 35, 53, 0, '2019-12-25 09:26:43');
INSERT INTO `pp_slide_record` VALUES (99, 35, 23, 0, '2019-12-25 09:26:43');
INSERT INTO `pp_slide_record` VALUES (100, 35, 23, 1, '2019-12-25 09:26:44');
INSERT INTO `pp_slide_record` VALUES (101, 35, 52, 0, '2019-12-25 09:26:45');
INSERT INTO `pp_slide_record` VALUES (102, 35, 52, 0, '2019-12-25 09:26:51');
INSERT INTO `pp_slide_record` VALUES (103, 35, 64, 0, '2019-12-25 09:26:59');
INSERT INTO `pp_slide_record` VALUES (104, 35, 64, 0, '2019-12-25 09:26:59');
INSERT INTO `pp_slide_record` VALUES (105, 35, 66, 0, '2019-12-25 09:26:59');
INSERT INTO `pp_slide_record` VALUES (106, 35, 62, 0, '2019-12-25 10:08:12');
INSERT INTO `pp_slide_record` VALUES (107, 35, 62, 0, '2019-12-25 10:08:13');
INSERT INTO `pp_slide_record` VALUES (108, 35, 63, 0, '2019-12-25 10:08:14');
INSERT INTO `pp_slide_record` VALUES (109, 35, 63, 0, '2019-12-25 10:08:53');
INSERT INTO `pp_slide_record` VALUES (110, 35, 63, 0, '2019-12-25 10:09:00');
INSERT INTO `pp_slide_record` VALUES (111, 35, 63, 0, '2019-12-25 10:09:00');
INSERT INTO `pp_slide_record` VALUES (112, 35, 62, 0, '2019-12-25 10:10:37');
INSERT INTO `pp_slide_record` VALUES (113, 35, 62, 0, '2019-12-25 10:11:44');
INSERT INTO `pp_slide_record` VALUES (114, 35, 62, 0, '2019-12-25 10:14:59');
INSERT INTO `pp_slide_record` VALUES (115, 35, 62, 0, '2019-12-25 10:16:02');
INSERT INTO `pp_slide_record` VALUES (116, 35, 62, 0, '2019-12-25 10:17:27');
INSERT INTO `pp_slide_record` VALUES (117, 35, 62, 0, '2019-12-25 10:17:33');
INSERT INTO `pp_slide_record` VALUES (118, 35, 62, 0, '2019-12-25 10:19:41');
INSERT INTO `pp_slide_record` VALUES (119, 35, 62, 0, '2019-12-25 10:20:12');
INSERT INTO `pp_slide_record` VALUES (120, 35, 62, 0, '2019-12-25 10:20:12');
INSERT INTO `pp_slide_record` VALUES (121, 35, 64, 0, '2019-12-25 10:20:12');
INSERT INTO `pp_slide_record` VALUES (122, 35, 63, 0, '2019-12-25 10:20:12');
INSERT INTO `pp_slide_record` VALUES (123, 35, 63, 0, '2019-12-25 10:20:12');
INSERT INTO `pp_slide_record` VALUES (124, 35, 64, 0, '2019-12-25 10:20:20');
INSERT INTO `pp_slide_record` VALUES (125, 35, 64, 0, '2019-12-25 10:20:20');
INSERT INTO `pp_slide_record` VALUES (126, 35, 66, 0, '2019-12-25 10:20:21');
INSERT INTO `pp_slide_record` VALUES (127, 35, 66, 0, '2019-12-25 10:20:22');
INSERT INTO `pp_slide_record` VALUES (128, 35, 56, 0, '2019-12-25 10:20:23');
INSERT INTO `pp_slide_record` VALUES (129, 35, 56, 0, '2019-12-25 10:21:32');
INSERT INTO `pp_slide_record` VALUES (130, 35, 56, 0, '2019-12-25 10:21:32');
INSERT INTO `pp_slide_record` VALUES (131, 35, 26, 0, '2019-12-25 10:21:33');
INSERT INTO `pp_slide_record` VALUES (132, 35, 26, 0, '2019-12-25 10:22:27');
INSERT INTO `pp_slide_record` VALUES (133, 35, 26, 0, '2019-12-25 10:22:27');
INSERT INTO `pp_slide_record` VALUES (134, 35, 55, 0, '2019-12-25 10:22:28');
INSERT INTO `pp_slide_record` VALUES (135, 35, 55, 0, '2019-12-25 10:22:28');
INSERT INTO `pp_slide_record` VALUES (136, 35, 25, 0, '2019-12-25 10:22:29');
INSERT INTO `pp_slide_record` VALUES (137, 35, 25, 0, '2019-12-25 10:23:04');
INSERT INTO `pp_slide_record` VALUES (138, 35, 25, 0, '2019-12-25 10:23:05');
INSERT INTO `pp_slide_record` VALUES (139, 35, 54, 0, '2019-12-25 10:23:05');
INSERT INTO `pp_slide_record` VALUES (140, 35, 54, 0, '2019-12-25 10:23:05');
INSERT INTO `pp_slide_record` VALUES (141, 35, 36, 0, '2019-12-25 10:23:05');
INSERT INTO `pp_slide_record` VALUES (142, 35, 36, 0, '2019-12-25 10:23:06');
INSERT INTO `pp_slide_record` VALUES (143, 35, 60, 0, '2019-12-25 10:23:06');
INSERT INTO `pp_slide_record` VALUES (144, 35, 60, 0, '2019-12-25 10:24:03');
INSERT INTO `pp_slide_record` VALUES (145, 35, 60, 0, '2019-12-25 10:24:06');
INSERT INTO `pp_slide_record` VALUES (146, 35, 22, 0, '2019-12-25 10:24:06');
INSERT INTO `pp_slide_record` VALUES (147, 35, 62, 0, '2019-12-25 10:27:16');
INSERT INTO `pp_slide_record` VALUES (148, 35, 62, 0, '2019-12-25 10:27:20');
INSERT INTO `pp_slide_record` VALUES (149, 35, 62, 0, '2019-12-25 10:27:20');
INSERT INTO `pp_slide_record` VALUES (150, 35, 63, 0, '2019-12-25 10:27:20');
INSERT INTO `pp_slide_record` VALUES (151, 35, 63, 0, '2019-12-25 10:27:21');
INSERT INTO `pp_slide_record` VALUES (152, 35, 64, 0, '2019-12-25 10:27:21');
INSERT INTO `pp_slide_record` VALUES (153, 35, 64, 0, '2019-12-25 10:27:21');
INSERT INTO `pp_slide_record` VALUES (154, 35, 66, 0, '2019-12-25 10:27:21');
INSERT INTO `pp_slide_record` VALUES (155, 35, 66, 0, '2019-12-25 10:27:21');
INSERT INTO `pp_slide_record` VALUES (156, 35, 56, 0, '2019-12-25 10:27:22');
INSERT INTO `pp_slide_record` VALUES (157, 35, 62, 0, '2019-12-26 14:10:22');
INSERT INTO `pp_slide_record` VALUES (158, 35, 62, 0, '2019-12-26 14:11:06');
INSERT INTO `pp_slide_record` VALUES (159, 35, 63, 1, '2019-12-26 14:12:20');
INSERT INTO `pp_slide_record` VALUES (160, 35, 64, 1, '2019-12-26 14:13:03');
INSERT INTO `pp_slide_record` VALUES (161, 35, 62, 1, '2019-12-26 14:14:33');
INSERT INTO `pp_slide_record` VALUES (162, 35, 62, 0, '2019-12-26 14:14:40');
INSERT INTO `pp_slide_record` VALUES (163, 35, 62, 0, '2019-12-26 14:14:56');
INSERT INTO `pp_slide_record` VALUES (164, 35, 63, 0, '2019-12-26 14:15:48');
INSERT INTO `pp_slide_record` VALUES (165, 35, 64, 0, '2019-12-26 14:15:57');
INSERT INTO `pp_slide_record` VALUES (166, 35, 66, 1, '2019-12-26 14:16:09');
INSERT INTO `pp_slide_record` VALUES (167, 35, 62, 1, '2019-12-26 14:16:19');
INSERT INTO `pp_slide_record` VALUES (168, 35, 62, 1, '2019-12-26 14:59:15');
INSERT INTO `pp_slide_record` VALUES (169, 35, 63, 1, '2019-12-26 14:59:15');
INSERT INTO `pp_slide_record` VALUES (170, 35, 64, 1, '2019-12-26 14:59:16');
INSERT INTO `pp_slide_record` VALUES (171, 35, 62, 1, '2019-12-26 15:01:20');
INSERT INTO `pp_slide_record` VALUES (172, 35, 62, 1, '2019-12-26 15:03:11');
INSERT INTO `pp_slide_record` VALUES (173, 35, 62, 0, '2019-12-26 15:40:12');
INSERT INTO `pp_slide_record` VALUES (174, 35, 62, 0, '2019-12-26 15:41:07');
INSERT INTO `pp_slide_record` VALUES (175, 35, 63, 0, '2019-12-26 15:41:35');
INSERT INTO `pp_slide_record` VALUES (176, 35, 64, 0, '2019-12-26 15:41:42');
INSERT INTO `pp_slide_record` VALUES (177, 35, 66, 0, '2019-12-26 15:41:43');
INSERT INTO `pp_slide_record` VALUES (178, 35, 62, 0, '2019-12-26 15:41:46');
INSERT INTO `pp_slide_record` VALUES (179, 35, 63, 0, '2019-12-26 15:42:38');
INSERT INTO `pp_slide_record` VALUES (180, 35, 62, 0, '2019-12-26 15:42:46');
INSERT INTO `pp_slide_record` VALUES (181, 35, 62, 0, '2019-12-26 15:46:36');
INSERT INTO `pp_slide_record` VALUES (182, 35, 62, 0, '2019-12-26 15:47:30');
INSERT INTO `pp_slide_record` VALUES (183, 35, 62, 0, '2019-12-26 15:49:34');
INSERT INTO `pp_slide_record` VALUES (184, 35, 62, 0, '2019-12-26 15:51:38');
INSERT INTO `pp_slide_record` VALUES (185, 35, 62, 0, '2019-12-26 15:52:10');
INSERT INTO `pp_slide_record` VALUES (186, 35, 62, 0, '2019-12-26 15:54:46');
INSERT INTO `pp_slide_record` VALUES (187, 35, 62, 0, '2019-12-26 15:55:11');
INSERT INTO `pp_slide_record` VALUES (188, 35, 62, 0, '2019-12-26 15:55:46');
INSERT INTO `pp_slide_record` VALUES (189, 35, 62, 0, '2019-12-26 15:56:28');
INSERT INTO `pp_slide_record` VALUES (190, 35, 62, 0, '2019-12-26 15:56:49');
INSERT INTO `pp_slide_record` VALUES (191, 35, 62, 0, '2019-12-26 15:56:53');
INSERT INTO `pp_slide_record` VALUES (192, 35, 63, 0, '2019-12-26 15:57:20');
INSERT INTO `pp_slide_record` VALUES (193, 35, 62, 0, '2019-12-26 15:57:23');
INSERT INTO `pp_slide_record` VALUES (194, 35, 62, 0, '2019-12-26 15:59:47');
INSERT INTO `pp_slide_record` VALUES (195, 35, 63, 0, '2019-12-26 16:00:02');
INSERT INTO `pp_slide_record` VALUES (196, 35, 64, 0, '2019-12-26 16:00:53');
INSERT INTO `pp_slide_record` VALUES (197, 35, 62, 0, '2019-12-26 16:00:57');
INSERT INTO `pp_slide_record` VALUES (198, 35, 62, 0, '2019-12-26 16:02:15');
INSERT INTO `pp_slide_record` VALUES (199, 35, 62, 0, '2019-12-26 16:05:03');
INSERT INTO `pp_slide_record` VALUES (200, 35, 62, 0, '2019-12-26 16:05:42');
INSERT INTO `pp_slide_record` VALUES (201, 35, 62, 0, '2019-12-26 16:07:36');
INSERT INTO `pp_slide_record` VALUES (202, 35, 62, 0, '2019-12-26 16:08:05');
INSERT INTO `pp_slide_record` VALUES (203, 35, 63, 0, '2019-12-26 16:10:30');
INSERT INTO `pp_slide_record` VALUES (204, 35, 64, 0, '2019-12-26 16:10:31');
INSERT INTO `pp_slide_record` VALUES (205, 35, 66, 0, '2019-12-26 16:10:32');
INSERT INTO `pp_slide_record` VALUES (206, 35, 56, 0, '2019-12-26 16:10:33');
INSERT INTO `pp_slide_record` VALUES (207, 35, 62, 0, '2019-12-28 09:15:28');
INSERT INTO `pp_slide_record` VALUES (208, 35, 63, 0, '2019-12-28 09:15:28');
INSERT INTO `pp_slide_record` VALUES (209, 35, 64, 0, '2019-12-28 09:15:29');
INSERT INTO `pp_slide_record` VALUES (210, 35, 66, 0, '2019-12-28 09:15:29');
INSERT INTO `pp_slide_record` VALUES (211, 35, 56, 0, '2019-12-28 09:15:30');
INSERT INTO `pp_slide_record` VALUES (212, 35, 27, 0, '2019-12-28 09:15:30');
INSERT INTO `pp_slide_record` VALUES (213, 35, 55, 0, '2019-12-28 09:15:30');
INSERT INTO `pp_slide_record` VALUES (214, 35, 26, 0, '2019-12-28 09:15:51');
INSERT INTO `pp_slide_record` VALUES (215, 35, 54, 0, '2019-12-28 09:15:51');
INSERT INTO `pp_slide_record` VALUES (216, 35, 36, 0, '2019-12-28 09:15:52');
INSERT INTO `pp_slide_record` VALUES (217, 35, 60, 0, '2019-12-28 09:15:52');
INSERT INTO `pp_slide_record` VALUES (218, 35, 22, 0, '2019-12-28 09:15:53');
INSERT INTO `pp_slide_record` VALUES (219, 35, 37, 0, '2019-12-28 09:15:53');
INSERT INTO `pp_slide_record` VALUES (220, 35, 24, 0, '2019-12-28 09:15:53');
INSERT INTO `pp_slide_record` VALUES (221, 35, 62, 0, '2019-12-28 09:17:32');
INSERT INTO `pp_slide_record` VALUES (222, 35, 63, 0, '2019-12-28 09:17:33');
INSERT INTO `pp_slide_record` VALUES (223, 35, 64, 0, '2019-12-28 09:17:33');
INSERT INTO `pp_slide_record` VALUES (224, 35, 66, 0, '2019-12-28 09:17:33');
INSERT INTO `pp_slide_record` VALUES (225, 35, 56, 0, '2019-12-28 09:17:34');
INSERT INTO `pp_slide_record` VALUES (226, 35, 27, 0, '2019-12-28 09:17:34');
INSERT INTO `pp_slide_record` VALUES (227, 35, 55, 0, '2019-12-28 09:17:34');
INSERT INTO `pp_slide_record` VALUES (228, 35, 26, 0, '2019-12-28 09:17:35');
INSERT INTO `pp_slide_record` VALUES (229, 35, 54, 0, '2019-12-28 09:17:36');
INSERT INTO `pp_slide_record` VALUES (230, 35, 36, 0, '2019-12-28 09:17:36');
INSERT INTO `pp_slide_record` VALUES (231, 35, 60, 0, '2019-12-28 09:17:36');
INSERT INTO `pp_slide_record` VALUES (232, 35, 22, 0, '2019-12-28 09:17:37');
INSERT INTO `pp_slide_record` VALUES (233, 35, 37, 0, '2019-12-28 09:17:37');
INSERT INTO `pp_slide_record` VALUES (234, 35, 24, 0, '2019-12-28 09:17:38');
INSERT INTO `pp_slide_record` VALUES (235, 35, 53, 0, '2019-12-28 09:17:38');
INSERT INTO `pp_slide_record` VALUES (236, 35, 23, 0, '2019-12-28 09:17:38');
INSERT INTO `pp_slide_record` VALUES (237, 35, 52, 0, '2019-12-28 09:17:39');
INSERT INTO `pp_slide_record` VALUES (238, 35, 62, 0, '2019-12-28 09:17:39');
INSERT INTO `pp_slide_record` VALUES (239, 35, 63, 0, '2019-12-28 09:17:40');
INSERT INTO `pp_slide_record` VALUES (240, 35, 64, 0, '2019-12-28 09:17:41');
INSERT INTO `pp_slide_record` VALUES (241, 35, 66, 0, '2019-12-28 09:17:42');
INSERT INTO `pp_slide_record` VALUES (242, 35, 56, 0, '2019-12-28 09:17:42');
INSERT INTO `pp_slide_record` VALUES (243, 35, 27, 0, '2019-12-28 09:17:43');
INSERT INTO `pp_slide_record` VALUES (244, 35, 55, 0, '2019-12-28 09:17:44');
INSERT INTO `pp_slide_record` VALUES (245, 35, 26, 0, '2019-12-28 09:17:44');
INSERT INTO `pp_slide_record` VALUES (246, 35, 62, 0, '2019-12-28 09:19:08');
INSERT INTO `pp_slide_record` VALUES (247, 35, 63, 0, '2019-12-28 09:19:09');
INSERT INTO `pp_slide_record` VALUES (248, 35, 64, 0, '2019-12-28 09:19:09');
INSERT INTO `pp_slide_record` VALUES (249, 35, 66, 0, '2019-12-28 09:19:09');
INSERT INTO `pp_slide_record` VALUES (250, 35, 56, 0, '2019-12-28 09:19:09');
INSERT INTO `pp_slide_record` VALUES (251, 35, 27, 0, '2019-12-28 09:19:10');
INSERT INTO `pp_slide_record` VALUES (252, 35, 55, 0, '2019-12-28 09:19:10');
INSERT INTO `pp_slide_record` VALUES (253, 35, 26, 0, '2019-12-28 09:19:10');
INSERT INTO `pp_slide_record` VALUES (254, 35, 54, 0, '2019-12-28 09:19:11');
INSERT INTO `pp_slide_record` VALUES (255, 35, 36, 0, '2019-12-28 09:19:11');
INSERT INTO `pp_slide_record` VALUES (256, 35, 60, 0, '2019-12-28 09:19:11');
INSERT INTO `pp_slide_record` VALUES (257, 76, 22, 1, '2020-01-07 11:00:22');
INSERT INTO `pp_slide_record` VALUES (258, 76, 22, 1, '2020-01-07 11:00:24');
INSERT INTO `pp_slide_record` VALUES (259, 76, 22, 1, '2020-01-07 11:00:25');
INSERT INTO `pp_slide_record` VALUES (260, 76, 22, 0, '2020-01-07 11:00:25');
INSERT INTO `pp_slide_record` VALUES (261, 76, 23, 1, '2020-01-07 11:00:26');
INSERT INTO `pp_slide_record` VALUES (262, 86, 22, 1, '2020-01-07 15:15:46');
INSERT INTO `pp_slide_record` VALUES (263, 86, 22, 1, '2020-01-07 15:15:51');
INSERT INTO `pp_slide_record` VALUES (264, 76, 22, 1, '2020-01-08 09:44:54');
INSERT INTO `pp_slide_record` VALUES (265, 76, 22, 0, '2020-01-08 09:44:54');
INSERT INTO `pp_slide_record` VALUES (266, 76, 23, 1, '2020-01-08 09:44:55');
INSERT INTO `pp_slide_record` VALUES (267, 76, 23, 1, '2020-01-08 09:44:56');
INSERT INTO `pp_slide_record` VALUES (268, 76, 22, 1, '2020-01-08 09:49:29');
INSERT INTO `pp_slide_record` VALUES (269, 76, 22, 1, '2020-01-08 17:59:57');
INSERT INTO `pp_slide_record` VALUES (270, 76, 22, 0, '2020-01-08 17:59:57');
INSERT INTO `pp_slide_record` VALUES (271, 76, 23, 1, '2020-01-08 17:59:58');
INSERT INTO `pp_slide_record` VALUES (272, 76, 23, 0, '2020-01-08 17:59:58');
INSERT INTO `pp_slide_record` VALUES (273, 76, 24, 1, '2020-01-08 17:59:58');
INSERT INTO `pp_slide_record` VALUES (274, 76, 22, 1, '2020-01-09 10:45:05');
INSERT INTO `pp_slide_record` VALUES (275, 76, 79, 1, '2020-01-10 10:04:08');
INSERT INTO `pp_slide_record` VALUES (276, 76, 79, 1, '2020-01-10 10:04:10');
INSERT INTO `pp_slide_record` VALUES (277, 76, 79, 0, '2020-01-10 10:04:11');
INSERT INTO `pp_slide_record` VALUES (278, 76, 92, 1, '2020-01-10 10:04:12');
INSERT INTO `pp_slide_record` VALUES (279, 76, 92, 1, '2020-01-10 10:04:13');
INSERT INTO `pp_slide_record` VALUES (280, 76, 79, 1, '2020-01-10 10:44:00');
INSERT INTO `pp_slide_record` VALUES (281, 76, 79, 1, '2020-01-10 10:44:08');
INSERT INTO `pp_slide_record` VALUES (282, 76, 79, 1, '2020-01-10 10:44:08');
INSERT INTO `pp_slide_record` VALUES (283, 76, 92, 1, '2020-01-10 10:44:11');
INSERT INTO `pp_slide_record` VALUES (284, 76, 92, 1, '2020-01-10 10:44:11');
INSERT INTO `pp_slide_record` VALUES (285, 76, 85, 1, '2020-01-10 10:44:14');
INSERT INTO `pp_slide_record` VALUES (286, 76, 85, 0, '2020-01-10 10:44:15');
INSERT INTO `pp_slide_record` VALUES (295, 76, 79, 1, '2020-01-10 10:48:13');
INSERT INTO `pp_slide_record` VALUES (296, 76, 79, 0, '2020-01-10 10:48:13');
INSERT INTO `pp_slide_record` VALUES (297, 76, 92, 1, '2020-01-10 10:48:15');
INSERT INTO `pp_slide_record` VALUES (298, 76, 92, 1, '2020-01-10 10:48:15');
INSERT INTO `pp_slide_record` VALUES (299, 76, 85, 1, '2020-01-10 10:48:16');
INSERT INTO `pp_slide_record` VALUES (300, 76, 85, 0, '2020-01-10 10:48:16');
INSERT INTO `pp_slide_record` VALUES (309, 76, 79, 1, '2020-01-10 11:16:36');
INSERT INTO `pp_slide_record` VALUES (310, 76, 79, 1, '2020-01-10 11:17:39');
INSERT INTO `pp_slide_record` VALUES (311, 76, 79, 1, '2020-01-10 11:18:37');
INSERT INTO `pp_slide_record` VALUES (312, 76, 79, 1, '2020-01-10 11:18:48');
INSERT INTO `pp_slide_record` VALUES (313, 76, 79, 1, '2020-01-10 11:19:04');
INSERT INTO `pp_slide_record` VALUES (314, 76, 79, 1, '2020-01-10 11:19:08');
INSERT INTO `pp_slide_record` VALUES (315, 76, 79, 0, '2020-01-10 11:19:08');
INSERT INTO `pp_slide_record` VALUES (316, 76, 92, 1, '2020-01-10 11:19:11');
INSERT INTO `pp_slide_record` VALUES (317, 76, 92, 1, '2020-01-10 11:19:25');
INSERT INTO `pp_slide_record` VALUES (318, 76, 92, 0, '2020-01-10 11:19:25');
INSERT INTO `pp_slide_record` VALUES (319, 76, 85, 1, '2020-01-10 11:19:26');
INSERT INTO `pp_slide_record` VALUES (320, 76, 85, 1, '2020-01-10 11:19:27');
INSERT INTO `pp_slide_record` VALUES (329, 76, 79, 1, '2020-01-10 11:41:02');
INSERT INTO `pp_slide_record` VALUES (330, 76, 79, 1, '2020-01-10 14:41:08');
INSERT INTO `pp_slide_record` VALUES (331, 76, 79, 1, '2020-01-10 14:41:08');
INSERT INTO `pp_slide_record` VALUES (335, 76, 79, 1, '2020-01-10 14:56:51');
INSERT INTO `pp_slide_record` VALUES (336, 76, 79, 0, '2020-01-10 14:56:52');
INSERT INTO `pp_slide_record` VALUES (342, 76, 79, 1, '2020-01-10 15:01:44');
INSERT INTO `pp_slide_record` VALUES (343, 76, 79, 0, '2020-01-10 15:01:45');
INSERT INTO `pp_slide_record` VALUES (347, 76, 79, 1, '2020-01-10 15:05:48');
INSERT INTO `pp_slide_record` VALUES (348, 76, 79, 0, '2020-01-10 15:05:48');
INSERT INTO `pp_slide_record` VALUES (350, 76, 79, 1, '2020-01-10 15:07:19');
INSERT INTO `pp_slide_record` VALUES (351, 76, 79, 0, '2020-01-10 15:07:19');
INSERT INTO `pp_slide_record` VALUES (359, 76, 79, 1, '2020-01-10 15:32:10');
INSERT INTO `pp_slide_record` VALUES (360, 76, 79, 1, '2020-01-10 15:34:12');
INSERT INTO `pp_slide_record` VALUES (361, 76, 79, 1, '2020-01-10 15:34:13');
INSERT INTO `pp_slide_record` VALUES (363, 76, 79, 1, '2020-01-10 15:34:40');
INSERT INTO `pp_slide_record` VALUES (364, 76, 79, 0, '2020-01-10 15:34:45');
INSERT INTO `pp_slide_record` VALUES (365, 76, 79, 1, '2020-01-10 15:35:04');
INSERT INTO `pp_slide_record` VALUES (366, 76, 79, 0, '2020-01-10 15:35:06');
INSERT INTO `pp_slide_record` VALUES (369, 76, 79, 1, '2020-01-10 15:35:34');
INSERT INTO `pp_slide_record` VALUES (370, 76, 79, 1, '2020-01-10 15:35:36');
INSERT INTO `pp_slide_record` VALUES (371, 76, 79, 0, '2020-01-10 15:44:19');
INSERT INTO `pp_slide_record` VALUES (373, 76, 85, 0, '2020-01-10 15:44:20');
INSERT INTO `pp_slide_record` VALUES (375, 76, 63, 0, '2020-01-10 15:44:22');
INSERT INTO `pp_slide_record` VALUES (377, 76, 64, 0, '2020-01-10 15:44:23');
INSERT INTO `pp_slide_record` VALUES (379, 76, 80, 0, '2020-01-10 15:44:24');
INSERT INTO `pp_slide_record` VALUES (380, 76, 79, 0, '2020-01-10 15:44:41');
INSERT INTO `pp_slide_record` VALUES (382, 76, 85, 0, '2020-01-10 15:44:54');
INSERT INTO `pp_slide_record` VALUES (384, 76, 63, 0, '2020-01-10 15:44:56');
INSERT INTO `pp_slide_record` VALUES (386, 76, 64, 0, '2020-01-10 15:45:10');
INSERT INTO `pp_slide_record` VALUES (388, 76, 79, 0, '2020-01-10 15:51:54');
INSERT INTO `pp_slide_record` VALUES (390, 76, 85, 0, '2020-01-10 15:51:55');
INSERT INTO `pp_slide_record` VALUES (397, 76, 79, 0, '2020-01-10 15:55:03');
INSERT INTO `pp_slide_record` VALUES (398, 76, 94, 0, '2020-01-10 15:55:04');
INSERT INTO `pp_slide_record` VALUES (399, 76, 85, 0, '2020-01-10 15:55:05');
INSERT INTO `pp_slide_record` VALUES (400, 76, 77, 0, '2020-01-10 15:55:05');
INSERT INTO `pp_slide_record` VALUES (401, 76, 63, 0, '2020-01-10 15:55:06');
INSERT INTO `pp_slide_record` VALUES (402, 76, 66, 0, '2020-01-10 15:55:07');
INSERT INTO `pp_slide_record` VALUES (403, 76, 64, 0, '2020-01-10 15:55:07');
INSERT INTO `pp_slide_record` VALUES (404, 76, 84, 0, '2020-01-10 15:55:08');
INSERT INTO `pp_slide_record` VALUES (405, 76, 80, 0, '2020-01-10 15:55:08');
INSERT INTO `pp_slide_record` VALUES (406, 76, 79, 1, '2020-01-10 15:57:24');
INSERT INTO `pp_slide_record` VALUES (408, 76, 85, 1, '2020-01-10 15:59:58');
INSERT INTO `pp_slide_record` VALUES (409, 76, 77, 1, '2020-01-10 16:00:02');
INSERT INTO `pp_slide_record` VALUES (410, 91, 22, 0, '2020-01-10 16:18:10');
INSERT INTO `pp_slide_record` VALUES (411, 91, 23, 0, '2020-01-10 16:18:11');
INSERT INTO `pp_slide_record` VALUES (412, 76, 79, 1, '2020-01-10 16:53:20');
INSERT INTO `pp_slide_record` VALUES (413, 76, 94, 0, '2020-01-10 16:53:21');
INSERT INTO `pp_slide_record` VALUES (414, 76, 85, 1, '2020-01-10 16:53:22');
INSERT INTO `pp_slide_record` VALUES (415, 76, 77, 0, '2020-01-10 16:53:23');
INSERT INTO `pp_slide_record` VALUES (416, 76, 63, 1, '2020-01-10 16:53:24');
INSERT INTO `pp_slide_record` VALUES (417, 76, 85, 0, '2020-01-10 18:03:07');
INSERT INTO `pp_slide_record` VALUES (418, 76, 84, 0, '2020-01-10 18:03:08');
INSERT INTO `pp_slide_record` VALUES (419, 76, 80, 0, '2020-01-10 18:03:10');
INSERT INTO `pp_slide_record` VALUES (420, 76, 77, 0, '2020-01-10 18:03:10');
INSERT INTO `pp_slide_record` VALUES (421, 76, 94, 1, '2020-01-10 18:17:29');
INSERT INTO `pp_slide_record` VALUES (422, 76, 84, 0, '2020-01-10 18:17:30');
INSERT INTO `pp_slide_record` VALUES (423, 76, 80, 1, '2020-01-10 18:17:31');
INSERT INTO `pp_slide_record` VALUES (424, 76, 94, 0, '2020-01-10 18:20:57');
INSERT INTO `pp_slide_record` VALUES (425, 76, 84, 1, '2020-01-10 18:20:59');
INSERT INTO `pp_slide_record` VALUES (426, 76, 80, 0, '2020-01-10 18:21:00');
INSERT INTO `pp_slide_record` VALUES (427, 76, 84, 0, '2020-01-10 19:25:10');
INSERT INTO `pp_slide_record` VALUES (428, 76, 84, 0, '2020-01-10 19:36:46');
INSERT INTO `pp_slide_record` VALUES (429, 76, 80, 0, '2020-01-10 19:38:46');
INSERT INTO `pp_slide_record` VALUES (430, 76, 77, 0, '2020-01-10 19:40:39');
INSERT INTO `pp_slide_record` VALUES (431, 76, 63, 0, '2020-01-10 19:40:50');
INSERT INTO `pp_slide_record` VALUES (432, 76, 66, 0, '2020-01-10 19:42:38');
INSERT INTO `pp_slide_record` VALUES (433, 76, 64, 0, '2020-01-10 19:42:48');
INSERT INTO `pp_slide_record` VALUES (434, 76, 85, 0, '2020-01-10 19:42:55');
INSERT INTO `pp_slide_record` VALUES (435, 76, 79, 0, '2020-01-10 19:43:31');
INSERT INTO `pp_slide_record` VALUES (436, 76, 78, 0, '2020-01-10 19:43:32');
INSERT INTO `pp_slide_record` VALUES (437, 76, 84, 0, '2020-01-10 19:46:31');
INSERT INTO `pp_slide_record` VALUES (438, 76, 84, 0, '2020-01-10 20:13:01');
INSERT INTO `pp_slide_record` VALUES (439, 76, 80, 0, '2020-01-10 20:13:03');
INSERT INTO `pp_slide_record` VALUES (440, 76, 85, 0, '2020-01-11 09:21:24');
INSERT INTO `pp_slide_record` VALUES (441, 76, 84, 1, '2020-01-11 09:22:32');
INSERT INTO `pp_slide_record` VALUES (442, 76, 84, 0, '2020-01-11 09:34:05');
INSERT INTO `pp_slide_record` VALUES (443, 76, 80, 0, '2020-01-11 09:34:06');
INSERT INTO `pp_slide_record` VALUES (444, 79, 22, 1, '2020-01-11 09:34:12');
INSERT INTO `pp_slide_record` VALUES (445, 76, 77, 0, '2020-01-11 09:34:12');
INSERT INTO `pp_slide_record` VALUES (446, 79, 22, 0, '2020-01-11 09:34:12');
INSERT INTO `pp_slide_record` VALUES (447, 76, 63, 0, '2020-01-11 09:34:13');
INSERT INTO `pp_slide_record` VALUES (448, 79, 23, 1, '2020-01-11 09:34:14');
INSERT INTO `pp_slide_record` VALUES (449, 79, 23, 0, '2020-01-11 09:34:14');
INSERT INTO `pp_slide_record` VALUES (450, 79, 24, 1, '2020-01-11 09:34:15');
INSERT INTO `pp_slide_record` VALUES (451, 79, 24, 0, '2020-01-11 09:34:15');
INSERT INTO `pp_slide_record` VALUES (452, 79, 26, 1, '2020-01-11 09:34:16');
INSERT INTO `pp_slide_record` VALUES (453, 79, 26, 0, '2020-01-11 09:34:16');
INSERT INTO `pp_slide_record` VALUES (454, 79, 27, 1, '2020-01-11 09:34:17');
INSERT INTO `pp_slide_record` VALUES (455, 79, 27, 0, '2020-01-11 09:34:17');
INSERT INTO `pp_slide_record` VALUES (456, 79, 35, 1, '2020-01-11 09:34:18');
INSERT INTO `pp_slide_record` VALUES (457, 79, 35, 0, '2020-01-11 09:34:18');
INSERT INTO `pp_slide_record` VALUES (458, 79, 37, 1, '2020-01-11 09:34:21');
INSERT INTO `pp_slide_record` VALUES (459, 76, 66, 0, '2020-01-11 09:34:21');
INSERT INTO `pp_slide_record` VALUES (460, 76, 64, 0, '2020-01-11 09:34:21');
INSERT INTO `pp_slide_record` VALUES (461, 79, 37, 1, '2020-01-11 09:36:58');
INSERT INTO `pp_slide_record` VALUES (462, 79, 37, 1, '2020-01-11 09:36:58');
INSERT INTO `pp_slide_record` VALUES (463, 79, 52, 1, '2020-01-11 09:36:59');
INSERT INTO `pp_slide_record` VALUES (464, 79, 52, 0, '2020-01-11 09:37:00');
INSERT INTO `pp_slide_record` VALUES (465, 79, 53, 1, '2020-01-11 09:37:02');
INSERT INTO `pp_slide_record` VALUES (466, 79, 53, 0, '2020-01-11 09:37:03');
INSERT INTO `pp_slide_record` VALUES (467, 79, 54, 1, '2020-01-11 09:37:04');
INSERT INTO `pp_slide_record` VALUES (468, 79, 54, 1, '2020-01-11 09:37:50');
INSERT INTO `pp_slide_record` VALUES (469, 79, 54, 1, '2020-01-11 09:37:57');
INSERT INTO `pp_slide_record` VALUES (470, 79, 54, 1, '2020-01-11 09:37:59');
INSERT INTO `pp_slide_record` VALUES (471, 79, 54, 1, '2020-01-11 09:38:02');
INSERT INTO `pp_slide_record` VALUES (472, 79, 54, 1, '2020-01-11 09:38:05');
INSERT INTO `pp_slide_record` VALUES (473, 79, 54, 1, '2020-01-11 09:38:44');
INSERT INTO `pp_slide_record` VALUES (474, 79, 54, 1, '2020-01-11 09:38:53');
INSERT INTO `pp_slide_record` VALUES (475, 79, 54, 1, '2020-01-11 09:39:18');
INSERT INTO `pp_slide_record` VALUES (476, 79, 54, 1, '2020-01-11 09:39:20');
INSERT INTO `pp_slide_record` VALUES (477, 79, 54, 1, '2020-01-11 09:39:23');
INSERT INTO `pp_slide_record` VALUES (478, 79, 54, 1, '2020-01-11 09:39:35');
INSERT INTO `pp_slide_record` VALUES (479, 79, 54, 1, '2020-01-11 09:39:36');
INSERT INTO `pp_slide_record` VALUES (480, 79, 54, 1, '2020-01-11 09:39:59');
INSERT INTO `pp_slide_record` VALUES (481, 76, 84, 1, '2020-01-11 09:56:37');
INSERT INTO `pp_slide_record` VALUES (482, 76, 80, 1, '2020-01-11 09:56:38');
INSERT INTO `pp_slide_record` VALUES (483, 76, 77, 1, '2020-01-11 09:56:39');
INSERT INTO `pp_slide_record` VALUES (484, 76, 63, 1, '2020-01-11 09:56:39');
INSERT INTO `pp_slide_record` VALUES (485, 76, 66, 1, '2020-01-11 09:56:40');
INSERT INTO `pp_slide_record` VALUES (486, 76, 64, 1, '2020-01-11 09:56:50');
INSERT INTO `pp_slide_record` VALUES (487, 76, 85, 0, '2020-01-11 09:56:50');
INSERT INTO `pp_slide_record` VALUES (488, 76, 79, 0, '2020-01-11 09:56:52');
INSERT INTO `pp_slide_record` VALUES (489, 76, 62, 0, '2020-01-11 09:56:52');
INSERT INTO `pp_slide_record` VALUES (490, 76, 78, 0, '2020-01-11 09:56:52');
INSERT INTO `pp_slide_record` VALUES (491, 76, 66, 1, '2020-01-11 09:56:55');
INSERT INTO `pp_slide_record` VALUES (492, 76, 77, 1, '2020-01-11 09:56:56');
INSERT INTO `pp_slide_record` VALUES (493, 76, 78, 1, '2020-01-11 09:56:57');
INSERT INTO `pp_slide_record` VALUES (494, 76, 79, 1, '2020-01-11 09:56:58');
INSERT INTO `pp_slide_record` VALUES (495, 76, 80, 1, '2020-01-11 09:56:58');
INSERT INTO `pp_slide_record` VALUES (496, 76, 91, 1, '2020-01-11 09:56:59');
INSERT INTO `pp_slide_record` VALUES (497, 76, 60, 1, '2020-01-11 09:57:03');
INSERT INTO `pp_slide_record` VALUES (498, 76, 82, 1, '2020-01-11 09:57:04');
INSERT INTO `pp_slide_record` VALUES (499, 76, 87, 1, '2020-01-11 09:57:28');
INSERT INTO `pp_slide_record` VALUES (500, 76, 27, 0, '2020-01-11 09:58:52');
INSERT INTO `pp_slide_record` VALUES (501, 76, 55, 0, '2020-01-11 09:58:54');
INSERT INTO `pp_slide_record` VALUES (502, 76, 35, 0, '2020-01-11 09:59:12');
INSERT INTO `pp_slide_record` VALUES (503, 76, 60, 0, '2020-01-11 10:10:05');
INSERT INTO `pp_slide_record` VALUES (504, 76, 85, 1, '2020-01-11 10:10:06');
INSERT INTO `pp_slide_record` VALUES (505, 76, 84, 0, '2020-01-11 10:10:08');
INSERT INTO `pp_slide_record` VALUES (506, 76, 27, 1, '2020-01-11 10:17:13');
INSERT INTO `pp_slide_record` VALUES (507, 76, 55, 1, '2020-01-11 10:17:19');
INSERT INTO `pp_slide_record` VALUES (508, 76, 35, 1, '2020-01-11 10:17:23');
INSERT INTO `pp_slide_record` VALUES (509, 95, 22, 1, '2020-01-11 10:59:19');
INSERT INTO `pp_slide_record` VALUES (510, 95, 22, 0, '2020-01-11 10:59:19');
INSERT INTO `pp_slide_record` VALUES (511, 95, 23, 1, '2020-01-11 10:59:21');
INSERT INTO `pp_slide_record` VALUES (512, 95, 23, 0, '2020-01-11 10:59:21');
INSERT INTO `pp_slide_record` VALUES (513, 95, 24, 1, '2020-01-11 10:59:23');
INSERT INTO `pp_slide_record` VALUES (514, 95, 24, 0, '2020-01-11 10:59:24');
INSERT INTO `pp_slide_record` VALUES (515, 95, 26, 1, '2020-01-11 10:59:25');
INSERT INTO `pp_slide_record` VALUES (516, 95, 26, 0, '2020-01-11 10:59:25');
INSERT INTO `pp_slide_record` VALUES (517, 95, 27, 1, '2020-01-11 10:59:26');
INSERT INTO `pp_slide_record` VALUES (518, 95, 27, 0, '2020-01-11 10:59:26');
INSERT INTO `pp_slide_record` VALUES (519, 95, 35, 1, '2020-01-11 10:59:32');
INSERT INTO `pp_slide_record` VALUES (520, 95, 35, 1, '2020-01-11 10:59:32');
INSERT INTO `pp_slide_record` VALUES (521, 95, 37, 1, '2020-01-11 10:59:34');
INSERT INTO `pp_slide_record` VALUES (522, 95, 37, 1, '2020-01-11 10:59:34');
INSERT INTO `pp_slide_record` VALUES (523, 95, 52, 1, '2020-01-11 10:59:35');
INSERT INTO `pp_slide_record` VALUES (524, 95, 52, 0, '2020-01-11 10:59:35');
INSERT INTO `pp_slide_record` VALUES (525, 95, 53, 1, '2020-01-11 10:59:36');
INSERT INTO `pp_slide_record` VALUES (526, 95, 53, 0, '2020-01-11 10:59:36');
INSERT INTO `pp_slide_record` VALUES (527, 95, 54, 1, '2020-01-11 10:59:38');
INSERT INTO `pp_slide_record` VALUES (528, 86, 95, 0, '2020-01-11 11:16:43');
INSERT INTO `pp_slide_record` VALUES (529, 86, 94, 1, '2020-01-11 11:16:47');
INSERT INTO `pp_slide_record` VALUES (530, 86, 60, 1, '2020-01-11 11:16:56');
INSERT INTO `pp_slide_record` VALUES (531, 86, 84, 1, '2020-01-11 11:17:01');
INSERT INTO `pp_slide_record` VALUES (532, 86, 82, 1, '2020-01-11 11:17:09');
INSERT INTO `pp_slide_record` VALUES (533, 76, 95, 0, '2020-01-11 11:22:11');
INSERT INTO `pp_slide_record` VALUES (534, 76, 60, 1, '2020-01-11 11:22:28');
INSERT INTO `pp_slide_record` VALUES (535, 76, 95, 1, '2020-01-11 11:26:11');
INSERT INTO `pp_slide_record` VALUES (536, 76, 86, 0, '2020-01-11 11:26:11');
INSERT INTO `pp_slide_record` VALUES (537, 76, 94, 0, '2020-01-11 11:26:11');
INSERT INTO `pp_slide_record` VALUES (538, 76, 60, 0, '2020-01-11 11:26:11');
INSERT INTO `pp_slide_record` VALUES (539, 76, 84, 0, '2020-01-11 11:26:11');
INSERT INTO `pp_slide_record` VALUES (540, 76, 79, 0, '2020-01-11 11:26:11');
INSERT INTO `pp_slide_record` VALUES (541, 76, 78, 0, '2020-01-11 11:26:11');
INSERT INTO `pp_slide_record` VALUES (542, 76, 82, 0, '2020-01-11 11:26:11');
INSERT INTO `pp_slide_record` VALUES (543, 76, 81, 0, '2020-01-11 11:26:11');
INSERT INTO `pp_slide_record` VALUES (544, 101, 99, 1, '2020-01-11 11:45:35');
INSERT INTO `pp_slide_record` VALUES (545, 101, 95, 0, '2020-01-11 11:46:06');
INSERT INTO `pp_slide_record` VALUES (546, 102, 99, 0, '2020-01-11 11:48:19');
INSERT INTO `pp_slide_record` VALUES (547, 102, 95, 1, '2020-01-11 11:48:22');
INSERT INTO `pp_slide_record` VALUES (548, 102, 96, 1, '2020-01-11 11:48:23');
INSERT INTO `pp_slide_record` VALUES (549, 102, 98, 1, '2020-01-11 11:48:25');
INSERT INTO `pp_slide_record` VALUES (550, 76, 96, 0, '2020-01-11 12:00:18');
INSERT INTO `pp_slide_record` VALUES (551, 76, 97, 0, '2020-01-11 12:01:13');
INSERT INTO `pp_slide_record` VALUES (552, 76, 98, 0, '2020-01-11 12:01:29');
INSERT INTO `pp_slide_record` VALUES (553, 76, 100, 1, '2020-01-11 12:01:36');
INSERT INTO `pp_slide_record` VALUES (554, 76, 95, 0, '2020-01-11 12:03:16');
INSERT INTO `pp_slide_record` VALUES (555, 76, 99, 0, '2020-01-11 12:03:32');
INSERT INTO `pp_slide_record` VALUES (556, 76, 87, 0, '2020-01-11 12:03:40');
INSERT INTO `pp_slide_record` VALUES (557, 76, 82, 0, '2020-01-11 12:03:55');
INSERT INTO `pp_slide_record` VALUES (558, 76, 81, 1, '2020-01-11 12:05:40');
INSERT INTO `pp_slide_record` VALUES (559, 76, 100, 0, '2020-01-11 13:48:10');
INSERT INTO `pp_slide_record` VALUES (560, 76, 103, 1, '2020-01-11 13:50:21');
INSERT INTO `pp_slide_record` VALUES (561, 76, 96, 0, '2020-01-11 13:50:23');
INSERT INTO `pp_slide_record` VALUES (562, 76, 97, 0, '2020-01-11 13:50:29');
INSERT INTO `pp_slide_record` VALUES (563, 76, 98, 0, '2020-01-11 13:50:29');
INSERT INTO `pp_slide_record` VALUES (564, 76, 100, 0, '2020-01-11 13:50:30');
INSERT INTO `pp_slide_record` VALUES (565, 76, 95, 0, '2020-01-11 13:50:30');
INSERT INTO `pp_slide_record` VALUES (566, 76, 99, 0, '2020-01-11 13:50:31');
INSERT INTO `pp_slide_record` VALUES (567, 76, 87, 0, '2020-01-11 13:50:31');
INSERT INTO `pp_slide_record` VALUES (568, 76, 82, 0, '2020-01-11 13:50:31');
INSERT INTO `pp_slide_record` VALUES (569, 76, 100, 1, '2020-01-11 13:51:29');
INSERT INTO `pp_slide_record` VALUES (570, 76, 95, 0, '2020-01-11 13:51:31');
INSERT INTO `pp_slide_record` VALUES (571, 76, 100, 1, '2020-01-11 13:52:03');
INSERT INTO `pp_slide_record` VALUES (572, 76, 95, 0, '2020-01-11 13:52:04');
INSERT INTO `pp_slide_record` VALUES (573, 76, 96, 1, '2020-01-11 13:52:06');
INSERT INTO `pp_slide_record` VALUES (574, 76, 97, 0, '2020-01-11 13:52:06');
INSERT INTO `pp_slide_record` VALUES (575, 76, 99, 0, '2020-01-11 13:52:07');
INSERT INTO `pp_slide_record` VALUES (576, 76, 103, 0, '2020-01-11 13:53:58');
INSERT INTO `pp_slide_record` VALUES (577, 76, 96, 0, '2020-01-11 13:54:39');
INSERT INTO `pp_slide_record` VALUES (578, 76, 97, 0, '2020-01-11 13:54:40');
INSERT INTO `pp_slide_record` VALUES (579, 76, 99, 0, '2020-01-11 13:54:41');
INSERT INTO `pp_slide_record` VALUES (580, 76, 103, 0, '2020-01-11 13:54:44');
INSERT INTO `pp_slide_record` VALUES (581, 76, 98, 0, '2020-01-11 13:54:47');
INSERT INTO `pp_slide_record` VALUES (582, 76, 100, 1, '2020-01-11 13:58:14');
INSERT INTO `pp_slide_record` VALUES (583, 76, 95, 0, '2020-01-11 13:58:17');
INSERT INTO `pp_slide_record` VALUES (584, 76, 96, 0, '2020-01-11 13:58:26');
INSERT INTO `pp_slide_record` VALUES (585, 76, 97, 1, '2020-01-11 13:58:29');
INSERT INTO `pp_slide_record` VALUES (586, 76, 99, 0, '2020-01-11 13:58:33');
INSERT INTO `pp_slide_record` VALUES (587, 76, 103, 1, '2020-01-11 13:58:35');
INSERT INTO `pp_slide_record` VALUES (588, 76, 107, 0, '2020-01-11 13:58:36');
INSERT INTO `pp_slide_record` VALUES (589, 76, 98, 1, '2020-01-11 13:58:39');
INSERT INTO `pp_slide_record` VALUES (590, 76, 106, 1, '2020-01-11 14:01:50');
INSERT INTO `pp_slide_record` VALUES (591, 76, 98, 0, '2020-01-11 14:02:24');
INSERT INTO `pp_slide_record` VALUES (592, 76, 106, 1, '2020-01-11 14:02:25');
INSERT INTO `pp_slide_record` VALUES (593, 76, 104, 0, '2020-01-11 14:02:26');
INSERT INTO `pp_slide_record` VALUES (594, 110, 95, 1, '2020-01-11 14:16:14');
INSERT INTO `pp_slide_record` VALUES (595, 110, 96, 1, '2020-01-11 14:16:16');
INSERT INTO `pp_slide_record` VALUES (596, 110, 100, 1, '2020-01-11 14:16:18');
INSERT INTO `pp_slide_record` VALUES (597, 110, 97, 1, '2020-01-11 14:16:20');
INSERT INTO `pp_slide_record` VALUES (598, 110, 99, 1, '2020-01-11 14:16:21');
INSERT INTO `pp_slide_record` VALUES (599, 110, 107, 1, '2020-01-11 14:16:22');
INSERT INTO `pp_slide_record` VALUES (600, 110, 109, 1, '2020-01-11 14:16:24');
INSERT INTO `pp_slide_record` VALUES (601, 76, 103, 1, '2020-01-11 14:17:15');
INSERT INTO `pp_slide_record` VALUES (602, 76, 96, 1, '2020-01-11 14:17:16');
INSERT INTO `pp_slide_record` VALUES (603, 76, 97, 1, '2020-01-11 14:17:22');
INSERT INTO `pp_slide_record` VALUES (604, 76, 98, 1, '2020-01-11 14:17:23');
INSERT INTO `pp_slide_record` VALUES (605, 76, 100, 1, '2020-01-11 14:17:24');
INSERT INTO `pp_slide_record` VALUES (606, 76, 95, 1, '2020-01-11 14:17:25');
INSERT INTO `pp_slide_record` VALUES (607, 76, 99, 1, '2020-01-11 14:17:26');
INSERT INTO `pp_slide_record` VALUES (608, 76, 87, 1, '2020-01-11 14:17:27');
INSERT INTO `pp_slide_record` VALUES (609, 76, 82, 1, '2020-01-11 14:17:28');
INSERT INTO `pp_slide_record` VALUES (610, 76, 96, 0, '2020-01-11 14:18:53');
INSERT INTO `pp_slide_record` VALUES (611, 76, 97, 1, '2020-01-11 14:19:06');
INSERT INTO `pp_slide_record` VALUES (612, 86, 100, 1, '2020-01-11 14:24:42');
INSERT INTO `pp_slide_record` VALUES (613, 86, 99, 1, '2020-01-11 14:24:48');
INSERT INTO `pp_slide_record` VALUES (614, 111, 22, 1, '2020-01-11 14:39:26');
INSERT INTO `pp_slide_record` VALUES (615, 111, 23, 1, '2020-01-11 14:39:52');
INSERT INTO `pp_slide_record` VALUES (616, 111, 24, 1, '2020-01-11 14:40:03');
INSERT INTO `pp_slide_record` VALUES (617, 111, 26, 1, '2020-01-11 14:41:02');
INSERT INTO `pp_slide_record` VALUES (618, 111, 27, 1, '2020-01-11 14:41:10');
INSERT INTO `pp_slide_record` VALUES (619, 111, 35, 1, '2020-01-11 14:41:15');
INSERT INTO `pp_slide_record` VALUES (620, 111, 37, 1, '2020-01-11 14:41:18');
INSERT INTO `pp_slide_record` VALUES (621, 111, 52, 1, '2020-01-11 14:41:40');
INSERT INTO `pp_slide_record` VALUES (622, 76, 95, 0, '2020-01-11 14:43:08');
INSERT INTO `pp_slide_record` VALUES (623, 76, 97, 1, '2020-01-11 14:43:10');
INSERT INTO `pp_slide_record` VALUES (624, 76, 98, 0, '2020-01-11 14:43:13');
INSERT INTO `pp_slide_record` VALUES (625, 76, 95, 0, '2020-01-11 14:43:40');
INSERT INTO `pp_slide_record` VALUES (626, 76, 97, 0, '2020-01-11 14:43:43');
INSERT INTO `pp_slide_record` VALUES (627, 76, 98, 0, '2020-01-11 14:43:45');
INSERT INTO `pp_slide_record` VALUES (628, 112, 24, 1, '2020-01-11 14:44:40');
INSERT INTO `pp_slide_record` VALUES (629, 112, 26, 1, '2020-01-11 14:44:48');
INSERT INTO `pp_slide_record` VALUES (630, 113, 22, 1, '2020-01-11 15:27:46');
INSERT INTO `pp_slide_record` VALUES (631, 113, 23, 1, '2020-01-11 15:29:10');
INSERT INTO `pp_slide_record` VALUES (632, 113, 24, 1, '2020-01-11 15:29:12');
INSERT INTO `pp_slide_record` VALUES (633, 113, 26, 1, '2020-01-11 15:29:12');
INSERT INTO `pp_slide_record` VALUES (634, 113, 27, 1, '2020-01-11 15:29:13');
INSERT INTO `pp_slide_record` VALUES (635, 113, 35, 1, '2020-01-11 15:29:16');
INSERT INTO `pp_slide_record` VALUES (636, 113, 37, 1, '2020-01-11 15:29:17');
INSERT INTO `pp_slide_record` VALUES (637, 113, 52, 1, '2020-01-11 15:29:18');
INSERT INTO `pp_slide_record` VALUES (638, 113, 53, 1, '2020-01-11 15:29:19');
INSERT INTO `pp_slide_record` VALUES (639, 114, 22, 1, '2020-01-11 15:35:50');
INSERT INTO `pp_slide_record` VALUES (640, 114, 23, 1, '2020-01-11 15:35:51');
INSERT INTO `pp_slide_record` VALUES (641, 114, 24, 1, '2020-01-11 15:35:52');
INSERT INTO `pp_slide_record` VALUES (642, 114, 26, 1, '2020-01-11 15:35:53');
INSERT INTO `pp_slide_record` VALUES (643, 114, 27, 1, '2020-01-11 15:35:53');
INSERT INTO `pp_slide_record` VALUES (644, 114, 35, 1, '2020-01-11 15:35:54');
INSERT INTO `pp_slide_record` VALUES (645, 114, 37, 1, '2020-01-11 15:35:55');
INSERT INTO `pp_slide_record` VALUES (646, 114, 52, 1, '2020-01-11 15:35:56');
INSERT INTO `pp_slide_record` VALUES (647, 114, 53, 1, '2020-01-11 15:35:57');
INSERT INTO `pp_slide_record` VALUES (648, 95, 22, 0, '2020-01-11 15:45:16');
INSERT INTO `pp_slide_record` VALUES (649, 95, 23, 0, '2020-01-11 15:45:18');
INSERT INTO `pp_slide_record` VALUES (650, 95, 24, 0, '2020-01-11 15:45:19');
INSERT INTO `pp_slide_record` VALUES (651, 95, 26, 0, '2020-01-11 15:45:20');
INSERT INTO `pp_slide_record` VALUES (652, 95, 27, 0, '2020-01-11 15:45:20');
INSERT INTO `pp_slide_record` VALUES (653, 95, 35, 0, '2020-01-11 15:45:21');
INSERT INTO `pp_slide_record` VALUES (654, 95, 37, 0, '2020-01-11 15:45:23');
INSERT INTO `pp_slide_record` VALUES (655, 76, 97, 1, '2020-01-11 16:17:06');
INSERT INTO `pp_slide_record` VALUES (656, 76, 113, 1, '2020-01-11 16:17:07');
INSERT INTO `pp_slide_record` VALUES (657, 76, 95, 1, '2020-01-11 16:17:08');
INSERT INTO `pp_slide_record` VALUES (658, 76, 111, 1, '2020-01-11 16:17:11');
INSERT INTO `pp_slide_record` VALUES (659, 76, 114, 1, '2020-01-11 16:17:12');
INSERT INTO `pp_slide_record` VALUES (660, 76, 106, 1, '2020-01-11 16:17:12');
INSERT INTO `pp_slide_record` VALUES (661, 76, 110, 1, '2020-01-11 16:17:12');
INSERT INTO `pp_slide_record` VALUES (662, 76, 109, 1, '2020-01-11 16:17:13');
INSERT INTO `pp_slide_record` VALUES (663, 76, 108, 1, '2020-01-11 16:17:13');
INSERT INTO `pp_slide_record` VALUES (664, 114, 103, 1, '2020-01-11 16:29:36');
INSERT INTO `pp_slide_record` VALUES (665, 114, 97, 1, '2020-01-11 16:29:40');
INSERT INTO `pp_slide_record` VALUES (666, 114, 95, 1, '2020-01-11 16:29:43');
INSERT INTO `pp_slide_record` VALUES (667, 114, 76, 1, '2020-01-11 16:30:04');
INSERT INTO `pp_slide_record` VALUES (668, 114, 113, 1, '2020-01-11 16:30:09');
INSERT INTO `pp_slide_record` VALUES (669, 114, 111, 1, '2020-01-11 16:30:13');
INSERT INTO `pp_slide_record` VALUES (670, 114, 108, 1, '2020-01-11 16:32:40');
INSERT INTO `pp_slide_record` VALUES (671, 113, 103, 1, '2020-01-11 17:05:10');
INSERT INTO `pp_slide_record` VALUES (672, 113, 97, 1, '2020-01-11 17:05:12');
INSERT INTO `pp_slide_record` VALUES (673, 113, 95, 1, '2020-01-11 17:05:40');
INSERT INTO `pp_slide_record` VALUES (674, 113, 76, 1, '2020-01-11 17:05:45');
INSERT INTO `pp_slide_record` VALUES (675, 113, 111, 1, '2020-01-11 17:05:52');
INSERT INTO `pp_slide_record` VALUES (676, 113, 108, 1, '2020-01-11 17:06:01');
INSERT INTO `pp_slide_record` VALUES (677, 113, 109, 1, '2020-01-11 17:06:06');
INSERT INTO `pp_slide_record` VALUES (678, 113, 107, 1, '2020-01-11 17:06:10');
INSERT INTO `pp_slide_record` VALUES (679, 113, 106, 1, '2020-01-11 17:06:14');
INSERT INTO `pp_slide_record` VALUES (680, 112, 97, 1, '2020-01-11 17:12:24');
INSERT INTO `pp_slide_record` VALUES (681, 112, 103, 1, '2020-01-11 17:12:33');
INSERT INTO `pp_slide_record` VALUES (682, 112, 86, 1, '2020-01-11 17:15:27');
INSERT INTO `pp_slide_record` VALUES (683, 112, 102, 1, '2020-01-11 17:16:46');
INSERT INTO `pp_slide_record` VALUES (684, 112, 108, 1, '2020-01-11 17:16:48');
INSERT INTO `pp_slide_record` VALUES (685, 112, 107, 1, '2020-01-11 17:16:49');
INSERT INTO `pp_slide_record` VALUES (686, 110, 97, 1, '2020-01-11 17:26:48');
INSERT INTO `pp_slide_record` VALUES (687, 110, 103, 0, '2020-01-11 17:26:49');
INSERT INTO `pp_slide_record` VALUES (688, 110, 109, 1, '2020-01-11 17:26:50');
INSERT INTO `pp_slide_record` VALUES (689, 110, 107, 1, '2020-01-11 17:26:50');
INSERT INTO `pp_slide_record` VALUES (690, 110, 106, 0, '2020-01-11 17:26:51');
INSERT INTO `pp_slide_record` VALUES (691, 110, 108, 1, '2020-01-11 17:26:51');
INSERT INTO `pp_slide_record` VALUES (692, 110, 95, 0, '2020-01-11 17:26:52');
INSERT INTO `pp_slide_record` VALUES (693, 110, 114, 1, '2020-01-11 17:26:52');
INSERT INTO `pp_slide_record` VALUES (694, 110, 76, 0, '2020-01-11 17:26:53');
INSERT INTO `pp_slide_record` VALUES (695, 115, 22, 1, '2020-01-11 17:36:24');
INSERT INTO `pp_slide_record` VALUES (696, 115, 23, 1, '2020-01-11 17:36:26');
INSERT INTO `pp_slide_record` VALUES (697, 115, 24, 1, '2020-01-11 17:36:27');
INSERT INTO `pp_slide_record` VALUES (698, 115, 26, 1, '2020-01-11 17:36:28');
INSERT INTO `pp_slide_record` VALUES (699, 115, 27, 1, '2020-01-11 17:36:29');
INSERT INTO `pp_slide_record` VALUES (700, 115, 35, 1, '2020-01-11 17:36:29');
INSERT INTO `pp_slide_record` VALUES (701, 115, 37, 1, '2020-01-11 17:36:30');
INSERT INTO `pp_slide_record` VALUES (702, 115, 52, 1, '2020-01-11 17:36:32');
INSERT INTO `pp_slide_record` VALUES (703, 115, 53, 1, '2020-01-11 17:37:47');
INSERT INTO `pp_slide_record` VALUES (704, 76, 97, 1, '2020-01-11 17:56:13');
INSERT INTO `pp_slide_record` VALUES (705, 76, 111, 1, '2020-01-11 17:57:05');
INSERT INTO `pp_slide_record` VALUES (706, 76, 95, 1, '2020-01-11 18:15:50');
INSERT INTO `pp_slide_record` VALUES (707, 76, 106, 1, '2020-01-11 18:18:09');
INSERT INTO `pp_slide_record` VALUES (708, 76, 109, 1, '2020-01-11 18:18:14');
INSERT INTO `pp_slide_record` VALUES (709, 76, 108, 1, '2020-01-11 18:18:18');
INSERT INTO `pp_slide_record` VALUES (710, 76, 97, 0, '2020-01-11 18:44:05');
INSERT INTO `pp_slide_record` VALUES (711, 76, 105, 0, '2020-01-11 18:44:06');
INSERT INTO `pp_slide_record` VALUES (712, 76, 109, 1, '2020-01-11 18:44:07');
INSERT INTO `pp_slide_record` VALUES (713, 76, 104, 0, '2020-01-11 18:44:07');
INSERT INTO `pp_slide_record` VALUES (714, 76, 97, 0, '2020-01-13 09:50:07');
INSERT INTO `pp_slide_record` VALUES (715, 112, 97, 0, '2020-01-13 09:56:14');
INSERT INTO `pp_slide_record` VALUES (716, 112, 103, 0, '2020-01-13 09:56:24');
INSERT INTO `pp_slide_record` VALUES (717, 112, 102, 0, '2020-01-13 09:56:26');
INSERT INTO `pp_slide_record` VALUES (718, 112, 110, 0, '2020-01-13 09:56:26');
INSERT INTO `pp_slide_record` VALUES (719, 112, 113, 0, '2020-01-13 09:56:27');
INSERT INTO `pp_slide_record` VALUES (720, 112, 76, 0, '2020-01-13 09:56:28');
INSERT INTO `pp_slide_record` VALUES (721, 112, 104, 0, '2020-01-13 09:56:28');
INSERT INTO `pp_slide_record` VALUES (722, 112, 105, 0, '2020-01-13 09:56:30');
INSERT INTO `pp_slide_record` VALUES (723, 112, 86, 0, '2020-01-13 09:56:33');
INSERT INTO `pp_slide_record` VALUES (724, 112, 103, 1, '2020-01-13 09:57:28');
INSERT INTO `pp_slide_record` VALUES (725, 112, 97, 1, '2020-01-13 09:57:34');
INSERT INTO `pp_slide_record` VALUES (726, 112, 95, 1, '2020-01-13 09:57:35');
INSERT INTO `pp_slide_record` VALUES (727, 112, 108, 1, '2020-01-13 09:57:42');
INSERT INTO `pp_slide_record` VALUES (728, 112, 109, 1, '2020-01-13 09:57:46');
INSERT INTO `pp_slide_record` VALUES (729, 112, 107, 1, '2020-01-13 09:57:50');
INSERT INTO `pp_slide_record` VALUES (730, 112, 105, 1, '2020-01-13 09:57:52');
INSERT INTO `pp_slide_record` VALUES (731, 112, 106, 1, '2020-01-13 09:57:53');
INSERT INTO `pp_slide_record` VALUES (732, 112, 102, 1, '2020-01-13 09:57:57');
INSERT INTO `pp_slide_record` VALUES (733, 118, 22, 0, '2020-01-13 09:59:19');
INSERT INTO `pp_slide_record` VALUES (734, 118, 23, 0, '2020-01-13 10:00:04');
INSERT INTO `pp_slide_record` VALUES (735, 118, 24, 0, '2020-01-13 10:00:05');
INSERT INTO `pp_slide_record` VALUES (736, 118, 26, 0, '2020-01-13 10:00:06');
INSERT INTO `pp_slide_record` VALUES (737, 118, 27, 0, '2020-01-13 10:00:06');
INSERT INTO `pp_slide_record` VALUES (738, 118, 35, 0, '2020-01-13 10:00:07');
INSERT INTO `pp_slide_record` VALUES (739, 118, 37, 0, '2020-01-13 10:00:07');
INSERT INTO `pp_slide_record` VALUES (740, 118, 52, 0, '2020-01-13 10:00:08');
INSERT INTO `pp_slide_record` VALUES (741, 118, 53, 0, '2020-01-13 10:00:09');
INSERT INTO `pp_slide_record` VALUES (742, 119, 22, 1, '2020-01-13 10:01:19');
INSERT INTO `pp_slide_record` VALUES (743, 119, 23, 1, '2020-01-13 10:01:20');
INSERT INTO `pp_slide_record` VALUES (744, 119, 24, 1, '2020-01-13 10:01:20');
INSERT INTO `pp_slide_record` VALUES (745, 119, 26, 1, '2020-01-13 10:01:21');
INSERT INTO `pp_slide_record` VALUES (746, 119, 27, 1, '2020-01-13 10:01:22');
INSERT INTO `pp_slide_record` VALUES (747, 119, 35, 1, '2020-01-13 10:01:22');
INSERT INTO `pp_slide_record` VALUES (748, 119, 37, 1, '2020-01-13 10:01:23');
INSERT INTO `pp_slide_record` VALUES (749, 119, 52, 1, '2020-01-13 10:01:23');
INSERT INTO `pp_slide_record` VALUES (750, 119, 53, 1, '2020-01-13 10:01:24');
INSERT INTO `pp_slide_record` VALUES (751, 119, 103, 1, '2020-01-13 10:02:20');
INSERT INTO `pp_slide_record` VALUES (752, 119, 97, 1, '2020-01-13 10:02:20');
INSERT INTO `pp_slide_record` VALUES (753, 119, 112, 0, '2020-01-13 10:15:43');
INSERT INTO `pp_slide_record` VALUES (754, 119, 118, 0, '2020-01-13 10:15:45');
INSERT INTO `pp_slide_record` VALUES (755, 119, 104, 0, '2020-01-13 10:15:47');
INSERT INTO `pp_slide_record` VALUES (756, 119, 95, 0, '2020-01-13 10:15:47');
INSERT INTO `pp_slide_record` VALUES (757, 119, 108, 0, '2020-01-13 10:15:48');
INSERT INTO `pp_slide_record` VALUES (758, 119, 106, 0, '2020-01-13 10:15:48');
INSERT INTO `pp_slide_record` VALUES (759, 119, 107, 0, '2020-01-13 10:15:49');
INSERT INTO `pp_slide_record` VALUES (760, 119, 103, 1, '2020-01-13 10:19:49');
INSERT INTO `pp_slide_record` VALUES (761, 119, 97, 1, '2020-01-13 10:19:49');
INSERT INTO `pp_slide_record` VALUES (762, 119, 112, 1, '2020-01-13 10:19:50');
INSERT INTO `pp_slide_record` VALUES (763, 119, 118, 1, '2020-01-13 10:19:51');
INSERT INTO `pp_slide_record` VALUES (764, 119, 104, 1, '2020-01-13 10:19:51');
INSERT INTO `pp_slide_record` VALUES (765, 119, 95, 1, '2020-01-13 10:19:52');
INSERT INTO `pp_slide_record` VALUES (766, 119, 108, 1, '2020-01-13 10:19:52');
INSERT INTO `pp_slide_record` VALUES (767, 119, 106, 1, '2020-01-13 10:19:53');
INSERT INTO `pp_slide_record` VALUES (768, 119, 107, 1, '2020-01-13 10:19:53');
INSERT INTO `pp_slide_record` VALUES (769, 119, 103, 1, '2020-01-13 10:25:44');
INSERT INTO `pp_slide_record` VALUES (770, 119, 97, 1, '2020-01-13 10:25:44');
INSERT INTO `pp_slide_record` VALUES (771, 119, 112, 1, '2020-01-13 10:25:44');
INSERT INTO `pp_slide_record` VALUES (772, 119, 118, 1, '2020-01-13 10:25:45');
INSERT INTO `pp_slide_record` VALUES (773, 119, 104, 1, '2020-01-13 10:25:45');
INSERT INTO `pp_slide_record` VALUES (774, 119, 95, 1, '2020-01-13 10:25:46');
INSERT INTO `pp_slide_record` VALUES (775, 119, 108, 1, '2020-01-13 10:25:46');
INSERT INTO `pp_slide_record` VALUES (776, 119, 106, 1, '2020-01-13 10:25:47');
INSERT INTO `pp_slide_record` VALUES (777, 119, 107, 1, '2020-01-13 10:25:47');
INSERT INTO `pp_slide_record` VALUES (778, 119, 103, 1, '2020-01-13 10:26:13');
INSERT INTO `pp_slide_record` VALUES (779, 119, 97, 1, '2020-01-13 10:26:14');
INSERT INTO `pp_slide_record` VALUES (780, 119, 112, 1, '2020-01-13 10:26:14');
INSERT INTO `pp_slide_record` VALUES (781, 119, 118, 1, '2020-01-13 10:26:15');
INSERT INTO `pp_slide_record` VALUES (782, 119, 104, 1, '2020-01-13 10:26:15');
INSERT INTO `pp_slide_record` VALUES (783, 119, 95, 1, '2020-01-13 10:26:15');
INSERT INTO `pp_slide_record` VALUES (784, 119, 108, 1, '2020-01-13 10:26:16');
INSERT INTO `pp_slide_record` VALUES (785, 119, 106, 1, '2020-01-13 10:26:16');
INSERT INTO `pp_slide_record` VALUES (786, 119, 107, 1, '2020-01-13 10:26:17');
INSERT INTO `pp_slide_record` VALUES (787, 120, 22, 1, '2020-01-13 10:45:22');
INSERT INTO `pp_slide_record` VALUES (788, 120, 23, 1, '2020-01-13 10:45:22');
INSERT INTO `pp_slide_record` VALUES (789, 120, 24, 1, '2020-01-13 10:45:23');
INSERT INTO `pp_slide_record` VALUES (790, 120, 26, 1, '2020-01-13 10:45:23');
INSERT INTO `pp_slide_record` VALUES (791, 120, 27, 1, '2020-01-13 10:45:24');
INSERT INTO `pp_slide_record` VALUES (792, 120, 35, 1, '2020-01-13 10:45:24');
INSERT INTO `pp_slide_record` VALUES (793, 120, 37, 1, '2020-01-13 10:45:25');
INSERT INTO `pp_slide_record` VALUES (794, 120, 52, 1, '2020-01-13 10:45:25');
INSERT INTO `pp_slide_record` VALUES (795, 120, 53, 1, '2020-01-13 10:45:26');

-- ----------------------------
-- Table structure for pp_tim_notice
-- ----------------------------
DROP TABLE IF EXISTS `pp_tim_notice`;
CREATE TABLE `pp_tim_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'tim通知表',
  `notice_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'tim通知内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pp_user_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `pp_user_blacklist`;
CREATE TABLE `pp_user_blacklist`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `defriend_user_id` bigint(20) NULL DEFAULT NULL COMMENT '被拉黑用户id',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户拉黑表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_user_blacklist
-- ----------------------------
INSERT INTO `pp_user_blacklist` VALUES (12, 22, 23, '2019-12-11 16:13:55', NULL);
INSERT INTO `pp_user_blacklist` VALUES (17, 35, 62, '2019-12-28 19:51:20', NULL);
INSERT INTO `pp_user_blacklist` VALUES (19, 76, 103, '2020-01-11 14:25:44', NULL);
INSERT INTO `pp_user_blacklist` VALUES (20, 76, 96, '2020-01-11 14:27:46', NULL);

-- ----------------------------
-- Table structure for pp_user_focus
-- ----------------------------
DROP TABLE IF EXISTS `pp_user_focus`;
CREATE TABLE `pp_user_focus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usera_id` bigint(20) NULL DEFAULT NULL,
  `userb_id` bigint(20) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态(1:A喜欢B ,2:B喜欢A，3:互相喜欢)',
  `creatime` datetime(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 579 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户喜欢表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_user_focus
-- ----------------------------
INSERT INTO `pp_user_focus` VALUES (2, 22, 23, 3, '2019-12-12 16:34:59', '2019-12-14 18:17:07');
INSERT INTO `pp_user_focus` VALUES (5, 22, 6, 2, '2019-12-12 17:35:19', '2019-12-14 18:17:18');
INSERT INTO `pp_user_focus` VALUES (11, 23, 22, 3, '2019-12-18 11:03:41', NULL);
INSERT INTO `pp_user_focus` VALUES (19, 22, 25, 3, NULL, '2019-12-19 14:08:12');
INSERT INTO `pp_user_focus` VALUES (20, 25, 22, 3, NULL, '2019-12-19 14:08:12');
INSERT INTO `pp_user_focus` VALUES (29, 37, 22, 3, '2019-12-20 09:32:40', '2020-01-10 15:36:58');
INSERT INTO `pp_user_focus` VALUES (30, 22, 37, 3, '2019-12-20 09:32:40', '2020-01-10 15:36:58');
INSERT INTO `pp_user_focus` VALUES (31, 37, 23, 3, '2019-12-20 09:32:49', '2020-01-10 15:42:33');
INSERT INTO `pp_user_focus` VALUES (32, 23, 37, 3, '2019-12-20 09:32:49', '2020-01-10 15:42:33');
INSERT INTO `pp_user_focus` VALUES (40, 50, 51, 1, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (41, 56, 50, 1, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (42, 36, 26, 3, '2019-12-23 09:33:08', '2019-12-26 10:10:07');
INSERT INTO `pp_user_focus` VALUES (43, 36, 27, 3, '2019-12-23 09:34:26', '2019-12-26 10:10:07');
INSERT INTO `pp_user_focus` VALUES (60, 35, 63, 3, '2019-12-26 14:12:34', '2019-12-26 16:08:08');
INSERT INTO `pp_user_focus` VALUES (61, 63, 35, 3, '2019-12-26 14:12:34', '2019-12-26 16:08:08');
INSERT INTO `pp_user_focus` VALUES (62, 35, 37, 1, NULL, '2020-01-10 15:36:17');
INSERT INTO `pp_user_focus` VALUES (63, 37, 35, 2, NULL, '2020-01-10 15:36:17');
INSERT INTO `pp_user_focus` VALUES (64, 22, 35, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (65, 35, 22, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (66, 35, 23, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (67, 23, 35, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (68, 35, 24, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (69, 24, 35, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (70, 26, 35, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (71, 35, 26, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (72, 35, 27, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (73, 27, 35, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (74, 35, 62, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (75, 62, 35, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (76, 35, 66, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (77, 66, 35, 3, NULL, NULL);
INSERT INTO `pp_user_focus` VALUES (90, 37, 56, 2, '2019-12-28 17:23:45', '2020-01-10 15:36:20');
INSERT INTO `pp_user_focus` VALUES (91, 56, 37, 1, '2019-12-28 17:24:05', '2020-01-10 15:36:20');
INSERT INTO `pp_user_focus` VALUES (106, 37, 77, 3, NULL, '2020-01-10 15:55:34');
INSERT INTO `pp_user_focus` VALUES (107, 77, 37, 3, NULL, '2020-01-10 15:55:34');
INSERT INTO `pp_user_focus` VALUES (127, 76, 23, 3, '2020-01-07 11:00:26', '2020-01-11 14:59:20');
INSERT INTO `pp_user_focus` VALUES (128, 23, 76, 3, '2020-01-07 11:00:26', '2020-01-11 14:59:20');
INSERT INTO `pp_user_focus` VALUES (135, 86, 22, 3, '2020-01-07 17:05:09', '2020-01-07 17:05:35');
INSERT INTO `pp_user_focus` VALUES (145, 76, 24, 2, '2020-01-08 09:59:24', '2020-01-11 14:59:07');
INSERT INTO `pp_user_focus` VALUES (146, 24, 76, 1, '2020-01-08 09:59:24', '2020-01-11 14:59:07');
INSERT INTO `pp_user_focus` VALUES (149, 81, 78, 1, '2020-01-08 17:28:08', '2020-01-08 17:28:08');
INSERT INTO `pp_user_focus` VALUES (150, 78, 81, 2, '2020-01-08 17:28:08', '2020-01-08 17:28:08');
INSERT INTO `pp_user_focus` VALUES (159, 85, 76, 3, '2020-01-09 10:45:27', '2020-01-10 17:57:17');
INSERT INTO `pp_user_focus` VALUES (160, 76, 85, 3, '2020-01-09 10:45:27', '2020-01-10 17:57:17');
INSERT INTO `pp_user_focus` VALUES (171, 76, 92, 1, '2020-01-10 09:50:14', '2020-01-10 09:50:14');
INSERT INTO `pp_user_focus` VALUES (172, 92, 76, 2, '2020-01-10 09:50:14', '2020-01-10 09:50:14');
INSERT INTO `pp_user_focus` VALUES (227, 76, 79, 2, '2020-01-10 13:33:23', '2020-01-11 15:50:40');
INSERT INTO `pp_user_focus` VALUES (228, 79, 76, 1, '2020-01-10 13:33:23', '2020-01-11 15:50:40');
INSERT INTO `pp_user_focus` VALUES (229, 93, 78, 1, '2020-01-10 14:01:32', '2020-01-10 14:01:32');
INSERT INTO `pp_user_focus` VALUES (230, 78, 93, 2, '2020-01-10 14:01:32', '2020-01-10 14:01:32');
INSERT INTO `pp_user_focus` VALUES (305, 76, 77, 1, '2020-01-10 16:00:02', '2020-01-10 16:00:02');
INSERT INTO `pp_user_focus` VALUES (306, 77, 76, 2, '2020-01-10 16:00:02', '2020-01-10 16:00:02');
INSERT INTO `pp_user_focus` VALUES (307, 76, 63, 1, '2020-01-10 16:53:24', '2020-01-10 16:53:24');
INSERT INTO `pp_user_focus` VALUES (308, 63, 76, 2, '2020-01-10 16:53:24', '2020-01-10 16:53:24');
INSERT INTO `pp_user_focus` VALUES (309, 94, 85, 1, '2020-01-10 17:54:51', '2020-01-10 17:54:51');
INSERT INTO `pp_user_focus` VALUES (310, 85, 94, 2, '2020-01-10 17:54:51', '2020-01-10 17:54:51');
INSERT INTO `pp_user_focus` VALUES (311, 76, 94, 1, '2020-01-10 18:17:29', '2020-01-10 18:17:29');
INSERT INTO `pp_user_focus` VALUES (312, 94, 76, 2, '2020-01-10 18:17:29', '2020-01-10 18:17:29');
INSERT INTO `pp_user_focus` VALUES (313, 76, 80, 1, '2020-01-10 18:17:31', '2020-01-10 18:17:31');
INSERT INTO `pp_user_focus` VALUES (314, 80, 76, 2, '2020-01-10 18:17:31', '2020-01-10 18:17:31');
INSERT INTO `pp_user_focus` VALUES (317, 76, 84, 1, '2020-01-11 09:22:32', '2020-01-11 09:22:32');
INSERT INTO `pp_user_focus` VALUES (318, 84, 76, 2, '2020-01-11 09:22:32', '2020-01-11 09:22:32');
INSERT INTO `pp_user_focus` VALUES (319, 79, 22, 1, '2020-01-11 09:34:12', '2020-01-11 09:34:12');
INSERT INTO `pp_user_focus` VALUES (320, 22, 79, 2, '2020-01-11 09:34:12', '2020-01-11 09:34:12');
INSERT INTO `pp_user_focus` VALUES (321, 79, 23, 1, '2020-01-11 09:34:14', '2020-01-11 09:34:14');
INSERT INTO `pp_user_focus` VALUES (322, 23, 79, 2, '2020-01-11 09:34:14', '2020-01-11 09:34:14');
INSERT INTO `pp_user_focus` VALUES (323, 79, 24, 1, '2020-01-11 09:34:15', '2020-01-11 09:34:15');
INSERT INTO `pp_user_focus` VALUES (324, 24, 79, 2, '2020-01-11 09:34:15', '2020-01-11 09:34:15');
INSERT INTO `pp_user_focus` VALUES (325, 79, 26, 1, '2020-01-11 09:34:16', '2020-01-11 09:34:16');
INSERT INTO `pp_user_focus` VALUES (326, 26, 79, 2, '2020-01-11 09:34:16', '2020-01-11 09:34:16');
INSERT INTO `pp_user_focus` VALUES (327, 79, 27, 1, '2020-01-11 09:34:17', '2020-01-11 09:34:17');
INSERT INTO `pp_user_focus` VALUES (328, 27, 79, 2, '2020-01-11 09:34:17', '2020-01-11 09:34:17');
INSERT INTO `pp_user_focus` VALUES (329, 79, 35, 1, '2020-01-11 09:34:18', '2020-01-11 09:34:18');
INSERT INTO `pp_user_focus` VALUES (330, 35, 79, 2, '2020-01-11 09:34:18', '2020-01-11 09:34:18');
INSERT INTO `pp_user_focus` VALUES (331, 79, 37, 1, '2020-01-11 09:34:21', '2020-01-11 09:34:21');
INSERT INTO `pp_user_focus` VALUES (332, 37, 79, 2, '2020-01-11 09:34:21', '2020-01-11 09:34:21');
INSERT INTO `pp_user_focus` VALUES (333, 79, 52, 1, '2020-01-11 09:36:59', '2020-01-11 09:36:59');
INSERT INTO `pp_user_focus` VALUES (334, 52, 79, 2, '2020-01-11 09:36:59', '2020-01-11 09:36:59');
INSERT INTO `pp_user_focus` VALUES (335, 79, 53, 1, '2020-01-11 09:37:02', '2020-01-11 09:37:02');
INSERT INTO `pp_user_focus` VALUES (336, 53, 79, 2, '2020-01-11 09:37:02', '2020-01-11 09:37:02');
INSERT INTO `pp_user_focus` VALUES (337, 79, 54, 1, '2020-01-11 09:37:04', '2020-01-11 09:37:04');
INSERT INTO `pp_user_focus` VALUES (338, 54, 79, 2, '2020-01-11 09:37:04', '2020-01-11 09:37:04');
INSERT INTO `pp_user_focus` VALUES (339, 76, 66, 1, '2020-01-11 09:56:40', '2020-01-11 09:56:40');
INSERT INTO `pp_user_focus` VALUES (340, 66, 76, 2, '2020-01-11 09:56:40', '2020-01-11 09:56:40');
INSERT INTO `pp_user_focus` VALUES (341, 76, 64, 1, '2020-01-11 09:56:50', '2020-01-11 09:56:50');
INSERT INTO `pp_user_focus` VALUES (342, 64, 76, 2, '2020-01-11 09:56:50', '2020-01-11 09:56:50');
INSERT INTO `pp_user_focus` VALUES (343, 76, 78, 1, '2020-01-11 09:56:57', '2020-01-11 09:56:57');
INSERT INTO `pp_user_focus` VALUES (344, 78, 76, 2, '2020-01-11 09:56:57', '2020-01-11 09:56:57');
INSERT INTO `pp_user_focus` VALUES (345, 76, 91, 1, '2020-01-11 09:56:59', '2020-01-11 09:56:59');
INSERT INTO `pp_user_focus` VALUES (346, 91, 76, 2, '2020-01-11 09:56:59', '2020-01-11 09:56:59');
INSERT INTO `pp_user_focus` VALUES (347, 76, 60, 1, '2020-01-11 09:57:03', '2020-01-11 09:57:03');
INSERT INTO `pp_user_focus` VALUES (348, 60, 76, 2, '2020-01-11 09:57:03', '2020-01-11 09:57:03');
INSERT INTO `pp_user_focus` VALUES (349, 76, 82, 1, '2020-01-11 09:57:04', '2020-01-11 09:57:04');
INSERT INTO `pp_user_focus` VALUES (350, 82, 76, 2, '2020-01-11 09:57:04', '2020-01-11 09:57:04');
INSERT INTO `pp_user_focus` VALUES (351, 76, 87, 1, '2020-01-11 09:57:28', '2020-01-11 09:57:28');
INSERT INTO `pp_user_focus` VALUES (352, 87, 76, 2, '2020-01-11 09:57:28', '2020-01-11 09:57:28');
INSERT INTO `pp_user_focus` VALUES (353, 76, 27, 1, '2020-01-11 10:17:13', '2020-01-11 10:17:13');
INSERT INTO `pp_user_focus` VALUES (354, 27, 76, 2, '2020-01-11 10:17:13', '2020-01-11 10:17:13');
INSERT INTO `pp_user_focus` VALUES (355, 76, 55, 1, '2020-01-11 10:17:19', '2020-01-11 10:17:19');
INSERT INTO `pp_user_focus` VALUES (356, 55, 76, 2, '2020-01-11 10:17:19', '2020-01-11 10:17:19');
INSERT INTO `pp_user_focus` VALUES (357, 76, 35, 1, '2020-01-11 10:17:23', '2020-01-11 10:17:23');
INSERT INTO `pp_user_focus` VALUES (358, 35, 76, 2, '2020-01-11 10:17:23', '2020-01-11 10:17:23');
INSERT INTO `pp_user_focus` VALUES (359, 95, 22, 1, '2020-01-11 10:59:19', '2020-01-11 10:59:19');
INSERT INTO `pp_user_focus` VALUES (360, 22, 95, 2, '2020-01-11 10:59:19', '2020-01-11 10:59:19');
INSERT INTO `pp_user_focus` VALUES (361, 95, 23, 1, '2020-01-11 10:59:21', '2020-01-11 10:59:21');
INSERT INTO `pp_user_focus` VALUES (362, 23, 95, 2, '2020-01-11 10:59:21', '2020-01-11 10:59:21');
INSERT INTO `pp_user_focus` VALUES (363, 95, 24, 1, '2020-01-11 10:59:23', '2020-01-11 10:59:23');
INSERT INTO `pp_user_focus` VALUES (364, 24, 95, 2, '2020-01-11 10:59:23', '2020-01-11 10:59:23');
INSERT INTO `pp_user_focus` VALUES (365, 95, 26, 1, '2020-01-11 10:59:25', '2020-01-11 10:59:25');
INSERT INTO `pp_user_focus` VALUES (366, 26, 95, 2, '2020-01-11 10:59:25', '2020-01-11 10:59:25');
INSERT INTO `pp_user_focus` VALUES (367, 95, 27, 1, '2020-01-11 10:59:26', '2020-01-11 10:59:26');
INSERT INTO `pp_user_focus` VALUES (368, 27, 95, 2, '2020-01-11 10:59:26', '2020-01-11 10:59:26');
INSERT INTO `pp_user_focus` VALUES (369, 95, 35, 1, '2020-01-11 10:59:32', '2020-01-11 10:59:32');
INSERT INTO `pp_user_focus` VALUES (370, 35, 95, 2, '2020-01-11 10:59:32', '2020-01-11 10:59:32');
INSERT INTO `pp_user_focus` VALUES (371, 95, 37, 1, '2020-01-11 10:59:34', '2020-01-11 10:59:34');
INSERT INTO `pp_user_focus` VALUES (372, 37, 95, 2, '2020-01-11 10:59:34', '2020-01-11 10:59:34');
INSERT INTO `pp_user_focus` VALUES (373, 95, 52, 1, '2020-01-11 10:59:35', '2020-01-11 10:59:35');
INSERT INTO `pp_user_focus` VALUES (374, 52, 95, 2, '2020-01-11 10:59:35', '2020-01-11 10:59:35');
INSERT INTO `pp_user_focus` VALUES (375, 95, 53, 1, '2020-01-11 10:59:36', '2020-01-11 10:59:36');
INSERT INTO `pp_user_focus` VALUES (376, 53, 95, 2, '2020-01-11 10:59:36', '2020-01-11 10:59:36');
INSERT INTO `pp_user_focus` VALUES (377, 95, 54, 1, '2020-01-11 10:59:38', '2020-01-11 10:59:38');
INSERT INTO `pp_user_focus` VALUES (378, 54, 95, 2, '2020-01-11 10:59:38', '2020-01-11 10:59:38');
INSERT INTO `pp_user_focus` VALUES (379, 76, 95, 3, '2020-01-11 11:10:12', '2020-01-11 14:43:39');
INSERT INTO `pp_user_focus` VALUES (380, 95, 76, 3, '2020-01-11 11:10:12', '2020-01-11 14:43:39');
INSERT INTO `pp_user_focus` VALUES (381, 86, 94, 1, '2020-01-11 11:16:47', '2020-01-11 11:16:47');
INSERT INTO `pp_user_focus` VALUES (382, 94, 86, 2, '2020-01-11 11:16:47', '2020-01-11 11:16:47');
INSERT INTO `pp_user_focus` VALUES (383, 86, 60, 1, '2020-01-11 11:16:56', '2020-01-11 11:16:56');
INSERT INTO `pp_user_focus` VALUES (384, 60, 86, 2, '2020-01-11 11:16:56', '2020-01-11 11:16:56');
INSERT INTO `pp_user_focus` VALUES (385, 86, 84, 1, '2020-01-11 11:17:01', '2020-01-11 11:17:01');
INSERT INTO `pp_user_focus` VALUES (386, 84, 86, 2, '2020-01-11 11:17:01', '2020-01-11 11:17:01');
INSERT INTO `pp_user_focus` VALUES (387, 86, 82, 1, '2020-01-11 11:17:09', '2020-01-11 11:17:09');
INSERT INTO `pp_user_focus` VALUES (388, 82, 86, 2, '2020-01-11 11:17:09', '2020-01-11 11:17:09');
INSERT INTO `pp_user_focus` VALUES (389, 101, 99, 1, '2020-01-11 11:45:35', '2020-01-11 11:45:35');
INSERT INTO `pp_user_focus` VALUES (390, 99, 101, 2, '2020-01-11 11:45:35', '2020-01-11 11:45:35');
INSERT INTO `pp_user_focus` VALUES (391, 102, 95, 3, '2020-01-11 11:48:22', '2020-01-11 14:27:54');
INSERT INTO `pp_user_focus` VALUES (392, 95, 102, 3, '2020-01-11 11:48:22', '2020-01-11 14:27:54');
INSERT INTO `pp_user_focus` VALUES (393, 102, 96, 1, '2020-01-11 11:48:23', '2020-01-11 11:48:23');
INSERT INTO `pp_user_focus` VALUES (394, 96, 102, 2, '2020-01-11 11:48:23', '2020-01-11 11:48:23');
INSERT INTO `pp_user_focus` VALUES (395, 102, 98, 1, '2020-01-11 11:48:25', '2020-01-11 11:48:25');
INSERT INTO `pp_user_focus` VALUES (396, 98, 102, 2, '2020-01-11 11:48:25', '2020-01-11 11:48:25');
INSERT INTO `pp_user_focus` VALUES (397, 76, 100, 1, '2020-01-11 12:01:36', '2020-01-11 12:01:36');
INSERT INTO `pp_user_focus` VALUES (398, 100, 76, 2, '2020-01-11 12:01:36', '2020-01-11 12:01:36');
INSERT INTO `pp_user_focus` VALUES (399, 76, 81, 1, '2020-01-11 12:05:40', '2020-01-11 12:05:40');
INSERT INTO `pp_user_focus` VALUES (400, 81, 76, 2, '2020-01-11 12:05:40', '2020-01-11 12:05:40');
INSERT INTO `pp_user_focus` VALUES (401, 76, 103, 1, '2020-01-11 13:50:21', '2020-01-11 13:50:21');
INSERT INTO `pp_user_focus` VALUES (402, 103, 76, 2, '2020-01-11 13:50:21', '2020-01-11 13:50:21');
INSERT INTO `pp_user_focus` VALUES (403, 76, 96, 1, '2020-01-11 13:52:06', '2020-01-11 13:52:06');
INSERT INTO `pp_user_focus` VALUES (404, 96, 76, 2, '2020-01-11 13:52:06', '2020-01-11 13:52:06');
INSERT INTO `pp_user_focus` VALUES (405, 76, 97, 1, '2020-01-11 13:58:29', '2020-01-11 13:58:29');
INSERT INTO `pp_user_focus` VALUES (406, 97, 76, 2, '2020-01-11 13:58:29', '2020-01-11 13:58:29');
INSERT INTO `pp_user_focus` VALUES (407, 76, 98, 1, '2020-01-11 13:58:39', '2020-01-11 13:58:39');
INSERT INTO `pp_user_focus` VALUES (408, 98, 76, 2, '2020-01-11 13:58:39', '2020-01-11 13:58:39');
INSERT INTO `pp_user_focus` VALUES (409, 76, 106, 1, '2020-01-11 14:01:50', '2020-01-11 14:01:50');
INSERT INTO `pp_user_focus` VALUES (410, 106, 76, 2, '2020-01-11 14:01:50', '2020-01-11 14:01:50');
INSERT INTO `pp_user_focus` VALUES (411, 110, 98, 1, '2020-01-11 14:12:20', '2020-01-11 14:12:20');
INSERT INTO `pp_user_focus` VALUES (412, 98, 110, 2, '2020-01-11 14:12:20', '2020-01-11 14:12:20');
INSERT INTO `pp_user_focus` VALUES (413, 110, 95, 1, '2020-01-11 14:13:47', '2020-01-11 14:13:47');
INSERT INTO `pp_user_focus` VALUES (414, 95, 110, 2, '2020-01-11 14:13:47', '2020-01-11 14:13:47');
INSERT INTO `pp_user_focus` VALUES (415, 110, 96, 1, '2020-01-11 14:16:17', '2020-01-11 14:16:17');
INSERT INTO `pp_user_focus` VALUES (416, 96, 110, 2, '2020-01-11 14:16:17', '2020-01-11 14:16:17');
INSERT INTO `pp_user_focus` VALUES (417, 110, 100, 1, '2020-01-11 14:16:18', '2020-01-11 14:16:18');
INSERT INTO `pp_user_focus` VALUES (418, 100, 110, 2, '2020-01-11 14:16:18', '2020-01-11 14:16:18');
INSERT INTO `pp_user_focus` VALUES (419, 110, 97, 1, '2020-01-11 14:16:20', '2020-01-11 14:16:20');
INSERT INTO `pp_user_focus` VALUES (420, 97, 110, 2, '2020-01-11 14:16:20', '2020-01-11 14:16:20');
INSERT INTO `pp_user_focus` VALUES (421, 110, 99, 1, '2020-01-11 14:16:21', '2020-01-11 14:16:21');
INSERT INTO `pp_user_focus` VALUES (422, 99, 110, 2, '2020-01-11 14:16:21', '2020-01-11 14:16:21');
INSERT INTO `pp_user_focus` VALUES (423, 110, 107, 1, '2020-01-11 14:16:22', '2020-01-11 14:16:22');
INSERT INTO `pp_user_focus` VALUES (424, 107, 110, 2, '2020-01-11 14:16:22', '2020-01-11 14:16:22');
INSERT INTO `pp_user_focus` VALUES (425, 110, 109, 1, '2020-01-11 14:16:24', '2020-01-11 14:16:24');
INSERT INTO `pp_user_focus` VALUES (426, 109, 110, 2, '2020-01-11 14:16:24', '2020-01-11 14:16:24');
INSERT INTO `pp_user_focus` VALUES (427, 76, 99, 1, '2020-01-11 14:17:26', '2020-01-11 14:17:26');
INSERT INTO `pp_user_focus` VALUES (428, 99, 76, 2, '2020-01-11 14:17:26', '2020-01-11 14:17:26');
INSERT INTO `pp_user_focus` VALUES (429, 86, 100, 1, '2020-01-11 14:23:24', '2020-01-11 14:23:24');
INSERT INTO `pp_user_focus` VALUES (430, 100, 86, 2, '2020-01-11 14:23:24', '2020-01-11 14:23:24');
INSERT INTO `pp_user_focus` VALUES (431, 86, 99, 1, '2020-01-11 14:24:44', '2020-01-11 14:24:44');
INSERT INTO `pp_user_focus` VALUES (432, 99, 86, 2, '2020-01-11 14:24:44', '2020-01-11 14:24:44');
INSERT INTO `pp_user_focus` VALUES (433, 86, 96, 1, '2020-01-11 14:24:50', '2020-01-11 14:24:50');
INSERT INTO `pp_user_focus` VALUES (434, 96, 86, 2, '2020-01-11 14:24:50', '2020-01-11 14:24:50');
INSERT INTO `pp_user_focus` VALUES (435, 111, 22, 1, '2020-01-11 14:39:26', '2020-01-11 14:39:26');
INSERT INTO `pp_user_focus` VALUES (436, 22, 111, 2, '2020-01-11 14:39:26', '2020-01-11 14:39:26');
INSERT INTO `pp_user_focus` VALUES (437, 111, 23, 1, '2020-01-11 14:39:52', '2020-01-11 14:39:52');
INSERT INTO `pp_user_focus` VALUES (438, 23, 111, 2, '2020-01-11 14:39:52', '2020-01-11 14:39:52');
INSERT INTO `pp_user_focus` VALUES (439, 111, 24, 1, '2020-01-11 14:40:03', '2020-01-11 14:40:03');
INSERT INTO `pp_user_focus` VALUES (440, 24, 111, 2, '2020-01-11 14:40:03', '2020-01-11 14:40:03');
INSERT INTO `pp_user_focus` VALUES (441, 111, 26, 1, '2020-01-11 14:41:02', '2020-01-11 14:41:02');
INSERT INTO `pp_user_focus` VALUES (442, 26, 111, 2, '2020-01-11 14:41:02', '2020-01-11 14:41:02');
INSERT INTO `pp_user_focus` VALUES (443, 111, 27, 1, '2020-01-11 14:41:10', '2020-01-11 14:41:10');
INSERT INTO `pp_user_focus` VALUES (444, 27, 111, 2, '2020-01-11 14:41:10', '2020-01-11 14:41:10');
INSERT INTO `pp_user_focus` VALUES (445, 111, 35, 1, '2020-01-11 14:41:15', '2020-01-11 14:41:15');
INSERT INTO `pp_user_focus` VALUES (446, 35, 111, 2, '2020-01-11 14:41:15', '2020-01-11 14:41:15');
INSERT INTO `pp_user_focus` VALUES (447, 111, 37, 1, '2020-01-11 14:41:18', '2020-01-11 14:41:18');
INSERT INTO `pp_user_focus` VALUES (448, 37, 111, 2, '2020-01-11 14:41:18', '2020-01-11 14:41:18');
INSERT INTO `pp_user_focus` VALUES (449, 111, 52, 1, '2020-01-11 14:41:40', '2020-01-11 14:41:40');
INSERT INTO `pp_user_focus` VALUES (450, 52, 111, 2, '2020-01-11 14:41:40', '2020-01-11 14:41:40');
INSERT INTO `pp_user_focus` VALUES (451, 112, 24, 1, '2020-01-11 14:44:40', '2020-01-11 14:44:40');
INSERT INTO `pp_user_focus` VALUES (452, 24, 112, 2, '2020-01-11 14:44:40', '2020-01-11 14:44:40');
INSERT INTO `pp_user_focus` VALUES (453, 112, 26, 1, '2020-01-11 14:44:48', '2020-01-11 14:44:48');
INSERT INTO `pp_user_focus` VALUES (454, 26, 112, 2, '2020-01-11 14:44:48', '2020-01-11 14:44:48');
INSERT INTO `pp_user_focus` VALUES (455, 113, 22, 1, '2020-01-11 15:27:46', '2020-01-11 15:27:46');
INSERT INTO `pp_user_focus` VALUES (456, 22, 113, 2, '2020-01-11 15:27:46', '2020-01-11 15:27:46');
INSERT INTO `pp_user_focus` VALUES (457, 113, 23, 1, '2020-01-11 15:29:10', '2020-01-11 15:29:10');
INSERT INTO `pp_user_focus` VALUES (458, 23, 113, 2, '2020-01-11 15:29:10', '2020-01-11 15:29:10');
INSERT INTO `pp_user_focus` VALUES (459, 113, 24, 1, '2020-01-11 15:29:12', '2020-01-11 15:29:12');
INSERT INTO `pp_user_focus` VALUES (460, 24, 113, 2, '2020-01-11 15:29:12', '2020-01-11 15:29:12');
INSERT INTO `pp_user_focus` VALUES (461, 113, 26, 1, '2020-01-11 15:29:12', '2020-01-11 15:29:12');
INSERT INTO `pp_user_focus` VALUES (462, 26, 113, 2, '2020-01-11 15:29:12', '2020-01-11 15:29:12');
INSERT INTO `pp_user_focus` VALUES (463, 113, 27, 1, '2020-01-11 15:29:13', '2020-01-11 15:29:13');
INSERT INTO `pp_user_focus` VALUES (464, 27, 113, 2, '2020-01-11 15:29:13', '2020-01-11 15:29:13');
INSERT INTO `pp_user_focus` VALUES (465, 113, 35, 1, '2020-01-11 15:29:16', '2020-01-11 15:29:16');
INSERT INTO `pp_user_focus` VALUES (466, 35, 113, 2, '2020-01-11 15:29:16', '2020-01-11 15:29:16');
INSERT INTO `pp_user_focus` VALUES (467, 113, 37, 1, '2020-01-11 15:29:17', '2020-01-11 15:29:17');
INSERT INTO `pp_user_focus` VALUES (468, 37, 113, 2, '2020-01-11 15:29:17', '2020-01-11 15:29:17');
INSERT INTO `pp_user_focus` VALUES (469, 113, 52, 1, '2020-01-11 15:29:18', '2020-01-11 15:29:18');
INSERT INTO `pp_user_focus` VALUES (470, 52, 113, 2, '2020-01-11 15:29:18', '2020-01-11 15:29:18');
INSERT INTO `pp_user_focus` VALUES (471, 113, 53, 1, '2020-01-11 15:29:19', '2020-01-11 15:29:19');
INSERT INTO `pp_user_focus` VALUES (472, 53, 113, 2, '2020-01-11 15:29:19', '2020-01-11 15:29:19');
INSERT INTO `pp_user_focus` VALUES (473, 114, 22, 1, '2020-01-11 15:35:50', '2020-01-11 15:35:50');
INSERT INTO `pp_user_focus` VALUES (474, 22, 114, 2, '2020-01-11 15:35:50', '2020-01-11 15:35:50');
INSERT INTO `pp_user_focus` VALUES (475, 114, 23, 1, '2020-01-11 15:35:51', '2020-01-11 15:35:51');
INSERT INTO `pp_user_focus` VALUES (476, 23, 114, 2, '2020-01-11 15:35:51', '2020-01-11 15:35:51');
INSERT INTO `pp_user_focus` VALUES (477, 114, 24, 1, '2020-01-11 15:35:52', '2020-01-11 15:35:52');
INSERT INTO `pp_user_focus` VALUES (478, 24, 114, 2, '2020-01-11 15:35:52', '2020-01-11 15:35:52');
INSERT INTO `pp_user_focus` VALUES (479, 114, 26, 1, '2020-01-11 15:35:53', '2020-01-11 15:35:53');
INSERT INTO `pp_user_focus` VALUES (480, 26, 114, 2, '2020-01-11 15:35:53', '2020-01-11 15:35:53');
INSERT INTO `pp_user_focus` VALUES (481, 114, 27, 1, '2020-01-11 15:35:53', '2020-01-11 15:35:53');
INSERT INTO `pp_user_focus` VALUES (482, 27, 114, 2, '2020-01-11 15:35:53', '2020-01-11 15:35:53');
INSERT INTO `pp_user_focus` VALUES (483, 114, 35, 1, '2020-01-11 15:35:54', '2020-01-11 15:35:54');
INSERT INTO `pp_user_focus` VALUES (484, 35, 114, 2, '2020-01-11 15:35:54', '2020-01-11 15:35:54');
INSERT INTO `pp_user_focus` VALUES (485, 114, 37, 1, '2020-01-11 15:35:55', '2020-01-11 15:35:55');
INSERT INTO `pp_user_focus` VALUES (486, 37, 114, 2, '2020-01-11 15:35:55', '2020-01-11 15:35:55');
INSERT INTO `pp_user_focus` VALUES (487, 114, 52, 1, '2020-01-11 15:35:56', '2020-01-11 15:35:56');
INSERT INTO `pp_user_focus` VALUES (488, 52, 114, 2, '2020-01-11 15:35:56', '2020-01-11 15:35:56');
INSERT INTO `pp_user_focus` VALUES (489, 114, 53, 1, '2020-01-11 15:35:57', '2020-01-11 15:35:57');
INSERT INTO `pp_user_focus` VALUES (490, 53, 114, 2, '2020-01-11 15:35:57', '2020-01-11 15:35:57');
INSERT INTO `pp_user_focus` VALUES (491, 76, 113, 3, '2020-01-11 16:17:07', '2020-01-11 17:05:45');
INSERT INTO `pp_user_focus` VALUES (492, 113, 76, 3, '2020-01-11 16:17:07', '2020-01-11 17:05:45');
INSERT INTO `pp_user_focus` VALUES (493, 76, 111, 1, '2020-01-11 16:17:11', '2020-01-11 16:17:11');
INSERT INTO `pp_user_focus` VALUES (494, 111, 76, 2, '2020-01-11 16:17:11', '2020-01-11 16:17:11');
INSERT INTO `pp_user_focus` VALUES (495, 76, 114, 3, '2020-01-11 16:17:12', '2020-01-11 16:30:04');
INSERT INTO `pp_user_focus` VALUES (496, 114, 76, 3, '2020-01-11 16:17:12', '2020-01-11 16:30:04');
INSERT INTO `pp_user_focus` VALUES (497, 76, 110, 1, '2020-01-11 16:17:12', '2020-01-11 16:17:12');
INSERT INTO `pp_user_focus` VALUES (498, 110, 76, 2, '2020-01-11 16:17:12', '2020-01-11 16:17:12');
INSERT INTO `pp_user_focus` VALUES (499, 76, 109, 1, '2020-01-11 16:17:13', '2020-01-11 16:17:13');
INSERT INTO `pp_user_focus` VALUES (500, 109, 76, 2, '2020-01-11 16:17:13', '2020-01-11 16:17:13');
INSERT INTO `pp_user_focus` VALUES (501, 76, 108, 1, '2020-01-11 16:17:13', '2020-01-11 16:17:13');
INSERT INTO `pp_user_focus` VALUES (502, 108, 76, 2, '2020-01-11 16:17:13', '2020-01-11 16:17:13');
INSERT INTO `pp_user_focus` VALUES (503, 114, 103, 1, '2020-01-11 16:29:33', '2020-01-11 16:29:33');
INSERT INTO `pp_user_focus` VALUES (504, 103, 114, 2, '2020-01-11 16:29:33', '2020-01-11 16:29:33');
INSERT INTO `pp_user_focus` VALUES (505, 114, 97, 1, '2020-01-11 16:29:38', '2020-01-11 16:29:38');
INSERT INTO `pp_user_focus` VALUES (506, 97, 114, 2, '2020-01-11 16:29:38', '2020-01-11 16:29:38');
INSERT INTO `pp_user_focus` VALUES (507, 114, 95, 1, '2020-01-11 16:29:41', '2020-01-11 16:29:41');
INSERT INTO `pp_user_focus` VALUES (508, 95, 114, 2, '2020-01-11 16:29:41', '2020-01-11 16:29:41');
INSERT INTO `pp_user_focus` VALUES (509, 114, 113, 1, '2020-01-11 16:30:06', '2020-01-11 16:30:06');
INSERT INTO `pp_user_focus` VALUES (510, 113, 114, 2, '2020-01-11 16:30:06', '2020-01-11 16:30:06');
INSERT INTO `pp_user_focus` VALUES (511, 114, 111, 1, '2020-01-11 16:30:11', '2020-01-11 16:30:11');
INSERT INTO `pp_user_focus` VALUES (512, 111, 114, 2, '2020-01-11 16:30:11', '2020-01-11 16:30:11');
INSERT INTO `pp_user_focus` VALUES (513, 114, 108, 1, '2020-01-11 16:30:15', '2020-01-11 16:30:15');
INSERT INTO `pp_user_focus` VALUES (514, 108, 114, 2, '2020-01-11 16:30:15', '2020-01-11 16:30:15');
INSERT INTO `pp_user_focus` VALUES (515, 113, 103, 1, '2020-01-11 17:05:10', '2020-01-11 17:05:10');
INSERT INTO `pp_user_focus` VALUES (516, 103, 113, 2, '2020-01-11 17:05:10', '2020-01-11 17:05:10');
INSERT INTO `pp_user_focus` VALUES (517, 113, 97, 1, '2020-01-11 17:05:12', '2020-01-11 17:05:12');
INSERT INTO `pp_user_focus` VALUES (518, 97, 113, 2, '2020-01-11 17:05:12', '2020-01-11 17:05:12');
INSERT INTO `pp_user_focus` VALUES (519, 113, 95, 1, '2020-01-11 17:05:40', '2020-01-11 17:05:40');
INSERT INTO `pp_user_focus` VALUES (520, 95, 113, 2, '2020-01-11 17:05:40', '2020-01-11 17:05:40');
INSERT INTO `pp_user_focus` VALUES (521, 113, 111, 1, '2020-01-11 17:05:52', '2020-01-11 17:05:52');
INSERT INTO `pp_user_focus` VALUES (522, 111, 113, 2, '2020-01-11 17:05:52', '2020-01-11 17:05:52');
INSERT INTO `pp_user_focus` VALUES (523, 113, 108, 1, '2020-01-11 17:05:57', '2020-01-11 17:05:57');
INSERT INTO `pp_user_focus` VALUES (524, 108, 113, 2, '2020-01-11 17:05:57', '2020-01-11 17:05:57');
INSERT INTO `pp_user_focus` VALUES (525, 113, 109, 1, '2020-01-11 17:06:04', '2020-01-11 17:06:04');
INSERT INTO `pp_user_focus` VALUES (526, 109, 113, 2, '2020-01-11 17:06:04', '2020-01-11 17:06:04');
INSERT INTO `pp_user_focus` VALUES (527, 113, 107, 1, '2020-01-11 17:06:08', '2020-01-11 17:06:08');
INSERT INTO `pp_user_focus` VALUES (528, 107, 113, 2, '2020-01-11 17:06:08', '2020-01-11 17:06:08');
INSERT INTO `pp_user_focus` VALUES (529, 113, 106, 1, '2020-01-11 17:06:12', '2020-01-11 17:06:12');
INSERT INTO `pp_user_focus` VALUES (530, 106, 113, 2, '2020-01-11 17:06:12', '2020-01-11 17:06:12');
INSERT INTO `pp_user_focus` VALUES (531, 113, 110, 1, '2020-01-11 17:06:15', '2020-01-11 17:06:15');
INSERT INTO `pp_user_focus` VALUES (532, 110, 113, 2, '2020-01-11 17:06:15', '2020-01-11 17:06:15');
INSERT INTO `pp_user_focus` VALUES (533, 112, 97, 1, '2020-01-11 17:12:24', '2020-01-11 17:12:24');
INSERT INTO `pp_user_focus` VALUES (534, 97, 112, 2, '2020-01-11 17:12:24', '2020-01-11 17:12:24');
INSERT INTO `pp_user_focus` VALUES (535, 112, 103, 1, '2020-01-11 17:12:33', '2020-01-11 17:12:33');
INSERT INTO `pp_user_focus` VALUES (536, 103, 112, 2, '2020-01-11 17:12:33', '2020-01-11 17:12:33');
INSERT INTO `pp_user_focus` VALUES (537, 112, 86, 1, '2020-01-11 17:15:27', '2020-01-11 17:15:27');
INSERT INTO `pp_user_focus` VALUES (538, 86, 112, 2, '2020-01-11 17:15:27', '2020-01-11 17:15:27');
INSERT INTO `pp_user_focus` VALUES (539, 112, 102, 1, '2020-01-11 17:16:46', '2020-01-11 17:16:46');
INSERT INTO `pp_user_focus` VALUES (540, 102, 112, 2, '2020-01-11 17:16:46', '2020-01-11 17:16:46');
INSERT INTO `pp_user_focus` VALUES (541, 112, 108, 1, '2020-01-11 17:16:48', '2020-01-11 17:16:48');
INSERT INTO `pp_user_focus` VALUES (542, 108, 112, 2, '2020-01-11 17:16:48', '2020-01-11 17:16:48');
INSERT INTO `pp_user_focus` VALUES (543, 112, 107, 1, '2020-01-11 17:16:49', '2020-01-11 17:16:49');
INSERT INTO `pp_user_focus` VALUES (544, 107, 112, 2, '2020-01-11 17:16:49', '2020-01-11 17:16:49');
INSERT INTO `pp_user_focus` VALUES (545, 112, 114, 1, '2020-01-11 17:16:52', '2020-01-11 17:16:52');
INSERT INTO `pp_user_focus` VALUES (546, 114, 112, 2, '2020-01-11 17:16:52', '2020-01-11 17:16:52');
INSERT INTO `pp_user_focus` VALUES (547, 110, 108, 1, '2020-01-11 17:26:51', '2020-01-11 17:26:51');
INSERT INTO `pp_user_focus` VALUES (548, 108, 110, 2, '2020-01-11 17:26:51', '2020-01-11 17:26:51');
INSERT INTO `pp_user_focus` VALUES (549, 110, 114, 1, '2020-01-11 17:26:52', '2020-01-11 17:26:52');
INSERT INTO `pp_user_focus` VALUES (550, 114, 110, 2, '2020-01-11 17:26:52', '2020-01-11 17:26:52');
INSERT INTO `pp_user_focus` VALUES (551, 115, 22, 1, '2020-01-11 17:36:24', '2020-01-11 17:36:24');
INSERT INTO `pp_user_focus` VALUES (552, 22, 115, 2, '2020-01-11 17:36:24', '2020-01-11 17:36:24');
INSERT INTO `pp_user_focus` VALUES (553, 115, 23, 1, '2020-01-11 17:36:26', '2020-01-11 17:36:26');
INSERT INTO `pp_user_focus` VALUES (554, 23, 115, 2, '2020-01-11 17:36:26', '2020-01-11 17:36:26');
INSERT INTO `pp_user_focus` VALUES (555, 115, 24, 1, '2020-01-11 17:36:27', '2020-01-11 17:36:27');
INSERT INTO `pp_user_focus` VALUES (556, 24, 115, 2, '2020-01-11 17:36:27', '2020-01-11 17:36:27');
INSERT INTO `pp_user_focus` VALUES (557, 115, 26, 1, '2020-01-11 17:36:28', '2020-01-11 17:36:28');
INSERT INTO `pp_user_focus` VALUES (558, 26, 115, 2, '2020-01-11 17:36:28', '2020-01-11 17:36:28');
INSERT INTO `pp_user_focus` VALUES (559, 115, 27, 1, '2020-01-11 17:36:29', '2020-01-11 17:36:29');
INSERT INTO `pp_user_focus` VALUES (560, 27, 115, 2, '2020-01-11 17:36:29', '2020-01-11 17:36:29');
INSERT INTO `pp_user_focus` VALUES (561, 115, 35, 1, '2020-01-11 17:36:29', '2020-01-11 17:36:29');
INSERT INTO `pp_user_focus` VALUES (562, 35, 115, 2, '2020-01-11 17:36:29', '2020-01-11 17:36:29');
INSERT INTO `pp_user_focus` VALUES (563, 115, 37, 1, '2020-01-11 17:36:30', '2020-01-11 17:36:30');
INSERT INTO `pp_user_focus` VALUES (564, 37, 115, 2, '2020-01-11 17:36:30', '2020-01-11 17:36:30');
INSERT INTO `pp_user_focus` VALUES (565, 115, 52, 1, '2020-01-11 17:36:32', '2020-01-11 17:36:32');
INSERT INTO `pp_user_focus` VALUES (566, 52, 115, 2, '2020-01-11 17:36:32', '2020-01-11 17:36:32');
INSERT INTO `pp_user_focus` VALUES (567, 115, 53, 1, '2020-01-11 17:37:47', '2020-01-11 17:37:47');
INSERT INTO `pp_user_focus` VALUES (568, 53, 115, 2, '2020-01-11 17:37:47', '2020-01-11 17:37:47');
INSERT INTO `pp_user_focus` VALUES (569, 112, 95, 1, '2020-01-13 09:57:35', '2020-01-13 09:57:35');
INSERT INTO `pp_user_focus` VALUES (570, 95, 112, 2, '2020-01-13 09:57:35', '2020-01-13 09:57:35');
INSERT INTO `pp_user_focus` VALUES (571, 112, 109, 1, '2020-01-13 09:57:45', '2020-01-13 09:57:45');
INSERT INTO `pp_user_focus` VALUES (572, 109, 112, 2, '2020-01-13 09:57:45', '2020-01-13 09:57:45');
INSERT INTO `pp_user_focus` VALUES (573, 112, 105, 1, '2020-01-13 09:57:52', '2020-01-13 09:57:52');
INSERT INTO `pp_user_focus` VALUES (574, 105, 112, 2, '2020-01-13 09:57:52', '2020-01-13 09:57:52');
INSERT INTO `pp_user_focus` VALUES (575, 112, 106, 1, '2020-01-13 09:57:53', '2020-01-13 09:57:53');
INSERT INTO `pp_user_focus` VALUES (576, 106, 112, 2, '2020-01-13 09:57:53', '2020-01-13 09:57:53');
INSERT INTO `pp_user_focus` VALUES (577, 112, 104, 1, '2020-01-13 09:57:59', '2020-01-13 09:57:59');
INSERT INTO `pp_user_focus` VALUES (578, 104, 112, 2, '2020-01-13 09:57:59', '2020-01-13 09:57:59');
INSERT INTO `pp_user_focus` VALUES (579, 119, 22, 1, '2020-01-13 10:01:19', '2020-01-13 10:01:19');
INSERT INTO `pp_user_focus` VALUES (580, 22, 119, 2, '2020-01-13 10:01:19', '2020-01-13 10:01:19');
INSERT INTO `pp_user_focus` VALUES (581, 119, 23, 1, '2020-01-13 10:01:20', '2020-01-13 10:01:20');
INSERT INTO `pp_user_focus` VALUES (582, 23, 119, 2, '2020-01-13 10:01:20', '2020-01-13 10:01:20');
INSERT INTO `pp_user_focus` VALUES (583, 119, 24, 1, '2020-01-13 10:01:20', '2020-01-13 10:01:20');
INSERT INTO `pp_user_focus` VALUES (584, 24, 119, 2, '2020-01-13 10:01:20', '2020-01-13 10:01:20');
INSERT INTO `pp_user_focus` VALUES (585, 119, 26, 1, '2020-01-13 10:01:21', '2020-01-13 10:01:21');
INSERT INTO `pp_user_focus` VALUES (586, 26, 119, 2, '2020-01-13 10:01:21', '2020-01-13 10:01:21');
INSERT INTO `pp_user_focus` VALUES (587, 119, 27, 1, '2020-01-13 10:01:22', '2020-01-13 10:01:22');
INSERT INTO `pp_user_focus` VALUES (588, 27, 119, 2, '2020-01-13 10:01:22', '2020-01-13 10:01:22');
INSERT INTO `pp_user_focus` VALUES (589, 119, 35, 1, '2020-01-13 10:01:22', '2020-01-13 10:01:22');
INSERT INTO `pp_user_focus` VALUES (590, 35, 119, 2, '2020-01-13 10:01:22', '2020-01-13 10:01:22');
INSERT INTO `pp_user_focus` VALUES (591, 119, 37, 1, '2020-01-13 10:01:23', '2020-01-13 10:01:23');
INSERT INTO `pp_user_focus` VALUES (592, 37, 119, 2, '2020-01-13 10:01:23', '2020-01-13 10:01:23');
INSERT INTO `pp_user_focus` VALUES (593, 119, 52, 1, '2020-01-13 10:01:23', '2020-01-13 10:01:23');
INSERT INTO `pp_user_focus` VALUES (594, 52, 119, 2, '2020-01-13 10:01:23', '2020-01-13 10:01:23');
INSERT INTO `pp_user_focus` VALUES (595, 119, 53, 1, '2020-01-13 10:01:24', '2020-01-13 10:01:24');
INSERT INTO `pp_user_focus` VALUES (596, 53, 119, 2, '2020-01-13 10:01:24', '2020-01-13 10:01:24');
INSERT INTO `pp_user_focus` VALUES (597, 119, 103, 1, '2020-01-13 10:02:20', '2020-01-13 10:02:20');
INSERT INTO `pp_user_focus` VALUES (598, 103, 119, 2, '2020-01-13 10:02:20', '2020-01-13 10:02:20');
INSERT INTO `pp_user_focus` VALUES (599, 119, 97, 1, '2020-01-13 10:02:20', '2020-01-13 10:02:20');
INSERT INTO `pp_user_focus` VALUES (600, 97, 119, 2, '2020-01-13 10:02:20', '2020-01-13 10:02:20');
INSERT INTO `pp_user_focus` VALUES (601, 119, 112, 1, '2020-01-13 10:19:50', '2020-01-13 10:19:50');
INSERT INTO `pp_user_focus` VALUES (602, 112, 119, 2, '2020-01-13 10:19:50', '2020-01-13 10:19:50');
INSERT INTO `pp_user_focus` VALUES (603, 119, 118, 1, '2020-01-13 10:19:51', '2020-01-13 10:19:51');
INSERT INTO `pp_user_focus` VALUES (604, 118, 119, 2, '2020-01-13 10:19:51', '2020-01-13 10:19:51');
INSERT INTO `pp_user_focus` VALUES (605, 119, 104, 1, '2020-01-13 10:19:51', '2020-01-13 10:19:51');
INSERT INTO `pp_user_focus` VALUES (606, 104, 119, 2, '2020-01-13 10:19:51', '2020-01-13 10:19:51');
INSERT INTO `pp_user_focus` VALUES (607, 119, 95, 1, '2020-01-13 10:19:52', '2020-01-13 10:19:52');
INSERT INTO `pp_user_focus` VALUES (608, 95, 119, 2, '2020-01-13 10:19:52', '2020-01-13 10:19:52');
INSERT INTO `pp_user_focus` VALUES (609, 119, 108, 1, '2020-01-13 10:19:52', '2020-01-13 10:19:52');
INSERT INTO `pp_user_focus` VALUES (610, 108, 119, 2, '2020-01-13 10:19:52', '2020-01-13 10:19:52');
INSERT INTO `pp_user_focus` VALUES (611, 119, 106, 1, '2020-01-13 10:19:53', '2020-01-13 10:19:53');
INSERT INTO `pp_user_focus` VALUES (612, 106, 119, 2, '2020-01-13 10:19:53', '2020-01-13 10:19:53');
INSERT INTO `pp_user_focus` VALUES (613, 119, 107, 1, '2020-01-13 10:19:53', '2020-01-13 10:19:53');
INSERT INTO `pp_user_focus` VALUES (614, 107, 119, 2, '2020-01-13 10:19:53', '2020-01-13 10:19:53');
INSERT INTO `pp_user_focus` VALUES (615, 120, 22, 1, '2020-01-13 10:45:22', '2020-01-13 10:45:22');
INSERT INTO `pp_user_focus` VALUES (616, 22, 120, 2, '2020-01-13 10:45:22', '2020-01-13 10:45:22');
INSERT INTO `pp_user_focus` VALUES (617, 120, 23, 1, '2020-01-13 10:45:22', '2020-01-13 10:45:22');
INSERT INTO `pp_user_focus` VALUES (618, 23, 120, 2, '2020-01-13 10:45:22', '2020-01-13 10:45:22');
INSERT INTO `pp_user_focus` VALUES (619, 120, 24, 1, '2020-01-13 10:45:23', '2020-01-13 10:45:23');
INSERT INTO `pp_user_focus` VALUES (620, 24, 120, 2, '2020-01-13 10:45:23', '2020-01-13 10:45:23');
INSERT INTO `pp_user_focus` VALUES (621, 120, 26, 1, '2020-01-13 10:45:23', '2020-01-13 10:45:23');
INSERT INTO `pp_user_focus` VALUES (622, 26, 120, 2, '2020-01-13 10:45:23', '2020-01-13 10:45:23');
INSERT INTO `pp_user_focus` VALUES (623, 120, 27, 1, '2020-01-13 10:45:24', '2020-01-13 10:45:24');
INSERT INTO `pp_user_focus` VALUES (624, 27, 120, 2, '2020-01-13 10:45:24', '2020-01-13 10:45:24');
INSERT INTO `pp_user_focus` VALUES (625, 120, 35, 1, '2020-01-13 10:45:24', '2020-01-13 10:45:24');
INSERT INTO `pp_user_focus` VALUES (626, 35, 120, 2, '2020-01-13 10:45:24', '2020-01-13 10:45:24');
INSERT INTO `pp_user_focus` VALUES (627, 120, 37, 1, '2020-01-13 10:45:25', '2020-01-13 10:45:25');
INSERT INTO `pp_user_focus` VALUES (628, 37, 120, 2, '2020-01-13 10:45:25', '2020-01-13 10:45:25');
INSERT INTO `pp_user_focus` VALUES (629, 120, 52, 1, '2020-01-13 10:45:25', '2020-01-13 10:45:25');
INSERT INTO `pp_user_focus` VALUES (630, 52, 120, 2, '2020-01-13 10:45:25', '2020-01-13 10:45:25');
INSERT INTO `pp_user_focus` VALUES (631, 120, 53, 1, '2020-01-13 10:45:26', '2020-01-13 10:45:26');
INSERT INTO `pp_user_focus` VALUES (632, 53, 120, 2, '2020-01-13 10:45:26', '2020-01-13 10:45:26');

-- ----------------------------
-- Table structure for pp_user_whistle_blowing
-- ----------------------------
DROP TABLE IF EXISTS `pp_user_whistle_blowing`;
CREATE TABLE `pp_user_whistle_blowing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `report_user_id` bigint(20) NULL DEFAULT NULL COMMENT '被举报用户id',
  `report_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '举报内容',
  `report_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '举报类型',
  `report_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '举报图片',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户举报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_user_whistle_blowing
-- ----------------------------
INSERT INTO `pp_user_whistle_blowing` VALUES (6, 22, 23, '我举报了你', NULL, NULL, '2019-12-11 16:33:51');
INSERT INTO `pp_user_whistle_blowing` VALUES (7, 22, 23, '我举报了你', NULL, NULL, '2019-12-12 10:21:45');
INSERT INTO `pp_user_whistle_blowing` VALUES (9, 22, 52, '我举报了你', '涉黄', NULL, '2019-12-12 10:22:26');
INSERT INTO `pp_user_whistle_blowing` VALUES (10, 22, 23, '我举报了你', '涉黄', NULL, '2019-12-12 10:22:27');
INSERT INTO `pp_user_whistle_blowing` VALUES (11, 36, 23, '我举报了你', '涉黄', NULL, '2019-12-24 14:17:53');
INSERT INTO `pp_user_whistle_blowing` VALUES (12, 35, 185, '111111', '更多', NULL, '2019-12-28 11:34:12');
INSERT INTO `pp_user_whistle_blowing` VALUES (13, 37, 206, '1111', '辱骂', NULL, '2019-12-30 11:22:39');
INSERT INTO `pp_user_whistle_blowing` VALUES (14, 114, 301, '什么', '更多', NULL, '2020-01-11 17:41:47');

-- ----------------------------
-- Table structure for pp_vip_order
-- ----------------------------
DROP TABLE IF EXISTS `pp_vip_order`;
CREATE TABLE `pp_vip_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(11) NULL DEFAULT NULL,
  `order_number` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `member_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开通多长时间',
  `member_second_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间类型',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `buy_time` datetime(0) NULL DEFAULT NULL COMMENT '购买时间',
  `lose_time` datetime(0) NULL DEFAULT NULL COMMENT '失效时间',
  `current_price` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开通金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员开通记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_vip_order
-- ----------------------------
INSERT INTO `pp_vip_order` VALUES (2, 66, '123456', '1', 'day', '2019-12-23 14:57:51', '2019-12-23 00:00:00', '2020-01-02 00:00:00', NULL);
INSERT INTO `pp_vip_order` VALUES (7, 23, '1234567', '2', 'day', '2020-01-04 11:05:58', '2019-12-30 09:54:20', '2020-01-01 09:53:58', NULL);
INSERT INTO `pp_vip_order` VALUES (8, 22, NULL, NULL, NULL, NULL, '2019-12-30 09:55:51', '2020-01-01 09:55:49', NULL);
INSERT INTO `pp_vip_order` VALUES (13, 37, 'DD202001061578308763023', '1', 'month', '2020-01-06 19:06:03', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (15, 37, 'DD202001061578309101626', '1', 'month', '2020-01-06 19:11:42', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (16, 37, 'DD202001061578309139198', NULL, NULL, '2020-01-06 19:12:20', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (17, 37, 'DD202001061578309141946', NULL, NULL, '2020-01-06 19:12:23', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (18, 37, 'DD202001061578309143128', NULL, NULL, '2020-01-06 19:12:24', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (19, 37, 'DD202001061578309143648', NULL, NULL, '2020-01-06 19:12:24', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (20, 37, 'DD202001061578309152913', NULL, NULL, '2020-01-06 19:12:34', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (21, 37, 'DD202001061578309153654', NULL, NULL, '2020-01-06 19:12:34', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (22, 37, 'DD202001061578309235927', NULL, NULL, '2020-01-06 19:13:56', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (23, 37, 'DD202001061578309428243', NULL, NULL, '2020-01-06 19:17:09', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (24, 37, 'DD202001061578309502481', NULL, NULL, '2020-01-06 19:18:23', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (25, 37, 'DD202001061578309913629', NULL, NULL, '2020-01-06 19:25:14', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (26, 37, 'DD202001061578309914317', NULL, NULL, '2020-01-06 19:25:14', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (27, 37, 'DD202001061578309914730', NULL, NULL, '2020-01-06 19:25:15', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (28, 37, 'DD202001061578309914924', NULL, NULL, '2020-01-06 19:25:15', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (29, 37, 'DD202001061578309915417', NULL, NULL, '2020-01-06 19:25:16', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (30, 37, 'DD202001061578309915607', NULL, NULL, '2020-01-06 19:25:16', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (31, 37, 'DD202001061578309915790', NULL, NULL, '2020-01-06 19:25:16', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (32, 37, 'DD202001061578309916269', NULL, NULL, '2020-01-06 19:25:16', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (33, 37, 'DD202001061578309916467', NULL, NULL, '2020-01-06 19:25:17', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (34, 37, 'DD202001061578309916589', NULL, NULL, '2020-01-06 19:25:17', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (35, 37, 'DD202001061578309921556', '6', 'month', '2020-01-06 19:25:22', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (36, 80, 'DD202001061578310823138', NULL, NULL, '2020-01-06 19:40:23', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (37, 76, 'DD202001071578376186838', '1', 'month', '2020-01-07 13:49:47', NULL, NULL, '0.01');
INSERT INTO `pp_vip_order` VALUES (38, 76, 'DD202001071578376657180', '1', 'month', '2020-01-07 13:57:37', NULL, NULL, '0.01');
INSERT INTO `pp_vip_order` VALUES (39, 76, 'DD202001071578377112360', '1', 'month', '2020-01-07 14:05:12', NULL, NULL, '0.01');
INSERT INTO `pp_vip_order` VALUES (40, 76, 'DD202001071578377923645', '1', 'month', '2020-01-07 14:18:44', NULL, NULL, '0.01');
INSERT INTO `pp_vip_order` VALUES (41, 86, 'DD202001071578381859768', NULL, NULL, '2020-01-07 15:24:20', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (42, 86, 'DD202001071578381874143', NULL, NULL, '2020-01-07 15:24:34', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (43, 86, 'DD202001071578381874417', NULL, NULL, '2020-01-07 15:24:35', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (44, 86, 'DD202001071578381874943', NULL, NULL, '2020-01-07 15:24:35', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (45, 86, 'DD202001071578381879568', '6', 'month', '2020-01-07 15:24:40', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (46, 86, 'DD202001071578381905288', '12', 'month', '2020-01-07 15:25:05', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (47, 76, 'DD202001071578383677118', '1', 'month', '2020-01-07 15:54:37', NULL, NULL, NULL);
INSERT INTO `pp_vip_order` VALUES (48, 86, 'DD202001101578622897704', NULL, NULL, '2020-01-10 10:21:38', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (49, 86, 'DD202001101578622904655', NULL, NULL, '2020-01-10 10:21:45', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (50, 86, 'DD202001101578622909096', NULL, NULL, '2020-01-10 10:21:49', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (51, 86, 'DD202001101578622912332', '6', 'month', '2020-01-10 10:21:52', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (52, 86, 'DD202001101578623057189', '1', 'month', '2020-01-10 10:24:17', NULL, NULL, '0.01');
INSERT INTO `pp_vip_order` VALUES (53, 60, 'DD202001101578646575800', NULL, NULL, '2020-01-10 16:56:16', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (54, 60, 'DD202001101578646577054', NULL, NULL, '2020-01-10 16:56:17', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (55, 60, 'DD202001101578646577946', NULL, NULL, '2020-01-10 16:56:18', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (56, 60, 'DD202001101578646578689', NULL, NULL, '2020-01-10 16:56:19', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (57, 60, 'DD202001101578646579366', NULL, NULL, '2020-01-10 16:56:20', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (58, 60, 'DD202001101578646580293', NULL, NULL, '2020-01-10 16:56:20', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (59, 60, 'DD202001101578646580519', NULL, NULL, '2020-01-10 16:56:21', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (60, 60, 'DD202001101578646581130', NULL, NULL, '2020-01-10 16:56:21', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (61, 60, 'DD202001101578646581396', NULL, NULL, '2020-01-10 16:56:22', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (62, 60, 'DD202001101578646582676', '6', 'month', '2020-01-10 16:56:23', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (63, 60, 'DD202001101578646593427', NULL, NULL, '2020-01-10 16:56:34', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (64, 60, 'DD202001101578646593797', NULL, NULL, '2020-01-10 16:56:34', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (65, 60, 'DD202001101578646594208', NULL, NULL, '2020-01-10 16:56:34', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (66, 60, 'DD202001101578646594379', NULL, NULL, '2020-01-10 16:56:35', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (67, 60, 'DD202001101578646594763', NULL, NULL, '2020-01-10 16:56:35', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (68, 60, 'DD202001101578646595397', NULL, NULL, '2020-01-10 16:56:36', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (69, 60, 'DD202001101578646595575', NULL, NULL, '2020-01-10 16:56:36', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (70, 60, 'DD202001101578646595759', NULL, NULL, '2020-01-10 16:56:36', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (71, 60, 'DD202001101578646596890', '6', 'month', '2020-01-10 16:56:37', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (72, 60, 'DD202001101578646600436', NULL, NULL, '2020-01-10 16:56:41', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (73, 60, 'DD202001101578646600767', NULL, NULL, '2020-01-10 16:56:41', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (74, 60, 'DD202001101578646600954', NULL, NULL, '2020-01-10 16:56:41', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (75, 60, 'DD202001101578646601115', NULL, NULL, '2020-01-10 16:56:41', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (76, 60, 'DD202001101578646601309', NULL, NULL, '2020-01-10 16:56:41', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (77, 60, 'DD202001101578646601522', NULL, NULL, '2020-01-10 16:56:42', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (78, 60, 'DD202001101578646602164', NULL, NULL, '2020-01-10 16:56:42', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (79, 60, 'DD202001101578646602347', NULL, NULL, '2020-01-10 16:56:43', NULL, NULL, '50');
INSERT INTO `pp_vip_order` VALUES (80, 113, 'DD202001111578727685964', '1', 'month', '2020-01-11 15:28:06', NULL, NULL, '0.01');

-- ----------------------------
-- Table structure for pp_withdraw_record
-- ----------------------------
DROP TABLE IF EXISTS `pp_withdraw_record`;
CREATE TABLE `pp_withdraw_record`  (
  `withdraw_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '提现记录表',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `withdraw_way` tinyint(1) NOT NULL COMMENT '提现方式(1:微信 2:支付宝)',
  `withdraw_gold` decimal(10, 2) NULL DEFAULT NULL COMMENT '提现金额',
  `withdraw_account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提现账户',
  `withdraw_status` tinyint(1) NULL DEFAULT 1 COMMENT '提现状态(0:审核不通过 1:审核中 2:审核通过 3:已打款)',
  `withdraw_time` datetime(0) NULL DEFAULT NULL COMMENT '提现时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `withdraw_cause` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拒绝原因',
  PRIMARY KEY (`withdraw_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户提现记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pp_withdraw_record
-- ----------------------------
INSERT INTO `pp_withdraw_record` VALUES (34, 37, 2, 200.00, '13015535410', 1, '2020-01-06 17:07:21', NULL, NULL);
INSERT INTO `pp_withdraw_record` VALUES (35, 37, 1, 100.00, '13015535410', 1, '2020-01-06 17:07:35', NULL, NULL);
INSERT INTO `pp_withdraw_record` VALUES (36, 81, 2, 100.00, '13673379816', 1, '2020-01-08 17:55:29', NULL, NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('pengpengScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('pengpengScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('pengpengScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('pengpengScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.pengpeng.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720021636F6D2E70656E6770656E672E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002A636F6D2E70656E6770656E672E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('pengpengScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.pengpeng.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720021636F6D2E70656E6770656E672E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002A636F6D2E70656E6770656E672E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('pengpengScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.pengpeng.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720021636F6D2E70656E6770656E672E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002A636F6D2E70656E6770656E672E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('pengpengScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('pengpengScheduler', 'TRIGGER_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('pengpengScheduler', 'D41MEDVGMOODA5A1578879831464', 1578884568906, 15000);
INSERT INTO `qrtz_scheduler_state` VALUES ('pengpengScheduler', 'USER-20190918E21578879366109', 1578884562380, 15000);
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'USER-20190918E21576484951653', 1576484970016, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('pengpengScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1578879840000, -1, 5, 'PAUSED', 'CRON', 1578879832000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('pengpengScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1578879840000, -1, 5, 'PAUSED', 'CRON', 1578879832000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('pengpengScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1578879840000, -1, 5, 'PAUSED', 'CRON', 1578879832000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1576484960000, -1, 5, 'PAUSED', 'CRON', 1576484951000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1576484955000, -1, 5, 'PAUSED', 'CRON', 1576484951000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1576484960000, -1, 5, 'PAUSED', 'CRON', 1576484952000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_city
-- ----------------------------
DROP TABLE IF EXISTS `sys_city`;
CREATE TABLE `sys_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NULL DEFAULT NULL COMMENT '国家id',
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_city
-- ----------------------------
INSERT INTO `sys_city` VALUES (1, 37, '河南');
INSERT INTO `sys_city` VALUES (2, 37, '湖北');
INSERT INTO `sys_city` VALUES (3, 37, '北京');
INSERT INTO `sys_city` VALUES (4, 37, '陕西');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-11-08 13:57:03', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2019-11-08 13:43:51', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_country
-- ----------------------------
DROP TABLE IF EXISTS `sys_country`;
CREATE TABLE `sys_country`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家名称',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_country
-- ----------------------------
INSERT INTO `sys_country` VALUES (1, '安哥拉', '0244');
INSERT INTO `sys_country` VALUES (2, '阿富汗', '93');
INSERT INTO `sys_country` VALUES (3, '阿尔巴尼亚', '335');
INSERT INTO `sys_country` VALUES (4, '阿尔及利亚', '213');
INSERT INTO `sys_country` VALUES (5, '安道尔共和国', '376');
INSERT INTO `sys_country` VALUES (6, '安圭拉岛', '1254');
INSERT INTO `sys_country` VALUES (7, '安提瓜和巴布达', '1268');
INSERT INTO `sys_country` VALUES (8, '阿根廷', '54');
INSERT INTO `sys_country` VALUES (9, '亚美尼亚', '374');
INSERT INTO `sys_country` VALUES (10, '阿森松', '247');
INSERT INTO `sys_country` VALUES (11, '澳大利亚', '61');
INSERT INTO `sys_country` VALUES (12, '奥地利', '43');
INSERT INTO `sys_country` VALUES (13, '阿塞拜疆', '994');
INSERT INTO `sys_country` VALUES (14, '巴哈马', '1242');
INSERT INTO `sys_country` VALUES (15, '巴林', '973');
INSERT INTO `sys_country` VALUES (16, '孟加拉国', '880');
INSERT INTO `sys_country` VALUES (17, '巴巴多斯', '1246');
INSERT INTO `sys_country` VALUES (18, '白俄罗斯', '375');
INSERT INTO `sys_country` VALUES (19, '比利时', '32');
INSERT INTO `sys_country` VALUES (20, '伯利兹', '501');
INSERT INTO `sys_country` VALUES (21, '贝宁', '229');
INSERT INTO `sys_country` VALUES (22, '百慕大群岛', '1441');
INSERT INTO `sys_country` VALUES (23, '玻利维亚', '591');
INSERT INTO `sys_country` VALUES (24, '博茨瓦纳', '267');
INSERT INTO `sys_country` VALUES (25, '巴西', '55');
INSERT INTO `sys_country` VALUES (26, '文莱', '673');
INSERT INTO `sys_country` VALUES (27, '保加利亚', '359');
INSERT INTO `sys_country` VALUES (28, '布基纳法索', '226');
INSERT INTO `sys_country` VALUES (29, '缅甸', '95');
INSERT INTO `sys_country` VALUES (30, '布隆迪', '257');
INSERT INTO `sys_country` VALUES (31, '喀麦隆', '237');
INSERT INTO `sys_country` VALUES (32, '加拿大', '1');
INSERT INTO `sys_country` VALUES (33, '开曼群岛', '1345');
INSERT INTO `sys_country` VALUES (34, '中非共和国', '236');
INSERT INTO `sys_country` VALUES (35, '乍得', '235');
INSERT INTO `sys_country` VALUES (36, '智利', '56');
INSERT INTO `sys_country` VALUES (37, '中国', '86');
INSERT INTO `sys_country` VALUES (38, '哥伦比亚', '57');
INSERT INTO `sys_country` VALUES (39, '刚果', '242');
INSERT INTO `sys_country` VALUES (40, '库克群岛', '682');
INSERT INTO `sys_country` VALUES (41, '哥斯达黎加', '506');
INSERT INTO `sys_country` VALUES (42, '古巴', '53');
INSERT INTO `sys_country` VALUES (43, '塞浦路斯', '357');
INSERT INTO `sys_country` VALUES (44, '捷克', '420');
INSERT INTO `sys_country` VALUES (45, '丹麦', '45');
INSERT INTO `sys_country` VALUES (46, '吉布提', '253');
INSERT INTO `sys_country` VALUES (47, '多米尼加共和国', '1890');
INSERT INTO `sys_country` VALUES (48, '厄瓜多尔', '593');
INSERT INTO `sys_country` VALUES (49, '埃及', '20');
INSERT INTO `sys_country` VALUES (50, '萨尔瓦多', '503');
INSERT INTO `sys_country` VALUES (51, '爱沙尼亚', '372');
INSERT INTO `sys_country` VALUES (52, '埃塞俄比亚', '251');
INSERT INTO `sys_country` VALUES (53, '斐济', '679');
INSERT INTO `sys_country` VALUES (54, '芬兰', '358');
INSERT INTO `sys_country` VALUES (55, '法国', '33');
INSERT INTO `sys_country` VALUES (56, '法属圭亚那', '594');
INSERT INTO `sys_country` VALUES (57, '法属玻利尼西亚', '689');
INSERT INTO `sys_country` VALUES (58, '加蓬', '241');
INSERT INTO `sys_country` VALUES (59, '冈比亚', '220');
INSERT INTO `sys_country` VALUES (60, '格鲁吉亚', '995');
INSERT INTO `sys_country` VALUES (61, '德国', '49');
INSERT INTO `sys_country` VALUES (62, '加纳', '233');
INSERT INTO `sys_country` VALUES (63, '直布罗陀', '350');
INSERT INTO `sys_country` VALUES (64, '希腊', '30');
INSERT INTO `sys_country` VALUES (65, '格林纳达', '1809');
INSERT INTO `sys_country` VALUES (66, '关岛', '1671');
INSERT INTO `sys_country` VALUES (67, '危地马拉', '502');
INSERT INTO `sys_country` VALUES (68, '几内亚', '224');
INSERT INTO `sys_country` VALUES (69, '圭亚那', '592');
INSERT INTO `sys_country` VALUES (70, '海地', '509');
INSERT INTO `sys_country` VALUES (71, '洪都拉斯', '504');
INSERT INTO `sys_country` VALUES (72, '香港', '852');
INSERT INTO `sys_country` VALUES (73, '匈牙利', '36');
INSERT INTO `sys_country` VALUES (74, '冰岛', '354');
INSERT INTO `sys_country` VALUES (75, '印度', '91');
INSERT INTO `sys_country` VALUES (76, '印度尼西亚', '62');
INSERT INTO `sys_country` VALUES (77, '伊朗', '98');
INSERT INTO `sys_country` VALUES (78, '伊拉克', '964');
INSERT INTO `sys_country` VALUES (79, '爱尔兰', '353');
INSERT INTO `sys_country` VALUES (80, '以色列', '972');
INSERT INTO `sys_country` VALUES (81, '意大利', '39');
INSERT INTO `sys_country` VALUES (82, '科特迪瓦', '225');
INSERT INTO `sys_country` VALUES (83, '牙买加', '1876');
INSERT INTO `sys_country` VALUES (84, '日本', '81');
INSERT INTO `sys_country` VALUES (85, '约旦', '962');
INSERT INTO `sys_country` VALUES (86, '柬埔寨', '855');
INSERT INTO `sys_country` VALUES (87, '哈萨克斯坦', '327');
INSERT INTO `sys_country` VALUES (88, '肯尼亚', '254');
INSERT INTO `sys_country` VALUES (89, '韩国', '82');
INSERT INTO `sys_country` VALUES (90, '科威特', '965');
INSERT INTO `sys_country` VALUES (91, '吉尔吉斯坦', '331');
INSERT INTO `sys_country` VALUES (92, '老挝', '856');
INSERT INTO `sys_country` VALUES (93, '拉脱维亚', '371');
INSERT INTO `sys_country` VALUES (94, '黎巴嫩', '961');
INSERT INTO `sys_country` VALUES (95, '莱索托', '266');
INSERT INTO `sys_country` VALUES (96, '利比里亚', '231');
INSERT INTO `sys_country` VALUES (97, '利比亚', '218');
INSERT INTO `sys_country` VALUES (98, '列支敦士登', '');
INSERT INTO `sys_country` VALUES (99, '立陶宛', '370');
INSERT INTO `sys_country` VALUES (100, '卢森堡', '352');
INSERT INTO `sys_country` VALUES (101, '澳门', '853');
INSERT INTO `sys_country` VALUES (102, '马达加斯加', '261');
INSERT INTO `sys_country` VALUES (103, '马拉维', '265');
INSERT INTO `sys_country` VALUES (104, '马来西亚', '60');
INSERT INTO `sys_country` VALUES (105, '马尔代夫', '960');
INSERT INTO `sys_country` VALUES (106, '马里', '223');
INSERT INTO `sys_country` VALUES (107, '马耳他', '356');
INSERT INTO `sys_country` VALUES (108, '马里亚那群岛', '1670');
INSERT INTO `sys_country` VALUES (109, '马提尼克', '596');
INSERT INTO `sys_country` VALUES (110, '毛里求斯', '230');
INSERT INTO `sys_country` VALUES (111, '墨西哥', '52');
INSERT INTO `sys_country` VALUES (112, '摩尔多瓦', '373');
INSERT INTO `sys_country` VALUES (113, '摩纳哥', '377');
INSERT INTO `sys_country` VALUES (114, '蒙古', '976');
INSERT INTO `sys_country` VALUES (115, '蒙特塞拉特岛', '1664');
INSERT INTO `sys_country` VALUES (116, '摩洛哥', '212');
INSERT INTO `sys_country` VALUES (117, '莫桑比克', '258');
INSERT INTO `sys_country` VALUES (118, '纳米比亚', '264');
INSERT INTO `sys_country` VALUES (119, '瑙鲁', '674');
INSERT INTO `sys_country` VALUES (120, '尼泊尔', '977');
INSERT INTO `sys_country` VALUES (121, '荷属安的列斯', '599');
INSERT INTO `sys_country` VALUES (122, '荷兰', '31');
INSERT INTO `sys_country` VALUES (123, '新西兰', '64');
INSERT INTO `sys_country` VALUES (124, '尼加拉瓜', '505');
INSERT INTO `sys_country` VALUES (125, '尼日尔', '227');
INSERT INTO `sys_country` VALUES (126, '尼日利亚', '234');
INSERT INTO `sys_country` VALUES (127, '朝鲜', '850');
INSERT INTO `sys_country` VALUES (128, '挪威', '47');
INSERT INTO `sys_country` VALUES (129, '阿曼', '968');
INSERT INTO `sys_country` VALUES (130, '巴基斯坦', '92');
INSERT INTO `sys_country` VALUES (131, '巴拿马', '507');
INSERT INTO `sys_country` VALUES (132, '巴布亚新几内亚', '675');
INSERT INTO `sys_country` VALUES (133, '巴拉圭', '595');
INSERT INTO `sys_country` VALUES (134, '秘鲁', '51');
INSERT INTO `sys_country` VALUES (135, '菲律宾', '63');
INSERT INTO `sys_country` VALUES (136, '波兰', '48');
INSERT INTO `sys_country` VALUES (137, '葡萄牙', '351');
INSERT INTO `sys_country` VALUES (138, '波多黎各', '1787');
INSERT INTO `sys_country` VALUES (139, '卡塔尔', '974');
INSERT INTO `sys_country` VALUES (140, '留尼旺', '262');
INSERT INTO `sys_country` VALUES (141, '罗马尼亚', '40');
INSERT INTO `sys_country` VALUES (142, '俄罗斯', '7');
INSERT INTO `sys_country` VALUES (143, '圣卢西亚', '1758');
INSERT INTO `sys_country` VALUES (144, '圣文森特岛', '1784');
INSERT INTO `sys_country` VALUES (145, '东萨摩亚(美)', '684');
INSERT INTO `sys_country` VALUES (146, '西萨摩亚', '685');
INSERT INTO `sys_country` VALUES (147, '圣马力诺', '378');
INSERT INTO `sys_country` VALUES (148, '圣多美和普林西比', '239');
INSERT INTO `sys_country` VALUES (149, '沙特阿拉伯', '966');
INSERT INTO `sys_country` VALUES (150, '塞内加尔', '221');
INSERT INTO `sys_country` VALUES (151, '塞舌尔', '248');
INSERT INTO `sys_country` VALUES (152, '塞拉利昂', '232');
INSERT INTO `sys_country` VALUES (153, '新加坡', '65');
INSERT INTO `sys_country` VALUES (154, '斯洛伐克', '421');
INSERT INTO `sys_country` VALUES (155, '斯洛文尼亚', '386');
INSERT INTO `sys_country` VALUES (156, '所罗门群岛', '677');
INSERT INTO `sys_country` VALUES (157, '索马里', '252');
INSERT INTO `sys_country` VALUES (158, '南非', '27');
INSERT INTO `sys_country` VALUES (159, '西班牙', '34');
INSERT INTO `sys_country` VALUES (160, '斯里兰卡', '94');
INSERT INTO `sys_country` VALUES (161, '圣卢西亚', '1758');
INSERT INTO `sys_country` VALUES (162, '圣文森特', '1784');
INSERT INTO `sys_country` VALUES (163, '苏丹', '249');
INSERT INTO `sys_country` VALUES (164, '苏里南', '597');
INSERT INTO `sys_country` VALUES (165, '斯威士兰', '268');
INSERT INTO `sys_country` VALUES (166, '瑞典', '46');
INSERT INTO `sys_country` VALUES (167, '瑞士', '41');
INSERT INTO `sys_country` VALUES (168, '叙利亚', '963');
INSERT INTO `sys_country` VALUES (169, '台湾省', '886');
INSERT INTO `sys_country` VALUES (170, '塔吉克斯坦', '992');
INSERT INTO `sys_country` VALUES (171, '坦桑尼亚', '255');
INSERT INTO `sys_country` VALUES (172, '泰国', '66');
INSERT INTO `sys_country` VALUES (173, '多哥', '228');
INSERT INTO `sys_country` VALUES (174, '汤加', '676');
INSERT INTO `sys_country` VALUES (175, '特立尼达和多巴哥', '1809');
INSERT INTO `sys_country` VALUES (176, '突尼斯', '216');
INSERT INTO `sys_country` VALUES (177, '土耳其', '90');
INSERT INTO `sys_country` VALUES (178, '土库曼斯坦', '993');
INSERT INTO `sys_country` VALUES (179, '乌干达', '256');
INSERT INTO `sys_country` VALUES (180, '乌克兰', '380');
INSERT INTO `sys_country` VALUES (181, '阿拉伯联合酋长国', '971');
INSERT INTO `sys_country` VALUES (182, '英国', '44');
INSERT INTO `sys_country` VALUES (183, '美国', '1');
INSERT INTO `sys_country` VALUES (184, '乌拉圭', '598');
INSERT INTO `sys_country` VALUES (185, '乌兹别克斯坦', '233');
INSERT INTO `sys_country` VALUES (186, '委内瑞拉', '58');
INSERT INTO `sys_country` VALUES (187, '越南', '84');
INSERT INTO `sys_country` VALUES (188, '也门', '967');
INSERT INTO `sys_country` VALUES (189, '南斯拉夫', '381');
INSERT INTO `sys_country` VALUES (190, '津巴布韦', '263');
INSERT INTO `sys_country` VALUES (191, '扎伊尔', '243');
INSERT INTO `sys_country` VALUES (192, '赞比亚', '260');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (51, 1, '瑜伽', '瑜伽', 'sys_hobby_exercise', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:51:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (52, 2, '舞蹈', '舞蹈', 'sys_hobby_exercise', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:51:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (53, 3, '篮球', '篮球', 'sys_hobby_exercise', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:53:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (54, 1, '国内游', '国内游', 'sys_hobby_travel', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:56:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (55, 2, '国外游', '国外游', 'sys_hobby_travel', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:56:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (56, 3, '户外探险', '户外探险', 'sys_hobby_travel', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:56:38', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (57, 1, '程序员', '程序员', 'sys_occupation', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:58:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (58, 2, '医生', '医生', 'sys_occupation', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:58:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (59, 1, 'SM', 'SM', 'sys_attribute', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:59:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (60, 2, 'BM', 'BM', 'sys_attribute', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:59:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (61, 1, '单身', '单身', 'sys_affective_state', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:59:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (62, 2, '已婚', '已婚', 'sys_affective_state', NULL, NULL, 'N', '0', 'admin', '2019-12-16 17:00:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (63, 1, '交朋友', '交朋友', 'sys_make_friends_purpose', NULL, NULL, 'N', '0', 'admin', '2019-12-16 17:03:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (64, 2, '打游戏', '打游戏', 'sys_make_friends_purpose', NULL, NULL, 'N', '0', 'admin', '2019-12-16 17:03:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (65, 2, '长度1', '100', 'sys_find_range', NULL, NULL, 'N', '0', 'admin', '2019-12-17 16:35:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (66, 3, '长度2', '200', 'sys_find_range', NULL, NULL, 'N', '0', 'admin', '2019-12-17 16:35:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (67, 4, '长度3', '320', 'sys_find_range', NULL, NULL, 'N', '0', 'admin', '2019-12-17 16:35:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (68, 1, 'min', '15', 'sys_find_age', NULL, NULL, 'N', '0', 'admin', '2019-12-17 16:49:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (69, 2, 'max', '55', 'sys_find_age', NULL, NULL, 'N', '0', 'admin', '2019-12-17 16:49:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (70, 4, '乒乓球', '乒乓球', 'sys_hobby_exercise', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:53:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (71, 5, '台球', '台球', 'sys_hobby_exercise', NULL, NULL, 'N', '0', 'admin', '2019-12-16 16:53:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (72, 1, 'Url', 'http://api.isms.ihuyi.com/webservice/isms.php?method=Submit', 'hy_short_message', '', 'default', 'N', '0', 'admin', '2019-12-25 09:45:50', 'admin', '2020-01-04 18:58:15', 'url地址配置');
INSERT INTO `sys_dict_data` VALUES (73, 2, 'APIID', 'I05595398', 'hy_short_message', '', 'default', 'N', '0', 'admin', '2019-12-25 09:46:12', 'admin', '2020-01-04 18:58:13', 'APIID配置');
INSERT INTO `sys_dict_data` VALUES (74, 3, 'APIKEY', '9d529a0c12d12e1b7f10cb8cd365bab1', 'hy_short_message', '1', 'default', 'N', '0', 'admin', '2019-12-25 09:46:32', 'admin', '2020-01-04 18:58:12', 'APIKEY配置');
INSERT INTO `sys_dict_data` VALUES (77, 1, 'ACCESS_KEY', 'Oy63b47SsWt-2-CT5PLLhKl3YuweeuV4PJhpL0KS', 'qiniu_storage', '', 'default', 'N', '0', 'admin', '2019-12-25 10:22:37', 'admin', '2020-01-04 18:57:41', 'ACCESS_KEY配置');
INSERT INTO `sys_dict_data` VALUES (78, 2, 'SECRET_KEY', 'dov6bhSYXXMGP0sxplLVTjwTy7dZYBeRUKbIsPVa', 'qiniu_storage', '', 'default', 'N', '0', 'admin', '2019-12-25 10:22:58', 'admin', '2020-01-06 10:35:13', 'SECRET_KEY配置');
INSERT INTO `sys_dict_data` VALUES (79, 3, 'bucketname', 'ppfiles', 'qiniu_storage', '', '', 'N', '0', 'admin', '2019-12-25 10:23:26', 'admin', '2020-01-04 18:57:38', '空间名称配置');
INSERT INTO `sys_dict_data` VALUES (80, 4, 'DOMAIN', 'http://insgle.huaren58.com/', 'qiniu_storage', '', 'default', 'N', '0', 'admin', '2019-12-25 10:24:03', 'admin', '2020-01-06 10:34:58', '前缀域名配置');
INSERT INTO `sys_dict_data` VALUES (81, 1, 'sdkappid', '1400294073', 'tencent_im', '', '', 'N', '0', 'admin', '2019-12-25 15:13:02', 'admin', '2020-01-04 18:58:02', '');
INSERT INTO `sys_dict_data` VALUES (82, 2, 'key', '7be791b2df914bfc08e5cf7907c3781813e500dec19a8e51d76af5811c787cbe', 'tencent_im', '', '', 'N', '0', 'admin', '2019-12-25 15:14:01', 'admin', '2020-01-04 18:58:00', '');
INSERT INTO `sys_dict_data` VALUES (84, 3, '不限', '不限', 'sys_affective_state', NULL, NULL, 'N', '0', 'admin', '2020-01-10 18:10:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (85, 3, '不限', '不限', 'sys_attribute', NULL, NULL, 'N', '0', 'admin', '2020-01-10 18:10:25', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (86, 6, '分', '分', 'sys_affective_state', NULL, NULL, 'N', '0', 'admin', '2020-01-11 09:47:13', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (18, '运动', 'sys_hobby_exercise', '0', 'admin', '2019-12-16 16:32:48', 'admin', '2019-12-16 16:50:07', '爱好运动列表');
INSERT INTO `sys_dict_type` VALUES (19, '旅行', 'sys_hobby_travel', '0', 'admin', '2019-12-16 16:56:04', '', NULL, '爱好 旅行');
INSERT INTO `sys_dict_type` VALUES (20, '职业', 'sys_occupation', '0', 'admin', '2019-12-16 16:58:07', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (21, '属性', 'sys_attribute', '0', 'admin', '2019-12-16 16:58:58', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (22, '情感状态', 'sys_affective_state', '0', 'admin', '2019-12-16 16:59:39', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (23, '交友目的', 'sys_make_friends_purpose', '0', 'admin', '2019-12-16 17:02:57', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (24, '发现范围设置', 'sys_find_range', '0', 'admin', '2019-12-17 16:11:48', '', NULL, '发现范围设置');
INSERT INTO `sys_dict_type` VALUES (25, '发现年龄', 'sys_find_age', '0', 'admin', '2019-12-17 16:49:06', '', NULL, '发现年龄');
INSERT INTO `sys_dict_type` VALUES (26, '腾讯IM配置', 'tencent_im', '0', 'admin', '2019-12-25 09:40:58', 'admin', '2019-12-25 09:42:56', '腾讯IM配置信息');
INSERT INTO `sys_dict_type` VALUES (27, '互亿短信配置', 'hy_short_message', '0', 'admin', '2019-12-25 09:42:45', '', NULL, '互亿短信配置信息');
INSERT INTO `sys_dict_type` VALUES (28, '七牛云配置', 'qiniu_storage', '0', 'admin', '2019-12-25 09:44:03', 'admin', '2019-12-25 09:49:02', '七牛云配置信息');

-- ----------------------------
-- Table structure for sys_district
-- ----------------------------
DROP TABLE IF EXISTS `sys_district`;
CREATE TABLE `sys_district`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NULL DEFAULT NULL,
  `district` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `city_id`(`city_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_district
-- ----------------------------
INSERT INTO `sys_district` VALUES (1, 1, '郑州');
INSERT INTO `sys_district` VALUES (2, 1, '洛阳');
INSERT INTO `sys_district` VALUES (3, 3, '东城区');
INSERT INTO `sys_district` VALUES (4, 3, '三环以内');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2020-01-09 11:06:22', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2020-01-06 16:03:14', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2019-11-07 17:30:28');
INSERT INTO `sys_job_log` VALUES (2, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-11-07 17:31:08');
INSERT INTO `sys_job_log` VALUES (3, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-11-07 18:21:40');
INSERT INTO `sys_job_log` VALUES (4, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-11-07 18:21:44');
INSERT INTO `sys_job_log` VALUES (5, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-11-07 18:38:07');
INSERT INTO `sys_job_log` VALUES (6, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2019-11-07 18:38:40');
INSERT INTO `sys_job_log` VALUES (7, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-11-07 18:38:51');
INSERT INTO `sys_job_log` VALUES (8, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2019-11-07 18:39:20');
INSERT INTO `sys_job_log` VALUES (9, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2019-11-07 18:40:28');
INSERT INTO `sys_job_log` VALUES (10, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2020-01-02 15:21:30');
INSERT INTO `sys_job_log` VALUES (11, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：7毫秒', '0', '', '2020-01-06 16:02:15');
INSERT INTO `sys_job_log` VALUES (12, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2020-01-06 16:02:30');
INSERT INTO `sys_job_log` VALUES (13, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2020-01-06 16:02:37');
INSERT INTO `sys_job_log` VALUES (14, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2020-01-06 16:02:45');
INSERT INTO `sys_job_log` VALUES (15, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2020-01-06 16:03:00');
INSERT INTO `sys_job_log` VALUES (16, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：0毫秒', '0', '', '2020-01-06 18:08:00');
INSERT INTO `sys_job_log` VALUES (17, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：2毫秒', '0', '', '2020-01-06 18:09:10');
INSERT INTO `sys_job_log` VALUES (18, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：1毫秒', '0', '', '2020-01-06 18:15:01');
INSERT INTO `sys_job_log` VALUES (19, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：0毫秒', '0', '', '2020-01-06 18:16:00');
INSERT INTO `sys_job_log` VALUES (20, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：0毫秒', '0', '', '2020-01-06 18:17:01');
INSERT INTO `sys_job_log` VALUES (21, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：0毫秒', '0', '', '2020-01-06 18:18:00');
INSERT INTO `sys_job_log` VALUES (22, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：0毫秒', '0', '', '2020-01-06 18:19:01');
INSERT INTO `sys_job_log` VALUES (23, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：0毫秒', '0', '', '2020-01-06 18:20:00');
INSERT INTO `sys_job_log` VALUES (24, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：1毫秒', '0', '', '2020-01-06 18:21:01');
INSERT INTO `sys_job_log` VALUES (25, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：0毫秒', '0', '', '2020-01-06 18:22:00');
INSERT INTO `sys_job_log` VALUES (26, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：0毫秒', '0', '', '2020-01-06 18:23:01');
INSERT INTO `sys_job_log` VALUES (27, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：0毫秒', '0', '', '2020-01-06 18:24:00');
INSERT INTO `sys_job_log` VALUES (28, 'memberTiming', 'DEFAULT', 'ryTask.ryParams(\'ry\')', 'memberTiming 总共耗时：0毫秒', '0', '', '2020-01-06 18:25:01');
INSERT INTO `sys_job_log` VALUES (29, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2020-01-09 11:06:22');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 282 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 14:34:51');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 14:39:03');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 14:39:08');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 14:40:23');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 14:40:34');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 14:40:47');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 14:40:55');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 14:41:01');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 14:41:28');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 14:41:47');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 14:42:09');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-11-07 14:43:03');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 14:44:11');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 14:44:20');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 14:48:37');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 14:55:54');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 14:56:27');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 14:57:21');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 14:59:14');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 14:59:24');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 15:00:59');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 15:01:24');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 15:01:26');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 15:01:35');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 15:02:15');
INSERT INTO `sys_logininfor` VALUES (125, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 15:02:21');
INSERT INTO `sys_logininfor` VALUES (126, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 15:02:25');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-11-07 15:02:31');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-11-07 15:03:00');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '错误', '2019-11-07 15:03:35');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-11-07 15:03:39');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-11-07 15:04:49');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-11-07 15:05:36');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-11-07 15:08:30');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-11-07 15:09:32');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-11-07 15:10:35');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '192.168.2.105', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 15:31:58');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '192.168.2.105', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-07 15:32:55');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '192.168.2.105', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 15:32:58');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '192.168.2.105', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 15:34:07');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '192.168.2.105', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 15:35:53');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 15:45:18');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 16:47:51');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 16:51:42');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-07 16:53:07');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 16:53:09');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 16:53:28');
INSERT INTO `sys_logininfor` VALUES (147, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-11-07 16:53:48');
INSERT INTO `sys_logininfor` VALUES (148, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-11-07 16:54:01');
INSERT INTO `sys_logininfor` VALUES (149, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2019-11-07 16:55:52');
INSERT INTO `sys_logininfor` VALUES (150, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误4次', '2019-11-07 16:57:05');
INSERT INTO `sys_logininfor` VALUES (151, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误5次', '2019-11-07 16:57:40');
INSERT INTO `sys_logininfor` VALUES (152, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2019-11-07 16:58:00');
INSERT INTO `sys_logininfor` VALUES (153, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2019-11-07 16:58:08');
INSERT INTO `sys_logininfor` VALUES (154, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 17:00:29');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 17:41:07');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 17:45:41');
INSERT INTO `sys_logininfor` VALUES (157, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 17:48:38');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 17:48:42');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 17:49:05');
INSERT INTO `sys_logininfor` VALUES (160, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 17:49:10');
INSERT INTO `sys_logininfor` VALUES (161, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-07 17:55:10');
INSERT INTO `sys_logininfor` VALUES (162, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 17:55:18');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-07 18:38:27');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 09:09:02');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 09:09:08');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-08 09:37:23');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-08 09:37:27');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 09:37:29');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 11:31:22');
INSERT INTO `sys_logininfor` VALUES (170, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 13:38:28');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 13:41:59');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-08 13:44:42');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-08 13:44:45');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 13:44:49');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 13:46:18');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-08 13:55:48');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 13:55:54');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 16:31:28');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 16:31:32');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 16:31:34');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 16:37:11');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 16:44:07');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-08 16:44:40');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 16:44:43');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-08 16:45:49');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 16:45:52');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 16:47:16');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 16:51:03');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 16:55:27');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 17:03:44');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-08 17:04:04');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 17:10:15');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-08 17:10:23');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 17:15:34');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-08 17:17:30');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 17:17:35');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 17:17:36');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 17:18:04');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-08 17:18:16');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 17:18:50');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 17:25:13');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 17:26:22');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 18:24:46');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 18:30:38');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 18:32:15');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 18:36:48');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-08 18:40:11');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 09:01:27');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 09:03:18');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 09:03:31');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 09:08:52');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 09:17:08');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 09:22:06');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 09:25:46');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 09:27:28');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-09 09:29:30');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 09:29:34');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 09:31:36');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 10:03:40');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 10:11:30');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 10:23:39');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-09 10:44:57');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 10:45:01');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 10:54:50');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 10:57:57');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 11:16:39');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-09 13:36:32');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 13:36:35');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 17:38:45');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 17:38:52');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 17:40:34');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-09 17:43:03');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 17:43:07');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-09 17:43:13');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-09 17:44:10');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 17:48:14');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-09 17:50:55');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-11 08:56:19');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 09:11:29');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 09:11:57');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 09:12:11');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 09:28:51');
INSERT INTO `sys_logininfor` VALUES (263, 'wlg', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2019-11-11 09:30:54');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-11 10:09:47');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 10:09:49');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 10:14:32');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 10:48:53');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-11 11:02:08');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-11-11 11:02:11');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 11:02:14');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 11:03:01');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 11:11:01');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 11:12:51');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-11 11:14:54');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 11:14:59');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-11 11:15:08');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 11:15:13');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-11-11 11:15:54');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 11:16:10');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 11:19:47');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 11:36:43');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-11-11 11:38:38');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1099 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1065, 'App管理', 0, 5, '#', 'menuItem', 'M', '0', NULL, 'fa fa-fax', 'admin', '2019-12-20 11:06:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1066, '等级管理', 1065, 1, '/app/level', 'menuItem', 'C', '0', 'system:level:view', 'fa fa-gears', 'admin', '2019-12-20 11:07:52', 'admin', '2019-12-20 11:30:27', '');
INSERT INTO `sys_menu` VALUES (1067, '动态管理', 1065, 2, 'app/dynamic', 'menuItem', 'C', '0', 'system:dynamic:view', 'fa fa-users', 'admin', '2019-12-20 11:58:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1068, '点赞管理', 1065, 3, 'app/commend', 'menuItem', 'C', '0', 'system:record:view', 'fa fa-thumbs-up', 'admin', '2019-12-20 13:58:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1069, '评论管理', 1065, 4, '/app/comment', 'menuItem', 'C', '0', 'system:comment:view', 'fa fa-smile-o', 'admin', '2019-12-20 15:26:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '用户管理', 0, 5, '#', 'menuItem', 'M', '0', '', 'fa fa-users', 'admin', '2019-12-20 16:20:14', 'admin', '2019-12-20 16:22:44', '');
INSERT INTO `sys_menu` VALUES (1071, '用户列表', 1070, 1, 'app/member', 'menuItem', 'C', '0', 'system:member:view', 'fa fa-address-card', 'admin', '2019-12-20 16:21:50', 'admin', '2019-12-20 16:22:57', '');
INSERT INTO `sys_menu` VALUES (1072, '充值列表', 1070, 2, '/app/rechargerecord', 'menuItem', 'C', '0', 'system:record:view', 'fa fa-plus', 'admin', '2019-12-20 16:24:01', 'admin', '2019-12-24 15:55:31', '');
INSERT INTO `sys_menu` VALUES (1073, '消费记录', 1070, 3, '/app/blance', 'menuItem', 'C', '0', 'system:blance:view', 'fa fa-frown-o', 'admin', '2019-12-20 16:24:37', 'admin', '2019-12-23 09:40:03', '');
INSERT INTO `sys_menu` VALUES (1074, '收入记录', 1070, 4, 'app/income/', 'menuItem', 'C', '0', '', 'fa fa-smile-o', 'admin', '2019-12-20 16:25:16', 'admin', '2019-12-21 14:57:25', '');
INSERT INTO `sys_menu` VALUES (1075, '滑动记录', 1070, 5, 'app/slide', 'menuItem', 'C', '0', 'system:slide:view', 'fa fa-file-code-o', 'admin', '2019-12-20 16:25:52', 'admin', '2019-12-21 16:24:06', '');
INSERT INTO `sys_menu` VALUES (1084, '礼物管理', 1065, 5, '/app/gift', 'menuItem', 'C', '0', 'system:gift:view', 'fa fa-gift', 'admin', '2019-12-21 10:07:51', 'admin', '2019-12-21 10:59:03', '');
INSERT INTO `sys_menu` VALUES (1085, '邀请管理', 1065, 6, '/app/invite', 'menuItem', 'C', '0', 'system:invite:view', '#', 'admin', '2019-12-21 10:52:31', 'admin', '2019-12-21 11:00:28', '');
INSERT INTO `sys_menu` VALUES (1086, '会员规格管理', 1065, 7, '/app/spec', 'menuItem', 'C', '0', 'system:spec:view', '#', 'admin', '2019-12-23 09:17:39', 'admin', '2020-01-02 14:19:00', '');
INSERT INTO `sys_menu` VALUES (1087, '充值规格管理', 1065, 8, '/app/rechargespec', 'menuItem', 'C', '0', 'system:rechargespec:view', '#', 'admin', '2019-12-23 09:35:39', 'admin', '2019-12-23 10:10:28', '');
INSERT INTO `sys_menu` VALUES (1088, 'VIP管理', 1070, 6, 'app/member/vip', 'menuItem', 'C', '0', 'system:vipmember:view', 'fa fa-universal-access', 'admin', '2019-12-23 10:23:58', 'admin', '2019-12-23 10:26:39', '');
INSERT INTO `sys_menu` VALUES (1089, '举报管理', 1070, 7, '/app/member/blowing', 'menuItem', 'C', '0', 'system:blowing:view', 'fa fa-heartbeat', 'admin', '2019-12-23 11:00:53', 'admin', '2019-12-24 09:39:56', '');
INSERT INTO `sys_menu` VALUES (1090, '提现管理', 1070, 8, '/app/withdrawrecord', 'menuItem', 'C', '0', 'system:withdrawrecord:view', '#', 'admin', '2019-12-23 11:06:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1091, '会员记录', 1070, 9, '/app/viporder', 'menuItem', 'C', '0', 'system:order:view', '#', 'admin', '2019-12-23 13:50:09', 'admin', '2019-12-23 13:54:38', '');
INSERT INTO `sys_menu` VALUES (1092, 'App设置', 1065, 9, '/system/set/edit/1', 'menuItem', 'C', '0', 'system:set:view', 'fa fa-hdd-o', 'admin', '2019-12-23 15:13:15', 'admin', '2019-12-23 15:32:46', '');
INSERT INTO `sys_menu` VALUES (1093, '意见反馈', 1070, 10, '/app/feedback', 'menuItem', 'C', '0', 'system:feedback:view', '#', 'admin', '2019-12-23 17:28:40', 'admin', '2019-12-23 17:29:01', '');
INSERT INTO `sys_menu` VALUES (1094, '隐私条款', 1065, 10, '/app/privacy/clause', 'menuItem', 'C', '0', 'system:clause:view', 'fa fa-eye-slash', 'admin', '2019-12-24 09:39:36', 'admin', '2019-12-24 09:58:55', '');
INSERT INTO `sys_menu` VALUES (1095, '隐私协议', 1065, 11, '/app/privacy/agreement', 'menuItem', 'C', '0', 'system:agreement:view', 'fa fa-money', 'admin', '2019-12-24 09:41:09', 'admin', '2019-12-24 09:59:15', '');
INSERT INTO `sys_menu` VALUES (1096, '短信发送', 1070, 11, '/app/note', 'menuItem', 'C', '0', 'system:note:view', 'fa fa-volume-control-phone', 'admin', '2019-12-24 16:18:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1097, '推送记录', 1070, 12, '/app/push', 'menuItem', 'C', '0', 'system:push:view', '#', 'admin', '2019-12-24 16:35:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1098, '会员特权页面', 1065, 12, '/app/content', 'menuItem', 'C', '0', 'system:content:view', '#', 'admin', '2019-12-30 11:36:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1099, '系统评论', 1065, 13, '/app/systemcomment', 'menuItem', 'C', '0', 'system:comment:view', 'fa fa-comment-o', 'admin', '2020-01-08 09:53:25', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '2', '维护通知', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-09 13:57:14', '管理员');
INSERT INTO `sys_notice` VALUES (18, '官方通知', '1', '<p><span style=\"color: rgb(14, 23, 38); font-family: &quot;PingFang SC&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Hiragino Sans GB&quot;, &quot;Source Han Sans&quot;, &quot;Noto Sans CJK Sc&quot;, &quot;Microsoft YaHei&quot;, &quot;Microsoft Jhenghei&quot;, sans-serif; font-size: 14px; background-color: rgb(244, 247, 253);\">嗨，欢迎来到碰碰。现在每天可以滑动的次数 是10次，点击链接给碰碰评价五星，额外奖励 40次哦~</span><br></p>', '0', 'admin', '2020-01-09 13:56:32', '', NULL, NULL);
INSERT INTO `sys_notice` VALUES (19, '发多少', '1', '<p><img src=\"http://localhost/profile/upload/2020/01/09/6374a96773294dc13ad61e4909e8682c.jpg\" data-filename=\"/profile/upload/2020/01/09/6374a96773294dc13ad61e4909e8682c.jpg\" style=\"width: 1000px;\"><b><u></u></b></p>', '0', 'admin', '2020-01-09 14:01:01', '', NULL, NULL);
INSERT INTO `sys_notice` VALUES (20, '地方', '1', '<p>发斯蒂芬</p>', '0', 'admin', '2020-01-09 14:01:21', '', NULL, NULL);
INSERT INTO `sys_notice` VALUES (21, 'test', '1', '<p>test</p>', '0', 'admin', '2020-01-09 17:21:24', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 227 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"105\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"dept.deptName\" : [ \"测试部门\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-11-07 14:38:42');
INSERT INTO `sys_oper_log` VALUES (101, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"d75da5c6-28d4-4c41-b4c0-b158cab11ce3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 15:33:07');
INSERT INTO `sys_oper_log` VALUES (102, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"a9f5b986-460b-42c4-9030-3ba8c15c22af\" ]\r\n}', '{\r\n  \"msg\" : \"当前登陆用户无法强退\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-11-07 15:33:24');
INSERT INTO `sys_oper_log` VALUES (103, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'ry', '测试部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 17:30:28');
INSERT INTO `sys_oper_log` VALUES (104, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'ry', '测试部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 17:31:08');
INSERT INTO `sys_oper_log` VALUES (105, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"若依2\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-11-07 17:48:58');
INSERT INTO `sys_oper_log` VALUES (106, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"deptId\" : [ \"105\" ],\r\n  \"userName\" : [ \"若依2\" ],\r\n  \"dept.deptName\" : [ \"测试部门\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 17:49:20');
INSERT INTO `sys_oper_log` VALUES (107, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"deptId\" : [ \"105\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"dept.deptName\" : [ \"测试部门\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 17:49:26');
INSERT INTO `sys_oper_log` VALUES (108, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 18:21:30');
INSERT INTO `sys_oper_log` VALUES (109, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 18:21:44');
INSERT INTO `sys_oper_log` VALUES (110, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 18:21:48');
INSERT INTO `sys_oper_log` VALUES (111, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 18:38:07');
INSERT INTO `sys_oper_log` VALUES (112, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 18:38:40');
INSERT INTO `sys_oper_log` VALUES (113, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 18:38:51');
INSERT INTO `sys_oper_log` VALUES (114, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 18:39:20');
INSERT INTO `sys_oper_log` VALUES (115, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', 1, 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-07 18:40:28');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_logininfor\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 09:51:21');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_dict_data,sys_user_online,sys_job,sys_notice,sys_job_log,sys_dict_type,sys_config,sys_role_dept,sys_user,sys_dept\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 09:51:48');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_job,sys_job_log\" ]\r\n}', 'null', 0, NULL, '2019-11-08 09:52:30');
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_job,sys_job_log\" ]\r\n}', 'null', 0, NULL, '2019-11-08 09:53:57');
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_job,sys_job_log\" ]\r\n}', 'null', 0, NULL, '2019-11-08 09:55:51');
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_job,sys_job_log\" ]\r\n}', 'null', 0, NULL, '2019-11-08 09:57:24');
INSERT INTO `sys_oper_log` VALUES (122, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"c98f8371-59bf-4a2b-9c1a-4964fed57f31\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 11:43:49');
INSERT INTO `sys_oper_log` VALUES (123, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"c98f8371-59bf-4a2b-9c1a-4964fed57f31\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 11:49:22');
INSERT INTO `sys_oper_log` VALUES (124, '登陆日志', 5, 'com.ruoyi.web.controller.monitor.SysLogininforController.export()', 'POST', 1, 'admin', '研发部门', '/monitor/logininfor/export', '127.0.0.1', '内网IP', '{\r\n  \"ipaddr\" : [ \"\" ],\r\n  \"loginName\" : [ \"\" ],\r\n  \"status\" : [ \"\" ],\r\n  \"params[beginTime]\" : [ \"\" ],\r\n  \"params[endTime]\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"2096b886-02f3-4009-a529-5654596fbe3a_登陆日志.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 12:00:57');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"12\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 13:14:46');
INSERT INTO `sys_oper_log` VALUES (126, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/add', '127.0.0.1', '内网IP', '{\r\n  \"noticeTitle\" : [ \"哈哈\" ],\r\n  \"noticeType\" : [ \"1\" ],\r\n  \"noticeContent\" : [ \"<p>收到没有！！</p>\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 13:38:58');
INSERT INTO `sys_oper_log` VALUES (127, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/notice/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 13:39:40');
INSERT INTO `sys_oper_log` VALUES (128, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/add', '127.0.0.1', '内网IP', '{\r\n  \"noticeTitle\" : [ \"哈哈\" ],\r\n  \"noticeType\" : [ \"2\" ],\r\n  \"noticeContent\" : [ \"<p>收到没有！！</p>\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 13:39:57');
INSERT INTO `sys_oper_log` VALUES (129, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'POST', 1, 'ry', '测试部门', '/system/notice/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 13:41:28');
INSERT INTO `sys_oper_log` VALUES (130, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-red\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 13:42:31');
INSERT INTO `sys_oper_log` VALUES (131, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"3\" ],\r\n  \"configName\" : [ \"主框架页-侧边栏主题\" ],\r\n  \"configKey\" : [ \"sys.index.sideTheme\" ],\r\n  \"configValue\" : [ \"theme-light\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"深色主题theme-dark，浅色主题theme-light\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 13:43:51');
INSERT INTO `sys_oper_log` VALUES (132, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-red\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 13:56:17');
INSERT INTO `sys_oper_log` VALUES (133, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"1\" ],\r\n  \"configName\" : [ \"主框架页-默认皮肤样式名称\" ],\r\n  \"configKey\" : [ \"sys.index.skinName\" ],\r\n  \"configValue\" : [ \"skin-blue\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 13:57:03');
INSERT INTO `sys_oper_log` VALUES (134, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  \"roleName\" : [ \"代理商\" ],\r\n  \"roleKey\" : [ \"agency\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 17:33:13');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/103', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"存在子菜单,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2019-11-08 17:34:23');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1016', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2019-11-08 17:34:44');
INSERT INTO `sys_oper_log` VALUES (137, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/101', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"存在下级部门,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2019-11-08 17:35:02');
INSERT INTO `sys_oper_log` VALUES (138, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/103', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"部门存在用户,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2019-11-08 17:35:09');
INSERT INTO `sys_oper_log` VALUES (139, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', NULL, '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  \"roleName\" : [ \"测试\" ],\r\n  \"roleKey\" : [ \"ceshi\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"ceshi\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 18:12:28');
INSERT INTO `sys_oper_log` VALUES (140, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', 1, 'admin', NULL, '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"userId\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 18:17:31');
INSERT INTO `sys_oper_log` VALUES (141, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'POST', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"userIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 18:18:24');
INSERT INTO `sys_oper_log` VALUES (142, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'POST', 1, 'admin', NULL, '/system/role/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 18:18:33');
INSERT INTO `sys_oper_log` VALUES (143, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', NULL, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-11-08 18:20:15');
INSERT INTO `sys_oper_log` VALUES (144, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', NULL, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 18:20:19');
INSERT INTO `sys_oper_log` VALUES (145, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', NULL, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 18:20:21');
INSERT INTO `sys_oper_log` VALUES (146, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"超级管理员\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-11-08 18:22:03');
INSERT INTO `sys_oper_log` VALUES (147, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"超级管理员\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\", \"2\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1,2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2019-11-08 18:22:06');
INSERT INTO `sys_oper_log` VALUES (148, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', 1, 'admin', NULL, '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"userId\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 18:30:52');
INSERT INTO `sys_oper_log` VALUES (149, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'POST', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"userIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-08 18:40:34');
INSERT INTO `sys_oper_log` VALUES (150, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"3\", \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3,2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:09:10');
INSERT INTO `sys_oper_log` VALUES (151, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:09:27');
INSERT INTO `sys_oper_log` VALUES (152, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', 1, 'admin', NULL, '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"userId\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:11:32');
INSERT INTO `sys_oper_log` VALUES (153, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:17:21');
INSERT INTO `sys_oper_log` VALUES (154, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:17:29');
INSERT INTO `sys_oper_log` VALUES (155, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', 1, 'admin', NULL, '/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', 0, NULL, '2019-11-09 09:22:19');
INSERT INTO `sys_oper_log` VALUES (156, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\", \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2,3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:22:32');
INSERT INTO `sys_oper_log` VALUES (157, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:22:42');
INSERT INTO `sys_oper_log` VALUES (158, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:23:04');
INSERT INTO `sys_oper_log` VALUES (159, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:23:08');
INSERT INTO `sys_oper_log` VALUES (160, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"代理商\" ],\r\n  \"roleKey\" : [ \"agency\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"代理商\" ],\r\n  \"menuIds\" : [ \"2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:23:34');
INSERT INTO `sys_oper_log` VALUES (161, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"代理商\" ],\r\n  \"roleKey\" : [ \"agency\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"代理商\" ],\r\n  \"menuIds\" : [ \"2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:23:36');
INSERT INTO `sys_oper_log` VALUES (162, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:23:51');
INSERT INTO `sys_oper_log` VALUES (163, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:24:07');
INSERT INTO `sys_oper_log` VALUES (164, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:24:21');
INSERT INTO `sys_oper_log` VALUES (165, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:24:31');
INSERT INTO `sys_oper_log` VALUES (166, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', NULL, '/system/user/profile/update', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"超级管理员\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"sex\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:31:43');
INSERT INTO `sys_oper_log` VALUES (167, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\", \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3,2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:32:22');
INSERT INTO `sys_oper_log` VALUES (168, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:32:35');
INSERT INTO `sys_oper_log` VALUES (169, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:32:48');
INSERT INTO `sys_oper_log` VALUES (170, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\", \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2,3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:45:56');
INSERT INTO `sys_oper_log` VALUES (171, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:46:04');
INSERT INTO `sys_oper_log` VALUES (172, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:46:14');
INSERT INTO `sys_oper_log` VALUES (173, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:46:33');
INSERT INTO `sys_oper_log` VALUES (174, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:46:40');
INSERT INTO `sys_oper_log` VALUES (175, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:47:34');
INSERT INTO `sys_oper_log` VALUES (176, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:48:36');
INSERT INTO `sys_oper_log` VALUES (177, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:56:39');
INSERT INTO `sys_oper_log` VALUES (178, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 09:57:02');
INSERT INTO `sys_oper_log` VALUES (179, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 10:11:47');
INSERT INTO `sys_oper_log` VALUES (180, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 10:23:49');
INSERT INTO `sys_oper_log` VALUES (181, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', NULL, '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 10:45:09');
INSERT INTO `sys_oper_log` VALUES (182, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'POST', 1, 'admin', NULL, '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 10:45:16');
INSERT INTO `sys_oper_log` VALUES (183, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'POST', 1, 'admin', NULL, '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 10:45:18');
INSERT INTO `sys_oper_log` VALUES (184, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'POST', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"userIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 10:45:29');
INSERT INTO `sys_oper_log` VALUES (185, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', 1, 'admin', NULL, '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"userId\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 10:45:41');
INSERT INTO `sys_oper_log` VALUES (186, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'POST', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"userIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 10:55:20');
INSERT INTO `sys_oper_log` VALUES (187, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', 1, 'admin', NULL, '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"userId\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 10:58:11');
INSERT INTO `sys_oper_log` VALUES (188, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"2\" ],\r\n  \"userName\" : [ \"張三\" ],\r\n  \"phonenumber\" : [ \"15666666666\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"loginName\" : [ \"ry\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"测试员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:17:14');
INSERT INTO `sys_oper_log` VALUES (189, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', 1, 'admin', '', '/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', 0, NULL, '2019-11-09 11:17:20');
INSERT INTO `sys_oper_log` VALUES (190, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"代理商\" ],\r\n  \"roleKey\" : [ \"agency\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"代理商\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,3,113,114,1057,1058,1059,1060,1061,115\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:17:36');
INSERT INTO `sys_oper_log` VALUES (191, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', 1, 'admin', '', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"userId\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:17:46');
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"测试\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:20:15');
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '', '/system/menu/remove/1062', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:20:46');
INSERT INTO `sys_oper_log` VALUES (194, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '', '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  \"roleName\" : [ \"测试1\" ],\r\n  \"roleKey\" : [ \"ceshi1\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"测试1\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:21:28');
INSERT INTO `sys_oper_log` VALUES (195, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"5\" ],\r\n  \"roleName\" : [ \"测试1\" ],\r\n  \"roleKey\" : [ \"ceshi1\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"测试1\" ],\r\n  \"menuIds\" : [ \"2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:21:33');
INSERT INTO `sys_oper_log` VALUES (196, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'POST', 1, 'admin', '', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"5\" ],\r\n  \"userIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:21:44');
INSERT INTO `sys_oper_log` VALUES (197, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"\" ],\r\n  \"userName\" : [ \"wlg\" ],\r\n  \"phonenumber\" : [ \"13000000000\" ],\r\n  \"email\" : [ \"1097070850@qq.com\" ],\r\n  \"loginName\" : [ \"wlg\" ],\r\n  \"password\" : [ \"admin123\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"ceshi\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:22:48');
INSERT INTO `sys_oper_log` VALUES (198, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', 1, 'admin', '', '/system/user/resetPwd/3', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', 0, NULL, '2019-11-09 11:22:56');
INSERT INTO `sys_oper_log` VALUES (199, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"3\" ],\r\n  \"userName\" : [ \"wlg\" ],\r\n  \"phonenumber\" : [ \"13000000000\" ],\r\n  \"email\" : [ \"1097070850@qq.com\" ],\r\n  \"loginName\" : [ \"wlg\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"ceshi\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:23:14');
INSERT INTO `sys_oper_log` VALUES (200, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"3\" ],\r\n  \"userName\" : [ \"wlg\" ],\r\n  \"phonenumber\" : [ \"13000000000\" ],\r\n  \"email\" : [ \"1097070850@qq.com\" ],\r\n  \"loginName\" : [ \"wlg\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"ceshi\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:23:20');
INSERT INTO `sys_oper_log` VALUES (201, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'POST', 1, 'admin', '', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"userIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:37:46');
INSERT INTO `sys_oper_log` VALUES (202, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'POST', 1, 'admin', '', '/system/role/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"测试1已分配,不能删除\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-11-09 11:37:54');
INSERT INTO `sys_oper_log` VALUES (203, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"5\" ],\r\n  \"roleName\" : [ \"测试1\" ],\r\n  \"roleKey\" : [ \"ceshi1\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"测试1\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:38:08');
INSERT INTO `sys_oper_log` VALUES (204, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'POST', 1, 'admin', '', '/system/role/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"测试1已分配,不能删除\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-11-09 11:38:11');
INSERT INTO `sys_oper_log` VALUES (205, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"5\" ],\r\n  \"roleName\" : [ \"测试1\" ],\r\n  \"roleKey\" : [ \"ceshi1\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"测试1\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:38:35');
INSERT INTO `sys_oper_log` VALUES (206, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'POST', 1, 'admin', '', '/system/role/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"测试1已分配,不能删除\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-11-09 11:38:38');
INSERT INTO `sys_oper_log` VALUES (207, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'POST', 1, 'admin', '', '/system/role/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"测试1已分配,不能删除\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-11-09 11:39:06');
INSERT INTO `sys_oper_log` VALUES (208, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'POST', 1, 'admin', '', '/system/role/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"测试1已分配,不能删除\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-11-09 11:45:46');
INSERT INTO `sys_oper_log` VALUES (209, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'POST', 1, 'admin', '', '/system/role/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"测试1已分配,不能删除\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2019-11-09 11:46:53');
INSERT INTO `sys_oper_log` VALUES (210, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 'POST', 1, 'admin', '', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"5\" ],\r\n  \"userId\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:46:59');
INSERT INTO `sys_oper_log` VALUES (211, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'POST', 1, 'admin', '', '/system/role/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:47:03');
INSERT INTO `sys_oper_log` VALUES (212, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"代理商\" ],\r\n  \"roleKey\" : [ \"agency\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"代理商\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:50:14');
INSERT INTO `sys_oper_log` VALUES (213, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"3\" ],\r\n  \"userName\" : [ \"代理商1号\" ],\r\n  \"phonenumber\" : [ \"13000000000\" ],\r\n  \"email\" : [ \"1097070850@qq.com\" ],\r\n  \"loginName\" : [ \"wlg\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"ceshi\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:51:51');
INSERT INTO `sys_oper_log` VALUES (214, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"代理商\" ],\r\n  \"roleKey\" : [ \"agency\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"代理商\" ],\r\n  \"menuIds\" : [ \"1,107,1035,1036,1037,1038\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:52:27');
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"代理商\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"fa fa-thumbs-up\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 11:54:26');
INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"物料配送\" ],\r\n  \"url\" : [ \"/material/distribution\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"material:distribution:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-motorcycle\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 12:01:27');
INSERT INTO `sys_oper_log` VALUES (217, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.addSave()', 'POST', 1, 'admin', '', '/system/notice/add', '127.0.0.1', '内网IP', '{\r\n  \"noticeTitle\" : [ \"测试一下通知公告\" ],\r\n  \"noticeType\" : [ \"2\" ],\r\n  \"noticeContent\" : [ \"<p>嘿嘿嘿</p>\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 13:39:34');
INSERT INTO `sys_oper_log` VALUES (218, '登陆日志', 3, 'com.ruoyi.web.controller.monitor.SysLogininforController.remove()', 'POST', 1, 'admin', '', '/monitor/logininfor/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"222,221,220,219,218,217,216,215,214,213\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 17:48:46');
INSERT INTO `sys_oper_log` VALUES (219, '登陆日志', 3, 'com.ruoyi.web.controller.monitor.SysLogininforController.remove()', 'POST', 1, 'admin', '', '/monitor/logininfor/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"212,211,210,209,208,207,206,205,204,203\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-09 17:48:56');
INSERT INTO `sys_oper_log` VALUES (220, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"代理商\" ],\r\n  \"roleKey\" : [ \"agency\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"代理商\" ],\r\n  \"menuIds\" : [ \"1,107,1035,1036,1037,1038\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-11 09:25:16');
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2,3,4,5,6,7,8,9,10,11\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-11 10:06:18');
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-11 10:06:22');
INSERT INTO `sys_oper_log` VALUES (223, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.addSave()', 'POST', 1, 'wlg', '', '/system/notice/add', '127.0.0.1', '内网IP', '{\r\n  \"noticeTitle\" : [ \"代理商发布的通知\" ],\r\n  \"noticeType\" : [ \"1\" ],\r\n  \"noticeContent\" : [ \"<p>代理商发布的通知<br></p>\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-11 10:32:58');
INSERT INTO `sys_oper_log` VALUES (224, '用户管理', 6, 'com.ruoyi.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', '', '/system/user/importData', '127.0.0.1', '内网IP', '{\r\n  \"updateSupport\" : [ \"false\" ]\r\n}', '{\r\n  \"msg\" : \"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 zhangsan 导入成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-11 11:32:45');
INSERT INTO `sys_oper_log` VALUES (225, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"f9e4c135-6013-47f3-92b1-3290c5193364\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-11 11:37:07');
INSERT INTO `sys_oper_log` VALUES (226, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"f9e4c135-6013-47f3-92b1-3290c5193364\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-11 11:37:12');
INSERT INTO `sys_oper_log` VALUES (227, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"f9e4c135-6013-47f3-92b1-3290c5193364\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2019-11-11 11:37:14');

-- ----------------------------
-- Table structure for sys_privacy_agreement
-- ----------------------------
DROP TABLE IF EXISTS `sys_privacy_agreement`;
CREATE TABLE `sys_privacy_agreement`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agreement_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '隐私协议' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_privacy_agreement
-- ----------------------------
INSERT INTO `sys_privacy_agreement` VALUES (1, '<p style=\"margin-bottom: 0px; padding: 0px; height: 26px; line-height: 26px; color: rgb(67, 67, 67); font-family: 微软雅黑; font-size: 14px; text-align: center;\">用户注册及使用APP隐私协议</p><p style=\"margin-bottom: 0px; padding: 0px; height: 26px; line-height: 26px; color: rgb(67, 67, 67); font-family: 微软雅黑; font-size: 14px;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px; height: 1456px; line-height: 26px; color: rgb(67, 67, 67); font-family: 微软雅黑; font-size: 14px;\">在此特别提醒您（用户）在注册成为用户之前，请认真阅读本《用户协议》（以下简称“协议”），确保您充分理解本协议中各条款。请您审慎阅读并选择接受或不接受本协议。您的注册、登录、使用等行为将视为对本协议的接受，并同意接受本协议各项条款的约束。本协议约定南京喵星科技有限公司（以下简称“喵星”）与用户之间关于“喵小瞳”软件服务（以下简称“服务“）的权利义务。“用户”是指注册、登录、使用本服务的个人。本协议可由喵星随时更新，更新后的协议条款一旦公布即代替原来的协议条款，恕不再另行通知，用户可在本APP中查阅最新版协议条款。在修改协议条款后，如果用户不接受修改后的条款，请立即停止使用喵小瞳提供的服务，用户继续使用服务将被视为接受修改后的协议。<br>&nbsp;<br>一、账号注册<br>1、用户在使用本服务前需要注册一个“喵星”账号。“喵星”账号应当使用手机号码绑定注册，请用户使用尚未与“喵星”账号绑定的手机号码，以及未被服务根据本协议封禁的手机号码注册“喵星”账号。服务可以根据用户需求或产品需要对账号注册和绑定的方式进行变更，而无须事先通知用户。<br>2、“喵星”系基于“喵小瞳“的APP产品，用户注册时应当授权喵星及使用其个人信息方可成功注册“喵星”账号。故用户完成注册即表明用户同意服务提取、公开及使用用户的信息。<br>3、鉴于“喵星”账号的绑定注册方式，您同意服务在注册时将允许您的手机号码及手机设备识别码等信息用于注册。<br>4、在用户注册及使用本服务时，喵星需要搜集能识别用户身份的个人信息以便服务可以在必要时联系用户，或为用户提供更好的使用体验。喵星搜集的信息包括但不限于用户的姓名、地址；喵星同意对这些信息的使用将受限于第三条用户个人隐私信息保护的约束。<br>&nbsp;<br>二、用户个人隐私信息保护<br>1、如果喵星发现或收到他人举报或投诉用户违反本协议约定的，喵星有权不经通知随时对相关内容，包括但不限于用户资料、发贴记录进行审查、删除，并视情节轻重对违规账号处以包括但不限于警告、账号封禁 、设备封禁 、功能封禁 的处罚，且通知用户处理结果。<br>2、因违反用户协议被封禁的用户，可以自行与喵星联系。其中，被实施功能封禁的用户会在封禁期届满后自动恢复被封禁功能。被封禁用户可提交申诉，喵星将对申诉进行审查，并自行合理判断决定是否变更处罚措施。<br>3、用户理解并同意，喵星有权依合理判断对违反有关法律法规或本协议规定的行为进行处罚，对违法违规的任何用户采取适当的法律行动，并依据法律法规保存有关信息向有关部门报告等，用户应承担由此而产生的一切法律责任。<br>4、用户理解并同意，因用户违反本协议约定，导致或产生的任何第三方主张的任何索赔、要求或损失，包括合理的律师费，用户应当赔偿喵星与合作公司、关联公司，并使之免受损害。<br>&nbsp;<br>三、用户发布内容规范<br>1、本条所述内容是指用户使用服务的过程中所制作、上载、复制、发布、传播的任何内容，包括但不限于账号头像、名称、用户说明等注册信息及认证资料，或文字、语音、图片、视频、图文等发送、回复或自动回复消息和相关链接页面，以及其他使用账号或本服务所产生的内容。<br>2、用户不得利用“喵星”账号或本服务制作、上载、复制、发布、传播如下法律、法规和政策禁止的内容：<br>(1) 反对宪法所确定的基本原则的；<br>(2) 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br>(3) 损害国家荣誉和利益的；<br>(4) 煽动民族仇恨、民族歧视，破坏民族团结的；<br>(5) 破坏国家宗教政策，宣扬邪教和封建迷信的；<br>(6) 散布谣言，扰乱社会秩序，破坏社会稳定的；<br>(7) 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br>(8) 侮辱或者诽谤他人，侵害他人合法权益的；<br>(9) 含有法律、行政法规禁止的其他内容的信息。<br>3、用户不得利用“喵星”账号或本服务制作、上载、复制、发布、传播如下干扰“服务”正常运营，以及侵犯其他用户或第三方合法权益的内容：<br>(1) 含有任何性或性暗示的；<br>(2) 含有辱骂、恐吓、威胁内容的；<br>(3) 含有骚扰、垃圾广告、恶意信息、诱骗信息的；<br>(4) 涉及他人隐私、个人信息或资料的；<br>(5) 侵害他人名誉权、肖像权、知识产权、商业秘密等合法权利的；<br>(6) 含有其他干扰本服务正常运营和侵犯其他用户或第三方合法权益内容的信息。<br>&nbsp;<br>四、使用规则<br>1、用户在本服务中或通过本服务所传送、发布的任何内容并不反映或代表，也不得被视为反映或代表喵星的观点、立场或政策，喵星对此不承担任何责任。<br>2、用户不得利用“喵星”账号或本服务进行如下行为：<br>(1) 提交、发布虚假信息，或盗用他人头像或资料，冒充、利用他人名义的；<br>(2) 强制、诱导其他用户关注、点击链接页面或分享信息的；<br>(3) 虚构事实、隐瞒真相以误导、欺骗他人的；<br>(4) 利用技术手段批量建立虚假账号的；<br>(5) 利用“喵星”账号或本服务从事任何违法犯罪活动的；<br>(6) 制作、发布与以上行为相关的方法、工具，或对此类方法、工具进行运营或传播，无论这些行为是否为商业目的；<br>(7) 其他违反法律法规规定、侵犯其他用户合法权益、干扰“喵星”正常运营或服务未明示授权的行为。<br>3、用户须对利用“喵星”账号或本服务传送信息的真实性、合法性、无害性、准确性、有效性等全权负责，与用户所传播的信息相关的任何法律责任由用户自行承担，与喵星无关。<br>如因此给喵星或第三方造成损害的，用户应当依法予以赔偿。<br>4、喵星提供的服务中可能包括广告，用户同意在使用过程中显示喵星和第三方供应商、合作伙伴提供的广告。除法律法规明确规定外，用户应自行对依该广告信息进行的交易负责，<br>对用户因依该广告信息进行的交易或前述广告商提供的内容而遭受的损失或损害，喵星不承担任何责任。<br>&nbsp;<br>五、其他<br>1、喵星郑重提醒用户注意本协议中免除喵星责任和限制用户权利的条款，请用户仔细阅读，自主考虑风险。未成年人应在法定监护人的陪同下阅读本协议。<br>2、本协议的效力、解释及纠纷的解决，适用于中华人民共和国法律。若用户和喵星之间发生任何纠纷或争议，首先应友好协商解决，协商不成的，用户同意将纠纷或争议提交喵星住所地有管辖权的人民法院管辖。<br>3、本协议的任何条款无论因何种原因无效或不具可执行性，其余条款仍有效，对双方具有约束力。</p><p style=\"margin-bottom: 0px; padding: 0px; height: 26px; line-height: 26px; color: rgb(67, 67, 67); font-family: 微软雅黑; font-size: 14px;\"><br></p><p style=\"margin-bottom: 0px; padding: 0px; height: 26px; line-height: 26px; color: rgb(67, 67, 67); font-family: 微软雅黑; font-size: 14px;\">本《协议》版权由喵星所有，喵星保留一切对本《协议》解释的权利。</p><p style=\"margin-bottom: 0px; padding: 0px; height: 26px; line-height: 26px; color: rgb(67, 67, 67); font-family: 微软雅黑; font-size: 14px; text-align: right;\">南京喵星科技有限公司</p>');

-- ----------------------------
-- Table structure for sys_privacy_clause
-- ----------------------------
DROP TABLE IF EXISTS `sys_privacy_clause`;
CREATE TABLE `sys_privacy_clause`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clause_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '隐私条款内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '隐私条款' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_privacy_clause
-- ----------------------------
INSERT INTO `sys_privacy_clause` VALUES (1, '<p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">“河北移动和生活”是中国移动河北有限公司官方推出的专为河北移动用户打造的自助服务移动端营业厅，为说明河北移动会如何收集、使用和存储您的个人信息及您享有何种权利，我们将通过本指引向您阐述相关事宜，其中要点如下：</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">一、我们将逐一说明我们收集的您的个人信息类型及其对应的用途，以便您了解我们针对某一特定功能所收集的具体个人信息的类别、使用理由及收集方式。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">二、为您提供本APP的其他具体服务，本APP会在提供具体服务前通过弹框方式另行取得您的授权:</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">1.为了本APP正常运行，我们会在您授权同意后获取您<span class=\"txt-red\" style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0);\">手机终端存储权限</span>，如果不授权该权限则本APP可能无法正常使用；</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">2.为了方便您免密登录，我们会在您授权同意后获取您的<span class=\"txt-red\" style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0);\">手机识别码权限</span>，如果不授权该权限则只能通过服务密码或短信随机码进行登录；</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">3.为了及时为您提供本地特色功能服务、查找附近营业厅，我们会在您授权同意后获取<span class=\"txt-red\" style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0);\">本机位置权限</span>，如不授权该权限将不能使用所对应的功能服务；</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">4.为了您在使用充值卡充话费时直接通过扫一扫功能扫码充值，我们会在您授权同意后获取<span class=\"txt-red\" style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0);\">本机摄像头及相册权限</span>，如不授予该权限将不能使用所对应的功能服务；</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">5.为了方便您将信息进行分享，以及为好友充值选取通讯录好友，我们会在您授权同意后获取<span class=\"txt-red\" style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0);\">本机通讯录读/写权限</span>，如不授权该权限将不能使用所对应的功能服务；</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">随着本APP功能进一步丰富，后续新增功能如涉及获取用户授权权限时，我们将明确提示并在您授权同意后才会获取该功能所需权限。如未取得您的授权，我们将不会收集和使用相关信息。<span class=\"under-line\" style=\"margin: 0px; padding: 0px; text-decoration-line: underline;\">除非按照相关法律法规要求必须收集，拒绝提供这些信息仅会使您无法使用相关特定功能，但不影响您正常使用河北移动的其他功能。</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"under-line\" style=\"margin: 0px; padding: 0px; text-decoration-line: underline;\">三、目前，河北移动不会主动共享或转让您的个人信息至第三方，如存在其他共享或转让您的个人信息情形时，我们会征得您的明示同意。</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">四、目前，河北移动不会主动从第三方获取您的个人信息。如未来为业务发展需要从第三方间接获取您的个人信息，我们会在获取前向您明示您个人信息的来源、类型及使用范围，如河北移动开展业务需进行的个人信息处理活动超出您原本向第三方提供个人信息时的授权同意范围，我们将在处理您的该等个人信息前，征得您的明示同意；此外，我们也将会严格遵守相关法律法规的规定，并要求第三方保障其提供的信息的合法性。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">您可以通过本指引所列途径访问、更正、删除您的个人信息，也可以撤回同意、注销账号、投诉举报以及设置隐私功能。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">如您想了解更加详尽的信息，请根据以下索引阅读相应章节：</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"bold\" style=\"margin: 0px; padding: 0px; font-weight: bold;\">1.我们收集的信息</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">在您使用河北移动服务的过程中，河北移动会按照如下方式收集您在使用服务时主动提供或因为使用服务而产生的信息，用以向您提供服务、优化我们的服务以及保障您的帐号安全：</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">1.1当您登陆河北移动时，我们会收集您的姓名、入网时间、客户星级、手机号码，收集这些信息是为了帮助您完成登陆，保护您河北移动帐号的安全。手机号码属于敏感信息，收集此类信息是为了满足相关法律法规的网络实名制要求。若您不提供这类信息，您可能无法正常使用我们的服务。您还可以根据自身需求选择填写头像、我的地址等信息。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"under-line\" style=\"margin: 0px; padding: 0px; text-decoration-line: underline;\">1.2河北移动支付功能由支付宝、微信等第三方支付平台向您提供服务。当您使用河北移动支付功能时，第三方支付平台会收集您的姓名、银行卡类型及卡号、有效期及银行预留手机号。如当您使用微信支付时，财付通公司还会收集您的相关支付记录以便于您查询。上述信息属于敏感信息，拒绝提供该信息仅会使您无法使用河北移动的支付功能，但不影响您正常使用河北移动的其他功能。</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">1.3河北移动服务中的第三方服务由外部第三方主体提供，河北移动无法获得您在使用该类第三方服务时产生的信息。但是，如果您已明示同意该第三方获得您的地理位置信息，该第三方将通过河北移动获得终端地理位置信息接口，此时河北移动和第三方均会获得您的地理位置信息。该信息属于敏感信息，拒绝提供该信息仅会使您无法使用上述第三方服务，但不影响您正常使用河北移动的功能。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"bold\" style=\"margin: 0px; padding: 0px; font-weight: bold;\">2.信息的存储</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">2.1信息存储的地点</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">我们会按照法律法规规定，将境内收集的用户个人信息存储于中国境内；如果因业务需要将您的个人信息转移到境外，我们将另行获得您的授权同意，并履行法定程序，在符合届时适用法律的情形下使您的个人信息得到足够的保护；该等转移将在符合届时适用法律要求的前提下进行，即便获得您的授权但是转移方式或者目的不符合相关法律法规规定的，我们也不会进行转移。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">2.2信息存储的期限</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">一般而言，我们仅为实现目的所必需的时间保留您的个人信息，例如：手机号码：若您需要使用河北移动，我们需要一直保存您的手机号码，以保证您正常使用该服务，当您退出河北移动后，我们将删除相应的信息；</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">当我们的产品或服务发生停止运营的情形时，我们将以推送通知、公告等形式通知您，并在合理的期限内删除您的个人信息或进行匿名化处理。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">对于所收集的信息，我们将在法律规定的最短期限内保存，超出保存期限后，我们将对所收集的信息进行删除或匿名化处理。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"bold\" style=\"margin: 0px; padding: 0px; font-weight: bold;\">3.信息安全</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">我们努力为用户的信息安全提供保障，以防止信息的丢失、不当使用、未经授权访问或披露。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">我们将在合理的安全水平内使用各种安全保护措施以保障信息的安全。例如，我们会使用加密技术（例如，SSL）、匿名化处理等手段来保护您的个人信息。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">我们建立专门的管理制度、流程和组织以保障信息的安全。例如，我们严格限制访问信息的人员范围，要求他们遵守保密义务。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">若发生个人信息泄露等安全事件，我们会启动应急预案，阻止安全事件扩大，并以推送通知、公告等形式告知您。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"bold\" style=\"margin: 0px; padding: 0px; font-weight: bold;\">4.我们如何使用信息</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">我们可能将通过某些功能所收集的信息用于我们的其他服务。例如，我们可能将在您使用我们一项功能时我们收集的信息，在另一服务中用于向您提供特定内容，包括但不限于展示广告等。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">为了确保服务的安全，帮助我们更好地了解我们应用程序的运行情况，我们可能记录相关信息，例如，您使用应用程序的频率、崩溃数据、总体使用情况、性能数据以及应用程序的来源。我们不会将我们存储在分析软件中的信息与您在应用程序中提供的任何个人身份信息相结合。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">如我们使用您的个人信息，超出了与收集时所声称的目的及具有直接或合理关联的范围，我们将在使用您的个人信息前，再次向您告知并征得您的明示同意。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"bold\" style=\"margin: 0px; padding: 0px; font-weight: bold;\">5.对外提供</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"under-line\" style=\"margin: 0px; padding: 0px; text-decoration-line: underline;\">目前，我们不会主动共享或转让您的个人信息至第三方，如存在其他共享或转让您的个人信息情形时，我们会征得您的明示同意。</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"under-line\" style=\"margin: 0px; padding: 0px; text-decoration-line: underline;\">我们不会对外公开披露其收集的个人信息，如必须公开披露时，我们会向您告知此次公开披露的目的、披露信息的类型及可能涉及的敏感信息，并征得您的明示同意。</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"under-line\" style=\"margin: 0px; padding: 0px; text-decoration-line: underline;\">随着我们业务的持续发展，我们有可能进行合并、收购、资产转让等交易，我们将告知您相关情形，按照法律法规及不低于本指引所要求的标准继续保护或要求新的控制者继续保护您的个人信息。</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"bold\" style=\"margin: 0px; padding: 0px; font-weight: bold;\">6.你的权利</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">在您使用河北移动期间，为了您可以更加便捷地访问、更正、删除您的个人信息，同时保障您撤回对个人信息使用的同意及注销账号的权利。此外，我们还设置了投诉举报渠道，您的意见将会得到及时的处理。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">6.1查询、修改、更正您的个人信息</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">您可以使用APP在“我的”频道点击左上角头像，进入“个人信息”菜单，查询您的个人信息以及修改、更正您的收件地址信息。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">6.2改变或撤回您的授权信息</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">对于您已经授权同意我们收集和使用的终端设备权限信息，您可以通过在终端设备进行设置、改变或撤回您的授权同意；您改变或撤回授权同意后，可能无法使用相应的功能服务。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"bold\" style=\"margin: 0px; padding: 0px; font-weight: bold;\">7.变更</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">我们可能会适时对本指引进行修订。当指引的条款发生变更时，我们会在您登录及版本更新时以推送通知、弹窗的形式向您展示变更后的指引。请您注意，只有在您点击弹窗中的同意按钮后，我们才会按照更新后的指引收集、使用、存储您的个人信息。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"bold\" style=\"margin: 0px; padding: 0px; font-weight: bold;\">8.未成年人保护</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">我们非常重视对未成年人个人信息的保护。根据相关法律法规的规定，若您是18周岁以下的未成年人，应在监护人监护、指导下使用河北移动服务。若您是未成年人的监护人，当您对您所监护的未成年人的个人信息有相关疑问时，请通过河北移动“意见反馈”功能将您的疑问反馈我们。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\"><span class=\"bold\" style=\"margin: 0px; padding: 0px; font-weight: bold;\">9.隐私和通信权益保护</span></p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">9.1 您的通信自由和通信秘密不受侵犯，河北移动对您的客户资料和通信信息负有保密义务。但根据法律法规规定，司法、行政机关依法要求河北移动提供协助和配合，河北移动给予协助和配合的，不构成违反保密义务。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">9.2 河北移动收集、使用您的个人信息，应当遵循合法、正当、必要的原则。河北移动可以通过业务受理系统登记、纸质返档等方式，以提供电信服务为目的，在业务活动中收集、使用您的个人信息。您可以通过营业厅、网站等渠道，对其个人信息进行查询、更正。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">备注：您的个人信息，是指电信业务经营者在提供服务的过程中的用户姓名、身份证件号码、住址、电话号码等能够单独或者与其他信息结合识别用户的信息以及用户使用服务的时间、地点等信息。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">9.3 河北移动应严格按照《全国人民代表大会常务委员会关于加强网络信息保护的决定》、《电信和互联网用户个人信息保护规定》（工业和信息化部令第24号）《电话用户真实身份信息登记规定》（工业和信息化部令第25号）等法律法规的相关要求，对其在提供服务过程中收集、使用的您的个人信息履行保护义务。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">五、如何联系我们。</p><p style=\"margin-bottom: 0px; padding: 0px; word-break: break-all; overflow-wrap: break-word; color: rgb(51, 51, 51); font-size: 27px; line-height: 2; text-indent: 2em; font-family: &quot;Helvetica Neue&quot;, Arial, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Heiti SC&quot;, STHeiti, &quot;Microsoft Yahei&quot;, &quot;Source Han Sans SC&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Droid Sans Fallback&quot;, sans-serif;\">如您对本隐私政策或您个人信息的相关事宜有任何问题、意见或建议，您可以拨打10086客服热线联系我们，或者在APP“我的”频道“设置”菜单下“意见反馈”中提交相关内容，我们将及时进行处理。</p>');

-- ----------------------------
-- Table structure for sys_privilege_page
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege_page`;
CREATE TABLE `sys_privilege_page`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '特权页面表主键',
  `privilege_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '特权页面内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通用户', 'common', 2, '1', '0', '0', 'admin', '2019-12-20 09:47:00', 'admin', '2019-12-28 18:21:26', '');
INSERT INTO `sys_role` VALUES (3, 'vip', 'vip', 3, '1', '0', '2', 'admin', '2019-12-20 10:55:11', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (3, 3);
INSERT INTO `sys_role_menu` VALUES (3, 113);
INSERT INTO `sys_role_menu` VALUES (3, 114);
INSERT INTO `sys_role_menu` VALUES (3, 115);
INSERT INTO `sys_role_menu` VALUES (3, 1057);
INSERT INTO `sys_role_menu` VALUES (3, 1058);
INSERT INTO `sys_role_menu` VALUES (3, 1059);
INSERT INTO `sys_role_menu` VALUES (3, 1060);
INSERT INTO `sys_role_menu` VALUES (3, 1061);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 2);
INSERT INTO `sys_role_menu` VALUES (4, 100);
INSERT INTO `sys_role_menu` VALUES (4, 101);
INSERT INTO `sys_role_menu` VALUES (4, 102);
INSERT INTO `sys_role_menu` VALUES (4, 105);
INSERT INTO `sys_role_menu` VALUES (4, 106);
INSERT INTO `sys_role_menu` VALUES (4, 107);
INSERT INTO `sys_role_menu` VALUES (4, 108);
INSERT INTO `sys_role_menu` VALUES (4, 110);
INSERT INTO `sys_role_menu` VALUES (4, 111);
INSERT INTO `sys_role_menu` VALUES (4, 112);
INSERT INTO `sys_role_menu` VALUES (4, 500);
INSERT INTO `sys_role_menu` VALUES (4, 501);
INSERT INTO `sys_role_menu` VALUES (4, 1000);
INSERT INTO `sys_role_menu` VALUES (4, 1001);
INSERT INTO `sys_role_menu` VALUES (4, 1002);
INSERT INTO `sys_role_menu` VALUES (4, 1003);
INSERT INTO `sys_role_menu` VALUES (4, 1004);
INSERT INTO `sys_role_menu` VALUES (4, 1005);
INSERT INTO `sys_role_menu` VALUES (4, 1006);
INSERT INTO `sys_role_menu` VALUES (4, 1007);
INSERT INTO `sys_role_menu` VALUES (4, 1008);
INSERT INTO `sys_role_menu` VALUES (4, 1009);
INSERT INTO `sys_role_menu` VALUES (4, 1010);
INSERT INTO `sys_role_menu` VALUES (4, 1011);
INSERT INTO `sys_role_menu` VALUES (4, 1012);
INSERT INTO `sys_role_menu` VALUES (4, 1013);
INSERT INTO `sys_role_menu` VALUES (4, 1014);
INSERT INTO `sys_role_menu` VALUES (4, 1015);
INSERT INTO `sys_role_menu` VALUES (4, 1025);
INSERT INTO `sys_role_menu` VALUES (4, 1026);
INSERT INTO `sys_role_menu` VALUES (4, 1027);
INSERT INTO `sys_role_menu` VALUES (4, 1028);
INSERT INTO `sys_role_menu` VALUES (4, 1029);
INSERT INTO `sys_role_menu` VALUES (4, 1030);
INSERT INTO `sys_role_menu` VALUES (4, 1031);
INSERT INTO `sys_role_menu` VALUES (4, 1032);
INSERT INTO `sys_role_menu` VALUES (4, 1033);
INSERT INTO `sys_role_menu` VALUES (4, 1034);
INSERT INTO `sys_role_menu` VALUES (4, 1035);
INSERT INTO `sys_role_menu` VALUES (4, 1036);
INSERT INTO `sys_role_menu` VALUES (4, 1037);
INSERT INTO `sys_role_menu` VALUES (4, 1038);
INSERT INTO `sys_role_menu` VALUES (4, 1039);
INSERT INTO `sys_role_menu` VALUES (4, 1040);
INSERT INTO `sys_role_menu` VALUES (4, 1041);
INSERT INTO `sys_role_menu` VALUES (4, 1042);
INSERT INTO `sys_role_menu` VALUES (4, 1043);
INSERT INTO `sys_role_menu` VALUES (4, 1044);
INSERT INTO `sys_role_menu` VALUES (4, 1045);
INSERT INTO `sys_role_menu` VALUES (4, 1046);
INSERT INTO `sys_role_menu` VALUES (4, 1050);
INSERT INTO `sys_role_menu` VALUES (4, 1051);
INSERT INTO `sys_role_menu` VALUES (4, 1052);
INSERT INTO `sys_role_menu` VALUES (4, 1053);
INSERT INTO `sys_role_menu` VALUES (4, 1054);
INSERT INTO `sys_role_menu` VALUES (4, 1055);
INSERT INTO `sys_role_menu` VALUES (4, 1056);

-- ----------------------------
-- Table structure for sys_set
-- ----------------------------
DROP TABLE IF EXISTS `sys_set`;
CREATE TABLE `sys_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `each_day_num` int(11) NULL DEFAULT NULL COMMENT '每天滑动次数',
  `vip_day_num` int(11) NULL DEFAULT NULL COMMENT '开通会员每天可滑动次数',
  `register_free_num` int(11) NULL DEFAULT NULL COMMENT '注册赠送滑动次数',
  `vip_free_num` int(11) NULL DEFAULT NULL COMMENT '会员开通赠送滑动次数',
  `invite_free_num` int(11) NULL DEFAULT NULL COMMENT '邀请好友赠送滑动次数',
  `binding_free_num` int(11) NULL DEFAULT NULL COMMENT '绑定关系赠送滑动次数',
  `withdraw_lowest` decimal(8, 2) NULL DEFAULT NULL COMMENT '提现最低限制',
  `withdraw_star` tinyint(2) NULL DEFAULT NULL COMMENT '提现开始时间(号)',
  `withdraw_over` tinyint(2) NULL DEFAULT NULL COMMENT '提现结束时间(号)',
  `discount_rate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '折现比例',
  `treasure` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费一钻石对应多少财富值',
  `tim_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '腾讯im的管理员名',
  `tim_sig` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '腾讯im的管理者秘钥',
  `share_num` int(11) NULL DEFAULT 0 COMMENT '分享赠送滑动次数',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `ext1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ext2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_set
-- ----------------------------
INSERT INTO `sys_set` VALUES (1, 50, 200, 10, 200, 10, 50, 100.00, 6, 26, '0.125', '1000', 'administrator', 'eJwtjMsOgjAURP*lWw1cylMSF74SohIjois2TVrMlVCb0ghq-HcJMLs5Mzlfkh8v1ktoEhNqAZkPHbmQBkscMOM1SmyMZuapp0PDK6YUchI7HgBdeBC64yI6hVr03Pd9CgAjNVgPLOzjOk4wWfDe*1etyQLR6kjWSZfv1XV9mz3SQ2HTJC-s044HJX2nm8-2XGXRkvz*xxk1OQ__', 1, '2019-12-18 13:55:21', '2020-01-11 16:25:22', '', '20');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用,拉黑）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '超级管理员', '00', 'ry@163.com', '15888888888', '0', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '192.168.0.119', '2020-01-11 16:24:53', 'admin', '2018-03-16 11:33:00', 'ry', '2020-01-11 16:28:10', '超级管理员');
INSERT INTO `sys_user` VALUES (2, 'liyuanfang', '李元芳', '00', 'y997090615@163.com', '15888888870', '0', '', '880157a10b48df11c3054c38eed75882', 'c63129', '0', '0', '0:0:0:0:0:0:0:1', '2019-12-20 13:15:01', 'admin', '2019-12-20 09:47:17', '', '2019-12-28 18:23:21', NULL);
INSERT INTO `sys_user` VALUES (3, 'test', 'test', '00', 'test@163.com', '19939922505', '0', '', '9846648057a6c6e1a3673a93cac83044', '9d9be0', '0', '0', '0:0:0:0:0:0:0:1', '2019-12-28 18:22:57', 'admin', '2019-12-28 18:09:22', '', '2019-12-28 18:22:57', NULL);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 2);
INSERT INTO `sys_user_role` VALUES (5, 4);

-- ----------------------------
-- Table structure for sys_vip_content
-- ----------------------------
DROP TABLE IF EXISTS `sys_vip_content`;
CREATE TABLE `sys_vip_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员特权页面',
  `vip_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '会员特权页面内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员特权页面内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_vip_content
-- ----------------------------
INSERT INTO `sys_vip_content` VALUES (1, '寻找好友更精确');
INSERT INTO `sys_vip_content` VALUES (2, '每天可滑动次数200');
INSERT INTO `sys_vip_content` VALUES (3, '可查看谁喜欢我');
INSERT INTO `sys_vip_content` VALUES (4, '续费会送滑动次数100');
INSERT INTO `sys_vip_content` VALUES (5, '可通过属性、年龄、身高、体重等条件筛选');

-- ----------------------------
-- Function structure for GET_FIRST_PINYIN_CHAR
-- ----------------------------
DROP FUNCTION IF EXISTS `GET_FIRST_PINYIN_CHAR`;
delimiter ;;
CREATE DEFINER=`root`@`%` FUNCTION `GET_FIRST_PINYIN_CHAR`(PARAM VARCHAR(255)) RETURNS varchar(2) CHARSET utf8
    DETERMINISTIC
BEGIN DECLARE V_RETURN VARCHAR(255);
    DECLARE V_FIRST_CHAR VARCHAR(2);
    SET V_FIRST_CHAR = UPPER(LEFT(PARAM,1));
    SET V_RETURN = V_FIRST_CHAR;
    IF LENGTH( V_FIRST_CHAR) <> CHARACTER_LENGTH( V_FIRST_CHAR ) THEN
    SET V_RETURN = ELT(INTERVAL(CONV(HEX(LEFT(CONVERT(PARAM USING gbk),1)),16,10),
        0xB0A1,0xB0C5,0xB2C1,0xB4EE,0xB6EA,0xB7A2,0xB8C1,0xB9FE,0xBBF7,
        0xBFA6,0xC0AC,0xC2E8,0xC4C3,0xC5B6,0xC5BE,0xC6DA,0xC8BB,
        0xC8F6,0xCBFA,0xCDDA,0xCEF4,0xD1B9,0xD4D1),
    'A','B','C','D','E','F','G','H','J','K','L','M','N','O','P','Q','R','S','T','W','X','Y','Z');
    END IF;
    RETURN V_RETURN;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
