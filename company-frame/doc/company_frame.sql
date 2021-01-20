/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : company_frame

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 20/01/2021 15:54:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for candidate_information
-- ----------------------------
DROP TABLE IF EXISTS `candidate_information`;
CREATE TABLE `candidate_information`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `needs_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `process_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程编号',
  `candidate_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `school` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校',
  `person_work` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `id_card` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `entry_date` date NULL DEFAULT NULL COMMENT '可入职时间',
  `graduated_date` date NULL DEFAULT NULL COMMENT '毕业时间',
  `profession` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `sex` tinyint(4) NULL DEFAULT NULL COMMENT '性别:1男2女',
  `pravidor_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `contract_nature` tinyint(4) NULL DEFAULT NULL COMMENT '（人员外包、项目外包、维保）',
  `arrive_date` date NULL DEFAULT NULL COMMENT '实际到岗时间',
  `is_leave` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '在职状态-Y:离职N:在职',
  `price` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报价',
  `file_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '压缩的文件夹名称',
  `path_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简历名称相应候选人的简历名称，带上后缀名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态(1:正常；0:弃用)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '候选人信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of candidate_information
-- ----------------------------
INSERT INTO `candidate_information` VALUES ('1', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '1', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('10', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '2', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('11', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '1', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('12', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '2', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('13', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '1', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('14', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '2', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('15', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '1', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('16', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '2', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('2', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '2', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('3', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '1', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('4', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '2', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('5', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '1', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('6', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '2', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('7', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '1', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('8', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '2', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);
INSERT INTO `candidate_information` VALUES ('9', '1', '12345', '候选人1', '东北大学', '计算机科学', '12345678901', '12345677', '2021-01-04', '2021-01-04', '计算机', 1, '1', 1, '2021-01-04', 'y', '19000', '简历1', '/ww', '2021-01-04 09:34:35', '2021-01-04 09:34:37', 1, 1);

-- ----------------------------
-- Table structure for rec_supplier
-- ----------------------------
DROP TABLE IF EXISTS `rec_supplier`;
CREATE TABLE `rec_supplier`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `provider_name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `provider_code` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态(1:正常；0:弃用)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘需求' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rec_supplier
-- ----------------------------
INSERT INTO `rec_supplier` VALUES ('1', '北京东方融创信息技术有限公司', 'DFRC', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('10', '大商所飞泰测试技术有限公司', 'FTCS', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('11', '北京恒光数码科技有限公司', 'HGSM', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('12', '匡衡软件（北京）有限公司', 'KHRJ', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('13', '群思科技（武汉）有限公司', 'QSKJ', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('14', '神州数码系统集成服务有限公司', 'SMJC', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('15', '上海新致软件股份有限公司', 'XZRJ', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('16', '深圳市赢和信息技术有限公司', 'YHXX', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('2', '深圳市法本信息技术股份有限公司', 'FBXX', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('3', '北京汇智翔宇科技有限公司', 'HZXY', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('4', '神州数码融信软件有限公司', 'SZSM', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('5', '上海邦信信息技术有限公司', 'SHBX', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('6', '北京智蓝云信科技有限公司', 'ZLYX', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('7', '丞时信息科技（舟山）有限公司', 'CSXX', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('8', '福建顶点软件股份有限公司', 'DDRJ', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);
INSERT INTO `rec_supplier` VALUES ('9', '大连飞创信息技术有限公司', 'FCXX', 1, '2021-01-07 10:38:31', '2021-01-07 10:38:28', 1);

-- ----------------------------
-- Table structure for recruitment_needs
-- ----------------------------
DROP TABLE IF EXISTS `recruitment_needs`;
CREATE TABLE `recruitment_needs`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `process_code` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程编号',
  `jd_description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JD描述',
  `jd_path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JD附件路径（会存在上传JD附件的情况）',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态(1:正常；0:弃用)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘需求' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recruitment_needs
-- ----------------------------
INSERT INTO `recruitment_needs` VALUES ('1', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('10', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('11', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('12', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('13', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('14', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 0);
INSERT INTO `recruitment_needs` VALUES ('15', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('16', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('2', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 0);
INSERT INTO `recruitment_needs` VALUES ('3', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('4', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 0);
INSERT INTO `recruitment_needs` VALUES ('5', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('6', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('7', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('8', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);
INSERT INTO `recruitment_needs` VALUES ('9', '1234', 'ndfsdnfsad', 'www.baidu.com', 1, '2020-12-29 17:34:11', '2020-12-29 17:34:14', 1);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `dept_no` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编号(规则：父级关系编码+自己的编码)',
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `pid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级id',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态(1:正常；0:弃用)',
  `relation_code` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '为了维护更深层级关系',
  `dept_manager_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门经理user_id',
  `manager_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门经理名称',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门经理联系电话',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('4bd0b0a3-097d-4902-a1f7-641ea3b771bd', 'YXD000004', '深圳分布', '72a4f388-50f8-4019-8c67-530cd7c74e7a', 1, 'YXD000004', NULL, '张杨', '13899999999', '2019-11-05 12:24:50', '2019-11-09 21:22:55', 1);
INSERT INTO `sys_dept` VALUES ('72a4f388-50f8-4019-8c67-530cd7c74e7a', 'YXD000005', '总公司', '0', 1, 'YXD000005YXD000004', NULL, 'yws', '13888888888', '2019-11-07 22:43:33', NULL, 1);
INSERT INTO `sys_dept` VALUES ('a4f3e984-622b-4330-bcda-0ea01e44d299', 'YXD000005', '广州分部', '72a4f388-50f8-4019-8c67-530cd7c74e7a', 1, 'YXD000005YXD000004YXD000005', NULL, '小张', '13899999999', '2020-01-01 19:58:17', NULL, 1);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `time` int(11) NULL DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('0074733b-4eed-48ff-bd2e-4b73b7fcba14', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取候选信息', 52, 'com.szxx.recruit.controller.CustomerController.getPageCandidates()', '[{\"needsId\":\"1\",\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:31:28');
INSERT INTO `sys_log` VALUES ('019f70d9-815b-4402-acf9-18598d89bcaa', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 15, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:07:11');
INSERT INTO `sys_log` VALUES ('01ca2a68-4c4f-41b4-ac8e-cd843367705b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 89, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:26:58');
INSERT INTO `sys_log` VALUES ('02843fcd-cac1-4479-ab68-cdd71ece66cd', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 32, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:38:16');
INSERT INTO `sys_log` VALUES ('02dae36b-beee-4955-8609-40a9e514310d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:42');
INSERT INTO `sys_log` VALUES ('02ee0ebd-bdf0-418f-a51a-d020bed7eb1b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 9, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:17:01');
INSERT INTO `sys_log` VALUES ('02fc8e88-612e-4975-a744-20fbb7a38bfb', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 35, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:22:09');
INSERT INTO `sys_log` VALUES ('039a6f1b-e58d-410a-a93c-457be28d5fc2', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 103, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:30:44');
INSERT INTO `sys_log` VALUES ('04afd11f-8f92-4618-b583-449489184357', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 80, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:12:28');
INSERT INTO `sys_log` VALUES ('04bb18c7-6a90-4098-887f-dda9bfee17cd', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 6, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:15');
INSERT INTO `sys_log` VALUES ('04ebd575-6e30-4f18-adcb-24d0073f482a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 31, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:36:08');
INSERT INTO `sys_log` VALUES ('051d3d48-afef-4f1e-996e-562a53543012', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 21, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 14:15:03');
INSERT INTO `sys_log` VALUES ('05941b74-c82d-471d-9dab-f9a9d0a8793e', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 63, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:39:48');
INSERT INTO `sys_log` VALUES ('05d59f1a-6d59-4ff3-8a17-3a5ee78e778f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 34, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:27:03');
INSERT INTO `sys_log` VALUES ('072f9f41-7d13-4f81-a6a1-b6e0fa6c880d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 97, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:14:02');
INSERT INTO `sys_log` VALUES ('0774fbb9-dd3f-4156-a993-61ad3651b964', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 16, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 15:56:56');
INSERT INTO `sys_log` VALUES ('07c8f4e0-64c7-47d9-bd07-4ac9ec7758f9', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 39, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:58:40');
INSERT INTO `sys_log` VALUES ('07da10f0-bb61-4af0-b814-854080fa5237', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 18, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:27:05');
INSERT INTO `sys_log` VALUES ('082a8bb5-7106-4d1a-803e-679803293450', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 6149, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:51:45');
INSERT INTO `sys_log` VALUES ('0847543d-2f27-4713-808d-adbe747acc8b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 87, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 11:39:41');
INSERT INTO `sys_log` VALUES ('088cae1e-f647-4fab-8608-c654f62f925f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 9, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 15:56:56');
INSERT INTO `sys_log` VALUES ('08912cf1-1db3-46f6-9df6-573505ea2094', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 92, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:00:16');
INSERT INTO `sys_log` VALUES ('089ab39f-761a-40bf-bb88-c999fcb45b5f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 27, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:40:51');
INSERT INTO `sys_log` VALUES ('0a9466ed-f2a8-4cc9-9177-76d795f55591', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 21, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:45:48');
INSERT INTO `sys_log` VALUES ('0ab8ba3d-f5fb-41d3-8209-d2baa7343229', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 9, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:16');
INSERT INTO `sys_log` VALUES ('0ac74a91-7dcc-44bf-b975-530f01b675ee', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 14, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:02:07');
INSERT INTO `sys_log` VALUES ('0b87f611-d7a1-4cdc-ba98-3a27590ed977', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 172, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 09:03:07');
INSERT INTO `sys_log` VALUES ('0ca672b2-4aff-4cf6-b0e0-85cafd5e167b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 138, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:36:06');
INSERT INTO `sys_log` VALUES ('0d6fb7b0-0afe-47c2-bfa2-2de383094d98', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '角色管理-分页获取角色信息', 9, 'com.szxx.recruit.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 11:47:57');
INSERT INTO `sys_log` VALUES ('0d99ea9f-d0ce-4832-b0bb-70492b97f78a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 14, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-06 16:55:34');
INSERT INTO `sys_log` VALUES ('0ec4aff4-b02d-457d-b954-e9d74c6ae662', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 18, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:39:50');
INSERT INTO `sys_log` VALUES ('0f14996e-3315-4f4f-828e-db8397cce3f3', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:43:21');
INSERT INTO `sys_log` VALUES ('101cb215-b04c-408b-8b9c-47c086b26b91', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 63, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:59:25');
INSERT INTO `sys_log` VALUES ('11057808-db7a-409e-a154-dff21a263708', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:07:21');
INSERT INTO `sys_log` VALUES ('117257ae-4fde-46ef-b3ea-53323d1a63af', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:40:27');
INSERT INTO `sys_log` VALUES ('11ea6c6e-bcd5-476d-98f4-1870deacc0e4', NULL, NULL, '用户管理-用户刷新token', 360, 'com.szxx.recruit.controller.UserController.refreshToken()', NULL, '127.0.0.1', '2021-01-08 11:03:42');
INSERT INTO `sys_log` VALUES ('1294e7bb-f8b1-4eee-9765-eb566d056193', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '机构管理-树型组织列表', 14, 'com.szxx.recruit.controller.DeptController.getTree()', '[\"72a4f388-50f8-4019-8c67-530cd7c74e7a\"]', '127.0.0.1', '2021-01-07 11:48:15');
INSERT INTO `sys_log` VALUES ('1370c181-2260-4bc1-b8f7-b786317ea50f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 33, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:22:37');
INSERT INTO `sys_log` VALUES ('14a35a88-188c-4c93-b087-f91d9980b71b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:41:05');
INSERT INTO `sys_log` VALUES ('15183069-a54b-4d81-84f3-ed0c6e12d308', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 39, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:48:35');
INSERT INTO `sys_log` VALUES ('1542881e-cc84-496b-b6be-a161e362f3bf', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '角色管理-分页获取角色信息', 7, 'com.szxx.recruit.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 13:52:36');
INSERT INTO `sys_log` VALUES ('1552de60-3bb6-4aae-8b56-eb7e98e567a4', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 35, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:26:59');
INSERT INTO `sys_log` VALUES ('158b6b6e-5c19-42f1-863e-5fbd20d5fdb1', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 32, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 09:03:08');
INSERT INTO `sys_log` VALUES ('1635c39f-b107-428e-ae5b-70a46ae39e15', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 22, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:04:32');
INSERT INTO `sys_log` VALUES ('16a76847-2187-4d7c-b0f6-c78cf47bcf36', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 20, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:15:06');
INSERT INTO `sys_log` VALUES ('1752a18d-a090-4807-b092-9f08897cffa6', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 121, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:22:34');
INSERT INTO `sys_log` VALUES ('1775ef8e-7edb-4e66-9126-797dffe3b88f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 7, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:53');
INSERT INTO `sys_log` VALUES ('18bd8179-e433-41f1-a43b-946511788bff', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 24, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:06:23');
INSERT INTO `sys_log` VALUES ('18f7efb5-669e-4dc5-887e-b3576be665cc', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 36, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:36:12');
INSERT INTO `sys_log` VALUES ('1a9f485f-bd77-4214-ac11-62d53028a5b5', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 34, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:45:31');
INSERT INTO `sys_log` VALUES ('1b03f5e8-790a-4e97-ab2c-1283f5cf7abe', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 95, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 17:00:49');
INSERT INTO `sys_log` VALUES ('1b701f2c-8366-4ddf-a1c6-e6bb02e79743', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 27, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 16:51:03');
INSERT INTO `sys_log` VALUES ('1bfef1ca-fc32-4df6-bda9-76eb23f8c0ed', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 113, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 10:53:05');
INSERT INTO `sys_log` VALUES ('1c458826-03f3-4a33-95fd-526e76fccafe', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:46:08');
INSERT INTO `sys_log` VALUES ('1cad28b0-dfa4-4cd7-8ed8-9031bfce84fb', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 101, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:45:30');
INSERT INTO `sys_log` VALUES ('1d12d169-5f79-42df-a329-9954e9661c4f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 16, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 14:17:47');
INSERT INTO `sys_log` VALUES ('1e186cc0-304a-4c4b-9590-d13be6c4ac8d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 87, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:08:32');
INSERT INTO `sys_log` VALUES ('1e21bc93-9880-4823-8c6c-266c88c8cd96', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 97, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 10:44:28');
INSERT INTO `sys_log` VALUES ('1e5be7a9-e667-41b8-999a-76243d174430', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 16, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 15:56:54');
INSERT INTO `sys_log` VALUES ('1ea45e9b-c412-4aaa-9418-f22977a801d1', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 32, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:07:04');
INSERT INTO `sys_log` VALUES ('1ef69a08-680a-4080-8879-2289c0177e19', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 10, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:29:16');
INSERT INTO `sys_log` VALUES ('1f31c959-3205-45a8-a45d-5bbc3ce64107', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '机构管理-获取所有组织机构', 5, 'com.szxx.recruit.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '2021-01-07 11:48:14');
INSERT INTO `sys_log` VALUES ('211dd2e8-7d4a-4682-86a7-5214c0e416a5', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 2, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2021-02-12 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2021-01-16 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:10:13');
INSERT INTO `sys_log` VALUES ('219e86a2-92a6-4808-81f5-66dbd00360e4', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 66, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:15:02');
INSERT INTO `sys_log` VALUES ('224ff72f-a18b-4263-a498-e6b0d8ec4a0e', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 10, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:04:02');
INSERT INTO `sys_log` VALUES ('23496b84-7df6-4b4c-81e1-7b4b6f6951b4', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 99, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:40:22');
INSERT INTO `sys_log` VALUES ('23765484-e991-4eed-8f39-435daa64c7b9', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 71, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:54:40');
INSERT INTO `sys_log` VALUES ('25037a6f-99d5-4944-894b-69e277eab072', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 33, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 10:29:28');
INSERT INTO `sys_log` VALUES ('26523c2f-be42-47de-95ec-9efad720cc22', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '用户管理-分页获取用户列表', 14, 'com.szxx.recruit.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 11:48:17');
INSERT INTO `sys_log` VALUES ('26bcb483-85b0-4312-9328-f23999e6eb71', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户模块-招聘需求', 15250, 'com.szxx.recruit.controller.CustomerController.sendRecruitRequest()', NULL, '0:0:0:0:0:0:0:1', '2021-01-08 17:35:01');
INSERT INTO `sys_log` VALUES ('274cebc7-bb6b-447d-af66-d36ed7a5d477', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '菜单权限管理-获取所有目录菜单树', 54, 'com.szxx.recruit.controller.PermissionController.getAllMenusPermissionTree()', '[\"8\"]', '127.0.0.1', '2021-01-07 11:48:11');
INSERT INTO `sys_log` VALUES ('276834e8-ce97-4c7d-bf57-30f06c17c3b2', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:18:16');
INSERT INTO `sys_log` VALUES ('28d95061-9e9b-4496-bd66-82d87bab53a0', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 86, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:22:07');
INSERT INTO `sys_log` VALUES ('2a756158-a0e4-44e5-aac0-c9a1068157e5', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 79, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 10:51:50');
INSERT INTO `sys_log` VALUES ('2a7b2d36-2edb-44fa-abff-17040d767189', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 31, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:34:38');
INSERT INTO `sys_log` VALUES ('2b1ea125-e989-46a3-86bc-c26f7e38a82b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 15, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:48:59');
INSERT INTO `sys_log` VALUES ('2ba2c086-678c-4ba8-a215-de32891ce200', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 25, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:43:48');
INSERT INTO `sys_log` VALUES ('2bc1ce2a-bc24-4108-b748-dcf6db67a534', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 7, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:20');
INSERT INTO `sys_log` VALUES ('2c64906f-54a5-4449-bdb1-e8cc83ed109c', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 17, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:12:56');
INSERT INTO `sys_log` VALUES ('2d2eb7d9-b94a-4b02-9758-ed6184509837', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 6, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:41:06');
INSERT INTO `sys_log` VALUES ('2d8cc315-12d2-4546-bb7c-27dbfc195587', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 85, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 14:52:31');
INSERT INTO `sys_log` VALUES ('2f2c39fe-d6f7-4a79-9489-9acab9173a51', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 8, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:41:07');
INSERT INTO `sys_log` VALUES ('2f9be1bc-986a-4163-a59d-7d65e081ef45', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 133, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 09:16:48');
INSERT INTO `sys_log` VALUES ('2fb6ab6f-8d4e-4471-ae1d-f9162b968de3', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 26, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:55');
INSERT INTO `sys_log` VALUES ('31bc2fb0-1084-4250-986e-54738e4c8846', NULL, NULL, '用户管理-用户刷新token', 35, 'com.szxx.recruit.controller.UserController.refreshToken()', NULL, '127.0.0.1', '2021-01-07 15:56:54');
INSERT INTO `sys_log` VALUES ('322e2ee8-a921-4682-9544-b0679686a1c1', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 7, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:18');
INSERT INTO `sys_log` VALUES ('32605098-4112-402c-8eb7-3e96ae40e290', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 29, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:25:55');
INSERT INTO `sys_log` VALUES ('32721171-f758-4a83-8c99-f0ac7f8a6c1d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 110, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 14:48:11');
INSERT INTO `sys_log` VALUES ('331b8c46-0e12-456f-b3c6-044fa116e617', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:46:02');
INSERT INTO `sys_log` VALUES ('336e1c25-108d-47dd-be2f-fd4d45b02325', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 9, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:17:04');
INSERT INTO `sys_log` VALUES ('34b73464-c99a-4dc5-9c6b-289d79335425', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 15, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 16:51:18');
INSERT INTO `sys_log` VALUES ('34c09d0e-5031-4955-af9c-d6cf6daf951d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 33, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:31:10');
INSERT INTO `sys_log` VALUES ('35dab15f-7b48-4029-b9a3-6304c3a61f72', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 13, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:40:07');
INSERT INTO `sys_log` VALUES ('379abdcf-c431-4f9c-a9e5-72f2ee18def4', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 25, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 14:16:29');
INSERT INTO `sys_log` VALUES ('37b75fc5-1e75-45c6-8177-9898b8b3c5ea', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 25, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 18:14:28');
INSERT INTO `sys_log` VALUES ('39c880b5-80b0-4b61-ba1f-960ad79fa955', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 5, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:56');
INSERT INTO `sys_log` VALUES ('3abfb7fc-a07b-4544-8614-bf6984c36e3e', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 33, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 10:44:34');
INSERT INTO `sys_log` VALUES ('3d5a0782-0827-4fd7-8b05-7fda0badfe74', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 175, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:01:43');
INSERT INTO `sys_log` VALUES ('3db53ea7-e7e5-4a48-9305-88f4f8c28e4c', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '客户管理-分页获取需求信息', 17, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:59:19');
INSERT INTO `sys_log` VALUES ('3dced2a8-d290-466f-84b7-bc00bb29e840', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 26, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:14:53');
INSERT INTO `sys_log` VALUES ('3e5263e0-0da6-4b9c-9f85-1a7d88b0aad4', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 10, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:17:05');
INSERT INTO `sys_log` VALUES ('3e881416-35b7-4b12-a07c-c27a5086071b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 481, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:02:03');
INSERT INTO `sys_log` VALUES ('408d8070-6d87-4ed9-a8ea-f8b1919e8c53', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 8893, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2021-02-12 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2021-01-16 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:11:10');
INSERT INTO `sys_log` VALUES ('40939250-fd40-4b81-a16f-271ea382cb92', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 5375, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:31:46');
INSERT INTO `sys_log` VALUES ('40b503e9-a7e4-40ca-87a2-c20ed6d0bd97', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 70, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:34:36');
INSERT INTO `sys_log` VALUES ('412d13f6-1afd-47eb-bf23-a7fab4d11f2b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 30, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:03:45');
INSERT INTO `sys_log` VALUES ('412ffaff-7721-4f6c-8d6b-1d9a029a9346', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:02:26');
INSERT INTO `sys_log` VALUES ('416f0f24-c849-4474-8c5b-3e8be0d3d38d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 21, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:06:22');
INSERT INTO `sys_log` VALUES ('42187e0a-fa5e-40e2-a363-77a725d5a0b9', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 1985, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:51:55');
INSERT INTO `sys_log` VALUES ('4221e3f0-d776-4bb9-a5a5-3e9bb149be23', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取候选信息', 37, 'com.szxx.recruit.controller.CustomerController.getPageCandidates()', '[{\"needsId\":\"1\",\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:00');
INSERT INTO `sys_log` VALUES ('42a136a7-679c-4515-b374-af049541a1be', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '机构管理-获取所有组织机构', 6, 'com.szxx.recruit.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '2021-01-07 13:52:35');
INSERT INTO `sys_log` VALUES ('433a1144-7815-400b-acae-c9f7ff943b34', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 7, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:41:03');
INSERT INTO `sys_log` VALUES ('43d35750-7b29-4fe8-9dcd-f6f7895bb23d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 26, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:31:10');
INSERT INTO `sys_log` VALUES ('45ee40c5-f19d-432f-9f2e-8e3565bd1c68', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 98, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:08:12');
INSERT INTO `sys_log` VALUES ('46b6a916-7047-4941-b516-2d528c65263a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 45, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:47:29');
INSERT INTO `sys_log` VALUES ('46b9947d-f04c-47e1-8b56-8da121fef5f5', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 5, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:18');
INSERT INTO `sys_log` VALUES ('496b4dd6-7006-4c04-b742-865b5a783cbc', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 28, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:23:38');
INSERT INTO `sys_log` VALUES ('49d4b0c4-f78f-482b-8bd8-d44f15ac657c', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 21, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:49:02');
INSERT INTO `sys_log` VALUES ('4ac461c7-e0c4-4e4b-9f92-c7f3f9b250eb', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 25, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:00:56');
INSERT INTO `sys_log` VALUES ('4b387fc1-fa79-445d-ae66-e64f1a23efe2', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 3, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:52');
INSERT INTO `sys_log` VALUES ('4c56cd1b-dce6-4e82-bbf1-ef0b9c6f32a7', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:40:30');
INSERT INTO `sys_log` VALUES ('4c86c73d-ac5c-45aa-baf0-406b78c7cb15', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '用户管理-退出', 10, 'com.szxx.recruit.controller.UserController.logout()', NULL, '127.0.0.1', '2021-01-06 18:12:22');
INSERT INTO `sys_log` VALUES ('4d8959ce-a424-43ea-ae24-024e27518774', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 15, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:03:40');
INSERT INTO `sys_log` VALUES ('4db04708-109b-4816-bf14-20054d0283dd', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 18, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:22:38');
INSERT INTO `sys_log` VALUES ('4df1b9d0-2575-40a0-ba95-c5ca721bf08b', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '角色管理-分页获取角色信息', 13, 'com.szxx.recruit.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 11:48:14');
INSERT INTO `sys_log` VALUES ('4ea0e488-0749-4717-94f3-be797171e849', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 23, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 17:42:51');
INSERT INTO `sys_log` VALUES ('4ef22cd1-9871-4f23-90eb-c9a7e9227a3a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 167, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:58:39');
INSERT INTO `sys_log` VALUES ('4f6f5d05-1e76-4996-b3d8-89d29efbd7ef', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '角色管理-分页获取角色信息', 9, 'com.szxx.recruit.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 11:48:03');
INSERT INTO `sys_log` VALUES ('50e623f8-e865-4c81-8454-6f476e45f50f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 58, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:45:21');
INSERT INTO `sys_log` VALUES ('54669a2e-6d36-42aa-949b-10bb753f3658', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 23, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:08:17');
INSERT INTO `sys_log` VALUES ('5531581b-537f-4eaf-b111-e23e28479514', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 23, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:15:05');
INSERT INTO `sys_log` VALUES ('557209ff-bb2f-43c3-928f-491825dd22ac', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:40:33');
INSERT INTO `sys_log` VALUES ('55aadeee-5764-43e5-a0ab-4ac1787f6990', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 73, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:31:51');
INSERT INTO `sys_log` VALUES ('583198ef-1038-4f21-a3f1-c742d35e385b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 7, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:15');
INSERT INTO `sys_log` VALUES ('583a0465-972f-437f-aed9-ee682684515c', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 15, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:04:07');
INSERT INTO `sys_log` VALUES ('5892da98-0cf4-4d94-80ae-a622e5ed7674', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 75, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:23:37');
INSERT INTO `sys_log` VALUES ('58b41efc-65fb-4170-9315-5042ce59c10d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 17, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:31:09');
INSERT INTO `sys_log` VALUES ('595768c8-723b-469f-a24f-331a5bcca679', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 11, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:04:03');
INSERT INTO `sys_log` VALUES ('59dc9533-f7fe-4a76-b90f-2306cf468590', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 24, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:54:41');
INSERT INTO `sys_log` VALUES ('59fcb12f-ae4f-4c79-9f0a-329cee43a499', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 39, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 18:15:23');
INSERT INTO `sys_log` VALUES ('5a0b4a5b-2962-4842-904f-be471df0c1c7', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 8, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:04:22');
INSERT INTO `sys_log` VALUES ('5a42959c-4488-4c97-b779-ff1f6682e3b5', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户模块-招聘需求', 1909, 'com.szxx.recruit.controller.CustomerController.sendRecruitRequest()', NULL, '0:0:0:0:0:0:0:1', '2021-01-08 17:43:15');
INSERT INTO `sys_log` VALUES ('5ae656b7-57ba-407c-bd4b-b8b779cf0d68', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 37, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 14:48:19');
INSERT INTO `sys_log` VALUES ('5b808784-4524-4ec2-bd67-e99e9bfee8d7', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 12, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:22:45');
INSERT INTO `sys_log` VALUES ('5c049f72-3ff6-4cad-958d-e42bd00564d3', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 20, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:08:19');
INSERT INTO `sys_log` VALUES ('5d7f57b6-8a0c-41c9-9834-652ddd800e33', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 83, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 17:17:15');
INSERT INTO `sys_log` VALUES ('5e3047e2-8a40-4564-ab7a-fb34949e6714', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:07:29');
INSERT INTO `sys_log` VALUES ('5e90419c-d947-45cc-9fdb-6c32bbae37f8', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 10, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:48:54');
INSERT INTO `sys_log` VALUES ('5e97aef3-daa9-47fd-a129-cb7e44103114', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 374, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:31:06');
INSERT INTO `sys_log` VALUES ('5fda2e06-8384-4e2e-a62f-bc21248db2ce', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 92, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:44:46');
INSERT INTO `sys_log` VALUES ('6019582f-9e18-467a-901c-223c41de5824', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 5, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:10:07');
INSERT INTO `sys_log` VALUES ('61f0f95a-bd36-45b3-8d52-ff130e2a2e47', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 15, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:20:36');
INSERT INTO `sys_log` VALUES ('628e76a0-2780-41ec-9e1c-76699511287a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 12, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:34:39');
INSERT INTO `sys_log` VALUES ('63321e25-0f91-49af-8b40-26688a9ded77', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 9, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"id\":\"1\",\"pageNum\":1,\"pageSize\":10,\"status\":1}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:06:31');
INSERT INTO `sys_log` VALUES ('642e86be-6c57-4cd3-9261-71b95ba388ce', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '系统操作日志管理-分页查询系统操作日志', 20, 'com.szxx.recruit.controller.SysLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 13:52:40');
INSERT INTO `sys_log` VALUES ('64730bc0-a4d9-444a-b3cd-c2c26b8a8e4f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 10, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:45:53');
INSERT INTO `sys_log` VALUES ('655231ec-c655-415d-a05e-d15b7067bbc3', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 31, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:23:45');
INSERT INTO `sys_log` VALUES ('65e897cb-d588-4808-adff-a22a936ddd50', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 28, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:14:49');
INSERT INTO `sys_log` VALUES ('661b5608-8428-450d-b288-d2507881570a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:34:40');
INSERT INTO `sys_log` VALUES ('6631b342-30e8-4a5d-a859-4e0fd6b4983e', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 15, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:13:19');
INSERT INTO `sys_log` VALUES ('66c7cef6-d3f7-4fd4-8e3b-c2e6dbd2db28', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 34, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:07:01');
INSERT INTO `sys_log` VALUES ('676f3170-bf4a-4edc-8105-23999cffce74', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '用户管理-退出', 38, 'com.szxx.recruit.controller.UserController.logout()', NULL, '127.0.0.1', '2021-01-07 09:22:28');
INSERT INTO `sys_log` VALUES ('680a6731-7c74-472b-9a62-745f69351ef8', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '用户管理-退出', 23, 'com.szxx.recruit.controller.UserController.logout()', NULL, '127.0.0.1', '2021-01-11 14:37:21');
INSERT INTO `sys_log` VALUES ('6878440e-b66b-44d7-bc52-3c509e296491', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 14, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:04:20');
INSERT INTO `sys_log` VALUES ('6893ecf7-07c3-4326-b601-9f4f7deceda9', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 93, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:02:53');
INSERT INTO `sys_log` VALUES ('6b9f70c6-1ffb-47a9-8ea1-7c734f827b79', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 24, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 10:44:38');
INSERT INTO `sys_log` VALUES ('6c921383-4316-4ae6-b3ee-6b08dc935cf2', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 100, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:18:14');
INSERT INTO `sys_log` VALUES ('704ab878-bea6-4b44-b12d-59774195d4ea', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 12, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 09:03:21');
INSERT INTO `sys_log` VALUES ('704b953c-3254-4a88-a200-33f5b97a80b5', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 6, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 15:56:55');
INSERT INTO `sys_log` VALUES ('71121ca2-7853-4616-8714-4b1295372cc0', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 19, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:08:18');
INSERT INTO `sys_log` VALUES ('721b47ad-4cde-4b00-b780-7df0b1f6142d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 92, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:14:52');
INSERT INTO `sys_log` VALUES ('74f95c3e-8331-4f76-a9bf-cf74195ad6d7', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 6, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 15:56:58');
INSERT INTO `sys_log` VALUES ('758e467a-d344-49d3-853c-9bd67fe74153', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 89, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 10:52:05');
INSERT INTO `sys_log` VALUES ('75a4b865-3125-4837-94d9-3074b2df07a8', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 12, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:07:12');
INSERT INTO `sys_log` VALUES ('75c6c682-8a9a-4eda-93af-060023515219', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 31, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 16:39:03');
INSERT INTO `sys_log` VALUES ('76586369-25e6-49a3-82f8-0ba6da6143a8', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 15, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:40:29');
INSERT INTO `sys_log` VALUES ('7700ce32-5bae-4061-a2bd-b809ba74297e', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 7, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:41:10');
INSERT INTO `sys_log` VALUES ('77be56a7-5e6c-4375-be92-e29b21bd0bd9', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 35, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:40:32');
INSERT INTO `sys_log` VALUES ('78cda5aa-f99a-41bb-aa20-37034a56207f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:48:40');
INSERT INTO `sys_log` VALUES ('7901736b-7b46-43da-8bd3-11020022bd34', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:59:07');
INSERT INTO `sys_log` VALUES ('7b142805-3e6f-4bba-8955-239dd2b8a207', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 21, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:12:14');
INSERT INTO `sys_log` VALUES ('7bb78ce8-cf4b-4609-a9e8-efd38969f1ae', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 90, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:42:56');
INSERT INTO `sys_log` VALUES ('7c05beca-503b-41a3-a25c-c41f54835371', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 13, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:00:57');
INSERT INTO `sys_log` VALUES ('7ca1a94b-b370-436c-aa08-7d98955c4b9f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 20, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:51:36');
INSERT INTO `sys_log` VALUES ('7d831756-de41-46f9-9e4b-30734ce7c1af', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 100, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:41:43');
INSERT INTO `sys_log` VALUES ('7e831979-7c9e-4bb9-abac-f1e00f88536b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 12, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:44:02');
INSERT INTO `sys_log` VALUES ('7f5363fb-752d-43bf-92c2-336ae65337dd', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 9, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:52:05');
INSERT INTO `sys_log` VALUES ('833bf0e5-6221-47d5-99b4-8b957d181009', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 15, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:15:28');
INSERT INTO `sys_log` VALUES ('85d8cc7f-25bf-4e49-8fac-d82e8ff7ec4d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 7, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 13:24:53');
INSERT INTO `sys_log` VALUES ('86aa39ad-7fd7-456c-8cdb-4238491c77bb', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 86, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:40:50');
INSERT INTO `sys_log` VALUES ('86bcdf8e-bd9f-479a-b453-89d3316d3886', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 116, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:29:45');
INSERT INTO `sys_log` VALUES ('8765f657-cf17-4f6a-993c-ffed3804a7d1', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 38, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 10:41:27');
INSERT INTO `sys_log` VALUES ('886db9c0-ea83-48af-bee2-357fe5059669', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 6, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"status\":1}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:06:29');
INSERT INTO `sys_log` VALUES ('88865e1f-92eb-4976-8e91-392fc3ab8e70', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 9, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:52:03');
INSERT INTO `sys_log` VALUES ('88af5023-bbe2-418d-810f-6d79611211a8', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 10, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:03:48');
INSERT INTO `sys_log` VALUES ('89742dd6-3f78-47fc-b68e-52a0974a485c', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户模块-招聘需求', 2541, 'com.szxx.recruit.controller.CustomerController.sendRecruitRequest()', NULL, '0:0:0:0:0:0:0:1', '2021-01-08 17:40:16');
INSERT INTO `sys_log` VALUES ('89ef4592-8722-4882-8084-83faf0b2e4ae', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 21, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:42:57');
INSERT INTO `sys_log` VALUES ('8a0fd1e3-6980-49e6-8bf2-39134bb6af90', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 18, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:06:59');
INSERT INTO `sys_log` VALUES ('8ae6cf9c-a1aa-49ab-a519-4da8a6c7e46f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 41, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:02:54');
INSERT INTO `sys_log` VALUES ('8bd76123-0deb-4ba6-bc1f-f3b3ab824bc9', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 30, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:33:35');
INSERT INTO `sys_log` VALUES ('8c2f6d8d-e411-4f95-9676-99fa88f0f550', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 9, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:17:40');
INSERT INTO `sys_log` VALUES ('8d961e11-a3aa-41b5-8ad4-bad6ae763bd8', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 102, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:38:13');
INSERT INTO `sys_log` VALUES ('8e89fcf6-0da3-4359-b89f-4761cc332a79', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 9, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:18');
INSERT INTO `sys_log` VALUES ('8edb6ac8-1ddc-4f9b-b1ca-160a20915b20', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:04:32');
INSERT INTO `sys_log` VALUES ('8f1be8d9-b639-4dbe-b15b-b5668030018d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 99, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:28:44');
INSERT INTO `sys_log` VALUES ('8f749b7a-9335-40eb-bcb7-d91e25f17580', NULL, NULL, '用户管理-用户刷新token', 519, 'com.szxx.recruit.controller.UserController.refreshToken()', NULL, '127.0.0.1', '2021-01-08 16:54:36');
INSERT INTO `sys_log` VALUES ('8ff51c01-fba4-4625-b124-2c3592fb0123', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 22, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:16:47');
INSERT INTO `sys_log` VALUES ('90135f6d-2056-416f-8599-8f6bd146e301', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 15, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:59:26');
INSERT INTO `sys_log` VALUES ('90b812e3-f3dc-4093-b6c6-65b153c6f5d0', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:15:15');
INSERT INTO `sys_log` VALUES ('90c7359c-1451-4930-ac95-f12b020cff05', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 30, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:32:34');
INSERT INTO `sys_log` VALUES ('910b4f5a-84bc-4af8-bea1-2941d5830099', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 100, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:16:46');
INSERT INTO `sys_log` VALUES ('911a5828-356d-47b3-9433-0fb53796dd81', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 73, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:43:47');
INSERT INTO `sys_log` VALUES ('9131c011-a093-41d3-9e68-0ba132599314', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 17, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:48:43');
INSERT INTO `sys_log` VALUES ('915c4f09-eff0-41bd-b480-547807bfe3eb', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 34, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 09:03:16');
INSERT INTO `sys_log` VALUES ('9247f992-2ce3-4006-9c5e-61e4658d0f49', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 97, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 14:16:26');
INSERT INTO `sys_log` VALUES ('92a2e99b-912e-44fe-b081-4c1ff4f4186a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 10, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \",\"status\":1}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:59');
INSERT INTO `sys_log` VALUES ('92b5ce3b-a7c2-4cf0-bafb-c927e1feba1c', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 14, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:17:39');
INSERT INTO `sys_log` VALUES ('93518ba0-bb45-4516-b282-6a0017349dae', NULL, NULL, '用户管理-用户刷新token', 189, 'com.szxx.recruit.controller.UserController.refreshToken()', NULL, '127.0.0.1', '2021-01-11 14:37:20');
INSERT INTO `sys_log` VALUES ('938153d4-ec54-4d2e-88db-ba644993e203', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 19, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:08:20');
INSERT INTO `sys_log` VALUES ('93d16243-4ee8-4814-99a6-6944fac71ebc', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 12, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:03:15');
INSERT INTO `sys_log` VALUES ('959ee3b7-3898-4683-9330-08ee127f4139', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 19, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:31:52');
INSERT INTO `sys_log` VALUES ('9605241e-c8ee-475a-b70c-46cffe6c4d73', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:17:22');
INSERT INTO `sys_log` VALUES ('96d5c6bc-7485-4d23-a489-6feb2b136b4c', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 7, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 15:56:57');
INSERT INTO `sys_log` VALUES ('97636425-ccd7-47fd-9982-56ae3b24d172', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 5, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \",\"status\":1}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:58');
INSERT INTO `sys_log` VALUES ('98684128-f6cd-4d54-b783-cc736ec6d870', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 2562, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:48:32');
INSERT INTO `sys_log` VALUES ('98e07bca-e8d6-40ea-91f3-a27cc1464398', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '机构管理-获取所有组织机构', 14, 'com.szxx.recruit.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '2021-01-07 11:48:04');
INSERT INTO `sys_log` VALUES ('996ca06b-4aa2-4f1e-9240-6fb9d307f1e7', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 29, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"tttttt\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:17:39');
INSERT INTO `sys_log` VALUES ('9a6f529a-4bbd-4c76-8571-b4a88d3097a1', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 138, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:33:33');
INSERT INTO `sys_log` VALUES ('9a8cc69b-01f3-432d-83b4-db08868c3d36', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '菜单权限管理-获取所有目录菜单树', 78, 'com.szxx.recruit.controller.PermissionController.getAllPermissionTree()', NULL, '127.0.0.1', '2021-01-07 11:47:59');
INSERT INTO `sys_log` VALUES ('9c80cf01-7b44-4ff8-b5d0-d3d3f2c25cfd', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 15, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:24:03');
INSERT INTO `sys_log` VALUES ('9cdacfe0-933a-494a-b720-d00d245b5634', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 23, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:05:19');
INSERT INTO `sys_log` VALUES ('9cf25f1e-ab76-48e4-9e2b-bccfb2a749d8', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 12, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:15:29');
INSERT INTO `sys_log` VALUES ('9d06b679-adb2-4fdd-95e9-4a422f233889', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 25, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:14:03');
INSERT INTO `sys_log` VALUES ('9d595bd0-14f6-4b5d-91af-0a2de725ddb3', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 5, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:17');
INSERT INTO `sys_log` VALUES ('9db7ce2e-53d0-4ca9-bd69-d9e54574c3d0', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 33, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:29:30');
INSERT INTO `sys_log` VALUES ('9de66a9c-a33a-4e1d-bf87-d1b7ea6e24c0', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 38, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:22:35');
INSERT INTO `sys_log` VALUES ('a16b2d90-47f2-4e6c-bb11-3f3701c335fe', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 7, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:03:48');
INSERT INTO `sys_log` VALUES ('a171593f-13c7-442a-9b83-1a8060ade2d2', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 35, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:48:37');
INSERT INTO `sys_log` VALUES ('a1a6b281-f951-4379-b62f-2c073488b51d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 36, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:28:45');
INSERT INTO `sys_log` VALUES ('a21d46f7-b995-41a1-8992-3adb94a7a19f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 25, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:58:44');
INSERT INTO `sys_log` VALUES ('a3646e5c-8e81-44d3-a872-acde82a1bf89', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 78, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:40:43');
INSERT INTO `sys_log` VALUES ('a39931ae-e5ed-42fb-a58e-09e7b451e55a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 25, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:15:06');
INSERT INTO `sys_log` VALUES ('a487b7ac-7bb4-45ae-b0bb-14cc779fa52f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 10734, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2021-02-12 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2021-01-16 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:11:31');
INSERT INTO `sys_log` VALUES ('a5aeb301-f77e-4d9c-929b-156a35216295', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 7, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:17');
INSERT INTO `sys_log` VALUES ('a6fee925-c2ef-483f-9900-25352566cf74', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 30, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:29:47');
INSERT INTO `sys_log` VALUES ('a706a81b-e33e-4d59-805f-2803d6baf975', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 12, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:14');
INSERT INTO `sys_log` VALUES ('a851da56-0a53-42f9-9d5e-2d755740eccc', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 40, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:40:25');
INSERT INTO `sys_log` VALUES ('a8e533de-4e9d-41cf-9b4a-39d506ecb5ce', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 20, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 10:29:32');
INSERT INTO `sys_log` VALUES ('a9bfa115-04f4-42d6-9651-8a4426e5586b', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '用户管理-赋予角色-获取所有角色接口', 3, 'com.szxx.recruit.controller.UserController.getUserOwnRole()', '[\"1dfaafa7-fddf-46f2-b3d8-11bfe9ac7230\"]', '127.0.0.1', '2021-01-07 11:48:26');
INSERT INTO `sys_log` VALUES ('a9e1ce7a-d540-4a55-a127-a29bf08e51ab', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 14, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:31:59');
INSERT INTO `sys_log` VALUES ('aa63bb39-0208-4cac-a99b-39f11971f455', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '用户管理-退出', 16, 'com.szxx.recruit.controller.UserController.logout()', NULL, '127.0.0.1', '2021-01-07 11:47:42');
INSERT INTO `sys_log` VALUES ('aabf0d5d-a61f-42f5-b0cf-968c631006f6', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 67, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:29:11');
INSERT INTO `sys_log` VALUES ('aad84c76-c5e7-441e-809e-ac704431ba82', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 95, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:36:16');
INSERT INTO `sys_log` VALUES ('abb4e82d-3de4-42de-bd73-b1b93ce2dfc6', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 15, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 10:51:51');
INSERT INTO `sys_log` VALUES ('abed9da8-5b90-43fb-a6cd-7332e49cada2', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 13, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:17:00');
INSERT INTO `sys_log` VALUES ('ad2c7763-ed6e-4eaf-b123-dc25d5215fcc', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 82, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 18:15:22');
INSERT INTO `sys_log` VALUES ('ad4c99ca-cd2a-44fb-a687-14c2cd2dc606', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 126, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:57:08');
INSERT INTO `sys_log` VALUES ('addb2f56-389d-4703-b54b-5a06b9ea6997', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 17, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"id\":\"1\",\"pageNum\":1,\"pageSize\":10,\"status\":1}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:06:31');
INSERT INTO `sys_log` VALUES ('ae3a1c7e-0256-4a84-81f6-d63423568c56', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 4, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:55');
INSERT INTO `sys_log` VALUES ('ae46c29a-a018-4111-9d0f-170cf126c053', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 20, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 18:15:32');
INSERT INTO `sys_log` VALUES ('af65b7d3-0de1-434d-a9a8-d6e609d04e11', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 26, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:45:53');
INSERT INTO `sys_log` VALUES ('afefa570-6c3d-416d-9c5d-05e883185a1c', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '客户管理-分页获取需求信息', 88, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 16:53:23');
INSERT INTO `sys_log` VALUES ('b13b6560-7e84-40aa-8d69-e949fe117748', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 153, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 14:15:00');
INSERT INTO `sys_log` VALUES ('b14daf61-7c90-439f-9da1-649dffa2124e', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 47, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 14:48:12');
INSERT INTO `sys_log` VALUES ('b18446eb-81f0-452e-9e3e-f28da704f5fb', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 71, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:49:00');
INSERT INTO `sys_log` VALUES ('b18d0838-8f14-44a3-be65-f66099c95ffe', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 88, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 17:42:50');
INSERT INTO `sys_log` VALUES ('b1a491c2-e5cf-43b8-ac42-96e7387ed05f', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '用户管理-赋予角色-获取所有角色接口', 4, 'com.szxx.recruit.controller.UserController.getUserOwnRole()', '[\"1dfaafa7-fddf-46f2-b3d8-11bfe9ac7230\"]', '127.0.0.1', '2021-01-07 11:48:21');
INSERT INTO `sys_log` VALUES ('b1e5b039-c070-4cdb-bc5e-d8484b087780', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 7, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:23:48');
INSERT INTO `sys_log` VALUES ('b2cfb3dd-95f6-47de-bf64-8667836e0d45', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 12, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:38:35');
INSERT INTO `sys_log` VALUES ('b3c3ae46-ebea-4dcc-90e5-8ab2e8f380ef', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '客户管理-分页获取需求信息', 12, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:07:24');
INSERT INTO `sys_log` VALUES ('b4214d7c-8aa2-4574-a8c0-e6b09d70e1dd', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 12, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:20:35');
INSERT INTO `sys_log` VALUES ('b5166b87-f959-4f07-8d84-c09249961334', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 23, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:27:04');
INSERT INTO `sys_log` VALUES ('b5721439-2f1d-4f6d-a3db-99c8185fdcf2', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 7, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:40:20');
INSERT INTO `sys_log` VALUES ('b5f95fde-079f-407e-a596-19a94b5ebfb9', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 81, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:03:44');
INSERT INTO `sys_log` VALUES ('b60eba10-8b4d-4eac-af9b-5de119a652bc', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 106, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:27:02');
INSERT INTO `sys_log` VALUES ('b70fad12-7b7a-4a29-9348-600ddcb67cbd', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 19, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:30:46');
INSERT INTO `sys_log` VALUES ('b7f064f3-daa5-4919-b76b-4ca8751e522b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 119, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:24:02');
INSERT INTO `sys_log` VALUES ('b8a5a586-f712-42f0-af77-c37067cf8b32', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 22, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:33:55');
INSERT INTO `sys_log` VALUES ('b8e14122-4dbf-4c42-9c12-bb692578efa5', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 19, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:29:15');
INSERT INTO `sys_log` VALUES ('ba647025-c12e-4613-8489-6e129206bcbc', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '机构管理-树型组织列表', 11, 'com.szxx.recruit.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '2021-01-07 11:48:28');
INSERT INTO `sys_log` VALUES ('ba8c30c5-fe3d-479e-a3b7-f01b4e994a20', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 18, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:43:52');
INSERT INTO `sys_log` VALUES ('bb87a486-6aa8-4ebb-8f8c-583d97511894', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 83, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 10:29:27');
INSERT INTO `sys_log` VALUES ('bca1c730-49f7-4b38-b532-b549f268f841', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 15, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:12:40');
INSERT INTO `sys_log` VALUES ('bcd8e72f-8d94-4f2c-8978-4ff8744f2e22', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 7, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '127.0.0.1', '2021-01-11 10:27:16');
INSERT INTO `sys_log` VALUES ('bcf31bde-42ce-4c00-97f4-2dcec6ade9b4', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 20, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 17:17:16');
INSERT INTO `sys_log` VALUES ('be4bc662-ace8-46e5-aa03-c61455072828', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 12, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:16');
INSERT INTO `sys_log` VALUES ('be92be0f-4c5e-4554-a8fa-389578ba819f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 79, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:47:28');
INSERT INTO `sys_log` VALUES ('bffaf559-85fc-42a3-9d9d-f613a380bf3e', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 23, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 17:00:50');
INSERT INTO `sys_log` VALUES ('c096c5da-4f87-45b5-a8d5-b6af5a65d8fd', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 34, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 10:53:06');
INSERT INTO `sys_log` VALUES ('c1fb285f-4f55-4d2a-bbb6-39af7f640ca3', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 116, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 16:50:48');
INSERT INTO `sys_log` VALUES ('c36b7148-df1a-4308-bbb2-51e6308332cf', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 24, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"id\":\"1\",\"pageNum\":1,\"pageSize\":10,\"status\":1}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:06:31');
INSERT INTO `sys_log` VALUES ('c422c1c3-c510-424a-b2aa-58ad6047b2dc', NULL, NULL, '用户管理-用户刷新token', 351, 'com.szxx.recruit.controller.UserController.refreshToken()', NULL, '127.0.0.1', '2021-01-07 11:39:39');
INSERT INTO `sys_log` VALUES ('c51434b8-9052-45a2-9d8a-9963d00a2403', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 34, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:12:30');
INSERT INTO `sys_log` VALUES ('c5293b83-8ecf-4f4e-8aaa-3bc754a736d2', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 35, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:29:12');
INSERT INTO `sys_log` VALUES ('c5e313ed-cc99-4bb8-bd32-f553f4f51744', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 18, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:08:57');
INSERT INTO `sys_log` VALUES ('c6d22422-7938-4c0a-8728-037d4ecce36f', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '机构管理-树型组织列表', 17, 'com.szxx.recruit.controller.DeptController.getTree()', '[\"72a4f388-50f8-4019-8c67-530cd7c74e7a\"]', '127.0.0.1', '2021-01-07 11:48:06');
INSERT INTO `sys_log` VALUES ('c794e79b-da10-4ffd-9067-e8287d431e0f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 42, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:36:17');
INSERT INTO `sys_log` VALUES ('c803aa66-a7bf-4e83-8b58-f9a44b037cdf', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 4, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"tttttt\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:17:42');
INSERT INTO `sys_log` VALUES ('c90efdbe-9086-4efb-a95e-b02e734a726b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 31, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:20:27');
INSERT INTO `sys_log` VALUES ('c93c0480-4073-466e-a7d0-f43fd5dc7b28', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 26, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:41:50');
INSERT INTO `sys_log` VALUES ('c9d5ce6e-9857-4ab6-ae0f-7ae9d63e2517', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 12, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:23:47');
INSERT INTO `sys_log` VALUES ('ca152b82-d7c8-45fe-9372-f383020e1940', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 12, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:40:05');
INSERT INTO `sys_log` VALUES ('ca7f6b5c-d96f-49f1-ab6b-bb4bb01aa2a4', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 102, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 10:41:26');
INSERT INTO `sys_log` VALUES ('cb03d15c-f431-4c92-93a3-0fea1a4f44a3', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:41:02');
INSERT INTO `sys_log` VALUES ('cb96f5df-ec7b-4bb7-b1b0-91cca15c07ae', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 83, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:09:45');
INSERT INTO `sys_log` VALUES ('cbba0736-6108-468f-992e-9c76d43c60d7', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '菜单权限管理-获取所有菜单权限', 56, 'com.szxx.recruit.controller.PermissionController.getAllMenusPermission()', NULL, '127.0.0.1', '2021-01-07 13:52:37');
INSERT INTO `sys_log` VALUES ('cbd7449e-c954-45e4-ab93-54c68a5f5a4e', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 66, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:25:54');
INSERT INTO `sys_log` VALUES ('cec54b33-3950-495b-a570-c0e4a98a7c0b', NULL, NULL, '用户管理-用户刷新token', 35, 'com.szxx.recruit.controller.UserController.refreshToken()', NULL, '127.0.0.1', '2021-01-08 13:24:52');
INSERT INTO `sys_log` VALUES ('cfff5b00-8da9-47cd-9a10-860de24832df', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 296, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:34:36');
INSERT INTO `sys_log` VALUES ('d017a241-caf5-4b6b-aa91-bcb1d83ce7d9', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 79, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:07:02');
INSERT INTO `sys_log` VALUES ('d15f6d2a-e356-403d-aace-751572d8e908', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 28, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 10:52:06');
INSERT INTO `sys_log` VALUES ('d1741e6c-9894-49de-b748-1186a7117d0d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 19, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:40:35');
INSERT INTO `sys_log` VALUES ('d1c33460-707d-4bc3-b348-058c7365beff', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 26, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:38:25');
INSERT INTO `sys_log` VALUES ('d27a5c4a-d1e2-4744-b853-53e15682e7bb', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '客户管理-分页获取需求信息', 14, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 13:52:44');
INSERT INTO `sys_log` VALUES ('d3423e8e-7e87-495e-8179-28f1d6510c8d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 14, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:49:06');
INSERT INTO `sys_log` VALUES ('d41685a3-a06c-46a6-8436-8b0777b61b90', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 8, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 15:56:55');
INSERT INTO `sys_log` VALUES ('d5a9578b-8912-48e7-90e5-49181899ae90', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 95, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:05:18');
INSERT INTO `sys_log` VALUES ('d6326c8e-9fa3-4a66-bd23-b3ac84eebb54', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 21, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:02:06');
INSERT INTO `sys_log` VALUES ('d7253317-124e-4842-95d6-e0dca31d924b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户模块-招聘需求', 2290, 'com.szxx.recruit.controller.CustomerController.sendRecruitRequest()', NULL, '0:0:0:0:0:0:0:1', '2021-01-08 17:39:59');
INSERT INTO `sys_log` VALUES ('d7d5b569-adf1-49cb-8283-fdfd8bc883ca', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 13, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 14:17:49');
INSERT INTO `sys_log` VALUES ('d935314d-890f-4619-8b29-aaf29404abb2', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '菜单权限管理-获取所有菜单权限', 72, 'com.szxx.recruit.controller.PermissionController.getAllMenusPermission()', NULL, '127.0.0.1', '2021-01-07 11:48:08');
INSERT INTO `sys_log` VALUES ('d9898cdb-7298-48f8-8f25-d4abb5f5938a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 18, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:32:06');
INSERT INTO `sys_log` VALUES ('daa895eb-7c9e-45d9-81fe-6d725e801532', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 77, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:36:11');
INSERT INTO `sys_log` VALUES ('dadcad2f-8ff3-48b5-a44e-1cc5a8b7540b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取候选信息', 54, 'com.szxx.recruit.controller.CustomerController.getPageCandidates()', '[{\"needsId\":\"1\",\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 11:47:10');
INSERT INTO `sys_log` VALUES ('db70d921-fbae-448f-9da6-f9d31b576fc3', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 12, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:10:01');
INSERT INTO `sys_log` VALUES ('dcf1382a-ed3d-4886-b2ce-45e33c896680', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 87, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:14:47');
INSERT INTO `sys_log` VALUES ('dd220945-b3e3-4059-815d-a76406c8d524', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 28, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 10:44:29');
INSERT INTO `sys_log` VALUES ('dd6d8aea-221d-43e0-b50b-75e68d8f8c25', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 23, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:48:38');
INSERT INTO `sys_log` VALUES ('ddcf2408-f9ee-418c-8ef2-7c2daf49151f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 290, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:06:57');
INSERT INTO `sys_log` VALUES ('de3e313c-3fff-464c-a362-9c7a511d079d', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 18, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:13:04');
INSERT INTO `sys_log` VALUES ('def5114f-c6d9-4a95-8300-b57c97698e27', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 4, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:55');
INSERT INTO `sys_log` VALUES ('e0d96c69-c9fc-4bc1-9791-abeec6c12319', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 10, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:13:20');
INSERT INTO `sys_log` VALUES ('e1239fcc-c29f-4b8b-994b-7a0a157cd79a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 89, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:31:09');
INSERT INTO `sys_log` VALUES ('e1546145-4d8a-41f4-902e-ddf0c7bd75b5', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 99, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 09:23:14');
INSERT INTO `sys_log` VALUES ('e2579d9f-958c-4768-b182-556574e6cd48', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 12, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:12:16');
INSERT INTO `sys_log` VALUES ('e333b759-186b-4ace-b228-b7d8a56c88aa', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 38, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:41:45');
INSERT INTO `sys_log` VALUES ('e3dce90a-0029-4462-bed8-7e1ce0a963eb', NULL, NULL, '用户管理-用户刷新token', 87, 'com.szxx.recruit.controller.UserController.refreshToken()', NULL, '0:0:0:0:0:0:0:1', '2021-01-08 14:17:46');
INSERT INTO `sys_log` VALUES ('e4ce50ca-474a-4d2a-b116-3bdaa917f3a8', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 33, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:44:47');
INSERT INTO `sys_log` VALUES ('e517270f-fc35-4cac-856f-b62d22d6bea3', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 15:16:57');
INSERT INTO `sys_log` VALUES ('e5a25cdf-b67b-422e-b501-342d480348ae', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 19, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:45:23');
INSERT INTO `sys_log` VALUES ('e5f3d4d3-0f82-4769-a60c-c0107371fb74', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 18, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:08:33');
INSERT INTO `sys_log` VALUES ('e70cfed4-0676-456c-890c-7984a03aaba4', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 469, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"status\":1}]', '127.0.0.1', '2021-01-08 16:06:06');
INSERT INTO `sys_log` VALUES ('e74dba85-88b9-4faa-a710-19fba7d62216', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 16, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"status\":1}]', '127.0.0.1', '2021-01-08 16:12:33');
INSERT INTO `sys_log` VALUES ('e94ce1fe-3853-4c98-9626-d539f8e2078f', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 25, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 15:40:45');
INSERT INTO `sys_log` VALUES ('ec2bc135-00d6-43a4-a35f-178809b02572', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 26, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:51:35');
INSERT INTO `sys_log` VALUES ('ecea3835-ca41-4b01-82e6-263c345f3046', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 28, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:20:21');
INSERT INTO `sys_log` VALUES ('ed31664f-cf4a-46f0-9824-db5189519dd5', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 20, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:09:49');
INSERT INTO `sys_log` VALUES ('ee28cdb2-9167-47ad-b3e5-36111c32d3f6', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 5, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:10:02');
INSERT INTO `sys_log` VALUES ('ee2d2457-acd1-41c2-bf1a-6bb28ab106e0', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 8, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 11:24:08');
INSERT INTO `sys_log` VALUES ('ee4072b8-5557-41b6-a7b2-57305afe8845', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 14, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:12:57');
INSERT INTO `sys_log` VALUES ('ef14dbf5-d772-463e-9ea6-9970d963332b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 17, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"processCode\":\"\"}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:43:59');
INSERT INTO `sys_log` VALUES ('ef54daa5-ccc0-4b4e-a42c-4d57b2a02ffa', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 90, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 18:14:27');
INSERT INTO `sys_log` VALUES ('f25b14ec-230e-4f5a-aeca-09ec95ef0a22', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 27, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:51:48');
INSERT INTO `sys_log` VALUES ('f26ee7f5-e6df-47bb-aa9e-d9ab27d3c047', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 182, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 09:30:04');
INSERT INTO `sys_log` VALUES ('f28545ec-5998-4efa-adf7-aaff3d8e9122', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 91, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:20:18');
INSERT INTO `sys_log` VALUES ('f28a6102-3562-4890-a4b4-9f9a93ab762a', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 6, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:56');
INSERT INTO `sys_log` VALUES ('f3c00f71-8325-470d-b22c-71ac4fa2c64b', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 13, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:38:32');
INSERT INTO `sys_log` VALUES ('f3c87398-fb5e-4fe2-9e62-df7f2a6223e2', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取需求信息', 74, 'com.szxx.recruit.controller.CustomerController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 11:29:27');
INSERT INTO `sys_log` VALUES ('f6b75dee-bfcb-4ffb-97a5-f5af121931af', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 34, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 14:56:51');
INSERT INTO `sys_log` VALUES ('f6dae4e0-953c-436e-a232-815bb1f823ed', NULL, NULL, '用户管理-用户刷新token', 7, 'com.szxx.recruit.controller.UserController.refreshToken()', NULL, '127.0.0.1', '2021-01-07 13:52:35');
INSERT INTO `sys_log` VALUES ('f720cd0d-2d5d-4148-9c87-329f03e1f975', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 7, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"endTime\":\" 2020-01-31 00:00:00\",\"id\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"2020-01-02 00:00:00 \"}]', '0:0:0:0:0:0:0:1', '2021-01-08 18:09:48');
INSERT INTO `sys_log` VALUES ('f83a7470-79b2-4445-9d30-fd96036d1835', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 9, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:13:53');
INSERT INTO `sys_log` VALUES ('f84ecec4-67ad-4e7e-aa19-25c6a86d8e44', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '用户管理-赋予角色-获取所有角色接口', 4, 'com.szxx.recruit.controller.UserController.getUserOwnRole()', '[\"1dfaafa7-fddf-46f2-b3d8-11bfe9ac7230\"]', '127.0.0.1', '2021-01-07 11:48:32');
INSERT INTO `sys_log` VALUES ('fb7f89b9-f8cf-45b7-8cc3-47e0507a81bc', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 24, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-08 16:57:09');
INSERT INTO `sys_log` VALUES ('fbc81a41-f77c-44db-8deb-2de45cebaf0e', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 19, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-11 10:51:57');
INSERT INTO `sys_log` VALUES ('fc77bf43-ad43-4b24-8e07-f52ac634e5dc', NULL, NULL, '用户管理-用户刷新token', 33, 'com.szxx.recruit.controller.UserController.refreshToken()', NULL, '127.0.0.1', '2021-01-11 16:39:02');
INSERT INTO `sys_log` VALUES ('fd4431c7-a3dd-407e-897a-4d394ba35f11', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '客户管理-分页获取应商信息', 18, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-01-07 17:08:45');
INSERT INTO `sys_log` VALUES ('ff0f3da6-5485-4f15-b2c0-e47a4c6f01cb', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 8, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:04:41');
INSERT INTO `sys_log` VALUES ('ff526e99-f593-4719-9c2f-b6b8ad5a5701', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 11, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 17:15:35');
INSERT INTO `sys_log` VALUES ('ffc9831e-53fa-425b-9a75-ba806b41418c', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '客户管理-分页获取应商信息', 17, 'com.szxx.recruit.controller.CustomerController.getPageSupplier()', '[{\"pageNum\":1,\"pageSize\":10}]', '0:0:0:0:0:0:0:1', '2021-01-08 16:00:17');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限编码',
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限名称',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：sys:user:add,sys:user:edit)',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问地址URL',
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源请求类型',
  `pid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级菜单权限名称',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '排序',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '菜单权限类型(1:目录;2:菜单;3:按钮)',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态1:正常 0：禁用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('0d99b687-3f46-4632-9d56-8dd5e476dae7', '', 'SQL 监控', '', '/druid/sql.html', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', 98, 2, 1, '2019-11-09 20:58:23', '2019-11-09 20:59:57', 1);
INSERT INTO `sys_permission` VALUES ('10', 'btn-infos-deleted', '删除', 'sys:infos:deleted', '/customer/delete', 'DELETED', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cg', 100, 3, 1, '2019-11-09 20:26:45', NULL, 1);
INSERT INTO `sys_permission` VALUES ('11', 'btn-infos-detail', '详情', 'sys:infos:detail', '/index/infos/detail', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cg', 100, 3, 1, '2019-11-09 20:24:24', '2019-11-09 20:48:05', 1);
INSERT INTO `sys_permission` VALUES ('1a2ec857-e775-4377-9fb7-e3c77738b3e5', 'btn-role-add', '新增', 'sys:role:add', '/sys/role', 'POST', 'e0b16b95-09de-4d60-a283-1eebd424ed47', 0, 3, 1, '2019-09-22 16:00:59', NULL, 1);
INSERT INTO `sys_permission` VALUES ('2073345f-7344-43fe-9084-b7add56da652', 'btn-dept-deleted', '删除', 'sys:dept:deleted', '/sys/dept/*', 'DELETED', 'c038dc93-f30d-4802-a090-be352eab341a', 100, 3, 1, '2019-11-09 20:49:59', NULL, 1);
INSERT INTO `sys_permission` VALUES ('26764d88-1d90-402d-b355-a75deef116f2', '', '接口管理', 'sys:user:list', '/swagger-ui.html', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', 100, 2, 1, '2019-11-09 20:56:37', '2019-11-09 20:59:49', 1);
INSERT INTO `sys_permission` VALUES ('26e66825-5ca9-4470-b7dc-9e710b2563ef', 'btn-user-list', '列表', 'sys:user:list', '/sys/users', 'POST', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 89, 3, 1, '2020-01-01 19:31:56', '2020-01-01 19:43:33', 0);
INSERT INTO `sys_permission` VALUES ('355f387f-a22b-4f8c-9cd6-ae10e930cd70', 'btn-logs-list', '列表', 'sys:log:list', '/sys/logs', 'POST', '37101ed5-e840-4082-ae33-682ca6e41ad8', 100, 3, 1, '2019-11-09 21:00:49', '2019-11-09 21:02:08', 1);
INSERT INTO `sys_permission` VALUES ('37101ed5-e840-4082-ae33-682ca6e41ad8', '', '日志管理', '', '/index/logs', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', 100, 2, 1, '2019-11-09 20:59:09', NULL, 1);
INSERT INTO `sys_permission` VALUES ('3a93a7e3-956a-408e-b2e4-108e9ece8f04', 'btn-dept-add', '新增', 'sys:dept:add', '/sys/dept', 'POST', 'c038dc93-f30d-4802-a090-be352eab341a', 100, 3, 1, '2019-11-07 22:42:49', '2019-11-09 20:51:08', 1);
INSERT INTO `sys_permission` VALUES ('3c390dfd-0d9a-46de-9a5b-1ed884febcb2', 'btn-user-role-update', '赋予角色', 'sys:user:role:update', '/sys/user/roles/*', 'POST', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:39:09', NULL, 1);
INSERT INTO `sys_permission` VALUES ('3dac936c-c4e1-4560-ac93-905502f61ae0', NULL, '菜单权限管理', '', '/index/menus', 'GET', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', 98, 2, 1, '2019-09-22 15:18:12', '2019-11-09 20:59:33', 1);
INSERT INTO `sys_permission` VALUES ('3ed79f23-90bf-4669-bc02-42ae392e75c1', 'btn-dept-list', '列表', 'sys:dept:list', '/sys/depts', 'POST', 'c038dc93-f30d-4802-a090-be352eab341a', 100, 3, 1, '2019-11-07 22:38:34', '2019-11-09 20:51:18', 1);
INSERT INTO `sys_permission` VALUES ('4018e179-e599-41d0-bac5-c5408e1d4bc6', 'btn-role-deleted', '删除', 'sys:role:deleted', '/sys/role/*', 'DELETED', 'e0b16b95-09de-4d60-a283-1eebd424ed47', 100, 3, 1, '2019-11-09 20:54:28', NULL, 1);
INSERT INTO `sys_permission` VALUES ('475b4c24-40fa-4823-863a-ba6d793b7610', 'btn-permission-detail', '详情', 'sys:permission:detail', '/sys/permission/*', 'GET', '3dac936c-c4e1-4560-ac93-905502f61ae0', 100, 3, 1, '2019-11-09 20:43:05', NULL, 1);
INSERT INTO `sys_permission` VALUES ('58612968-d93c-4c21-8fdc-a825c0ab0275', 'btn-role-list', '列表', 'sys:role:list', '/sys/roles', 'POST', 'e0b16b95-09de-4d60-a283-1eebd424ed47', 0, 3, 1, '2019-09-22 16:04:33', NULL, 1);
INSERT INTO `sys_permission` VALUES ('7', '', '需求列表', 'sys:infos:list', '/index/infos', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cg', 99, 2, 1, '2019-09-22 15:45:45', '2019-11-09 20:59:22', 1);
INSERT INTO `sys_permission` VALUES ('761db494-833d-4a6c-94b4-3a7409fd9a78', 'btn-dept-detail', '详情', 'sys:dept:detail', '/sys/dept/*', 'GET', 'c038dc93-f30d-4802-a090-be352eab341a', 100, 3, 1, '2019-11-09 20:50:53', NULL, 1);
INSERT INTO `sys_permission` VALUES ('783aedd8-5d93-46b6-8c6d-e4d3f0f3f466', 'btn-user-list', '列表', 'sys:user:list', '/sys/users', 'POST', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2020-01-01 19:44:37', NULL, 1);
INSERT INTO `sys_permission` VALUES ('78f8e29a-cccd-49e5-ada7-5af40dd95312', '', '用户管理', '', '/index/users', 'GET', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', 100, 2, 1, '2020-01-01 19:30:30', '2019-11-09 20:48:29', 1);
INSERT INTO `sys_permission` VALUES ('8', '', '需求编辑', 'sys:infos:edit', '/index/infos/edit', 'GET', '', 99, 2, 1, '2019-09-22 15:45:45', '2019-11-09 20:59:22', 1);
INSERT INTO `sys_permission` VALUES ('817a58d1-ec82-4106-870a-bcc0bfaee0e7', 'btn-user-detail', '详情', 'sys:user:detail', '/sys/user/*', 'GET', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:24:24', '2019-11-09 20:48:05', 1);
INSERT INTO `sys_permission` VALUES ('8623c941-5746-4667-9fb8-76f6f5059788', 'btn-permission-deleted', '删除', 'sys:permission:deleted', '/sys/permission/*', 'DELETED', '3dac936c-c4e1-4560-ac93-905502f61ae0', 100, 3, 1, '2019-11-07 22:35:50', '2019-11-09 20:44:44', 1);
INSERT INTO `sys_permission` VALUES ('9', 'btn-infos-update', '更新', 'sys:infos:add', '/customer/sendRecruitRequest', 'POST', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cg', 100, 3, 1, '2019-11-09 20:23:20', NULL, 1);
INSERT INTO `sys_permission` VALUES ('992d1a8d-b5f8-44fc-9a48-4b3e60a7b15e', 'btn-role-update', '更新', 'sys:role:update', '/sys/role', 'PUT', 'e0b16b95-09de-4d60-a283-1eebd424ed47', 0, 3, 1, '2019-09-22 16:03:46', NULL, 1);
INSERT INTO `sys_permission` VALUES ('a390845b-a53d-4bc9-af5d-331c37f34e6f', 'btn-dept-update', '更新', 'sys:dept:update', '/sys/dept', 'PUT', 'c038dc93-f30d-4802-a090-be352eab341a', 100, 3, 1, '2019-11-09 20:53:16', NULL, 1);
INSERT INTO `sys_permission` VALUES ('b01614ab-0538-4cca-bb61-b46f18c60aa4', 'btn-role-detail', '详情', 'sys:role:detail', '/sys/role/*', 'GET', 'e0b16b95-09de-4d60-a283-1eebd424ed47', 100, 3, 1, '2019-09-22 16:06:13', '2019-11-09 20:55:08', 1);
INSERT INTO `sys_permission` VALUES ('b180aafa-0d1a-4898-b838-bc20cd44356d', NULL, '编辑', 'sys:permission:update', '/sys/permission', 'PUT', '3dac936c-c4e1-4560-ac93-905502f61ae0', 100, 3, 1, '2019-11-07 22:27:22', '2019-11-09 20:48:44', 1);
INSERT INTO `sys_permission` VALUES ('c038dc93-f30d-4802-a090-be352eab341a', '', '部门管理', '', '/index/depts', 'GET', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', 100, 2, 1, '2019-11-07 22:37:20', '2019-11-09 20:48:22', 1);
INSERT INTO `sys_permission` VALUES ('c0a84726-47d8-4d7a-8d53-0736a4586647', 'btn-user-add', '新增', 'sys:user:add', '/sys/user', 'POST', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:25:18', NULL, 1);
INSERT INTO `sys_permission` VALUES ('c30389e8-eb3e-4a0d-99c4-639e1893a05f', 'btn-permission-list', '列表', 'sys:permission:list', '/sys/permissions', 'POST', '3dac936c-c4e1-4560-ac93-905502f61ae0', 100, 3, 1, '2019-09-22 15:26:45', '2019-11-09 20:45:19', 1);
INSERT INTO `sys_permission` VALUES ('c30389e8-eb3e-4a0d-99c4-639e1893f50a', 'btn-permission-list', '新增', 'sys:permission:add', '/sys/permission', 'POST', '3dac936c-c4e1-4560-ac93-905502f61ae0', 100, 3, 1, '2019-09-22 15:26:45', '2019-11-09 20:45:25', 1);
INSERT INTO `sys_permission` VALUES ('d6214dcb-8b6d-494b-88fa-f519fc08ff8f', NULL, '组织管理', '', 'xx.html', '', '0', 100, 1, 1, '2019-09-28 15:16:14', NULL, 1);
INSERT INTO `sys_permission` VALUES ('db2d31b7-fdcb-478e-bfde-a55eb8b0aa43', 'btn-user-role-detail', '拥有角色', 'sys:user:role:detail', '/sys/user/roles/*', 'GET', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:29:47', NULL, 1);
INSERT INTO `sys_permission` VALUES ('e0b16b95-09de-4d60-a283-1eebd424ed47', '', '角色管理', '', '/index/roles', 'GET', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', 99, 2, 1, '2019-09-22 15:45:45', '2019-11-09 20:59:22', 1);
INSERT INTO `sys_permission` VALUES ('e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', '', '系统管理', '', 'xx.html', '', '0', 98, 1, 1, '2019-11-09 20:56:01', NULL, 1);
INSERT INTO `sys_permission` VALUES ('e549c4b8-72ca-4ba3-91a8-9ffa1daf77cg', '', '招聘管理', '', 'xx.html', '', '0', 98, 1, 1, '2019-11-09 20:56:01', NULL, 1);
INSERT INTO `sys_permission` VALUES ('f21ed5e8-0756-45dc-91c5-f58a9463caaa', 'btn-user-update', '更新', 'sys:user:update', '/sys/user', 'PUT', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:23:20', NULL, 1);
INSERT INTO `sys_permission` VALUES ('f28b9215-3119-482d-bdc1-1f4c3f7c0869', 'btn-user-deleted', '删除', 'sys:user:deleted', '/sys/user', 'DELETED', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:26:45', NULL, 1);
INSERT INTO `sys_permission` VALUES ('f2ff9320-c643-4c85-8b68-15f86d47b88b', 'btn-log-deleted', '删除', 'sys:log:deleted', '/sys/logs', 'DELETED', '37101ed5-e840-4082-ae33-682ca6e41ad8', 100, 3, 1, '2019-11-09 21:01:49', NULL, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态(1:正常0:弃用)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '超级管理员', '拥有所有权限-不能删除', 1, '2019-11-01 19:26:29', '2020-12-30 16:02:33', 1);
INSERT INTO `sys_role` VALUES ('2d56198c-d14b-4d02-a625-7559815b62fb', '普通用户角色', '只读', 1, '2019-11-09 22:49:18', '2020-12-31 15:40:19', 1);
INSERT INTO `sys_role` VALUES ('566c322d-65d7-42cb-9c7c-e23104a47881', '1', '', 1, '2020-12-31 15:43:54', NULL, 1);
INSERT INTO `sys_role` VALUES ('8dd881c7-078c-406a-9c5f-242ab9ecfcb5', 'test', '测试', 1, '2020-01-01 20:01:58', '2019-11-19 10:43:05', 1);
INSERT INTO `sys_role` VALUES ('b95c69b7-84be-430f-ae57-27a703ae3998', '后台管理员', '一般是程序员拥有，用来初始化菜单权限', 1, '2019-11-09 21:25:31', '2020-12-30 16:20:44', 1);
INSERT INTO `sys_role` VALUES ('de54c167-e733-4b5b-83dd-ce10edd078f5', '超级权限', '', 1, '2019-11-19 10:34:48', '2019-11-19 10:49:39', 1);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('0416009f-d518-4b60-a6c9-095f5c1986f7', '8dd881c7-078c-406a-9c5f-242ab9ecfcb5', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', '2020-01-01 20:01:58');
INSERT INTO `sys_role_permission` VALUES ('045ee52f-06e1-4c07-9e2e-25593aefd03a', '8dd881c7-078c-406a-9c5f-242ab9ecfcb5', '3ed79f23-90bf-4669-bc02-42ae392e75c1', '2020-01-01 20:01:58');
INSERT INTO `sys_role_permission` VALUES ('04708eed-c16d-40ce-8449-0dd221fd0e72', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '4018e179-e599-41d0-bac5-c5408e1d4bc6', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('16b55714-c624-44ff-8ec9-2a1f8c1a9f44', 'b95c69b7-84be-430f-ae57-27a703ae3998', '11', '2020-12-30 16:20:44');
INSERT INTO `sys_role_permission` VALUES ('16fd8377-e498-4795-ab4c-744be343e34e', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'a390845b-a53d-4bc9-af5d-331c37f34e6f', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('170620ab-ce2a-4b66-b7e3-b491088cc05d', '8dd881c7-078c-406a-9c5f-242ab9ecfcb5', '3dac936c-c4e1-4560-ac93-905502f61ae0', '2020-01-01 20:01:58');
INSERT INTO `sys_role_permission` VALUES ('1c26fc96-6cc6-4ba5-83bb-8fe938355e75', '2d56198c-d14b-4d02-a625-7559815b62fb', '11', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('239b696c-56e7-4fb0-a2fc-6427d289ae10', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '9', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('24463061-c60d-4688-89a8-812be6e47ba1', '2d56198c-d14b-4d02-a625-7559815b62fb', '3ed79f23-90bf-4669-bc02-42ae392e75c1', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('26521ae1-89cf-4290-b690-97de6a007ccc', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '78f8e29a-cccd-49e5-ada7-5af40dd95312', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('31eab49a-ab9b-478e-a72d-9c7432d04701', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '355f387f-a22b-4f8c-9cd6-ae10e930cd70', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('31ecd22c-1a93-45ca-be3c-59f25b87f3c1', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '3ed79f23-90bf-4669-bc02-42ae392e75c1', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('3537366c-49ae-4394-af52-7334537a8105', 'de54c167-e733-4b5b-83dd-ce10edd078f5', 'c30389e8-eb3e-4a0d-99c4-639e1893a05f', '2019-11-19 10:49:39');
INSERT INTO `sys_role_permission` VALUES ('35f07b09-97a7-417c-bf6c-c5d677ebd4fa', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'c0a84726-47d8-4d7a-8d53-0736a4586647', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('395587b1-3f2d-4114-9f96-6d3b7339a623', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '783aedd8-5d93-46b6-8c6d-e4d3f0f3f466', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('3baba07b-2ed9-42b3-9287-124ac2e42b91', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'f28b9215-3119-482d-bdc1-1f4c3f7c0869', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('3d660c9f-438a-4f96-b429-37ab54339ee9', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'f2ff9320-c643-4c85-8b68-15f86d47b88b', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('3e34cfc4-e45e-41b9-9c0a-5e2cdd464214', '2d56198c-d14b-4d02-a625-7559815b62fb', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cg', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('4426997b-5cb4-4738-aec4-25c9f5c68b4e', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'c30389e8-eb3e-4a0d-99c4-639e1893f50a', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('45f80372-dd9c-4d43-8fe9-7ed0637593b7', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '992d1a8d-b5f8-44fc-9a48-4b3e60a7b15e', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('46cd3ebf-654e-4985-9dde-758b2e81445f', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('4d3aa95f-22e7-471f-bace-aab933ae1107', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '2073345f-7344-43fe-9084-b7add56da652', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('522440cc-21d6-47ac-901e-45f0c57d87b0', '2d56198c-d14b-4d02-a625-7559815b62fb', '58612968-d93c-4c21-8fdc-a825c0ab0275', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('5ab67005-81bf-4aaf-b50e-c8b5105eb35f', '2d56198c-d14b-4d02-a625-7559815b62fb', '10', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('5d2176fb-7358-4050-bc88-2c9084e0b926', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'b01614ab-0538-4cca-bb61-b46f18c60aa4', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('63de9539-e08a-4621-bd4f-0b6109142457', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '37101ed5-e840-4082-ae33-682ca6e41ad8', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('6639e83a-1a3d-4931-9373-1df9c55b7b95', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('680e41db-5921-45d6-9ce8-69695f90284f', '2d56198c-d14b-4d02-a625-7559815b62fb', '783aedd8-5d93-46b6-8c6d-e4d3f0f3f466', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('7258686c-a8f3-4b39-9158-3b9b605c4355', 'b95c69b7-84be-430f-ae57-27a703ae3998', '10', '2020-12-30 16:20:44');
INSERT INTO `sys_role_permission` VALUES ('74c05461-8b67-4f9f-a7a0-1dafe974cb11', '2d56198c-d14b-4d02-a625-7559815b62fb', 'c038dc93-f30d-4802-a090-be352eab341a', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('777e23dd-2bd5-4e07-9bbf-0f7b64197e75', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'f21ed5e8-0756-45dc-91c5-f58a9463caaa', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('7e7ef2c4-7f8a-40dd-a7d6-944dacce8936', '2d56198c-d14b-4d02-a625-7559815b62fb', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('7f5647ab-3c3c-4c13-b11f-a0970b1332f1', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '1a2ec857-e775-4377-9fb7-e3c77738b3e5', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('7f7bc685-c978-4d36-b6c5-07aaf4083371', '2d56198c-d14b-4d02-a625-7559815b62fb', 'e0b16b95-09de-4d60-a283-1eebd424ed47', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('87355ec0-6e70-464a-ae43-302adc9cd875', '8dd881c7-078c-406a-9c5f-242ab9ecfcb5', 'c30389e8-eb3e-4a0d-99c4-639e1893a05f', '2020-01-01 20:01:58');
INSERT INTO `sys_role_permission` VALUES ('8b43690a-391a-417d-9950-eb18fbbdf964', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'c30389e8-eb3e-4a0d-99c4-639e1893a05f', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('9060a786-cfda-4981-a17f-6bac56fd7666', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '7', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('92547ed9-0d65-4c6f-bffd-271ea4cb893c', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '58612968-d93c-4c21-8fdc-a825c0ab0275', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('99e79dd9-62ec-48ac-87ff-8a2f6acc8578', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'c038dc93-f30d-4802-a090-be352eab341a', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('99f4afbe-22e7-4a6e-89a4-6b1e9eee9659', '2d56198c-d14b-4d02-a625-7559815b62fb', '3dac936c-c4e1-4560-ac93-905502f61ae0', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('9acd0268-3363-476b-97b0-04dc17243bd3', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '3a93a7e3-956a-408e-b2e4-108e9ece8f04', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('9d0a334d-4de0-4110-89c4-d808adaead97', '2d56198c-d14b-4d02-a625-7559815b62fb', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('9e34c9c7-2675-4e10-9fe9-c6f1affe5a0b', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'e0b16b95-09de-4d60-a283-1eebd424ed47', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('a022a612-9951-4dea-900e-31fedac240d1', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cg', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('a2d46538-adc4-4626-aa4c-84323a00ae34', '2d56198c-d14b-4d02-a625-7559815b62fb', '78f8e29a-cccd-49e5-ada7-5af40dd95312', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('a9f4bdbc-0545-4e31-a76d-27345a85c6e0', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'db2d31b7-fdcb-478e-bfde-a55eb8b0aa43', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('b2ba9c26-03a6-41df-a6b5-bc52b5045d53', 'de54c167-e733-4b5b-83dd-ce10edd078f5', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', '2019-11-19 10:49:39');
INSERT INTO `sys_role_permission` VALUES ('b4ef9fe8-bc2b-4166-b553-8e0ab16858a0', 'b95c69b7-84be-430f-ae57-27a703ae3998', '9', '2020-12-30 16:20:44');
INSERT INTO `sys_role_permission` VALUES ('bd080834-b503-4f93-9afb-2ea880bdc772', 'b95c69b7-84be-430f-ae57-27a703ae3998', '7', '2020-12-30 16:20:44');
INSERT INTO `sys_role_permission` VALUES ('c02d3e38-94cc-48b9-a758-b7d1bc8b32fd', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '8623c941-5746-4667-9fb8-76f6f5059788', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('c3d2afff-d21b-40ae-ac52-d563879fcf24', '8dd881c7-078c-406a-9c5f-242ab9ecfcb5', 'c038dc93-f30d-4802-a090-be352eab341a', '2020-01-01 20:01:58');
INSERT INTO `sys_role_permission` VALUES ('ca8db4fc-7298-4fee-9cfd-f00853bdfb55', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'b180aafa-0d1a-4898-b838-bc20cd44356d', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('caffb561-6560-464c-b01a-ff021e923e00', '2d56198c-d14b-4d02-a625-7559815b62fb', '37101ed5-e840-4082-ae33-682ca6e41ad8', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('cd341a12-9725-49c1-8003-251e7b2b82ed', '2d56198c-d14b-4d02-a625-7559815b62fb', '9', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('cd64b56d-a650-4781-9f0b-13893b321a5a', '2d56198c-d14b-4d02-a625-7559815b62fb', 'c30389e8-eb3e-4a0d-99c4-639e1893a05f', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('cdbe0a13-cc3b-40a7-9a48-06b07f1469f0', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '0d99b687-3f46-4632-9d56-8dd5e476dae7', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('ce923ba9-77d8-4b53-829c-26c2472e7739', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '3dac936c-c4e1-4560-ac93-905502f61ae0', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('d0e05941-a32f-4daa-92fd-ae98adf67f61', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '3c390dfd-0d9a-46de-9a5b-1ed884febcb2', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('dd1c359d-bb42-4d55-8f56-65bbf3533bfb', '2d56198c-d14b-4d02-a625-7559815b62fb', '7', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('dd34f34f-9d40-4091-a4df-79371fa1fd26', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '26764d88-1d90-402d-b355-a75deef116f2', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('de205d78-79c0-4150-83c3-517552442ab2', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '11', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('de35d934-2516-4cc2-af1d-2cf768b895a3', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '8', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('e19482ea-d3cb-4b04-b627-585408ab3935', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '10', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('eb45c46c-602b-4081-8bac-5814aea9ef08', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '817a58d1-ec82-4106-870a-bcc0bfaee0e7', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('ef02e176-cf76-42b3-afb4-c29990738b7f', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cg', '2020-12-30 16:20:44');
INSERT INTO `sys_role_permission` VALUES ('f5398d1f-028c-44d2-afc3-99785830ba83', '2d56198c-d14b-4d02-a625-7559815b62fb', '355f387f-a22b-4f8c-9cd6-ae10e930cd70', '2020-12-31 15:40:19');
INSERT INTO `sys_role_permission` VALUES ('f58d9e73-8929-4c90-a466-afc446339f97', 'de54c167-e733-4b5b-83dd-ce10edd078f5', '3dac936c-c4e1-4560-ac93-905502f61ae0', '2019-11-19 10:49:39');
INSERT INTO `sys_role_permission` VALUES ('f7728a98-d136-4320-8002-d0d510b98c20', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '475b4c24-40fa-4823-863a-ba6d793b7610', '2020-12-30 16:02:33');
INSERT INTO `sys_role_permission` VALUES ('fd6dc071-1140-4c51-b371-e02b87ad24d0', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '761db494-833d-4a6c-94b4-3a7409fd9a78', '2020-12-30 16:02:33');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户名称',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加密盐值',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码密文',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `dept_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `real_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实名称',
  `nick_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱(唯一)',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '账户状态(1.正常 2.锁定 )',
  `sex` tinyint(4) NULL DEFAULT 1 COMMENT '性别(1.男 2.女)',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  `create_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_where` tinyint(4) NULL DEFAULT 1 COMMENT '创建来源(1.web 2.android 3.ios )',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1dfaafa7-fddf-46f2-b3d8-11bfe9ac7230', 'dev123', 'fa386978e2c04b7baef1', '9204993352a150ddd9febc421a5e5636', '13177777777', '4bd0b0a3-097d-4902-a1f7-641ea3b771bd', NULL, NULL, NULL, 1, 2, 1, NULL, NULL, 1, '2019-11-09 22:47:30', NULL);
INSERT INTO `sys_user` VALUES ('5bc41939-78d9-40f8-a761-b9cf35f5d9e4', 'test', '7d69eec997034bfb8c5c', 'b1c6df565df619ce0ac443e502d8ebbf', '13878888888', 'a4f3e984-622b-4330-bcda-0ea01e44d299', NULL, NULL, NULL, 1, 2, 1, NULL, 'fcf34b56-a7a2-4719-9236-867495e74c31', 1, '2020-01-01 20:01:20', '2020-12-31 15:39:33');
INSERT INTO `sys_user` VALUES ('7f8c0e32-058e-409d-8e7c-22a9afe6a0a0', 'zhangyang', '062f33e33afe4509b24b', '920f5d75077b25912e5054c4d58e0a4c', '13899999999', '4bd0b0a3-097d-4902-a1f7-641ea3b771bd', '张杨', NULL, '16399@163.com', 1, 2, 1, NULL, '7f8c0e32-058e-409d-8e7c-22a9afe6a0a0', 1, '2019-11-09 21:23:36', '2019-11-09 22:45:36');
INSERT INTO `sys_user` VALUES ('d860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'admin', '324ce32d86224b00a02b', '2102b59a75ab87616b62d0b9432569d0', '13899999999', '72a4f388-50f8-4019-8c67-530cd7c74e7a', NULL, NULL, NULL, 1, 2, 1, NULL, 'fcf34b56-a7a2-4719-9236-867495e74c31', 1, '2019-11-19 10:34:24', '2020-12-30 16:07:33');
INSERT INTO `sys_user` VALUES ('fcf34b56-a7a2-4719-9236-867495e74c31', 'suadmin', '324ce32d86224b00a02b', 'ac7e435db19997a46e3b390e69cb148b', '13888888888', '72a4f388-50f8-4019-8c67-530cd7c74e7a', 'admin', 'yws', 'szsm@163.com', 1, 2, 1, NULL, 'fcf34b56-a7a2-4719-9236-867495e74c31', 3, '2019-09-22 19:38:05', '2020-12-30 18:02:59');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1c7feb70-c623-4aba-a2e1-99fd5d298f17', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'b95c69b7-84be-430f-ae57-27a703ae3998', '2020-12-30 16:07:53');
INSERT INTO `sys_user_role` VALUES ('69d5bf3a-37a8-4da1-8941-fe44caa51af0', '7f8c0e32-058e-409d-8e7c-22a9afe6a0a0', 'b95c69b7-84be-430f-ae57-27a703ae3998', '2019-11-09 21:25:49');
INSERT INTO `sys_user_role` VALUES ('75921552-3f18-4756-b07c-016717b569ff', '5bc41939-78d9-40f8-a761-b9cf35f5d9e4', '2d56198c-d14b-4d02-a625-7559815b62fb', '2020-12-31 15:39:20');
INSERT INTO `sys_user_role` VALUES ('8ac5213f-e80c-4deb-b0dd-3d2c476bd96d', '1dfaafa7-fddf-46f2-b3d8-11bfe9ac7230', '2d56198c-d14b-4d02-a625-7559815b62fb', '2019-11-09 23:28:23');
INSERT INTO `sys_user_role` VALUES ('a5fa28ed-4a40-437e-a0e9-d06d95add586', 'fcf34b56-a7a2-4719-9236-867495e74c31', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '2019-11-09 20:40:40');

SET FOREIGN_KEY_CHECKS = 1;
