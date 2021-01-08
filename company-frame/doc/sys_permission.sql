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

 Date: 30/12/2020 15:47:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `sys_permission` VALUES ('11', 'btn-infos-detail', '详情', 'sys:detail:detail', '/customer/info', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cg', 100, 3, 1, '2019-11-09 20:24:24', '2019-11-09 20:48:05', 1);
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
INSERT INTO `sys_permission` VALUES ('8', '', '需求编辑', 'sys:infos:edit', '/index/infos/edit', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cg', 99, 2, 1, '2019-09-22 15:45:45', '2019-11-09 20:59:22', 1);
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

SET FOREIGN_KEY_CHECKS = 1;
