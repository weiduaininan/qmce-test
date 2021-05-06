/*
 Navicat Premium Data Transfer

 Source Server         : Azure_wecalldev1
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : mce

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 30/04/2021 10:42:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mce_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `mce_admin_menu`;
CREATE TABLE `mce_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父菜单id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `controller`(`controller`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 173 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台菜单表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_admin_menu
-- ----------------------------
INSERT INTO `mce_admin_menu` VALUES (1, 0, 0, 0, 20, 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心');
INSERT INTO `mce_admin_menu` VALUES (2, 1, 1, 1, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `mce_admin_menu` VALUES (3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `mce_admin_menu` VALUES (4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `mce_admin_menu` VALUES (5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `mce_admin_menu` VALUES (6, 0, 0, 1, 0, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `mce_admin_menu` VALUES (7, 6, 1, 1, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `mce_admin_menu` VALUES (8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `mce_admin_menu` VALUES (9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `mce_admin_menu` VALUES (10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `mce_admin_menu` VALUES (11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `mce_admin_menu` VALUES (12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `mce_admin_menu` VALUES (13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `mce_admin_menu` VALUES (14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `mce_admin_menu` VALUES (15, 6, 1, 1, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `mce_admin_menu` VALUES (16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `mce_admin_menu` VALUES (17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `mce_admin_menu` VALUES (18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `mce_admin_menu` VALUES (19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `mce_admin_menu` VALUES (20, 6, 1, 0, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `mce_admin_menu` VALUES (21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `mce_admin_menu` VALUES (22, 20, 1, 0, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `mce_admin_menu` VALUES (23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `mce_admin_menu` VALUES (24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `mce_admin_menu` VALUES (25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `mce_admin_menu` VALUES (26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `mce_admin_menu` VALUES (27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `mce_admin_menu` VALUES (28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `mce_admin_menu` VALUES (29, 6, 1, 1, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `mce_admin_menu` VALUES (30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `mce_admin_menu` VALUES (31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `mce_admin_menu` VALUES (32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `mce_admin_menu` VALUES (33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `mce_admin_menu` VALUES (34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `mce_admin_menu` VALUES (35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `mce_admin_menu` VALUES (36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `mce_admin_menu` VALUES (37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `mce_admin_menu` VALUES (38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `mce_admin_menu` VALUES (39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `mce_admin_menu` VALUES (40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `mce_admin_menu` VALUES (41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `mce_admin_menu` VALUES (42, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `mce_admin_menu` VALUES (43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `mce_admin_menu` VALUES (44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `mce_admin_menu` VALUES (45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `mce_admin_menu` VALUES (46, 42, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `mce_admin_menu` VALUES (47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `mce_admin_menu` VALUES (48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `mce_admin_menu` VALUES (49, 110, 0, 1, 10000, 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `mce_admin_menu` VALUES (50, 49, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `mce_admin_menu` VALUES (51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `mce_admin_menu` VALUES (52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `mce_admin_menu` VALUES (53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `mce_admin_menu` VALUES (54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `mce_admin_menu` VALUES (55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `mce_admin_menu` VALUES (56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `mce_admin_menu` VALUES (57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `mce_admin_menu` VALUES (58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `mce_admin_menu` VALUES (59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `mce_admin_menu` VALUES (60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `mce_admin_menu` VALUES (61, 6, 1, 1, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `mce_admin_menu` VALUES (62, 61, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `mce_admin_menu` VALUES (63, 61, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `mce_admin_menu` VALUES (64, 61, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `mce_admin_menu` VALUES (65, 61, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `mce_admin_menu` VALUES (66, 61, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `mce_admin_menu` VALUES (67, 61, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `mce_admin_menu` VALUES (68, 61, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `mce_admin_menu` VALUES (69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `mce_admin_menu` VALUES (70, 61, 1, 0, 10000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `mce_admin_menu` VALUES (71, 6, 1, 1, 0, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `mce_admin_menu` VALUES (72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `mce_admin_menu` VALUES (73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `mce_admin_menu` VALUES (74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `mce_admin_menu` VALUES (75, 6, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `mce_admin_menu` VALUES (76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `mce_admin_menu` VALUES (77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `mce_admin_menu` VALUES (78, 6, 1, 1, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `mce_admin_menu` VALUES (79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `mce_admin_menu` VALUES (80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `mce_admin_menu` VALUES (81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `mce_admin_menu` VALUES (82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `mce_admin_menu` VALUES (83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `mce_admin_menu` VALUES (84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `mce_admin_menu` VALUES (85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `mce_admin_menu` VALUES (86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `mce_admin_menu` VALUES (87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `mce_admin_menu` VALUES (88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `mce_admin_menu` VALUES (89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `mce_admin_menu` VALUES (90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `mce_admin_menu` VALUES (91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `mce_admin_menu` VALUES (92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `mce_admin_menu` VALUES (93, 6, 1, 1, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `mce_admin_menu` VALUES (94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `mce_admin_menu` VALUES (95, 6, 1, 1, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `mce_admin_menu` VALUES (96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `mce_admin_menu` VALUES (97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `mce_admin_menu` VALUES (98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `mce_admin_menu` VALUES (99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `mce_admin_menu` VALUES (100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `mce_admin_menu` VALUES (101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `mce_admin_menu` VALUES (102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `mce_admin_menu` VALUES (103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `mce_admin_menu` VALUES (104, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `mce_admin_menu` VALUES (105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `mce_admin_menu` VALUES (106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `mce_admin_menu` VALUES (107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `mce_admin_menu` VALUES (108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `mce_admin_menu` VALUES (109, 95, 1, 0, 10000, 'admin', 'Theme', 'design', '', '模板设计', '', '模板设计');
INSERT INTO `mce_admin_menu` VALUES (110, 0, 0, 1, 10, 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `mce_admin_menu` VALUES (111, 49, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `mce_admin_menu` VALUES (112, 111, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `mce_admin_menu` VALUES (113, 111, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `mce_admin_menu` VALUES (114, 111, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `mce_admin_menu` VALUES (115, 111, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `mce_admin_menu` VALUES (116, 111, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `mce_admin_menu` VALUES (117, 111, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `mce_admin_menu` VALUES (118, 111, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `mce_admin_menu` VALUES (119, 111, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `mce_admin_menu` VALUES (120, 111, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `mce_admin_menu` VALUES (121, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `mce_admin_menu` VALUES (122, 121, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `mce_admin_menu` VALUES (123, 110, 0, 1, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `mce_admin_menu` VALUES (124, 123, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `mce_admin_menu` VALUES (125, 124, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `mce_admin_menu` VALUES (126, 124, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `mce_admin_menu` VALUES (127, 123, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `mce_admin_menu` VALUES (128, 127, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `mce_admin_menu` VALUES (129, 6, 1, 1, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `mce_admin_menu` VALUES (130, 129, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `mce_admin_menu` VALUES (131, 129, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `mce_admin_menu` VALUES (132, 129, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `mce_admin_menu` VALUES (162, 0, 1, 1, 10000, 'emt', 'meeting', 'index', '', '会议首页', '', '');
INSERT INTO `mce_admin_menu` VALUES (163, 0, 1, 1, 10000, 'emt', 'executive', 'index', '', 'executive summary', '', '');
INSERT INTO `mce_admin_menu` VALUES (164, 0, 1, 1, 10000, 'emt', 'Attend', 'index', '', '单场NN活动报名/参会情况查询', '', '');
INSERT INTO `mce_admin_menu` VALUES (165, 0, 1, 1, 10000, 'emt', 'meeting', 'detail', '', 'NN活动详情列表', '', '');
INSERT INTO `mce_admin_menu` VALUES (166, 0, 1, 1, 10000, 'emt', 'doctor', 'index', '', '用户参会详情列表', '', '');
INSERT INTO `mce_admin_menu` VALUES (167, 0, 1, 1, 10000, 'emt', 'report', 'financial_reports', '', '财务报告导出', '', '');
INSERT INTO `mce_admin_menu` VALUES (168, 0, 1, 1, 10000, 'emt', 'Report', 'nn_marketing_report', '', 'NN市场活动执行情况（参会）', '', '');
INSERT INTO `mce_admin_menu` VALUES (169, 0, 1, 1, 10000, 'emt', 'Report', 'execute_meeting_report', '', 'NN/三方活动执行情况（报名）', '', '');
INSERT INTO `mce_admin_menu` VALUES (170, 0, 1, 1, 10000, 'emt', 'Report', 'execute_total_report', '', '活动执行汇总统计', '', '');
INSERT INTO `mce_admin_menu` VALUES (171, 0, 1, 1, 10000, 'emt', 'survey', 'index', '', '满意度调查结果统计', '', '');
INSERT INTO `mce_admin_menu` VALUES (172, 0, 1, 1, 10000, 'emt', 'Report', 'meeting_hegui', '', '跟会状态管理 ', '', '');

-- ----------------------------
-- Table structure for mce_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `mce_auth_access`;
CREATE TABLE `mce_auth_access`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色',
  `rule_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限授权表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_auth_access
-- ----------------------------

-- ----------------------------
-- Table structure for mce_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `mce_auth_rule`;
CREATE TABLE `mce_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `module`(`app`, `status`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 173 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限规则表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_auth_rule
-- ----------------------------
INSERT INTO `mce_auth_rule` VALUES (1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `mce_auth_rule` VALUES (2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `mce_auth_rule` VALUES (3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `mce_auth_rule` VALUES (4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `mce_auth_rule` VALUES (5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `mce_auth_rule` VALUES (6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `mce_auth_rule` VALUES (7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `mce_auth_rule` VALUES (9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `mce_auth_rule` VALUES (11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `mce_auth_rule` VALUES (12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `mce_auth_rule` VALUES (13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `mce_auth_rule` VALUES (14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `mce_auth_rule` VALUES (16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `mce_auth_rule` VALUES (17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `mce_auth_rule` VALUES (18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `mce_auth_rule` VALUES (19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `mce_auth_rule` VALUES (20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `mce_auth_rule` VALUES (21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `mce_auth_rule` VALUES (23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `mce_auth_rule` VALUES (25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `mce_auth_rule` VALUES (26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `mce_auth_rule` VALUES (27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `mce_auth_rule` VALUES (28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `mce_auth_rule` VALUES (29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `mce_auth_rule` VALUES (31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `mce_auth_rule` VALUES (33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `mce_auth_rule` VALUES (34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `mce_auth_rule` VALUES (35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `mce_auth_rule` VALUES (37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `mce_auth_rule` VALUES (39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `mce_auth_rule` VALUES (40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '插件中心', '');
INSERT INTO `mce_auth_rule` VALUES (41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `mce_auth_rule` VALUES (42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `mce_auth_rule` VALUES (43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `mce_auth_rule` VALUES (44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `mce_auth_rule` VALUES (45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `mce_auth_rule` VALUES (46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `mce_auth_rule` VALUES (47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `mce_auth_rule` VALUES (48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `mce_auth_rule` VALUES (49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `mce_auth_rule` VALUES (50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `mce_auth_rule` VALUES (51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `mce_auth_rule` VALUES (52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `mce_auth_rule` VALUES (53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `mce_auth_rule` VALUES (54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `mce_auth_rule` VALUES (55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `mce_auth_rule` VALUES (56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `mce_auth_rule` VALUES (57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `mce_auth_rule` VALUES (58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `mce_auth_rule` VALUES (59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `mce_auth_rule` VALUES (60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `mce_auth_rule` VALUES (61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `mce_auth_rule` VALUES (62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `mce_auth_rule` VALUES (63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `mce_auth_rule` VALUES (64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `mce_auth_rule` VALUES (65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `mce_auth_rule` VALUES (66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `mce_auth_rule` VALUES (67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `mce_auth_rule` VALUES (68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `mce_auth_rule` VALUES (69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `mce_auth_rule` VALUES (70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `mce_auth_rule` VALUES (71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `mce_auth_rule` VALUES (72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `mce_auth_rule` VALUES (73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `mce_auth_rule` VALUES (74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `mce_auth_rule` VALUES (75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `mce_auth_rule` VALUES (76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `mce_auth_rule` VALUES (77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `mce_auth_rule` VALUES (78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `mce_auth_rule` VALUES (79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `mce_auth_rule` VALUES (80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `mce_auth_rule` VALUES (81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `mce_auth_rule` VALUES (82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `mce_auth_rule` VALUES (83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `mce_auth_rule` VALUES (84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `mce_auth_rule` VALUES (85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `mce_auth_rule` VALUES (86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `mce_auth_rule` VALUES (87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `mce_auth_rule` VALUES (88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `mce_auth_rule` VALUES (89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `mce_auth_rule` VALUES (90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `mce_auth_rule` VALUES (91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `mce_auth_rule` VALUES (92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `mce_auth_rule` VALUES (93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `mce_auth_rule` VALUES (94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `mce_auth_rule` VALUES (95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `mce_auth_rule` VALUES (96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `mce_auth_rule` VALUES (97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `mce_auth_rule` VALUES (98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `mce_auth_rule` VALUES (99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `mce_auth_rule` VALUES (100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `mce_auth_rule` VALUES (101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `mce_auth_rule` VALUES (102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `mce_auth_rule` VALUES (103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `mce_auth_rule` VALUES (104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `mce_auth_rule` VALUES (106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `mce_auth_rule` VALUES (107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `mce_auth_rule` VALUES (108, 1, 'admin', 'admin_url', 'admin/Theme/design', '', '模板设计', '');
INSERT INTO `mce_auth_rule` VALUES (109, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `mce_auth_rule` VALUES (110, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `mce_auth_rule` VALUES (111, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `mce_auth_rule` VALUES (112, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `mce_auth_rule` VALUES (113, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `mce_auth_rule` VALUES (114, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `mce_auth_rule` VALUES (115, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `mce_auth_rule` VALUES (116, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `mce_auth_rule` VALUES (117, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `mce_auth_rule` VALUES (118, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `mce_auth_rule` VALUES (119, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `mce_auth_rule` VALUES (120, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `mce_auth_rule` VALUES (121, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `mce_auth_rule` VALUES (122, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `mce_auth_rule` VALUES (123, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `mce_auth_rule` VALUES (124, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `mce_auth_rule` VALUES (125, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `mce_auth_rule` VALUES (126, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `mce_auth_rule` VALUES (127, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `mce_auth_rule` VALUES (128, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `mce_auth_rule` VALUES (129, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `mce_auth_rule` VALUES (130, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `mce_auth_rule` VALUES (131, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `mce_auth_rule` VALUES (132, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `mce_auth_rule` VALUES (162, 1, 'emt', 'admin_url', 'emt/meeting/index', '', '会议首页', '');
INSERT INTO `mce_auth_rule` VALUES (163, 1, 'emt', 'admin_url', 'emt/executive/index', '', 'executive summary', '');
INSERT INTO `mce_auth_rule` VALUES (164, 1, 'emt', 'admin_url', 'emt/Attend/index', '', '单场NN活动报名/参会情况查询', '');
INSERT INTO `mce_auth_rule` VALUES (165, 1, 'emt', 'admin_url', 'emt/meeting/detail', '', 'NN活动详情列表', '');
INSERT INTO `mce_auth_rule` VALUES (166, 1, 'emt', 'admin_url', 'emt/doctor/index', '', '用户参会详情列表', '');
INSERT INTO `mce_auth_rule` VALUES (167, 1, 'emt', 'admin_url', 'emt/report/financial_reports', '', '财务报告导出', '');
INSERT INTO `mce_auth_rule` VALUES (168, 1, 'emt', 'admin_url', 'emt/Report/nn_marketing_report', '', 'NN市场活动执行情况（参会）', '');
INSERT INTO `mce_auth_rule` VALUES (169, 1, 'emt', 'admin_url', 'emt/Report/execute_meeting_report', '', 'NN/三方活动执行情况（报名）', '');
INSERT INTO `mce_auth_rule` VALUES (170, 1, 'emt', 'admin_url', 'emt/Report/execute_total_report', '', '活动执行汇总统计', '');
INSERT INTO `mce_auth_rule` VALUES (171, 1, 'emt', 'admin_url', 'emt/survey/index', '', '满意度调查结果统计', '');
INSERT INTO `mce_auth_rule` VALUES (172, 1, 'emt', 'admin_url', 'emt/Report/meeting_hegui', '', '跟会状态管理 ', '');

-- ----------------------------
-- Table structure for mce_hook
-- ----------------------------
DROP TABLE IF EXISTS `mce_hook`;
CREATE TABLE `mce_hook`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_hook
-- ----------------------------
INSERT INTO `mce_hook` VALUES (2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `mce_hook` VALUES (3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `mce_hook` VALUES (4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `mce_hook` VALUES (5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `mce_hook` VALUES (6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `mce_hook` VALUES (7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `mce_hook` VALUES (8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `mce_hook` VALUES (9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `mce_hook` VALUES (10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `mce_hook` VALUES (11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `mce_hook` VALUES (12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `mce_hook` VALUES (13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `mce_hook` VALUES (14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `mce_hook` VALUES (15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `mce_hook` VALUES (16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `mce_hook` VALUES (17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `mce_hook` VALUES (18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `mce_hook` VALUES (19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `mce_hook` VALUES (20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `mce_hook` VALUES (21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `mce_hook` VALUES (22, 3, 1, '评论区', 'comment', '', '评论区');
INSERT INTO `mce_hook` VALUES (23, 3, 1, '留言区', 'guestbook', '', '留言区');
INSERT INTO `mce_hook` VALUES (24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `mce_hook` VALUES (25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `mce_hook` VALUES (26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `mce_hook` VALUES (27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `mce_hook` VALUES (28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `mce_hook` VALUES (29, 3, 0, '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `mce_hook` VALUES (32, 2, 1, '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `mce_hook` VALUES (33, 3, 0, '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `mce_hook` VALUES (34, 1, 0, '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `mce_hook` VALUES (35, 1, 1, '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');
INSERT INTO `mce_hook` VALUES (36, 1, 1, '验证码图片', 'captcha_image', 'cmf', '验证码图片');
INSERT INTO `mce_hook` VALUES (37, 2, 1, '后台模板设计界面', 'admin_theme_design_view', 'admin', '后台模板设计界面');
INSERT INTO `mce_hook` VALUES (38, 2, 1, '后台设置网站信息界面', 'admin_setting_site_view', 'admin', '后台设置网站信息界面');
INSERT INTO `mce_hook` VALUES (39, 2, 1, '后台清除缓存界面', 'admin_setting_clear_cache_view', 'admin', '后台清除缓存界面');
INSERT INTO `mce_hook` VALUES (40, 2, 1, '后台导航管理界面', 'admin_nav_index_view', 'admin', '后台导航管理界面');
INSERT INTO `mce_hook` VALUES (41, 2, 1, '后台友情链接管理界面', 'admin_link_index_view', 'admin', '后台友情链接管理界面');
INSERT INTO `mce_hook` VALUES (42, 2, 1, '后台幻灯片管理界面', 'admin_slide_index_view', 'admin', '后台幻灯片管理界面');
INSERT INTO `mce_hook` VALUES (43, 2, 1, '后台管理员列表界面', 'admin_user_index_view', 'admin', '后台管理员列表界面');
INSERT INTO `mce_hook` VALUES (44, 2, 1, '后台角色管理界面', 'admin_rbac_index_view', 'admin', '后台角色管理界面');
INSERT INTO `mce_hook` VALUES (49, 2, 1, '用户管理本站用户列表界面', 'user_admin_index_view', 'user', '用户管理本站用户列表界面');
INSERT INTO `mce_hook` VALUES (50, 2, 1, '资源管理列表界面', 'user_admin_asset_index_view', 'user', '资源管理列表界面');
INSERT INTO `mce_hook` VALUES (51, 2, 1, '用户管理第三方用户列表界面', 'user_admin_oauth_index_view', 'user', '用户管理第三方用户列表界面');
INSERT INTO `mce_hook` VALUES (52, 2, 1, '后台首页界面', 'admin_index_index_view', 'admin', '后台首页界面');
INSERT INTO `mce_hook` VALUES (53, 2, 1, '后台回收站界面', 'admin_recycle_bin_index_view', 'admin', '后台回收站界面');
INSERT INTO `mce_hook` VALUES (54, 2, 1, '后台菜单管理界面', 'admin_menu_index_view', 'admin', '后台菜单管理界面');
INSERT INTO `mce_hook` VALUES (55, 2, 1, '后台自定义登录是否开启钩子', 'admin_custom_login_open', 'admin', '后台自定义登录是否开启钩子');
INSERT INTO `mce_hook` VALUES (64, 2, 1, '后台幻灯片页面列表界面', 'admin_slide_item_index_view', 'admin', '后台幻灯片页面列表界面');
INSERT INTO `mce_hook` VALUES (65, 2, 1, '后台幻灯片页面添加界面', 'admin_slide_item_add_view', 'admin', '后台幻灯片页面添加界面');
INSERT INTO `mce_hook` VALUES (66, 2, 1, '后台幻灯片页面编辑界面', 'admin_slide_item_edit_view', 'admin', '后台幻灯片页面编辑界面');
INSERT INTO `mce_hook` VALUES (67, 2, 1, '后台管理员添加界面', 'admin_user_add_view', 'admin', '后台管理员添加界面');
INSERT INTO `mce_hook` VALUES (68, 2, 1, '后台管理员编辑界面', 'admin_user_edit_view', 'admin', '后台管理员编辑界面');
INSERT INTO `mce_hook` VALUES (69, 2, 1, '后台角色添加界面', 'admin_rbac_role_add_view', 'admin', '后台角色添加界面');
INSERT INTO `mce_hook` VALUES (70, 2, 1, '后台角色编辑界面', 'admin_rbac_role_edit_view', 'admin', '后台角色编辑界面');
INSERT INTO `mce_hook` VALUES (71, 2, 1, '后台角色授权界面', 'admin_rbac_authorize_view', 'admin', '后台角色授权界面');

-- ----------------------------
-- Table structure for mce_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `mce_hook_plugin`;
CREATE TABLE `mce_hook_plugin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子插件表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_hook_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for mce_link
-- ----------------------------
DROP TABLE IF EXISTS `mce_link`;
CREATE TABLE `mce_link`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT 0 COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_link
-- ----------------------------
INSERT INTO `mce_link` VALUES (1, 1, 1, 8, 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- ----------------------------
-- Table structure for mce_nav
-- ----------------------------
DROP TABLE IF EXISTS `mce_nav`;
CREATE TABLE `mce_nav`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '前台导航位置表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_nav
-- ----------------------------
INSERT INTO `mce_nav` VALUES (1, 1, '主导航', '主导航');
INSERT INTO `mce_nav` VALUES (2, 0, '底部导航', '');

-- ----------------------------
-- Table structure for mce_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `mce_nav_menu`;
CREATE TABLE `mce_nav_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '前台导航菜单表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_nav_menu
-- ----------------------------
INSERT INTO `mce_nav_menu` VALUES (1, 1, 0, 1, 0, '首页', '', 'home', '', '0-1');

-- ----------------------------
-- Table structure for mce_option
-- ----------------------------
DROP TABLE IF EXISTS `mce_option`;
CREATE TABLE `mce_option`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '全站配置表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_option
-- ----------------------------
INSERT INTO `mce_option` VALUES (1, 1, 'site_info', '{\"site_name\":\"MCE\",\"site_seo_title\":\"MCE\",\"site_seo_keywords\":\"MCE\",\"site_seo_description\":\"MCE\"}');

-- ----------------------------
-- Table structure for mce_role
-- ----------------------------
DROP TABLE IF EXISTS `mce_role`;
CREATE TABLE `mce_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父角色ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT 0 COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_role
-- ----------------------------
INSERT INTO `mce_role` VALUES (1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `mce_role` VALUES (2, 0, 1, 1329633709, 1329633709, 0, '普通管理员', '权限由最高管理员分配！');

-- ----------------------------
-- Table structure for mce_role_user
-- ----------------------------
DROP TABLE IF EXISTS `mce_role_user`;
CREATE TABLE `mce_role_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色对应表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for mce_route
-- ----------------------------
DROP TABLE IF EXISTS `mce_route`;
CREATE TABLE `mce_route`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '路由表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_route
-- ----------------------------

-- ----------------------------
-- Table structure for mce_theme
-- ----------------------------
DROP TABLE IF EXISTS `mce_theme`;
CREATE TABLE `mce_theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '安装时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后升级时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为已编译模板',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模板皮肤' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_theme
-- ----------------------------
INSERT INTO `mce_theme` VALUES (1, 0, 0, 0, 0, 'default', 'default', '1.0.0', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF默认模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for mce_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `mce_theme_file`;
CREATE TABLE `mce_theme_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模板皮肤文件' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_theme_file
-- ----------------------------

-- ----------------------------
-- Table structure for mce_third_party_user
-- ----------------------------
DROP TABLE IF EXISTS `mce_third_party_user`;
CREATE TABLE `mce_third_party_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '本站用户id',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'access_token过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '绑定时间',
  `login_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录次数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方唯一码',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方用户表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_third_party_user
-- ----------------------------

-- ----------------------------
-- Table structure for mce_user
-- ----------------------------
DROP TABLE IF EXISTS `mce_user`;
CREATE TABLE `mce_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT 0 COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT 0 COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '用户积分',
  `coin` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '金币',
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '注册时间',
  `user_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_login`(`user_login`) USING BTREE,
  INDEX `user_nickname`(`user_nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_user
-- ----------------------------
INSERT INTO `mce_user` VALUES (1, 1, 0, 0, 1608026963, 0, 0, 0.00, 1605333543, 1, 'admin', '###', 'admin', 'admin@admin.com', '', '', '', '106.120.232.163', '', '', NULL);

-- ----------------------------
-- Table structure for mce_user_action
-- ----------------------------
DROP TABLE IF EXISTS `mce_user_action`;
CREATE TABLE `mce_user_action`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT 0 COMMENT '奖励次数',
  `cycle_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周期时间值',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '执行操作的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_user_action
-- ----------------------------
INSERT INTO `mce_user_action` VALUES (1, 1, 1, 1, 2, 1, '用户登录', 'login', 'user', '');

-- ----------------------------
-- Table structure for mce_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `mce_user_action_log`;
CREATE TABLE `mce_user_action_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '访问次数',
  `last_visit_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后访问时间',
  `object` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_object_action`(`user_id`, `object`, `action`) USING BTREE,
  INDEX `user_object_action_ip`(`user_id`, `object`, `action`, `ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '访问记录表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_user_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for mce_user_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `mce_user_balance_log`;
CREATE TABLE `mce_user_balance_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户 id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `change` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '更改余额',
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '更改后余额',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户余额变更日志表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_user_balance_log
-- ----------------------------

-- ----------------------------
-- Table structure for mce_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `mce_user_login_attempt`;
CREATE TABLE `mce_user_login_attempt`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '尝试次数',
  `attempt_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '尝试登录时间',
  `locked_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '锁定时间',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户登录尝试表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_user_login_attempt
-- ----------------------------

-- ----------------------------
-- Table structure for mce_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `mce_user_score_log`;
CREATE TABLE `mce_user_score_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作积分等奖励日志表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for mce_user_token
-- ----------------------------
DROP TABLE IF EXISTS `mce_user_token`;
CREATE TABLE `mce_user_token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT ' 过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户客户端登录 token 表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_user_token
-- ----------------------------
INSERT INTO `mce_user_token` VALUES (1, 1, 1620885881, 1605333881, '0a83445b8b69b872babde93a457833e0cd0e1b6c8d047b922cf8373f85f928db', 'web');

-- ----------------------------
-- Table structure for mce_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `mce_verification_code`;
CREATE TABLE `mce_verification_code`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当天已经发送成功的次数',
  `send_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后发送成功时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '手机邮箱数字验证码表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mce_verification_code
-- ----------------------------

-- ----------------------------
-- Table structure for mdm_sales
-- ----------------------------
DROP TABLE IF EXISTS `mdm_sales`;
CREATE TABLE `mdm_sales`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initial` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `dbm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `abm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `rbd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `initial`(`initial`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3233 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mdm_sales
-- ----------------------------
INSERT INTO `mdm_sales` VALUES (1, 'KUNG', '高堃', 'EBD', '其他', '', '', '', 'vp');
INSERT INTO `mdm_sales` VALUES (2, 'HUZY', '张辉', 'DBD', '其他', '', '', '', 'vp');
INSERT INTO `mdm_sales` VALUES (3, 'SHTU', '申屠敬', 'DBD', '华东大区', '', '', '', 'rbd');
INSERT INTO `mdm_sales` VALUES (4, 'CYEW', '程业伟', 'DBD', '华南大区', '', '', '', 'rbd');
INSERT INTO `mdm_sales` VALUES (5, 'XQF', '熊琼芳', 'DBD', '中南大区', '', '', '', 'rbd');
INSERT INTO `mdm_sales` VALUES (6, 'QIX', '祁雄武', 'DBD', '华西大区', '', '', '', 'rbd');
INSERT INTO `mdm_sales` VALUES (7, 'JGUA', '关剑鸿', 'DBD', '东南大区', '', '', '', 'rbd');
INSERT INTO `mdm_sales` VALUES (8, 'XIZH', '张骁女', 'DBD', '华北大区', '', '', '', 'rbd');
INSERT INTO `mdm_sales` VALUES (9, 'WYU', '宇文虹', 'DBD', '华中大区', '', '', '', 'rbd');
INSERT INTO `mdm_sales` VALUES (10, 'CAZ', '蔡占平', 'DBD', '东北大区', '', '', '', 'rbd');
INSERT INTO `mdm_sales` VALUES (11, 'XICO', '曹翔宇', 'EBD', '华南大区', '', '', '', 'abd');
INSERT INTO `mdm_sales` VALUES (12, 'YGWA', '王咏', 'EBD', '华西大区', '', '', '', 'abd');
INSERT INTO `mdm_sales` VALUES (13, 'YUXQ', '祁裕霞', 'EBD', '东南大区', '', '', '', 'abd');
INSERT INTO `mdm_sales` VALUES (14, 'JIEY', '杨杰', 'EBD', '华北大区', '', '', '', 'abd');
INSERT INTO `mdm_sales` VALUES (15, 'WSHC', '陈文生', 'EBD', '华中大区', '', '', '', 'abd');
INSERT INTO `mdm_sales` VALUES (16, 'HBAI', '白华', 'EBD', '中南大区', '', '', '', 'abd');
INSERT INTO `mdm_sales` VALUES (17, 'HONH', '胡红燕', 'EBD', '华东大区', '', '', '', 'abd');
INSERT INTO `mdm_sales` VALUES (18, 'HOXZ', '张洪霞', 'DBD', '东北大区', '', '', 'CAZ', 'abm');
INSERT INTO `mdm_sales` VALUES (19, 'HCAI', '蔡洪玲', 'DBD', '东北大区', '', '', 'CAZ', 'abm');
INSERT INTO `mdm_sales` VALUES (20, 'HZOU', '邹鸿飞', 'DBD', '东北大区', '', '', 'CAZ', 'abm');
INSERT INTO `mdm_sales` VALUES (21, 'LYXZ', '周莉', 'DBD', '东北大区', '', '', 'CAZ', 'abm');
INSERT INTO `mdm_sales` VALUES (22, 'YEZC', '崔业忠', 'DBD', '东南大区', '', '', 'JGUA', 'abm');
INSERT INTO `mdm_sales` VALUES (23, 'PFAN', '樊沛泽', 'DBD', '东南大区', '', '', 'JGUA', 'abm');
INSERT INTO `mdm_sales` VALUES (24, 'GULY', '郭丽英', 'DBD', '东南大区', '', '', 'JGUA', 'abm');
INSERT INTO `mdm_sales` VALUES (25, 'HGJD', '丁虹剑', 'DBD', '东南大区', '', '', 'JGUA', 'abm');
INSERT INTO `mdm_sales` VALUES (26, 'GUAZ', '赵冠华', 'DBD', '东南大区', '', '', 'JGUA', 'abm');
INSERT INTO `mdm_sales` VALUES (27, 'HAOZ', '仲浩', 'DBD', '东南大区', '', '', 'JGUA', 'abm');
INSERT INTO `mdm_sales` VALUES (28, 'ZQUA', '全朝晖', 'DBD', '中南大区', '', '', 'XQF', 'abm');
INSERT INTO `mdm_sales` VALUES (29, 'QHZN', '张庆华', 'DBD', '中南大区', '', '', 'XQF', 'abm');
INSERT INTO `mdm_sales` VALUES (30, 'ZHIL', '刘志立', 'DBD', '中南大区', '', '', 'XQF', 'abm');
INSERT INTO `mdm_sales` VALUES (31, 'BIFA', '方冰', 'DBD', '中南大区', '', '', 'XQF', 'abm');
INSERT INTO `mdm_sales` VALUES (32, 'XIGZ', '赵兴涛', 'DBD', '中南大区', '', '', 'XQF', 'abm');
INSERT INTO `mdm_sales` VALUES (33, 'XIUJ', '贾秀华', 'DBD', '华中大区', '', '', 'WYU', 'abm');
INSERT INTO `mdm_sales` VALUES (34, 'WPEN', '彭伟', 'DBD', '华中大区', '', '', 'WYU', 'abm');
INSERT INTO `mdm_sales` VALUES (35, 'XOLY', '闫晓亮', 'DBD', '华中大区', '', '', 'WYU', 'abm');
INSERT INTO `mdm_sales` VALUES (36, 'RUZL', '陆瑞忠', 'DBD', '华东大区', '', '', 'SHTU', 'abm');
INSERT INTO `mdm_sales` VALUES (37, 'YLYI', '刘燕', 'DBD', '华东大区', '', '', 'SHTU', 'abm');
INSERT INTO `mdm_sales` VALUES (38, 'YSW', '姚士伟', 'DBD', '华东大区', '', '', 'SHTU', 'abm');
INSERT INTO `mdm_sales` VALUES (39, 'MISU', '孙敏娟', 'DBD', '华东大区', '', '', 'SHTU', 'abm');
INSERT INTO `mdm_sales` VALUES (40, 'XEZG', '张雪', 'DBD', '华东大区', '', '', 'SHTU', 'abm');
INSERT INTO `mdm_sales` VALUES (41, 'ZHLU', '陆朝晖', 'DBD', '华南大区', '', '', 'CYEW', 'abm');
INSERT INTO `mdm_sales` VALUES (42, 'YGLI', '林杨', 'DBD', '华南大区', '', '', 'CYEW', 'abm');
INSERT INTO `mdm_sales` VALUES (43, 'JTYU', '虞洁婷', 'DBD', '华南大区', '', '', 'CYEW', 'abm');
INSERT INTO `mdm_sales` VALUES (44, 'XSWA', '王新盛', 'DBD', '华南大区', '', '', 'CYEW', 'abm');
INSERT INTO `mdm_sales` VALUES (45, 'FNXI', '肖丰臣', 'DBD', '华中大区', '', '', 'WYU', 'abm');
INSERT INTO `mdm_sales` VALUES (46, 'JHEX', '何剑', 'DBD', '华中大区', '', '', 'WYU', 'abm');
INSERT INTO `mdm_sales` VALUES (47, 'XUEL', '李雪', 'DBD', '华西大区', '', '', 'QIX', 'abm');
INSERT INTO `mdm_sales` VALUES (48, 'YFEY', '杨彦峰', 'DBD', '华西大区', '', '', 'QIX', 'abm');
INSERT INTO `mdm_sales` VALUES (49, 'LGAO', '高丽', 'DBD', '华西大区', '', '', 'QIX', 'abm');
INSERT INTO `mdm_sales` VALUES (50, 'PNCN', '陈攀', 'DBD', '华西大区', '', '', 'QIX', 'abm');
INSERT INTO `mdm_sales` VALUES (51, 'CMIO', '缪成华', 'DBD', '华北大区', '', '', 'XIZH', 'abm');
INSERT INTO `mdm_sales` VALUES (52, 'NNGW', '王宁', 'DBD', '华北大区', '', '', 'XIZH', 'abm');
INSERT INTO `mdm_sales` VALUES (53, 'JLIX', '刘靖', 'DBD', '华北大区', '', '', 'XIZH', 'abm');
INSERT INTO `mdm_sales` VALUES (54, 'HWAX', '王会', 'DBD', '华北大区', '', '', 'XIZH', 'abm');
INSERT INTO `mdm_sales` VALUES (55, 'JWLI', '刘建伟', 'DBD', '华北大区', '', '', 'XIZH', 'abm');
INSERT INTO `mdm_sales` VALUES (56, 'WIFU', '付炜', 'DBD', '华北大区', '', '', 'XIZH', 'abm');
INSERT INTO `mdm_sales` VALUES (57, 'HGLI', '刘洪波', 'DBD', '东北大区', '', '', 'CAZ', 'abm');
INSERT INTO `mdm_sales` VALUES (58, 'YGZN', '郑英', 'DBD', '华北大区', '', '', 'XIZH', 'abm');
INSERT INTO `mdm_sales` VALUES (59, 'GDF', '冯国栋', 'DBD', '华中大区', '', '', 'WYU', 'abm');
INSERT INTO `mdm_sales` VALUES (60, 'CGLU', '卢春明', 'DBD', '中南大区', '', '', 'XQF', 'abm');
INSERT INTO `mdm_sales` VALUES (61, 'YAOT', '唐耀东', 'DBD', '华西大区', '', '', 'QIX', 'abm');
INSERT INTO `mdm_sales` VALUES (62, 'JIZN', '曾建华', 'DBD', '华南大区', '', '', 'CYEW', 'abm');
INSERT INTO `mdm_sales` VALUES (63, 'YUTG', '唐渊', 'DBD', '华东大区', '', '', 'SHTU', 'abm');
INSERT INTO `mdm_sales` VALUES (64, 'LPNY', '尹礼平', 'DBD', '东南大区', '', '', 'JGUA', 'abm');
INSERT INTO `mdm_sales` VALUES (65, 'JEGW', '王军胜', 'EBD', '东南大区', '', '', 'YUXQ', 'abm');
INSERT INTO `mdm_sales` VALUES (66, 'YGZO', '赵莹', 'EBD', '华北大区', '', '', 'JIEY', 'abm');
INSERT INTO `mdm_sales` VALUES (67, 'XAFA', '樊晓霞', 'EBD', '华东大区', '', '', 'HONH', 'abm');
INSERT INTO `mdm_sales` VALUES (68, 'ZHHL', '李振生', 'EBD', '华中大区', '', '', 'WSHC', 'abm');
INSERT INTO `mdm_sales` VALUES (69, 'GIIZ', '朱改丽', 'EBD', '东南大区', '', 'JEGW', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (70, 'KZXL', '梁堃', 'EBD', '华北大区', '', '', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (71, 'HHHG', '黄海昌', 'EBD', '华南大区', '', '', 'XICO', 'dbm');
INSERT INTO `mdm_sales` VALUES (72, 'LFHU', '黄立夫', 'EBD', '华南大区', '', '', 'XICO', 'dbm');
INSERT INTO `mdm_sales` VALUES (73, 'XOSN', '孙晓楠', 'EBD', '华南大区', '', '', 'XICO', 'dbm');
INSERT INTO `mdm_sales` VALUES (74, 'LZHE', '郑莉', 'EBD', '华南大区', '', '', 'XICO', 'dbm');
INSERT INTO `mdm_sales` VALUES (75, 'YZHL', '刘玉哲', 'EBD', '华南大区', '', '', 'XICO', 'dbm');
INSERT INTO `mdm_sales` VALUES (76, 'DOXL', '梁冬雪', 'EBD', '华南大区', '', '', 'XICO', 'dbm');
INSERT INTO `mdm_sales` VALUES (77, 'TFWN', '温添福', 'EBD', '华南大区', '', '', 'XICO', 'dbm');
INSERT INTO `mdm_sales` VALUES (78, 'QYAG', '杨琴', 'EBD', '华西大区', '', '', 'YGWA', 'dbm');
INSERT INTO `mdm_sales` VALUES (79, 'HAPH', '黄海平', 'EBD', '华西大区', '', '', 'YGWA', 'dbm');
INSERT INTO `mdm_sales` VALUES (80, 'YXZM', '马园园', 'EBD', '华西大区', '', '', 'YGWA', 'dbm');
INSERT INTO `mdm_sales` VALUES (81, 'JNGB', '白晶', 'EBD', '华西大区', '', '', 'YGWA', 'dbm');
INSERT INTO `mdm_sales` VALUES (82, 'SHIZ', '钟实', 'EBD', '东南大区', '', 'JEGW', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (83, 'JZHS', '宋佳株', 'EBD', '东南大区', '', '', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (84, 'DHX', '贺丹', 'EBD', '东南大区', '', 'JEGW', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (85, 'GUHG', '黄广海', 'EBD', '东南大区', '', 'JEGW', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (86, 'XOWE', '文晓庆', 'EBD', '东南大区', '', '', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (87, 'YSE', '沈珏', 'EBD', '东南大区', '', '', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (88, 'WICE', '程伟', 'EBD', '东南大区', '', '', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (89, 'LIJG', '姜莉', 'EBD', '华北大区', '', 'YGZO', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (90, 'TGTL', '刘婷婷', 'EBD', '华北大区', '', 'YGZO', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (91, 'LILX', '李丽', 'EBD', '华北大区', '', 'YGZO', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (92, 'DGGX', '徐东升', 'EBD', '华北大区', '', 'YGZO', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (93, 'XYW', '王新运', 'EBD', '华北大区', '', '', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (94, 'JUFN', '冯娟', 'EBD', '华北大区', '', '', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (95, 'BNGS', '孙冰', 'EBD', '华北大区', '', '', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (96, 'HXYA', '杨海霞', 'EBD', '华北大区', '', '', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (97, 'YIUL', '刘英春', 'EBD', '华中大区', '', 'ZHHL', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (98, 'JRZU', '朱建蓉', 'EBD', '华中大区', '', 'ZHHL', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (99, 'JIWY', '杨建稳', 'EBD', '华中大区', '', 'ZHHL', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (100, 'LXXX', '李莉', 'EBD', '华中大区', '', '', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (101, 'GUXU', '薛广东', 'EBD', '华中大区', '', '', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (102, 'CEZ', '赵成俊', 'EBD', '华中大区', '', '', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (103, 'JIIS', '沈健民', 'EBD', '华中大区', '', '', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (104, 'YYJA', '贾园园', 'EBD', '华中大区', '', '', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (105, 'HSSD', '戴珊珊', 'EBD', '东北大区', '', '', '', 'dbm');
INSERT INTO `mdm_sales` VALUES (106, 'FGWU', '吴枫', 'EBD', '中南大区', '', '', 'HBAI', 'dbm');
INSERT INTO `mdm_sales` VALUES (107, 'WJHE', '何文杰', 'EBD', '中南大区', '', '', 'HBAI', 'dbm');
INSERT INTO `mdm_sales` VALUES (108, 'LLHX', '华丽兰', 'EBD', '中南大区', '', '', 'HBAI', 'dbm');
INSERT INTO `mdm_sales` VALUES (109, 'WILU', '卢苇', 'EBD', '中南大区', '', '', 'HBAI', 'dbm');
INSERT INTO `mdm_sales` VALUES (110, 'FENX', '肖芬', 'EBD', '中南大区', '', '', 'HBAI', 'dbm');
INSERT INTO `mdm_sales` VALUES (111, 'YWNZ', '王艳', 'EBD', '华东大区', '', '', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (112, 'YILE', '乐怡韻', 'EBD', '华东大区', '', '', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (113, 'XGGT', '唐相荣', 'EBD', '华东大区', '', 'XAFA', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (114, 'WWSU', '孙炜玮', 'EBD', '华东大区', '', 'XAFA', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (115, 'YNZO', '周燕', 'EBD', '华东大区', '', 'XAFA', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (116, 'LPLU', '刘丽鹏', 'DBD', '东北大区', '', 'HCAI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (117, 'CNNZ', '张辰龙', 'DBD', '东北大区', '', 'HGLI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (118, 'SNZG', '张松', 'DBD', '东北大区', '', 'LYXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (119, 'LILW', '吴莉莉', 'DBD', '东北大区', '', 'HGLI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (120, 'XOWA', '王晓静', 'DBD', '东北大区', '', 'HCAI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (121, 'YGQL', '李永强', 'DBD', '东北大区', '', 'HCAI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (122, 'WEEZ', '赵微微', 'DBD', '东北大区', '', 'HGLI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (123, 'YQNL', '刘益强', 'DBD', '东北大区', '', 'HCAI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (124, 'TGGH', '郝同贵', 'DBD', '东北大区', '', 'HCAI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (125, 'DULU', '刘东瑜', 'DBD', '东北大区', '', 'HOXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (126, 'YONS', '宋永新', 'DBD', '东北大区', '', 'HOXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (127, 'LLSU', '孙丽丽', 'DBD', '东北大区', '', 'HOXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (128, 'BAOS', '孙宝军', 'DBD', '东北大区', '', 'HZOU', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (129, 'BBLI', '李彬彬', 'DBD', '东北大区', '', 'HZOU', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (130, 'XGCU', '崔向月', 'DBD', '东北大区', '', 'HZOU', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (131, 'XSLI', '李树和', 'DBD', '东北大区', '', 'HZOU', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (132, 'YCHZ', '臧延成', 'DBD', '东北大区', '', 'HZOU', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (133, 'WJIZ', '张文静', 'DBD', '东北大区', '', 'LYXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (134, 'MNUJ', '蒋明宇', 'DBD', '东北大区', '', 'LYXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (135, 'WHGL', '刘慧宁', 'DBD', '东北大区', '', 'HGLI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (136, 'GSON', '宋刚', 'DBD', '东北大区', '', 'LYXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (137, 'LOLQ', '路龙龙', 'DBD', '东北大区', '', 'LYXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (138, 'DXLI', '李丹', 'DBD', '东北大区', '', 'LYXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (139, 'YGXI', '夏永庆', 'DBD', '东南大区', '', 'HGJD', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (140, 'LILG', '凌莉', 'DBD', '东南大区', '', 'HGJD', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (141, 'ZJYN', '尹振娟', 'DBD', '东南大区', '', 'HGJD', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (142, 'MEZG', '高美珍', 'DBD', '东南大区', '', 'HGJD', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (143, 'WNDO', '董伟娜', 'DBD', '东南大区', '', 'PFAN', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (144, 'XAGW', '王晓刚', 'DBD', '东南大区', '', 'PFAN', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (145, 'HUMX', '马辉', 'DBD', '东南大区', '', 'PFAN', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (146, 'YNCG', '常艳霞', 'DBD', '东南大区', '', 'PFAN', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (147, 'XXNG', '邢向荣', 'DBD', '东南大区', '', 'GULY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (148, 'WYAN', '杨伟', 'DBD', '东南大区', '', 'GULY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (149, 'EXYJ', '贾希迎', 'DBD', '东南大区', '', 'GULY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (150, 'LZSU', '孙连国', 'DBD', '东南大区', '', 'GULY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (151, 'JIUX', '徐建华', 'DBD', '东南大区', '', 'GUAZ', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (152, 'YJIC', '陈妍静', 'DBD', '东南大区', '', 'GUAZ', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (153, 'DOFG', '方东江', 'DBD', '东南大区', '', 'LPNY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (154, 'LOGZ', '张隆', 'DBD', '东南大区', '', 'GUAZ', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (155, 'QUNT', '谈群奕', 'DBD', '东南大区', '', 'GUAZ', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (156, 'XLD', '董兴隆', 'DBD', '东南大区', '', 'GUAZ', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (157, 'ZSHA', '单智勇', 'DBD', '东南大区', '', 'LPNY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (158, 'QIAC', '陈钱江', 'DBD', '东南大区', '', 'HAOZ', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (159, 'JOYU', '俞晶荣', 'DBD', '东南大区', '', 'HAOZ', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (160, 'QINF', '方琴', 'DBD', '东南大区', '', 'HAOZ', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (161, 'XZHE', '郑晓仙', 'DBD', '东南大区', '', 'LPNY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (162, 'HGTZ', '翟洪涛', 'DBD', '东北大区', '', 'HGLI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (163, 'CIFU', '付翠', 'DBD', '东北大区', '', 'HOXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (164, 'XIUZ', '张秀发', 'DBD', '东北大区', '', 'HOXZ', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (165, 'QCH', '陈庆利', 'DBD', '东南大区', '', 'YEZC', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (166, 'CNGC', '陈昌水', 'DBD', '东南大区', '', 'YEZC', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (167, 'DAQW', '王大庆', 'DBD', '东南大区', '', 'YEZC', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (168, 'YCE', '陈云', 'DBD', '东南大区', '', 'YEZC', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (169, 'LUGZ', '章炉梁', 'DBD', '东南大区', '', 'YEZC', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (170, 'MGSW', '王明世', 'DBD', '东南大区', '', 'YEZC', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (171, 'LNBO', '柏林', 'DBD', '中南大区', '', 'ZQUA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (172, 'HAYY', '叶海', 'DBD', '中南大区', '', 'ZQUA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (173, 'HGGT', '田洪铭', 'DBD', '中南大区', '', 'ZQUA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (174, 'QIBY', '叶其波', 'DBD', '中南大区', '', 'ZQUA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (175, 'WJG', '蒋威', 'DBD', '中南大区', '', 'QHZN', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (176, 'CYTU', '涂春勇', 'DBD', '中南大区', '', 'CGLU', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (177, 'YGJS', '孙颖洁', 'DBD', '中南大区', '', 'QHZN', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (178, 'MWXG', '王敏', 'DBD', '中南大区', '', 'QHZN', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (179, 'PWAG', '王平', 'DBD', '中南大区', '', 'CGLU', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (180, 'BBWA', '王彬彬', 'DBD', '中南大区', '', 'QHZN', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (181, 'FNWG', '王芳', 'DBD', '中南大区', '', 'QHZN', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (182, 'YIYG', '杨毅', 'DBD', '中南大区', '', 'ZHIL', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (183, 'LXHE', '贺龙', 'DBD', '中南大区', '', 'ZHIL', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (184, 'LZUX', '朱礼', 'DBD', '中南大区', '', 'ZHIL', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (185, 'MLYI', '易明亮', 'DBD', '中南大区', '', 'ZHIL', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (186, 'MIYG', '杨敏', 'DBD', '中南大区', '', 'ZHIL', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (187, 'GOQI', '祁公平', 'DBD', '中南大区', '', 'BIFA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (188, 'QGH', '黄清琥', 'DBD', '中南大区', '', 'BIFA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (189, 'DLJI', '金丹龙', 'DBD', '中南大区', '', 'XIGZ', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (190, 'JFSO', '宋俊帆', 'DBD', '中南大区', '', 'XIGZ', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (191, 'YPLU', '陆艳萍', 'DBD', '中南大区', '', 'XIGZ', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (192, 'SHME', '梅澍', 'DBD', '中南大区', '', 'XIGZ', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (193, 'MUTY', '陶明素', 'DBD', '中南大区', '', 'XIGZ', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (194, 'YAPA', '潘燕飞', 'DBD', '中南大区', '', 'CGLU', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (195, 'LGCH', '陈玲春', 'DBD', '东南大区', '', 'HAOZ', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (196, 'XUNZ', '朱轩', 'DBD', '东南大区', '', 'HAOZ', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (197, 'XAFW', '吴小芳', 'DBD', '中南大区', '', 'BIFA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (198, 'MUC', '蔡明秀', 'DBD', '中南大区', '', 'BIFA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (199, 'QHAO', '赵琼', 'DBD', '中南大区', '', 'BIFA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (200, 'PSHN', '沈萍', 'DBD', '华东大区', '', 'MISU', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (201, 'LEYA', '杨乐', 'DBD', '华东大区', '', 'MISU', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (202, 'HUXC', '陈弧', 'DBD', '华东大区', '', 'MISU', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (203, 'LIIY', '于利平', 'DBD', '华东大区', '', 'MISU', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (204, 'JXCN', '陈佶', 'DBD', '华东大区', '', 'MISU', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (205, 'CJX', '徐晨娟', 'DBD', '华东大区', '', 'MISU', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (206, 'CLXY', '李超', 'DBD', '华东大区', '', 'YUTG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (207, 'DDZH', '张丹丹', 'DBD', '华东大区', '', 'XEZG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (208, 'XINS', '苏鑫', 'DBD', '华东大区', '', 'XEZG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (209, 'JCEG', '程江', 'DBD', '华东大区', '', 'XEZG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (210, 'FXLU', '卢峰', 'DBD', '华东大区', '', 'XEZG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (211, 'LXO', '肖麟', 'DBD', '华东大区', '', 'YUTG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (212, 'YILZ', '朱芊美', 'DBD', '华东大区', '', 'RUZL', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (213, 'GSHL', '李帅锋', 'DBD', '华东大区', '', 'RUZL', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (214, 'JXXW', '吴婕', 'DBD', '华东大区', '', 'RUZL', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (215, 'ZGGJ', '金钟鸣', 'DBD', '华东大区', '', 'RUZL', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (216, 'XHA', '韩晓庆', 'DBD', '华东大区', '', 'RUZL', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (217, 'DGWE', '魏东华', 'DBD', '华东大区', '', 'RUZL', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (218, 'BNSI', '司滨', 'DBD', '华东大区', '', 'YLYI', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (219, 'MNZA', '赵明欣', 'DBD', '华东大区', '', 'YLYI', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (220, 'XLNY', '颜小玲', 'DBD', '华东大区', '', 'YLYI', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (221, 'ZHM', '马振国', 'DBD', '华东大区', '', 'YLYI', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (222, 'LIZO', '周立', 'DBD', '华东大区', '', 'YLYI', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (223, 'JIGY', '于济纲', 'DBD', '华东大区', '', 'YLYI', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (224, 'JUHM', '马军师', 'DBD', '华东大区', '', 'YSW', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (225, 'MXE', '薛敏', 'DBD', '华东大区', '', 'YSW', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (226, 'LZYA', '杨利', 'DBD', '华东大区', '', 'YSW', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (227, 'QNJG', '江青松', 'DBD', '华东大区', '', 'YSW', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (228, 'PNGZ', '张萍', 'DBD', '华东大区', '', 'YSW', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (229, 'JNXW', '王娟', 'DBD', '华东大区', '', 'YSW', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (230, 'HUIM', '马慧', 'DBD', '华南大区', '', 'JTYU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (231, 'TAOW', '王涛', 'DBD', '华南大区', '', 'YGLI', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (232, 'NAXY', '颜娜', 'DBD', '华南大区', '', 'YGLI', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (233, 'HMGU', '关花妹', 'DBD', '华南大区', '', 'YGLI', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (234, 'CUCA', '曹纯', 'DBD', '华南大区', '', 'YGLI', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (235, 'YLU', '罗煜', 'DBD', '华南大区', '', 'JIZN', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (236, 'YUNF', '冯云', 'DBD', '华中大区', '', 'WPEN', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (237, 'ZETI', '田增喜', 'DBD', '华中大区', '', 'WPEN', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (238, 'JCNG', '常佳', 'DBD', '华中大区', '', 'WPEN', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (239, 'CUIW', '王翠玺', 'DBD', '华中大区', '', 'WPEN', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (240, 'HNLV', '律洪昌', 'DBD', '华中大区', '', 'XIUJ', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (241, 'CUOL', '刘纯红', 'DBD', '华中大区', '', 'XIUJ', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (242, 'GUDL', '李国栋', 'DBD', '华中大区', '', 'XIUJ', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (243, 'YWAY', '王颖', 'DBD', '华中大区', '', 'GDF', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (244, 'HGAW', '王洪岗', 'DBD', '华中大区', '', 'XIUJ', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (245, 'XIW', '王霞', 'DBD', '华中大区', '', 'GDF', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (246, 'PNZN', '张鹏', 'DBD', '华中大区', '', 'XIUJ', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (247, 'XIY', '于兴权', 'DBD', '华中大区', '', 'FNXI', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (248, 'HZWA', '王辉', 'DBD', '华中大区', '', 'GDF', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (249, 'FGYT', '谭芳奕', 'DBD', '华中大区', '', 'FNXI', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (250, 'JZG', '张杰', 'DBD', '华中大区', '', 'FNXI', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (251, 'LELV', '吕政霖', 'DBD', '华中大区', '', 'FNXI', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (252, 'JEZA', '张洁', 'DBD', '华中大区', '', 'FNXI', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (253, 'HZUO', '左洪飞', 'DBD', '华中大区', '', 'XOLY', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (254, 'YLGH', '黄延亮', 'DBD', '华中大区', '', 'XOLY', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (255, 'YLZG', '张艳玲', 'DBD', '华中大区', '', 'GDF', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (256, 'SOLX', '李士超', 'DBD', '华中大区', '', 'XOLY', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (257, 'FGJL', '李丰建', 'DBD', '华中大区', '', 'XOLY', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (258, 'PNHN', '韩攀', 'DBD', '华中大区', '', 'XOLY', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (259, 'SZHE', '郑少松', 'DBD', '华南大区', '', 'YGLI', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (260, 'QQLI', '刘倩倩', 'DBD', '华南大区', '', 'YGLI', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (261, 'THGY', '杨天成', 'DBD', '华南大区', '', 'XSWA', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (262, 'CXSU', '苏春明', 'DBD', '华南大区', '', 'XSWA', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (263, 'JUNW', '王军', 'DBD', '华南大区', '', 'XSWA', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (264, 'JNDY', '杨俊丹', 'DBD', '华南大区', '', 'XSWA', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (265, 'JIQW', '王建清', 'DBD', '华南大区', '', 'ZHLU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (266, 'HXHE', '何华新', 'DBD', '华南大区', '', 'ZHLU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (267, 'LNZ', '张琳', 'DBD', '华南大区', '', 'ZHLU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (268, 'ZYOL', '李志勇', 'DBD', '华南大区', '', 'ZHLU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (269, 'XZZY', '张严', 'DBD', '华南大区', '', 'ZHLU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (270, 'XWUD', '邓仙武', 'DBD', '华南大区', '', 'ZHLU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (271, 'YZHG', '张毅', 'DBD', '华西大区', '', 'YFEY', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (272, 'ZHHS', '舒志慧', 'DBD', '华西大区', '', 'YFEY', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (273, 'YATL', '李彦涛', 'DBD', '华西大区', '', 'YFEY', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (274, 'SUOY', '虞淑容', 'DBD', '华西大区', '', 'YFEY', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (275, 'CLUO', '罗川东', 'DBD', '华西大区', '', 'YAOT', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (276, 'JXES', '石劼', 'DBD', '华西大区', '', 'YFEY', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (277, 'QIUZ', '钟秋瑜', 'DBD', '华西大区', '', 'YFEY', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (278, 'WHUG', '葛文辉', 'DBD', '华西大区', '', 'LGAO', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (279, 'HAIL', '李海坤', 'DBD', '华西大区', '', 'LGAO', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (280, 'JPWU', '吴景萍', 'DBD', '华西大区', '', 'LGAO', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (281, 'ZCA', '曹正飞', 'DBD', '华西大区', '', 'LGAO', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (282, 'XOHH', '何小红', 'DBD', '华西大区', '', 'LGAO', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (283, 'LINZ', '张凌云', 'DBD', '华西大区', '', 'LGAO', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (284, 'XSZ', '孙旭', 'DBD', '华西大区', '', 'XUEL', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (285, 'LIHX', '韩丽', 'DBD', '华西大区', '', 'XUEL', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (286, 'HNYS', '苏含云', 'DBD', '华西大区', '', 'XUEL', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (287, 'GOBY', '杨国保', 'DBD', '华西大区', '', 'XUEL', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (288, 'HLZU', '周海龙', 'DBD', '华西大区', '', 'XUEL', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (289, 'VYJZ', '张玉静', 'DBD', '华西大区', '', 'XUEL', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (290, 'GACN', '陈光胜', 'DBD', '华西大区', '', 'PNCN', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (291, 'ZUQH', '黄阻邱', 'DBD', '华西大区', '', 'YAOT', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (292, 'QGZ', '邹强军', 'DBD', '华西大区', '', 'PNCN', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (293, 'JQHU', '胡健', 'DBD', '华西大区', '', 'PNCN', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (294, 'JYYI', '易娟', 'DBD', '华西大区', '', 'PNCN', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (295, 'JAYU', '袁家星', 'DBD', '华西大区', '', 'PNCN', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (296, 'XAZL', '李效丽', 'DBD', '华中大区', '', 'JHEX', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (297, 'YUYY', '闫玉英', 'DBD', '华中大区', '', 'JHEX', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (298, 'YYHU', '胡媛媛', 'DBD', '华中大区', '', 'JHEX', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (299, 'BAGW', '王宝玲', 'DBD', '华中大区', '', 'JHEX', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (300, 'HUPZ', '赵惠平', 'DBD', '华中大区', '', 'JHEX', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (301, 'YMWG', '汪应民', 'DBD', '华中大区', '', 'JHEX', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (302, 'CGYW', '汪承英', 'DBD', '华南大区', '', 'JIZN', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (303, 'WHUA', '黄炜', 'DBD', '华南大区', '', 'JTYU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (304, 'LGFL', '李玲芬', 'DBD', '华南大区', '', 'JTYU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (305, 'ZHOC', '程仲成', 'DBD', '华南大区', '', 'JIZN', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (306, 'YUW', '王云川', 'DBD', '华南大区', '', 'JTYU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (307, 'XDNZ', '张晓东', 'DBD', '华北大区', '', 'HWAX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (308, 'GOLI', '刘国辉', 'DBD', '华北大区', '', 'HWAX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (309, 'XLOL', '李喜龙', 'DBD', '华北大区', '', 'HWAX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (310, 'FQL', '李富强', 'DBD', '华北大区', '', 'HWAX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (311, 'YJIA', '菅禹同', 'DBD', '华北大区', '', 'HWAX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (312, 'JQYZ', '张佳乐', 'DBD', '华北大区', '', 'HWAX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (313, 'JIUG', '高家驹', 'DBD', '华北大区', '', 'HWAX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (314, 'ZIUZ', '张志宇', 'DBD', '华北大区', '', 'JWLI', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (315, 'MYLV', '吕明', 'DBD', '华北大区', '', 'JWLI', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (316, 'FFG', '高菲菲', 'DBD', '华北大区', '', 'YGZN', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (317, 'JIZY', '朱佳', 'DBD', '华北大区', '', 'JWLI', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (318, 'WJIS', '孙威佳', 'DBD', '华北大区', '', 'JWLI', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (319, 'XEY', '闫晓雪', 'DBD', '华北大区', '', 'WIFU', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (320, 'RNNY', '杨汝楠', 'DBD', '华北大区', '', 'WIFU', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (321, 'SGLY', '林嵩', 'DBD', '华北大区', '', 'WIFU', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (322, 'QANH', '韩荃', 'DBD', '华北大区', '', 'WIFU', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (323, 'FANL', '李凡', 'DBD', '华北大区', '', 'WIFU', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (324, 'QJOY', '于金龙', 'DBD', '华北大区', '', 'YGZN', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (325, 'RGKG', '孔荣荣', 'DBD', '华北大区', '', 'CMIO', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (326, 'TWNG', '王铁刚', 'DBD', '华北大区', '', 'YGZN', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (327, 'XIAB', '毕小蕾', 'DBD', '华北大区', '', 'CMIO', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (328, 'XWWN', '王小伟', 'DBD', '华北大区', '', 'CMIO', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (329, 'MUTN', '佟漫春', 'DBD', '华北大区', '', 'CMIO', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (330, 'LKUI', '隗立蕊', 'DBD', '华北大区', '', 'JLIX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (331, 'XJG', '姜兴杰', 'DBD', '华北大区', '', 'JLIX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (332, 'WMEN', '孟薇', 'DBD', '华北大区', '', 'JLIX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (333, 'DOLI', '李冬绮', 'DBD', '华北大区', '', 'JLIX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (334, 'JHGO', '郭建辉', 'DBD', '华北大区', '', 'JLIX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (335, 'TNGJ', '姜廷', 'DBD', '华北大区', '', 'YGZN', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (336, 'JYWA', '王静', 'DBD', '华北大区', '', 'NNGW', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (337, 'LYLX', '李利', 'DBD', '华北大区', '', 'YGZN', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (338, 'LHSH', '石立赫', 'DBD', '华北大区', '', 'NNGW', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (339, 'BYL', '刘冰颖', 'DBD', '华北大区', '', 'NNGW', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (340, 'MIYB', '白明宇', 'DBD', '华北大区', '', 'NNGW', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (341, 'SYGA', '高尚', 'DBD', '东北大区', '', 'HGLI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (342, 'PUGA', '高攀辉', 'DBD', '东北大区', '', 'HGLI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (343, 'ZENZ', '张振宇', 'DBD', '东北大区', '', 'HGLI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (344, 'UYGL', '刘营', 'DBD', '东北大区', '', 'HGLI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (345, 'DYWU', '吴东楠', 'DBD', '东北大区', '', 'HGLI', 'CAZ', 'dbm');
INSERT INTO `mdm_sales` VALUES (346, 'HOXI', '席洪敏', 'DBD', '华北大区', '', 'YGZN', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (347, 'ML', '李梅', 'DBD', '华北大区', '', 'YGZN', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (348, 'HTZU', '朱洪涛', 'DBD', '华北大区', '', 'HWAX', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (349, 'YZNI', '牛怡臻', 'DBD', '华北大区', '', 'YGZN', 'XIZH', 'dbm');
INSERT INTO `mdm_sales` VALUES (350, 'XUHO', '侯雪娇', 'DBD', '华中大区', '', 'XIUJ', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (351, 'BIZA', '张滨齐', 'DBD', '华中大区', '', 'WPEN', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (352, 'AIXZ', '张爱新', 'DBD', '华中大区', '', 'GDF', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (353, 'YMTG', '唐敏', 'DBD', '华中大区', '', 'FNXI', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (354, 'QGXU', '薛青', 'DBD', '华中大区', '', 'GDF', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (355, 'YJSG', '盛建佳', 'DBD', '华中大区', '', 'XOLY', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (356, 'YZQZ', '赵玉刚', 'DBD', '华中大区', '', 'GDF', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (357, 'DGLV', '吕东', 'DBD', '中南大区', '', 'BIFA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (358, 'JRNZ', '郑建荣', 'DBD', '中南大区', '', 'ZHIL', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (359, 'HOBS', '石洪碧', 'DBD', '中南大区', '', 'ZQUA', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (360, 'ZONH', '汉宗宜', 'DBD', '中南大区', '', 'CGLU', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (361, 'XOHZ', '周小山', 'DBD', '中南大区', '', 'CGLU', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (362, 'CUJL', '罗翠菊', 'DBD', '中南大区', '', 'CGLU', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (363, 'TZHG', '张涛', 'DBD', '华西大区', '', 'YAOT', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (364, 'ZYWA', '王忠远', 'DBD', '华西大区', '', 'YAOT', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (365, 'QFH', '何勤飞', 'DBD', '华西大区', '', 'XUEL', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (366, 'YMA', '马瑜', 'DBD', '华西大区', '', 'LGAO', 'QIX', 'dbm');
INSERT INTO `mdm_sales` VALUES (367, 'JGLX', '李军龙', 'DBD', '华南大区', '', 'XSWA', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (368, 'XCEN', '陈晓翔', 'DBD', '华南大区', '', 'ZHLU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (369, 'JNQJ', '江建泉', 'DBD', '华南大区', '', 'ZHLU', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (370, 'YIWI', '银娓', 'DBD', '华南大区', '', 'JIZN', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (371, 'XHZO', '钟锡华', 'DBD', '华南大区', '', 'JIZN', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (372, 'YIZQ', '张颖', 'DBD', '华南大区', '', 'JIZN', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (373, 'YIXS', '孙燚鑫', 'DBD', '华南大区', '', 'JIZN', 'CYEW', 'dbm');
INSERT INTO `mdm_sales` VALUES (374, 'XMZN', '张晓闽', 'DBD', '华东大区', '', 'YUTG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (375, 'IYLQ', '李砚', 'DBD', '华东大区', '', 'YUTG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (376, 'HOSU', '孙洪杰', 'DBD', '华东大区', '', 'YUTG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (377, 'JIOS', '宋吉龙', 'DBD', '华东大区', '', 'YUTG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (378, 'SUCE', '陈苏', 'DBD', '华东大区', '', 'YUTG', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (379, 'YYSH', '商运勇', 'DBD', '华东大区', '', 'YSW', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (380, 'DESH', '胡德水', 'DBD', '东南大区', '', 'YEZC', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (381, 'NLIN', '林娜', 'DBD', '东南大区', '', 'PFAN', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (382, 'LIZX', '朱莉', 'DBD', '东南大区', '', 'LPNY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (383, 'XOWU', '吴心昊', 'DBD', '东南大区', '', 'LPNY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (384, 'YNZA', '赵艳', 'DBD', '东南大区', '', 'LPNY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (385, 'SXWN', '王树新', 'DBD', '东南大区', '', 'GULY', 'JGUA', 'dbm');
INSERT INTO `mdm_sales` VALUES (386, 'FEIX', '熊飞', 'DBD', '中南大区', '', 'QHZN', 'XQF', 'dbm');
INSERT INTO `mdm_sales` VALUES (387, 'JICZ', '陈静', 'DBD', '华东大区', '', 'YLYI', 'SHTU', 'dbm');
INSERT INTO `mdm_sales` VALUES (388, 'LESY', '史磊', 'DBD', '华中大区', '', 'FNXI', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (389, 'YNHM', '马艳红', 'EBD', '华中大区', '', 'ZHHL', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (390, 'MIXQ', '肖敏', 'EBD', '中南大区', '', '', 'HBAI', 'dbm');
INSERT INTO `mdm_sales` VALUES (391, 'SJIG', '姜珊', 'EBD', '华西大区', '', '', 'YGWA', 'dbm');
INSERT INTO `mdm_sales` VALUES (392, 'USMG', '孟诗', 'EBD', '华西大区', '', '', 'YGWA', 'dbm');
INSERT INTO `mdm_sales` VALUES (393, 'ZBHU', '黄哲波', 'EBD', '华南大区', '', '', 'XICO', 'dbm');
INSERT INTO `mdm_sales` VALUES (394, 'MZJI', '金鸣', 'EBD', '华东大区', '', 'XAFA', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (395, 'FBZH', '朱飞波', 'EBD', '东南大区', '', '', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (396, 'YRCH', '陈艳如', 'EBD', '东北大区', '', '', '', 'dbm');
INSERT INTO `mdm_sales` VALUES (397, 'XDWG', '王晓丹', 'EBD', '东北大区', '', '', '', 'dbm');
INSERT INTO `mdm_sales` VALUES (398, 'XJYE', '叶夏静', 'EBD', '东南大区', '', '', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (399, 'UYGZ', '张玉龙', 'EBD', '华北大区', '', '', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (400, 'LGSU', '孙立亮', 'EBD', '华北大区', '', '', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (401, 'YALX', '刘艳', 'EBD', '华北大区', '', 'YGZO', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (402, 'XOQ', '秦晓鹏', 'EBD', '华北大区', '', 'YGZO', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (403, 'JAFU', '傅娟', 'EBD', '华东大区', '', 'XAFA', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (404, 'JZXY', '朱杰', 'EBD', '华东大区', '', '', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (405, 'JYNX', '夏景云', 'EBD', '华东大区', '', '', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (406, 'SNXL', '刘姗姗', 'EBD', '华东大区', '', '', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (407, 'YIUX', '徐毅勋', 'EBD', '华南大区', '', '', 'XICO', 'dbm');
INSERT INTO `mdm_sales` VALUES (408, 'HOYI', '伊红玲', 'EBD', '华西大区', '', '', 'YGWA', 'dbm');
INSERT INTO `mdm_sales` VALUES (409, 'HQZH', '张会琼', 'EBD', '华西大区', '', '', 'YGWA', 'dbm');
INSERT INTO `mdm_sales` VALUES (410, 'NXYA', '杨鑫', 'EBD', '华中大区', '', '', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (411, 'JWTG', '唐介伟', 'EBD', '中南大区', '', '', 'HBAI', 'dbm');
INSERT INTO `mdm_sales` VALUES (412, 'NJXL', '刘建勋', 'EBD', '中南大区', '', '', 'HBAI', 'dbm');
INSERT INTO `mdm_sales` VALUES (413, 'QICA', '曹琼月', 'EBD', '中南大区', '', '', 'HBAI', 'dbm');
INSERT INTO `mdm_sales` VALUES (414, 'ZUSO', '宋智慧', 'EBD', '华北大区', '', 'YGZO', 'JIEY', 'dbm');
INSERT INTO `mdm_sales` VALUES (415, 'ILWG', '王丽丽', 'EBD', '华中大区', '', 'ZHHL', 'WSHC', 'dbm');
INSERT INTO `mdm_sales` VALUES (416, 'SCAI', '蔡姝曼', 'EBD', '东南大区', '', 'JEGW', 'YUXQ', 'dbm');
INSERT INTO `mdm_sales` VALUES (417, 'XQYW', '王晓燕', 'EBD', '华东大区', '', 'XAFA', 'HONH', 'dbm');
INSERT INTO `mdm_sales` VALUES (418, 'XUUS', '尚学辉', 'DBD', '华中大区', '', 'XIUJ', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (419, 'JZAO', '赵晶晶', 'DBD', '华中大区', '', 'GDF', 'WYU', 'dbm');
INSERT INTO `mdm_sales` VALUES (420, 'AEYG', '杨安乐', 'EBD', '东南大区', 'GIIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (421, 'QNZU', '周倩', 'EBD', '东南大区', 'GIIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (422, 'EYWA', '王语丝', 'EBD', '东南大区', 'GIIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (423, 'LYFN', '樊磊阳', 'EBD', '东南大区', 'GIIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (424, 'ZSZN', '张苏娜', 'EBD', '东南大区', 'GIIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (425, 'VJLI', '李娟娟', 'EBD', '东南大区', 'GIIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (426, 'TGJI', '贾婷婷', 'EBD', '华北大区', 'XYW', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (427, 'IYLZ', '李扬', 'EBD', '华北大区', 'KZXL', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (428, 'ZISO', '宋昭琦', 'EBD', '华北大区', 'KZXL', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (429, 'WAZO', '赵万满', 'EBD', '华北大区', 'KZXL', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (430, 'WYLQ', '李焱', 'EBD', '华北大区', 'KZXL', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (431, 'YGIX', '徐颖钦', 'EBD', '华南大区', 'HHHG', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (432, 'ZCZG', '曾昭冲', 'EBD', '华南大区', 'HHHG', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (433, 'QULO', '龙全奇', 'EBD', '华南大区', 'HHHG', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (434, 'HCQ', '陈辉', 'EBD', '华南大区', 'HHHG', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (435, 'ZPGA', '高志鹏', 'EBD', '华南大区', 'HHHG', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (436, 'ZNGO', '郭志文', 'EBD', '华南大区', 'HHHG', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (437, 'WZCH', '成伟仕', 'EBD', '华南大区', 'HHHG', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (438, 'JQIW', '王俊琦', 'EBD', '华南大区', 'LFHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (439, 'ZIXU', '许震兴', 'EBD', '华南大区', 'YIUX', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (440, 'NYIZ', '张莹', 'EBD', '华南大区', 'LFHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (441, 'GNOU', '欧广星', 'EBD', '华南大区', 'LFHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (442, 'ZPW', '吴镇平', 'EBD', '华南大区', 'LFHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (443, 'VJLZ', '李景俊', 'EBD', '华南大区', 'LFHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (444, 'XNCW', '王新晨', 'EBD', '华南大区', 'LFHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (445, 'ZYNC', '程园', 'EBD', '华南大区', 'YIUX', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (446, 'HGCE', '陈洪燕', 'EBD', '华南大区', 'XOSN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (447, 'BGZA', '詹炳智', 'EBD', '华南大区', 'XOSN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (448, 'WXCA', '蔡伟川', 'EBD', '华南大区', 'XOSN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (449, 'WFWN', '王文锋', 'EBD', '华南大区', 'XOSN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (450, 'LIUC', '陈丽华', 'EBD', '华南大区', 'LZHE', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (451, 'DYHU', '黄冬玉', 'EBD', '华南大区', 'YIUX', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (452, 'RCHG', '黄超', 'EBD', '华南大区', 'YIUX', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (453, 'SDLI', '李顺达', 'EBD', '华南大区', 'LZHE', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (454, 'TIUL', '李天华', 'EBD', '华南大区', 'YIUX', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (455, 'YYHL', '刘莹海', 'EBD', '华南大区', 'LZHE', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (456, 'DMLN', '林丹苗', 'EBD', '华南大区', 'YIUX', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (457, 'PWSN', '孙鹏威', 'EBD', '华南大区', 'YIUX', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (458, 'NMXL', '李梦需', 'EBD', '华南大区', 'LZHE', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (459, 'CYSG', '宋春岩', 'EBD', '华南大区', 'YZHL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (460, 'JDGP', '彭剑东', 'EBD', '华南大区', 'YZHL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (461, 'XNAX', '谢心弦', 'EBD', '华南大区', 'YZHL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (462, 'TISZ', '宋婷婷', 'EBD', '华南大区', 'YZHL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (463, 'XFWN', '王小芬', 'EBD', '华南大区', 'YZHL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (464, 'BZQ', '张波', 'EBD', '华南大区', 'XOSN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (465, 'XUSI', '石秀兰', 'EBD', '华南大区', 'YZHL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (466, 'ZJLI', '林洁蓉', 'EBD', '华南大区', 'XOSN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (467, 'JIDQ', '邓江林', 'EBD', '华南大区', 'YZHL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (468, 'ZULU', '罗中友', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (469, 'YPIW', '吴宇平', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (470, 'XGN', '管显迪', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (471, 'LLYY', '罗莉莉', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (472, 'YZGL', '李颖', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (473, 'LGMN', '孟玲', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (474, 'HLHU', '黄海龙', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (475, 'YUBP', '潘玉冰', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (476, 'DGCN', '陈当', 'EBD', '华南大区', 'TFWN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (477, 'HUOL', '林华鸿', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (478, 'YZLA', '梁雅真', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (479, 'RUUG', '郭瑞柳', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (480, 'CCZG', '张初忱', 'EBD', '华南大区', 'TFWN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (481, 'PPGL', '卢萍萍', 'EBD', '华南大区', 'TFWN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (482, 'USSN', '沈淑丽', 'EBD', '华南大区', 'TFWN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (483, 'NLGH', '何丽容', 'EBD', '华南大区', 'TFWN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (484, 'JHUG', '黄建通', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (485, 'DAJY', '袁大建', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (486, 'ZNHN', '洪志文', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (487, 'CQGA', '高超', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (488, 'NQIL', '刘琴', 'EBD', '华西大区', 'SJIG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (489, 'HYAG', '杨欢', 'EBD', '华西大区', 'SJIG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (490, 'CFNH', '黄超凡', 'EBD', '华西大区', 'SJIG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (491, 'SIYW', '王思艳', 'EBD', '华西大区', 'QYAG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (492, 'QTYQ', '唐齐', 'EBD', '华西大区', 'QYAG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (493, 'QCYL', '李超', 'EBD', '华西大区', 'SJIG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (494, 'HYCN', '陈皓月', 'EBD', '华西大区', 'QYAG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (495, 'NZJM', '马金群', 'EBD', '华西大区', 'SJIG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (496, 'TNQJ', '贾天琦', 'EBD', '华西大区', 'QYAG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (497, 'JPLV', '吕金鹏', 'EBD', '华西大区', 'QYAG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (498, 'LHGO', '郜丽华', 'EBD', '华西大区', 'HAPH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (499, 'LPWG', '王莉萍', 'EBD', '华西大区', 'HAPH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (500, 'YXWU', '吴有祥', 'EBD', '华西大区', 'HAPH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (501, 'NYHN', '韩艳', 'EBD', '华西大区', 'HAPH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (502, 'XOOH', '黄小红', 'EBD', '华西大区', 'HOYI', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (503, 'NSGL', '李生英', 'EBD', '华西大区', 'HOYI', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (504, 'LLEY', '杨乐乐', 'EBD', '华西大区', 'HAPH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (505, 'YXQY', '杨艳', 'EBD', '华西大区', 'YXZM', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (506, 'TIGM', '马天龙', 'EBD', '华西大区', 'YXZM', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (507, 'JNJF', '樊静静', 'EBD', '华西大区', 'YXZM', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (508, 'HAIJ', '姜海涛', 'EBD', '华西大区', 'YXZM', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (509, 'TOXU', '徐涛', 'EBD', '华西大区', 'HQZH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (510, 'JBXY', '巴瑾晨', 'EBD', '华西大区', 'YXZM', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (511, 'XMI', '米小平', 'EBD', '华西大区', 'YXZM', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (512, 'TZNG', '张童', 'EBD', '华西大区', 'YXZM', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (513, 'CEGW', '吴程征', 'EBD', '华西大区', 'HQZH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (514, 'SYOL', '李少遥', 'EBD', '华西大区', 'HQZH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (515, 'XCLX', '李晨光', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (516, 'XIGC', '陈星月', 'EBD', '华西大区', 'USMG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (517, 'SUYG', '杨尚辉', 'EBD', '华西大区', 'USMG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (518, 'WQGA', '高玮', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (519, 'BXHE', '何彬', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (520, 'JGLZ', '刘佳颖', 'EBD', '华西大区', 'USMG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (521, 'YGFA', '范永青', 'EBD', '华西大区', 'USMG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (522, 'HNXA', '夏洪印', 'EBD', '华西大区', 'USMG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (523, 'HUCE', '陈环', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (524, 'WNTW', '魏文婷', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (525, 'DZHG', '张代宇', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (526, 'DYQW', '王殿宝', 'DBD', '东北大区', 'CNNZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (527, 'HLWG', '王贺玲', 'DBD', '东北大区', 'CNNZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (528, 'YUGT', '滕云峰', 'DBD', '东北大区', 'SNZG', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (529, 'GMHL', '李毛盛', 'DBD', '东北大区', 'DYWU', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (530, 'XHEZ', '庄绪震', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (531, 'XNNZ', '臧鑫妍', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (532, 'DAUL', '刘大川', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (533, 'YNDG', '董雨鑫', 'DBD', '东北大区', 'DULU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (534, 'VSGL', '刘爽', 'DBD', '东北大区', 'DULU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (535, 'LLWN', '文丽丽', 'DBD', '东北大区', 'YONS', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (536, 'WLIM', '马万里', 'DBD', '东北大区', 'CIFU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (537, 'YOYG', '杨玉龙', 'DBD', '东北大区', 'SYGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (538, 'KLFN', '范凯利', 'EBD', '东南大区', 'SCAI', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (539, 'XNAW', '王兴阳', 'EBD', '东南大区', 'SCAI', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (540, 'TNFG', '冯甜甜', 'EBD', '东南大区', 'SCAI', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (541, 'HGXL', '李洪星', 'EBD', '东南大区', 'SHIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (542, 'NYL', '刘娜', 'EBD', '东南大区', 'SHIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (543, 'DSWU', '吴迪生', 'EBD', '东南大区', 'SCAI', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (544, 'XOZ', '张孝顺', 'EBD', '东南大区', 'SHIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (545, 'EYGC', '陈勇', 'EBD', '东南大区', 'JZHS', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (546, 'JAYI', '易建云', 'EBD', '东南大区', 'JZHS', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (547, 'XALW', '王小兰', 'EBD', '东南大区', 'JZHS', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (548, 'LNXZ', '张林夕', 'EBD', '东南大区', 'GUHG', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (549, 'WNFE', '冯文强', 'EBD', '东南大区', 'DHX', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (550, 'XRE', '任雪洁', 'EBD', '东南大区', 'DHX', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (551, 'ZGPG', '彭正', 'EBD', '东南大区', 'DHX', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (552, 'YYCZ', '曹阳', 'EBD', '东南大区', 'DHX', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (553, 'YAFL', '李远方', 'EBD', '东南大区', 'DHX', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (554, 'ZRFU', '付卓冉', 'EBD', '东南大区', 'DHX', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (555, 'SHZL', '刘淑贞', 'EBD', '东南大区', 'GUHG', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (556, 'QDU', '段倩', 'EBD', '东南大区', 'GUHG', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (557, 'ZXWG', '王之旭', 'EBD', '东南大区', 'GUHG', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (558, 'RXY', '杨瑞霞', 'EBD', '东南大区', 'GUHG', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (559, 'EIHU', '胡二伟', 'EBD', '东南大区', 'DHX', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (560, 'ZRZH', '张志蕊', 'EBD', '东南大区', 'GUHG', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (561, 'MYFN', '樊明月', 'EBD', '东南大区', 'GUHG', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (562, 'GSQZ', '申高丰', 'EBD', '东南大区', 'GUHG', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (563, 'FXI', '夏峰', 'EBD', '东南大区', 'XJYE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (564, 'QYHU', '黄秋燕', 'EBD', '东南大区', 'XJYE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (565, 'XBWA', '王潇彬', 'EBD', '东南大区', 'XOWE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (566, 'LMGZ', '朱立明', 'EBD', '东南大区', 'XOWE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (567, 'XMJN', '金晓敏', 'EBD', '东南大区', 'XOWE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (568, 'BWYN', '颜博文', 'EBD', '东南大区', 'XOWE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (569, 'ZG', '葛舟芬', 'EBD', '东南大区', 'XOWE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (570, 'HJSU', '孙宏杰', 'EBD', '东南大区', 'YSE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (571, 'YQFA', '方瑜', 'EBD', '东南大区', 'YSE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (572, 'YMX', '徐月明', 'EBD', '东南大区', 'YSE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (573, 'JEZH', '张继锋', 'EBD', '东南大区', 'YSE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (574, 'JZGN', '龚加路', 'EBD', '东南大区', 'WICE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (575, 'RNGP', '潘若松', 'EBD', '东南大区', 'XJYE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (576, 'XQIU', '邱鑫磊', 'EBD', '东南大区', 'FBZH', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (577, 'JFZO', '周佳锋', 'EBD', '东南大区', 'XJYE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (578, 'HCZ', '陈浩', 'EBD', '东南大区', 'WICE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (579, 'NJTO', '童晶', 'EBD', '东南大区', 'FBZH', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (580, 'CGXI', '项成晓', 'EBD', '东南大区', 'WICE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (581, 'ZHDG', '董震', 'EBD', '东南大区', 'WICE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (582, 'LGWE', '翁亮亮', 'EBD', '东南大区', 'FBZH', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (583, 'CUIJ', '金传敏', 'EBD', '东南大区', 'WICE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (584, 'LECW', '王乐成', 'EBD', '东南大区', 'WICE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (585, 'LNTU', '涂林燕', 'EBD', '东南大区', 'FBZH', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (586, 'QJCZ', '常蛟', 'EBD', '华北大区', 'LIJG', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (587, 'ZGUL', '刘志国', 'EBD', '华北大区', 'LIJG', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (588, 'DIG', '顾娣', 'EBD', '华北大区', 'XOQ', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (589, 'VJUL', '李鹃', 'EBD', '华北大区', 'LIJG', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (590, 'PWQN', '秦培雯', 'EBD', '华北大区', 'LIJG', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (591, 'JXEL', '厉婕', 'EBD', '华北大区', 'XOQ', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (592, 'SGQI', '齐世鹏', 'EBD', '华北大区', 'LIJG', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (593, 'TYDN', '董腾宇', 'EBD', '华北大区', 'TGTL', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (594, 'XUGO', '郭学志', 'EBD', '华北大区', 'TGTL', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (595, 'POZH', '张朋翀', 'EBD', '华北大区', 'TGTL', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (596, 'ILSU', '孙俪', 'EBD', '华北大区', 'LILX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (597, 'NNZU', '周楠', 'EBD', '华北大区', 'TGTL', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (598, 'MQLZ', '李敏', 'EBD', '华北大区', 'TGTL', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (599, 'WNZU', '周文洁', 'EBD', '华北大区', 'TGTL', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (600, 'YXUS', '孙玉', 'EBD', '华北大区', 'XOQ', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (601, 'MYXQ', '于萌', 'EBD', '华北大区', 'XOQ', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (602, 'RUZ', '张瑞仙', 'EBD', '华北大区', 'LILX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (603, 'XGNZ', '祝祥云', 'EBD', '华北大区', 'LILX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (604, 'QXZQ', '赵学智', 'EBD', '华北大区', 'LILX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (605, 'RHUY', '杨瑞华', 'EBD', '华北大区', 'LILX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (606, 'SXLI', '刘书昆', 'EBD', '华北大区', 'XOQ', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (607, 'SLYZ', '李少丰', 'EBD', '华北大区', 'LILX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (608, 'WYUE', '岳伟', 'EBD', '华北大区', 'DGGX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (609, 'LAYG', '杨丽娜', 'EBD', '华北大区', 'DGGX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (610, 'GNZG', '郑广玲', 'EBD', '华北大区', 'ZUSO', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (611, 'XNYX', '徐欣宇', 'EBD', '华北大区', 'ZUSO', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (612, 'QEHA', '韩庆杰', 'EBD', '华北大区', 'ZUSO', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (613, 'QZYX', '张强', 'EBD', '华北大区', 'DGGX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (614, 'LYGW', '王丽迎', 'EBD', '华北大区', 'XYW', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (615, 'UJZH', '朱嘉敏', 'EBD', '华北大区', 'XYW', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (616, 'HYUA', '袁晗', 'EBD', '华北大区', 'XYW', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (617, 'YMSZ', '邵明', 'EBD', '华北大区', 'XYW', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (618, 'JIZH', '周金平', 'EBD', '华北大区', 'XYW', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (619, 'LZHL', '李立朝', 'EBD', '华北大区', 'UYGZ', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (620, 'YNFU', '付胤', 'EBD', '华北大区', 'XYW', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (621, 'BXXL', '李博', 'EBD', '华北大区', 'LGSU', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (622, 'YRC', '初月茹', 'EBD', '华北大区', 'UYGZ', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (623, 'YSZA', '张勇盛', 'EBD', '华北大区', 'XYW', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (624, 'SIQY', '杨思琪', 'EBD', '华北大区', 'JUFN', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (625, 'QYNY', '于洋', 'EBD', '华北大区', 'JUFN', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (626, 'QMZH', '朱美玲', 'EBD', '华北大区', 'LGSU', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (627, 'LUXS', '谌露西', 'EBD', '华北大区', 'JUFN', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (628, 'XIAQ', '秦霞', 'EBD', '华北大区', 'JUFN', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (629, 'HXYL', '黎洪燕', 'EBD', '华北大区', 'LGSU', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (630, 'BYAZ', '赵博扬', 'EBD', '华北大区', 'LGSU', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (631, 'FWXG', '邢发旺', 'EBD', '华北大区', 'JUFN', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (632, 'YUDU', '段玉洁', 'EBD', '华北大区', 'BNGS', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (633, 'QGD', '邓庆玲', 'EBD', '华北大区', 'LGSU', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (634, 'CUZA', '张春艳', 'EBD', '华北大区', 'KZXL', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (635, 'JUXN', '邢敬轩', 'EBD', '华北大区', 'BNGS', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (636, 'XIOS', '石小程', 'EBD', '华北大区', 'BNGS', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (637, 'SNJL', '李双江', 'EBD', '华北大区', 'BNGS', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (638, 'NGNL', '刘宁宁', 'EBD', '华北大区', 'UYGZ', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (639, 'YUPN', '潘宇', 'EBD', '华北大区', 'BNGS', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (640, 'ZXUN', '李逊', 'EBD', '华北大区', 'BNGS', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (641, 'BGM', '毛炳欣', 'EBD', '华北大区', 'HXYA', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (642, 'YXYG', '杨洋', 'EBD', '华北大区', 'HXYA', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (643, 'XOYN', '杨雄', 'EBD', '华北大区', 'UYGZ', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (644, 'XXU', '徐晓艳', 'EBD', '华北大区', 'HXYA', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (645, 'SHGZ', '赵双梅', 'EBD', '华北大区', 'HXYA', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (646, 'XUYY', '闫雪', 'EBD', '华北大区', 'LGSU', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (647, 'JJNW', '王金', 'EBD', '华北大区', 'HXYA', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (648, 'JWNE', '聂建武', 'EBD', '华北大区', 'UYGZ', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (649, 'BHUQ', '齐博辉', 'EBD', '华中大区', 'YIUL', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (650, 'NQLI', '李娜', 'EBD', '华中大区', 'JRZU', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (651, 'JGXU', '徐江华', 'EBD', '华中大区', 'YIUL', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (652, 'XNLL', '李新蕾', 'EBD', '华中大区', 'YIUL', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (653, 'QNWQ', '祁强威', 'EBD', '华中大区', 'YIUL', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (654, 'JGHT', '田景华', 'EBD', '华中大区', 'YIUL', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (655, 'YRGA', '高亚茹', 'EBD', '华中大区', 'JRZU', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (656, 'QAME', '孟巧', 'EBD', '华中大区', 'YIUL', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (657, 'QAYN', '杨倩', 'EBD', '华中大区', 'YIUL', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (658, 'ZHJG', '姜竹君', 'EBD', '华中大区', 'YNHM', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (659, 'RUIP', '潘瑞环', 'EBD', '华中大区', 'YNHM', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (660, 'ZLXX', '李志', 'EBD', '华中大区', 'JRZU', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (661, 'YGAL', '逯亚光', 'EBD', '华中大区', 'YNHM', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (662, 'QJIR', '任金兰', 'EBD', '华中大区', 'YNHM', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (663, 'BLU', '刘冰', 'EBD', '华中大区', 'ILWG', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (664, 'JZMA', '马建', 'EBD', '华中大区', 'ILWG', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (665, 'NJAL', '刘金满', 'EBD', '华中大区', 'JRZU', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (666, 'KUNW', '王坤', 'EBD', '华中大区', 'YNHM', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (667, 'DUWE', '魏舵', 'EBD', '华中大区', 'JIWY', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (668, 'JMFN', '冯建明', 'EBD', '华中大区', 'JIWY', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (669, 'YNCZ', '张彦成', 'EBD', '华中大区', 'ILWG', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (670, 'SOGU', '谷守德', 'EBD', '华中大区', 'JIWY', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (671, 'XYSQ', '石悦', 'EBD', '华中大区', 'JIWY', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (672, 'XIGL', '刘醒', 'EBD', '华中大区', 'ILWG', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (673, 'LGXU', '徐亮', 'EBD', '华中大区', 'ILWG', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (674, 'XHD', '邓旭浩', 'EBD', '华中大区', 'ILWG', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (675, 'QGDG', '董启永', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (676, 'XGTA', '谭雪松', 'EBD', '华中大区', 'JIWY', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (677, 'HZZG', '张红竹', 'EBD', '华中大区', 'JIWY', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (678, 'LSZ', '孙亮', 'EBD', '华中大区', 'LXXX', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (679, 'YLIH', '何玉蕾', 'EBD', '华中大区', 'LXXX', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (680, 'JQI', '邱嘉', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (681, 'WEW', '王文廷', 'EBD', '华中大区', 'LXXX', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (682, 'XFB', '白秀风', 'EBD', '华中大区', 'LXXX', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (683, 'CNTQ', '祁昌腾', 'EBD', '华中大区', 'LXXX', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (684, 'MNSY', '石猛', 'EBD', '华中大区', 'LXXX', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (685, 'WJEW', '王杰', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (686, 'DMWA', '王端敏', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (687, 'NZZH', '赵娜', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (688, 'CUIT', '滕翠萍', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (689, 'RUGE', '耿润华', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (690, 'IYUZ', '张玉欣', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (691, 'XOZN', '张小云', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (692, 'YBLI', '李艳滨', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (693, 'PZCH', '陈庞', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (694, 'TYLX', '许亚林', 'EBD', '华中大区', 'CEZ', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (695, 'UCZH', '张传悦', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (696, 'TTNL', '刘廷廷', 'EBD', '华中大区', 'CEZ', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (697, 'RSHZ', '朱世龙', 'EBD', '华中大区', 'CEZ', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (698, 'AIUS', '孙爱华', 'EBD', '华中大区', 'CEZ', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (699, 'JINT', '唐金城', 'EBD', '华中大区', 'CEZ', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (700, 'LNLZ', '张兰岭', 'EBD', '华中大区', 'CEZ', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (701, 'YGG', '高永亮', 'EBD', '华中大区', 'JIIS', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (702, 'ESQL', '李莎莎', 'EBD', '华中大区', 'JIIS', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (703, 'TLU', '刘婷婷', 'EBD', '华中大区', 'JIIS', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (704, 'KGZO', '赵开阁', 'EBD', '华中大区', 'JIIS', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (705, 'NNGS', '石宁', 'EBD', '华中大区', 'JIIS', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (706, 'MIWZ', '王铭', 'EBD', '华中大区', 'JIIS', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (707, 'NJWU', '吴金钰', 'EBD', '华中大区', 'JIIS', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (708, 'XIAN', '安晓阁', 'EBD', '华中大区', 'NXYA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (709, 'XIQN', '秦向宇', 'EBD', '华中大区', 'NXYA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (710, 'ZISE', '申志燕', 'EBD', '华中大区', 'NXYA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (711, 'MYNW', '王美艳', 'EBD', '华中大区', 'YYJA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (712, 'WXYW', '王伟', 'EBD', '华中大区', 'YYJA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (713, 'LYL', '廉龙宇', 'EBD', '华中大区', 'YYJA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (714, 'QRN', '任强', 'EBD', '华中大区', 'YYJA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (715, 'GFYA', '姚桂芳', 'EBD', '华中大区', 'YYJA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (716, 'GUSU', '孙广虎', 'EBD', '华中大区', 'YYJA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (717, 'LHLV', '吕丽珍', 'EBD', '华中大区', 'YYJA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (718, 'UZYS', '苏肖剑', 'EBD', '华中大区', 'NXYA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (719, 'TTGH', '黄婷婷', 'EBD', '东北大区', 'YRCH', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (720, 'GUOF', '冯国', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (721, 'CUTA', '唐春丽', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (722, 'NCWG', '王聪', 'EBD', '东北大区', 'YRCH', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (723, 'JGZY', '郭佳铭', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (724, 'JFYI', '尹俊峰', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (725, 'RADG', '董冉', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (726, 'UYUL', '李宇', 'EBD', '东北大区', 'YRCH', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (727, 'YRWN', '王羽茹', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (728, 'YINT', '谭颖', 'EBD', '东北大区', 'HSSD', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (729, 'BHYO', '姚冰华', 'EBD', '东北大区', 'HSSD', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (730, 'EYNG', '高源', 'EBD', '东北大区', 'HSSD', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (731, 'HNUZ', '赵晗宇', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (732, 'ICLI', '李长星', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (733, 'MZJU', '鞠明阳', 'EBD', '东北大区', 'HSSD', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (734, 'LSQX', '孙磊', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (735, 'NMZG', '张淼', 'EBD', '东北大区', 'HSSD', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (736, 'ZEGA', '盖震', 'EBD', '东北大区', 'XDWG', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (737, 'ZYIZ', '郑毅', 'EBD', '东北大区', 'XDWG', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (738, 'YSQ', '孙瑜悦', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (739, 'JQIX', '徐嘉琪', 'EBD', '东北大区', 'XDWG', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (740, 'IJWA', '王姣', 'EBD', '东北大区', 'HSSD', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (741, 'HEZO', '周洪蕾', 'EBD', '东北大区', 'XDWG', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (742, 'YXXZ', '张颖', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (743, 'ZWIL', '李慎伟', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (744, 'NHGZ', '赵红', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (745, 'BYZN', '郑博友', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (746, 'XMGX', '许晓明', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (747, 'ISNG', '宋世波', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (748, 'YIAX', '安莹', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (749, 'YIIG', '郭英霖', 'EBD', '东北大区', 'HSSD', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (750, 'TNJY', '余弹军', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (751, 'LYQI', '戚麟', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (752, 'XQZN', '张喜强', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (753, 'XNBO', '柏欣欣', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (754, 'TGYN', '尹婷婷', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (755, 'QRLI', '李锐', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (756, 'ZCHG', '程展', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (757, 'NHLI', '刘晗', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (758, 'YZNS', '孙宇', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (759, 'XUGN', '宫雪', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (760, 'CUXL', '刘春旭', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (761, 'IYWA', '王颖', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (762, 'ZEHL', '李振宏', 'EBD', '中南大区', 'MIXQ', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (763, 'CPG', '官昌平', 'EBD', '中南大区', 'FGWU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (764, 'ZMLV', '吕淼', 'EBD', '中南大区', 'MIXQ', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (765, 'LQHL', '芦慧', 'EBD', '中南大区', 'FGWU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (766, 'HUTA', '唐欢', 'EBD', '中南大区', 'FGWU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (767, 'XYNX', '徐晓莺', 'EBD', '中南大区', 'FGWU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (768, 'NYUZ', '钟元', 'EBD', '中南大区', 'FGWU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (769, 'NCER', '饶铖乐', 'EBD', '中南大区', 'MIXQ', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (770, 'ZJGH', '黄婧', 'EBD', '中南大区', 'FGWU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (771, 'LGNT', '田玲妮', 'EBD', '中南大区', 'FGWU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (772, 'YFYN', '杨玉峰', 'EBD', '中南大区', 'QICA', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (773, 'SYXZ', '谢石意', 'EBD', '中南大区', 'WJHE', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (774, 'LQFU', '付林', 'EBD', '中南大区', 'WJHE', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (775, 'XHEL', '李显赫', 'EBD', '中南大区', 'WILU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (776, 'QHLI', '李芊桦', 'EBD', '中南大区', 'WJHE', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (777, 'BCSH', '邵本超', 'EBD', '中南大区', 'QICA', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (778, 'HAWQ', '王海博', 'EBD', '中南大区', 'QICA', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (779, 'ZJGS', '师菁', 'EBD', '中南大区', 'WJHE', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (780, 'RUSZ', '师瑞', 'EBD', '中南大区', 'QICA', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (781, 'RFHN', '黄仁锋', 'EBD', '中南大区', 'LLHX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (782, 'QLM', '马丽', 'EBD', '中南大区', 'JWTG', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (783, 'HIX', '席慧', 'EBD', '中南大区', 'LLHX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (784, 'DNHG', '黄甸', 'EBD', '中南大区', 'LLHX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (785, 'UYLU', '刘元昉', 'EBD', '中南大区', 'LLHX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (786, 'YGJH', '胡阳杰', 'EBD', '中南大区', 'LLHX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (787, 'QXNY', '尹欣', 'EBD', '中南大区', 'JWTG', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (788, 'ZHLL', '刘振梁', 'EBD', '中南大区', 'LLHX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (789, 'USHG', '官仕达', 'EBD', '中南大区', 'WILU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (790, 'HWYQ', '吴洪伟', 'EBD', '中南大区', 'WILU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (791, 'SXWU', '吴世香', 'EBD', '中南大区', 'WILU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (792, 'DUAS', '沈端端', 'EBD', '中南大区', 'WILU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (793, 'HHYG', '杨航周', 'EBD', '中南大区', 'WILU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (794, 'XHUI', '惠小莉', 'EBD', '中南大区', 'NJXL', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (795, 'LYQM', '马磊', 'EBD', '中南大区', 'FENX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (796, 'MTZN', '张梦婷', 'EBD', '中南大区', 'FENX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (797, 'ZIHG', '黄志飞', 'EBD', '中南大区', 'NJXL', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (798, 'JKEL', '李继可', 'EBD', '中南大区', 'FENX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (799, 'LHJI', '贾利召', 'EBD', '中南大区', 'FENX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (800, 'NSJL', '李世娟', 'EBD', '中南大区', 'NJXL', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (801, 'ZJZU', '周娟', 'EBD', '中南大区', 'FENX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (802, 'NQMI', '米娜', 'EBD', '中南大区', 'NJXL', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (803, 'ZZL', '李真真', 'EBD', '华东大区', 'JYNX', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (804, 'AZLQ', '李岸', 'EBD', '华东大区', 'YWNZ', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (805, 'YNGE', '耿艳翔', 'EBD', '华东大区', 'SNXL', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (806, 'BLGU', '郭蓓丽', 'EBD', '华东大区', 'JZXY', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (807, 'KNFG', '冯侃', 'EBD', '华东大区', 'YWNZ', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (808, 'JIRG', '戎洁', 'EBD', '华东大区', 'SNXL', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (809, 'COFE', '冯超', 'EBD', '华东大区', 'JYNX', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (810, 'ZHYW', '王华', 'EBD', '华东大区', 'MZJI', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (811, 'YABI', '卞亚平', 'EBD', '华东大区', 'SNXL', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (812, 'EYZC', '曹栩洋', 'EBD', '华东大区', 'JZXY', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (813, 'CAOZ', '张超', 'EBD', '华东大区', 'YILE', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (814, 'YZDA', '代宇昊', 'EBD', '华东大区', 'YILE', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (815, 'KNQA', '乔昆', 'EBD', '华东大区', 'YILE', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (816, 'XRZA', '张向荣', 'EBD', '华东大区', 'JZXY', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (817, 'LYZJ', '季梁', 'EBD', '华东大区', 'YILE', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (818, 'ZYUN', '鲁芸芸', 'EBD', '华东大区', 'YILE', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (819, 'LGYQ', '国列乐', 'EBD', '华东大区', 'YILE', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (820, 'LXIE', '谢丽丽', 'EBD', '华东大区', 'SNXL', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (821, 'BZQW', '王博', 'EBD', '华东大区', 'SNXL', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (822, 'AYOL', '陆瑶', 'EBD', '华东大区', '', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (823, 'NGQI', '秦宁', 'EBD', '华东大区', '', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (824, 'CGCS', '宋成成', 'EBD', '华东大区', '', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (825, 'DNX', '徐丹青', 'EBD', '华东大区', '', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (826, 'BICE', '陈炳楠', 'EBD', '华东大区', '', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (827, 'JFZN', '章俭飞', 'EBD', '华东大区', 'XGGT', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (828, 'BNCI', '蔡冰莹', 'EBD', '华东大区', 'XGGT', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (829, 'HHZG', '张昊圣', 'EBD', '华东大区', 'XGGT', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (830, 'PBYU', '尤鹏兵', 'EBD', '华东大区', 'XGGT', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (831, 'ZBWN', '王照斌', 'EBD', '华东大区', 'XGGT', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (832, 'YFNX', '夏玉芬', 'EBD', '华东大区', 'YNZO', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (833, 'CZEG', '郑成', 'EBD', '华东大区', 'XQYW', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (834, 'WYLY', '李艳', 'EBD', '华东大区', 'WWSU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (835, 'XNPA', '潘先俊', 'EBD', '华东大区', 'XQYW', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (836, 'TAFA', '范涛', 'EBD', '华东大区', 'WWSU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (837, 'GFZH', '张广峰', 'EBD', '华东大区', 'WWSU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (838, 'XOLG', '梁晓旭', 'EBD', '华东大区', 'JAFU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (839, 'LLZZ', '梁利鸣', 'EBD', '华东大区', 'WWSU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (840, 'QJNW', '王建', 'EBD', '华东大区', 'JAFU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (841, 'YSYL', '李莎', 'EBD', '华东大区', 'JAFU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (842, 'YQQL', '李颖', 'EBD', '华东大区', 'JAFU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (843, 'PYHU', '花鹏', 'EBD', '华东大区', 'XQYW', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (844, 'DRBY', '迪丽娜尔拜合提亚', 'EBD', '华东大区', 'WWSU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (845, 'ZGSN', '孙振东', 'EBD', '华东大区', 'YNZO', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (846, 'MXLX', '刘敏', 'EBD', '华东大区', 'YNZO', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (847, 'BQYZ', '张祈', 'EBD', '华东大区', 'YNZO', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (848, 'FZHO', '周峰', 'EBD', '华东大区', 'MZJI', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (849, 'WQGU', '顾文强', 'EBD', '华东大区', 'YNZO', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (850, 'LNIQ', '祁麟林', 'EBD', '华东大区', 'MZJI', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (851, 'HSLU', '刘山', 'EBD', '华东大区', 'MZJI', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (852, 'JNGZ', '赵静', 'EBD', '华东大区', 'MZJI', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (853, 'PZHO', '周鹏', 'EBD', '华东大区', 'YNZO', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (854, 'XIZL', '李馨', 'DBD', '东北大区', 'BBLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (855, 'YRUI', '许芮嘉', 'DBD', '东北大区', 'XGCU', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (856, 'JYQ', '于佳', 'DBD', '东北大区', 'XSLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (857, 'YUBS', '史宇博', 'DBD', '东北大区', 'WJIZ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (858, 'XOZU', '朱小兵', 'DBD', '东北大区', 'SNZG', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (859, 'XDNL', '刘晓东', 'DBD', '东北大区', 'SNZG', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (860, 'WNDN', '丁文迪', 'DBD', '东北大区', 'DXLI', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (861, 'QSZU', '朱青山', 'DBD', '东南大区', 'YNCG', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (862, 'QJOC', '曹俊涛', 'DBD', '东南大区', 'NLIN', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (863, 'WELA', '梁玮玮', 'DBD', '东南大区', 'NLIN', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (864, 'WHRL', '刘浩然', 'DBD', '东南大区', 'NLIN', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (865, 'LFYA', '杨黎峰', 'DBD', '东南大区', 'YNCG', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (866, 'BHWA', '王百胜', 'DBD', '东南大区', 'XXNG', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (867, 'YHNL', '李艳红', 'DBD', '东南大区', 'EXYJ', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (868, 'STWG', '汪纾婷', 'DBD', '东南大区', 'JIUX', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (869, 'LLZU', '朱玲玲', 'DBD', '东南大区', 'JIUX', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (870, 'YLCE', '陈雅琳', 'DBD', '东南大区', 'JIUX', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (871, 'ULEH', '黄乐', 'DBD', '东南大区', 'JIUX', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (872, 'LAYA', '杨琳娜', 'DBD', '东南大区', 'JIUX', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (873, 'JJYE', '叶晶晶', 'DBD', '东南大区', 'JIUX', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (874, 'ZMPA', '潘志敏', 'DBD', '东南大区', 'JIUX', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (875, 'MGNZ', '朱梦娜', 'DBD', '东南大区', 'YJIC', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (876, 'XQYZ', '赵小燕', 'DBD', '东南大区', 'YJIC', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (877, 'JUPM', '梅娟萍', 'DBD', '东南大区', 'YJIC', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (878, 'YNIG', '郭银银', 'DBD', '东南大区', 'YJIC', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (879, 'QISH', '寿强', 'DBD', '东南大区', 'YJIC', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (880, 'CFPA', '潘晨飞', 'DBD', '东南大区', 'YJIC', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (881, 'ZCHA', '李超', 'DBD', '东南大区', 'YJIC', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (882, 'LSOX', '宋磊', 'DBD', '东南大区', 'DOFG', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (883, 'ZSZL', '罗顺', 'DBD', '东南大区', 'DOFG', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (884, 'MZEG', '郑敏', 'DBD', '东南大区', 'DOFG', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (885, 'GFSU', '孙国峰', 'DBD', '东南大区', 'DOFG', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (886, 'LZCH', '陈莉莉', 'DBD', '东南大区', 'DOFG', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (887, 'CNFJ', '金陈芳', 'DBD', '东南大区', 'DOFG', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (888, 'VYLZ', '张亚林', 'DBD', '东南大区', 'DOFG', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (889, 'XANY', '严晓丹', 'DBD', '东南大区', 'LOGZ', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (890, 'ZXZH', '张忠孝', 'DBD', '东南大区', 'LOGZ', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (891, 'YGA', '高源', 'DBD', '东南大区', 'LOGZ', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (892, 'TYE', '叶婷', 'DBD', '东南大区', 'LOGZ', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (893, 'DNZA', '赵丹', 'DBD', '东南大区', 'LOGZ', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (894, 'LUYS', '沈柳莹', 'DBD', '东南大区', 'LOGZ', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (895, 'QAWA', '王强', 'DBD', '东南大区', 'QUNT', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (896, 'XELZ', '张雪磊', 'DBD', '东南大区', 'QUNT', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (897, 'SJXU', '徐少杰', 'DBD', '东南大区', 'QUNT', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (898, 'LIJM', '马利佳', 'DBD', '东南大区', 'QUNT', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (899, 'YLAN', '蓝艳', 'DBD', '东南大区', 'LOGZ', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (900, 'ZNHU', '黄樟栋', 'DBD', '东南大区', 'LOGZ', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (901, 'GYL', '刘国英', 'DBD', '东南大区', 'XLD', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (902, 'JGJW', '吴晶晶', 'DBD', '东南大区', 'XLD', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (903, 'XICL', '李晓聪', 'DBD', '东南大区', 'XLD', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (904, 'LQZN', '张露琴', 'DBD', '东南大区', 'XLD', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (905, 'HIYN', '杨海阳', 'DBD', '东南大区', 'XLD', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (906, 'TGLN', '林天鸿', 'DBD', '东南大区', 'XLD', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (907, 'WZEN', '郑伟', 'DBD', '东南大区', 'XLD', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (908, 'YFNQ', '齐育锋', 'DBD', '东南大区', 'XLD', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (909, 'LMZE', '郑林茂', 'DBD', '东南大区', 'ZSHA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (910, 'QZWA', '王群', 'DBD', '东南大区', 'ZSHA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (911, 'PEJI', '景鹏', 'DBD', '东南大区', 'ZSHA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (912, 'LAW', '王丽娜', 'DBD', '东南大区', 'ZSHA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (913, 'QUYA', '杨秋波', 'DBD', '东南大区', 'LIZX', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (914, 'JFEZ', '张金凤', 'DBD', '东南大区', 'LIZX', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (915, 'LIIM', '毛丽丽', 'DBD', '东南大区', 'ZSHA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (916, 'QPCQ', '陈飘飘', 'DBD', '东南大区', 'ZSHA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (917, 'HWCE', '程航威', 'DBD', '东南大区', 'QIAC', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (918, 'WAGA', '高万东', 'DBD', '东南大区', 'QIAC', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (919, 'HYZU', '周义海', 'DBD', '东南大区', 'QIAC', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (920, 'TNGW', '王婷', 'DBD', '东南大区', 'QIAC', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (921, 'BZLA', '蓝斌', 'DBD', '东南大区', 'QIAC', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (922, 'YQHU', '胡亦强', 'DBD', '东南大区', 'QIAC', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (923, 'XXZ', '周茜茜', 'DBD', '东南大区', 'LGCH', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (924, 'YJNH', '胡金伊', 'DBD', '东南大区', 'JOYU', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (925, 'XACN', '陈霞', 'DBD', '东南大区', 'JOYU', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (926, 'TZQW', '王婷婷', 'DBD', '东南大区', 'JOYU', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (927, 'JGQU', '邱监国', 'DBD', '东南大区', 'JOYU', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (928, 'YMKG', '康益鸣', 'DBD', '东南大区', 'JOYU', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (929, 'XUEC', '陈雪娇', 'DBD', '东南大区', 'JOYU', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (930, 'GOOH', '洪国栋', 'DBD', '东南大区', 'QINF', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (931, 'JDWG', '王锦丹', 'DBD', '东南大区', 'QINF', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (932, 'MCZX', '陈苗', 'DBD', '东南大区', 'QINF', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (933, 'XZHI', '智星鑫', 'DBD', '东南大区', 'QINF', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (934, 'HYXA', '夏海燕', 'DBD', '东南大区', 'QINF', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (935, 'JPGY', '俞佳萍', 'DBD', '东南大区', 'QINF', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (936, 'WG', '谷伟静', 'DBD', '东南大区', 'XZHE', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (937, 'WLIC', '陈卫莉', 'DBD', '东南大区', 'XZHE', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (938, 'NXNL', '李囡囡', 'DBD', '东南大区', 'XZHE', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (939, 'VJNL', '李静', 'DBD', '东南大区', 'XZHE', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (940, 'QXY', '谢永辉', 'DBD', '东南大区', 'XZHE', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (941, 'HBCE', '陈华滨', 'DBD', '东南大区', 'YNZA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (942, 'YHUG', '黄艳', 'DBD', '东南大区', 'XZHE', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (943, 'BYCE', '陈宝岩', 'DBD', '东北大区', 'XIUZ', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (944, 'CNYO', '姚传锐', 'DBD', '东南大区', 'LUGZ', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (945, 'SNQI', '邱三苑', 'DBD', '中南大区', 'LXHE', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (946, 'HAYW', '王海燕', 'DBD', '中南大区', 'DLJI', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (947, 'YMZY', '张明浩', 'DBD', '中南大区', 'DLJI', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (948, 'HUDA', '段会', 'DBD', '中南大区', 'DLJI', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (949, 'YCEG', '程瑜', 'DBD', '中南大区', 'DLJI', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (950, 'SDUA', '段绍锋', 'DBD', '中南大区', 'DLJI', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (951, 'JGIH', '黄建贵', 'DBD', '中南大区', 'DLJI', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (952, 'XMWU', '吴晓梅', 'DBD', '中南大区', 'DLJI', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (953, 'JWND', '杜家旺', 'DBD', '中南大区', 'JFSO', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (954, 'QYOS', '孙友', 'DBD', '中南大区', 'JFSO', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (955, 'ZUPA', '潘祖星', 'DBD', '中南大区', 'JFSO', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (956, 'MYUL', '李梦媛', 'DBD', '中南大区', 'JFSO', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (957, 'SFHG', '黄顺锋', 'DBD', '中南大区', 'JFSO', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (958, 'XOG', '郭晓兰', 'DBD', '中南大区', 'JFSO', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (959, 'GYLU', '罗国吕', 'DBD', '中南大区', 'JFSO', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (960, 'YIWQ', '王莹', 'DBD', '中南大区', 'JFSO', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (961, 'SCPU', '浦仕昌', 'DBD', '中南大区', 'YPLU', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (962, 'QTLU', '陆通', 'DBD', '中南大区', 'YPLU', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (963, 'DYNG', '杨大付', 'DBD', '中南大区', 'YPLU', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (964, 'DGFL', '李东芳', 'DBD', '中南大区', 'YPLU', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (965, 'SACQ', '陈赛', 'DBD', '中南大区', 'YPLU', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (966, 'FUZL', '李辅佐', 'DBD', '中南大区', 'YPLU', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (967, 'WHOG', '管卫红', 'DBD', '中南大区', 'YPLU', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (968, 'AEXU', '徐安别', 'DBD', '中南大区', 'YPLU', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (969, 'YAJH', '何艳洁', 'DBD', '中南大区', 'SHME', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (970, 'BNDI', '代斌', 'DBD', '中南大区', 'SHME', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (971, 'HIGG', '郭海龙', 'DBD', '中南大区', 'SHME', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (972, 'YAMY', '杨亚明', 'DBD', '中南大区', 'SHME', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (973, 'YXZY', '杨源', 'DBD', '中南大区', 'SHME', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (974, 'CLQQ', '柳成黎', 'DBD', '中南大区', 'SHME', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (975, 'MGGB', '白明松', 'DBD', '中南大区', 'SHME', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (976, 'QYFZ', '邹宇峰', 'DBD', '中南大区', 'SHME', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (977, 'JUQZ', '张君庆', 'DBD', '中南大区', 'MUTY', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (978, 'GUHL', '李国辉', 'DBD', '中南大区', 'MUTY', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (979, 'ZNHL', '李钟和', 'DBD', '中南大区', 'MUTY', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (980, 'ZRF', '甫志润', 'DBD', '中南大区', 'MUTY', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (981, 'BQYA', '杨彪', 'DBD', '中南大区', 'MUTY', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (982, 'ZOX', '薛忠兴', 'DBD', '中南大区', 'MUTY', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (983, 'CLZL', '李春梅', 'DBD', '中南大区', 'MUTY', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (984, 'CNYA', '杨诚钢', 'DBD', '中南大区', 'MUTY', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (985, 'QNHL', '李琼华', 'DBD', '中南大区', 'YAPA', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (986, 'EYAH', '何艳慧', 'DBD', '中南大区', 'YAPA', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (987, 'YAHW', '王彦宏', 'DBD', '中南大区', 'YAPA', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (988, 'LGME', '孟伶俐', 'DBD', '中南大区', 'YAPA', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (989, 'YLQQ', '刘颖', 'DBD', '中南大区', 'YAPA', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (990, 'YBZ', '张艳波', 'DBD', '中南大区', 'YAPA', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (991, 'RNCM', '马荣慈', 'DBD', '中南大区', 'YAPA', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (992, 'VMZL', '李梅花', 'DBD', '中南大区', 'YAPA', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (993, 'YSZO', '周悦送', 'DBD', '东南大区', 'LGCH', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (994, 'LQZA', '张丽青', 'DBD', '东南大区', 'LGCH', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (995, 'ZSQ', '石苗苗', 'DBD', '东南大区', 'LGCH', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (996, 'FWAN', '王飞飞', 'DBD', '东南大区', 'LGCH', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (997, 'PGGL', '李萍萍', 'DBD', '东南大区', 'JOYU', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (998, 'YUJZ', '周优君', 'DBD', '东南大区', 'LGCH', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (999, 'ZQS', '沈周巧', 'DBD', '东南大区', 'LGCH', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1000, 'BYHU', '黄波烨', 'DBD', '东南大区', 'XUNZ', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1001, 'CNGS', '时诚', 'DBD', '东南大区', 'XUNZ', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1002, 'ZLXL', '林琳', 'DBD', '东南大区', 'XUNZ', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1003, 'CYZ', '郑彩云', 'DBD', '东南大区', 'XUNZ', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1004, 'TIFG', '冯婷', 'DBD', '东南大区', 'XUNZ', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1005, 'XPWN', '王星萍', 'DBD', '东南大区', 'XUNZ', 'HAOZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1006, 'LXQL', '李麟霞', 'DBD', '华东大区', 'PSHN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1007, 'RZHM', '马仁赵', 'DBD', '华东大区', 'PSHN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1008, 'JJYU', '郁佳军', 'DBD', '华东大区', 'LEYA', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1009, 'QNYE', '叶秋兰', 'DBD', '华东大区', 'LEYA', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1010, 'CWYQ', '王纯', 'DBD', '华东大区', 'HUXC', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1011, 'FGHN', '黄芳', 'DBD', '华东大区', 'HUXC', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1012, 'DQWA', '王道越', 'DBD', '华东大区', 'CLXY', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1013, 'LYGZ', '张立影', 'DBD', '华东大区', 'LIIY', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1014, 'JNFZ', '张金富', 'DBD', '华东大区', 'JXCN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1015, 'LGNG', '黄莉蓉', 'DBD', '华东大区', 'PSHN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1016, 'YLNC', '崔艳玲', 'DBD', '华东大区', 'CJX', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1017, 'WJI', '嵇伟', 'DBD', '华东大区', 'FXLU', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1018, 'YIYQ', '杨莹', 'DBD', '华东大区', 'DDZH', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1019, 'YJOX', '薛姣龙', 'DBD', '华东大区', 'DDZH', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1020, 'TJWA', '汪天津', 'DBD', '华东大区', 'DDZH', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1021, 'LHCN', '陈利华', 'DBD', '华东大区', 'DDZH', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1022, 'YOAL', '卢瑶瑶', 'DBD', '华东大区', 'SUCE', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1023, 'HMKX', '熊美珂', 'DBD', '华东大区', 'XINS', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1024, 'XFLI', '柳雪扉', 'DBD', '华东大区', 'JCEG', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1025, 'TUWN', '王廷宇', 'DBD', '华东大区', 'XINS', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1026, 'RJYL', '林建彬', 'DBD', '华东大区', 'FXLU', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1027, 'EWZH', '张伟', 'DBD', '华东大区', 'FXLU', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1028, 'GOPS', '沈国平', 'DBD', '华东大区', 'FXLU', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1029, 'DFNG', '冯丹', 'DBD', '华东大区', 'XINS', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1030, 'XHXU', '薛晓华', 'DBD', '华东大区', 'FXLU', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1031, 'LYZ', '杨丽丽', 'DBD', '华东大区', 'XINS', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1032, 'YNUY', '杨芸芸', 'DBD', '华东大区', 'FXLU', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1033, 'XYZX', '赵亦', 'DBD', '华东大区', 'XINS', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1034, 'XANW', '王晓清', 'DBD', '华东大区', 'IYLQ', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1035, 'TYCE', '陈天奕', 'DBD', '华东大区', 'MNZA', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1036, 'HJBA', '柏华杰', 'DBD', '华东大区', 'MNZA', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1037, 'MMGW', '王蒙蒙', 'DBD', '华东大区', 'JIGY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1038, 'HTJA', '姜厚婷', 'DBD', '华东大区', 'LZYA', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1039, 'ZQUL', '李奇缘', 'DBD', '华东大区', 'MXE', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1040, 'TAGZ', '巩涛', 'DBD', '华东大区', 'MXE', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1041, 'YBNL', '李勇兵', 'DBD', '华南大区', 'HMGU', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1042, 'WYUY', '阴伟云', 'DBD', '华中大区', 'YUNF', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1043, 'HQNL', '刘海全', 'DBD', '华中大区', 'ZETI', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1044, 'DGLI', '李东宁', 'DBD', '华中大区', 'ZETI', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1045, 'WEHH', '胡伟浩', 'DBD', '华中大区', 'XUUS', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1046, 'FHWN', '王风航', 'DBD', '华中大区', 'JZG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1047, 'LSZN', '张乐森', 'DBD', '华中大区', 'JEZA', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1048, 'HQRE', '任航', 'DBD', '华中大区', 'XIY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1049, 'PNHM', '毛磐石', 'DBD', '华中大区', 'HZUO', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1050, 'YEQL', '罗月琴', 'DBD', '华南大区', 'YUW', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1051, 'GSIS', '佘国思', 'DBD', '华南大区', 'JIQW', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1052, 'SIGX', '谢水清', 'DBD', '华南大区', 'HXHE', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1053, 'EYCZ', '陈雅洁', 'DBD', '华西大区', 'QIUZ', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1054, 'HUMO', '缪欢', 'DBD', '华西大区', 'ZHHS', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1055, 'XJLQ', '刘俊', 'DBD', '华西大区', 'YZHG', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1056, 'VMNC', '陈朦胧', 'DBD', '华西大区', 'YZHG', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1057, 'LGHU', '黄玲', 'DBD', '华西大区', 'YZHG', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1058, 'LJYN', '杨丽佳', 'DBD', '华西大区', 'YZHG', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1059, 'FELU', '刘飞', 'DBD', '华西大区', 'ZHHS', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1060, 'MYYL', '李敏', 'DBD', '华西大区', 'ZHHS', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1061, 'AQHU', '黄安群', 'DBD', '华西大区', 'ZHHS', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1062, 'XCU', '崔新艳', 'DBD', '华西大区', 'ZHHS', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1063, 'YYUH', '黄园媛', 'DBD', '华西大区', 'YATL', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1064, 'LXLU', '刘莉', 'DBD', '华西大区', 'YATL', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1065, 'QLZQ', '周凌辉', 'DBD', '华西大区', 'YATL', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1066, 'COYZ', '张重阳', 'DBD', '华西大区', 'YATL', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1067, 'JYGW', '王骄阳', 'DBD', '华西大区', 'YATL', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1068, 'ZHXL', '刘欢', 'DBD', '华西大区', 'YATL', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1069, 'WYSH', '税文学', 'DBD', '华西大区', 'SUOY', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1070, 'COLU', '罗昌彪', 'DBD', '华西大区', 'SUOY', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1071, 'KELQ', '李可', 'DBD', '华西大区', 'SUOY', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1072, 'XIIZ', '钟小敏', 'DBD', '华西大区', 'SUOY', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1073, 'HUPG', '彭慧宇', 'DBD', '华西大区', 'SUOY', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1074, 'RQG', '卿蓉', 'DBD', '华西大区', 'SUOY', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1075, 'NJGU', '古静', 'DBD', '华西大区', 'SUOY', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1076, 'LUXI', '肖露', 'DBD', '华西大区', 'SUOY', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1077, 'XADO', '董小虎', 'DBD', '华西大区', 'YZHG', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1078, 'QRXQ', '熊瑞东', 'DBD', '华西大区', 'YZHG', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1079, 'QCQ', '寸聪瑞', 'DBD', '华西大区', 'YZHG', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1080, 'YAOX', '肖瑶', 'DBD', '华西大区', 'YATL', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1081, 'JYZX', '薛江', 'DBD', '华西大区', 'ZHHS', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1082, 'DHZQ', '韩丹', 'DBD', '华西大区', 'CLUO', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1083, 'HBZN', '张海波', 'DBD', '华西大区', 'YATL', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1084, 'ZWEZ', '周伟', 'DBD', '华西大区', 'ZHHS', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1085, 'YUOW', '汪业国', 'DBD', '华西大区', 'JXES', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1086, 'XIGM', '马雄', 'DBD', '华西大区', 'JXES', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1087, 'QYPU', '蒲屈', 'DBD', '华西大区', 'JXES', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1088, 'XOCH', '陈晓', 'DBD', '华西大区', 'JXES', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1089, 'NYJW', '王佳', 'DBD', '华西大区', 'JXES', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1090, 'YIM', '木乃以布', 'DBD', '华西大区', 'JXES', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1091, 'YNUZ', '周元元', 'DBD', '华西大区', 'QIUZ', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1092, 'ZSGU', '郭世杰', 'DBD', '华西大区', 'QIUZ', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1093, 'KZLI', '李昆', 'DBD', '华西大区', 'QIUZ', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1094, 'FDNL', '李福东', 'DBD', '华西大区', 'QIUZ', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1095, 'HHYA', '杨洪鹄', 'DBD', '华西大区', 'QIUZ', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1096, 'HLYG', '杨洪林', 'DBD', '华西大区', 'QIUZ', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1097, 'NJUL', '刘俊杰', 'DBD', '华西大区', 'QIUZ', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1098, 'JNIG', '郭建梅', 'DBD', '华西大区', 'YMA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1099, 'FIYN', '袁飞', 'DBD', '华西大区', 'HAIL', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1100, 'HGYU', '于红梅', 'DBD', '华西大区', 'WHUG', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1101, 'CZZA', '赵彩镯', 'DBD', '华西大区', 'HAIL', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1102, 'XODE', '邓小松', 'DBD', '华西大区', 'JPWU', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1103, 'JWEY', '杨嘉伟', 'DBD', '华西大区', 'JPWU', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1104, 'ZDO', '董贞', 'DBD', '华西大区', 'JPWU', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1105, 'ZXZN', '张娴', 'DBD', '华西大区', 'WHUG', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1106, 'YSOG', '宋雨', 'DBD', '华西大区', 'WHUG', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1107, 'JZAG', '张佳', 'DBD', '华西大区', 'WHUG', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1108, 'CIWA', '王春习', 'DBD', '华西大区', 'YMA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1109, 'YAXO', '熊燕', 'DBD', '华西大区', 'ZCA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1110, 'JIOG', '高建国', 'DBD', '华西大区', 'ZCA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1111, 'GYHW', '王艺红', 'DBD', '华西大区', 'JPWU', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1112, 'XXLZ', '李欣', 'DBD', '华西大区', 'HAIL', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1113, 'CNXS', '史晨星', 'DBD', '华西大区', 'HAIL', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1114, 'UQZL', '刘琦', 'DBD', '华西大区', 'HAIL', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1115, 'FWN', '王飞', 'DBD', '华西大区', 'HAIL', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1116, 'YUUZ', '张媛媛', 'DBD', '华西大区', 'YMA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1117, 'HIYS', '沈海艳', 'DBD', '华西大区', 'YMA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1118, 'RUYU', '袁睿', 'DBD', '华西大区', 'JPWU', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1119, 'MIZG', '钟梅丽', 'DBD', '华西大区', 'JPWU', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1120, 'YNGG', '郜勇', 'DBD', '华西大区', 'WHUG', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1121, 'KLU', '刘凯', 'DBD', '华西大区', 'ZCA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1122, 'HYUL', '刘红雨', 'DBD', '华西大区', 'YMA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1123, 'JKWN', '王继坤', 'DBD', '华西大区', 'XOHH', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1124, 'XNAI', '爱新', 'DBD', '华西大区', 'ZCA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1125, 'YNMA', '马永江', 'DBD', '华西大区', 'HAIL', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1126, 'CYZG', '张彩云', 'DBD', '华西大区', 'XOHH', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1127, 'RULG', '梁瑞博', 'DBD', '华西大区', 'WHUG', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1128, 'YHEZ', '张玉真', 'DBD', '华西大区', 'XOHH', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1129, 'UHWN', '王欢', 'DBD', '华西大区', 'XOHH', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1130, 'GNCE', '陈刚', 'DBD', '华西大区', 'LINZ', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1131, 'ZDQ', '董子凡', 'DBD', '华西大区', 'LINZ', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1132, 'UXLI', '李雪', 'DBD', '华西大区', 'WHUG', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1133, 'TIY', '杨庭叶', 'DBD', '华西大区', 'XOHH', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1134, 'WNYN', '袁文', 'DBD', '华西大区', 'JPWU', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1135, 'XAJM', '马小娟', 'DBD', '华西大区', 'XOHH', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1136, 'PJPN', '逄培吉', 'DBD', '华西大区', 'WHUG', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1137, 'HTIA', '田浩', 'DBD', '华西大区', 'ZCA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1138, 'VYZY', '张燕', 'DBD', '华西大区', 'WHUG', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1139, 'RULH', '贺汝龙', 'DBD', '华西大区', 'CLUO', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1140, 'QNGX', '徐强', 'DBD', '华西大区', 'GOBY', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1141, 'BQJB', '毕军剑', 'DBD', '华西大区', 'VYJZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1142, 'CDGM', '牟川东', 'DBD', '华西大区', 'QGZ', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1143, 'GYZA', '张英', 'DBD', '华西大区', 'GACN', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1144, 'SYQW', '王昇平', 'DBD', '华西大区', 'QGZ', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1145, 'HXWN', '王华鑫', 'DBD', '华西大区', 'QGZ', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1146, 'HTGS', '孙辉婷', 'DBD', '华西大区', 'JYYI', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1147, 'HGTN', '田洪松', 'DBD', '华西大区', 'JAYU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1148, 'WLDG', '邓维玲', 'DBD', '华西大区', 'JYYI', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1149, 'XGNL', '李兴龙', 'DBD', '华西大区', 'JQHU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1150, 'YJUZ', '周玉娟', 'DBD', '华西大区', 'ZUQH', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1151, 'WUWY', '吴武', 'DBD', '华西大区', 'JAYU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1152, 'XJD', '邓洁', 'DBD', '华西大区', 'GACN', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1153, 'PWQ', '吴潘', 'DBD', '华西大区', 'JAYU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1154, 'QNM', '孟强', 'DBD', '华西大区', 'JAYU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1155, 'CGZE', '曾程', 'DBD', '华西大区', 'ZUQH', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1156, 'LZTA', '陶莉', 'DBD', '华西大区', 'QGZ', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1157, 'XOMU', '穆晓琴', 'DBD', '华西大区', 'GACN', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1158, 'YONH', '胡永辉', 'DBD', '华西大区', 'JYYI', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1159, 'DWQZ', '吴代杨', 'DBD', '华西大区', 'GACN', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1160, 'XUCY', '陈雪', 'DBD', '华西大区', 'JQHU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1161, 'YOCE', '陈永梅', 'DBD', '华西大区', 'JQHU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1162, 'ZOGB', '柏宗蓉', 'DBD', '华西大区', 'JQHU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1163, 'WZQJ', '蒋威', 'DBD', '华西大区', 'QGZ', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1164, 'YJHG', '洪江', 'DBD', '华西大区', 'JQHU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1165, 'MNIZ', '邹明亮', 'DBD', '华西大区', 'JQHU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1166, 'QULZ', '李全胜', 'DBD', '华西大区', 'JYYI', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1167, 'HWDN', '邓后伟', 'DBD', '华西大区', 'JYYI', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1168, 'TZLU', '罗涛', 'DBD', '华西大区', 'JYYI', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1169, 'IMZH', '张咪咪', 'DBD', '华西大区', 'JAYU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1170, 'KFXI', '谢开峰', 'DBD', '华西大区', 'JAYU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1171, 'ULIU', '刘莉', 'DBD', '华西大区', 'JQHU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1172, 'CGIH', '侯昌海', 'DBD', '华西大区', 'JAYU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1173, 'SOYN', '杨松', 'DBD', '华西大区', 'JAYU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1174, 'YICA', '曹益翔', 'DBD', '华西大区', 'JAYU', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (1175, 'ZXHL', '刘浩然', 'DBD', '华北大区', 'GOLI', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1176, 'UJLI', '刘建华', 'DBD', '华北大区', 'XLOL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1177, 'QG', '高权', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1178, 'CNZL', '刘长泽', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1179, 'LHMG', '孟丽双', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1180, 'QJWM', '麻建伟', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1181, 'BGHS', '孙秉辉', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1182, 'SGYE', '叶双', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1183, 'ZIIZ', '朱志颖', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1184, 'BZAO', '赵宝秋', 'DBD', '华北大区', 'HOXI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1185, 'XIGW', '王显贵', 'DBD', '华北大区', 'MYLV', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1186, 'XGHN', '黄晓影', 'DBD', '华北大区', 'MYLV', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1187, 'CUCU', '崔琛姝', 'DBD', '华北大区', 'MYLV', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1188, 'XYYG', '杨鑫宇', 'DBD', '华北大区', 'MYLV', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1189, 'CNIZ', '张晨曦', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1190, 'XIRH', '胡希瑞', 'DBD', '华北大区', 'MYLV', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1191, 'XLQY', '刘晓辉', 'DBD', '华北大区', 'MYLV', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1192, 'YJSN', '孙永杰', 'DBD', '华北大区', 'MYLV', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1193, 'ZZQY', '袁新越', 'DBD', '华北大区', 'MYLV', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1194, 'XYCN', '陈晓宇', 'DBD', '华北大区', 'FFG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1195, 'PGZA', '张鹏', 'DBD', '华北大区', 'FFG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1196, 'SAWA', '王诗号', 'DBD', '华北大区', 'FFG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1197, 'XGCA', '曹兴奋', 'DBD', '华北大区', 'FFG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1198, 'UNGL', '刘宁', 'DBD', '华北大区', 'FFG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1199, 'YNYC', '陈媛媛', 'DBD', '华北大区', 'JIZY', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1200, 'XYYN', '杨新玥', 'DBD', '华北大区', 'JIZY', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1201, 'YEZL', '刘悦', 'DBD', '华北大区', 'JIZY', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1202, 'HGIL', '李红梅', 'DBD', '华北大区', 'JIZY', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1203, 'CSQX', '苏超', 'DBD', '华北大区', 'JIZY', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1204, 'TYUZ', '张媛媛', 'DBD', '华北大区', 'JIZY', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1205, 'BHNG', '郭宝川', 'DBD', '华北大区', 'JIZY', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1206, 'SGMG', '孟胜娟', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1207, 'ZENS', '孙振', 'DBD', '华北大区', 'JYWA', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1208, 'XUIY', '殷秀丽', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1209, 'BOIN', '倪伯维', 'DBD', '华北大区', 'WJIS', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1210, 'JWZY', '王姣', 'DBD', '华北大区', 'WJIS', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1211, 'UKLQ', '李坤', 'DBD', '华北大区', 'WJIS', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1212, 'YMCE', '陈昱萌', 'DBD', '华北大区', 'WJIS', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1213, 'VSFL', '刘淑芳', 'DBD', '华北大区', 'WJIS', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1214, 'HNBW', '王洪波', 'DBD', '华北大区', 'WJIS', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1215, 'SEYG', '杨森', 'DBD', '华北大区', 'WJIS', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1216, 'XNHW', '王新华', 'DBD', '华北大区', 'FFG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1217, 'LEDO', '董蕾', 'DBD', '华北大区', 'QANH', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1218, 'HNHU', '胡洪露', 'DBD', '华北大区', 'XEY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1219, 'YYSN', '孙昱玉', 'DBD', '华北大区', 'XEY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1220, 'COWA', '王超然', 'DBD', '华北大区', 'XEY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1221, 'JGCE', '陈静', 'DBD', '华北大区', 'XEY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1222, 'GALY', '刘刚', 'DBD', '华北大区', 'XEY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1223, 'LXIL', '李立新', 'DBD', '华北大区', 'XEY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1224, 'UKLU', '刘锴', 'DBD', '华北大区', 'XEY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1225, 'QZZH', '张琪', 'DBD', '华北大区', 'XEY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1226, 'SIUW', '王世辉', 'DBD', '华北大区', 'RNNY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1227, 'HNWX', '王欢', 'DBD', '华北大区', 'RNNY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1228, 'YUQN', '秦园春', 'DBD', '华北大区', 'RNNY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1229, 'KZAG', '张可', 'DBD', '华北大区', 'RNNY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1230, 'XGXA', '肖兴辉', 'DBD', '华北大区', 'RNNY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1231, 'YXQ', '薛宇', 'DBD', '华北大区', 'RNNY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1232, 'JIPW', '王嘉佩', 'DBD', '华北大区', 'RNNY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1233, 'XGGO', '高翔', 'DBD', '华北大区', 'RNNY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1234, 'VXLI', '刘轩', 'DBD', '华北大区', 'SGLY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1235, 'XNPL', '李欣朋', 'DBD', '华北大区', 'SGLY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1236, 'WICG', '成维', 'DBD', '华北大区', 'QANH', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1237, 'FMLI', '李芳妹', 'DBD', '华北大区', 'SGLY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1238, 'QQD', '丁晴晴', 'DBD', '华北大区', 'SGLY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1239, 'YZQI', '齐轶', 'DBD', '华北大区', 'SGLY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1240, 'WSQ', '孙威', 'DBD', '华北大区', 'SGLY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1241, 'WEJN', '金维', 'DBD', '华北大区', 'SGLY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1242, 'TAWQ', '万涛', 'DBD', '华北大区', 'RNNY', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1243, 'JHXZ', '胡杰', 'DBD', '华北大区', 'QANH', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1244, 'ZOGL', '刘忠茜', 'DBD', '华北大区', 'QANH', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1245, 'CQGE', '葛彩红', 'DBD', '华北大区', 'QANH', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1246, 'XOEW', '王晓峰', 'DBD', '华北大区', 'QANH', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1247, 'RXZH', '朱瑞欣', 'DBD', '华北大区', 'QANH', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1248, 'CNAZ', '郑存潇', 'DBD', '华北大区', 'FANL', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1249, 'NYMZ', '马砚', 'DBD', '华北大区', 'FANL', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1250, 'XUWW', '王学玮', 'DBD', '华北大区', 'QANH', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1251, 'MQQZ', '周明磊', 'DBD', '华北大区', 'FANL', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1252, 'GYCN', '陈杨', 'DBD', '华北大区', 'FANL', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1253, 'ZHPA', '庞志敏', 'DBD', '华北大区', 'FANL', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1254, 'HQYZ', '赵红', 'DBD', '华北大区', 'FANL', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1255, 'MJUZ', '张明娟', 'DBD', '华北大区', 'FANL', 'WIFU', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (1256, 'WGZG', '张文龙', 'DBD', '东北大区', 'LPLU', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1257, 'GZHL', '李朝阳', 'DBD', '东北大区', 'LPLU', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1258, 'SSQL', '李爽', 'DBD', '东北大区', 'LPLU', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1259, 'YNP', '潘艳萍', 'DBD', '东北大区', 'LPLU', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1260, 'YXLX', '刘岩', 'DBD', '东北大区', 'LPLU', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1261, 'HGGL', '刘宏亮', 'DBD', '东北大区', 'LPLU', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1262, 'SGOG', '宫爽', 'DBD', '东北大区', 'LPLU', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1263, 'GCZL', '李传良', 'DBD', '东北大区', 'LPLU', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1264, 'YOYN', '杨永飞', 'DBD', '东北大区', 'LPLU', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1265, 'LEGQ', '高磊', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1266, 'UYAN', '李洋', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1267, 'SWZQ', '王世彬', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1268, 'TWX', '王涛', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1269, 'LEYQ', '杨雷', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1270, 'HEDG', '董鹤', 'DBD', '东北大区', 'CNNZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1271, 'BSCG', '丛博书', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1272, 'ZCLG', '梁超', 'DBD', '东北大区', 'WEEZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1273, 'ZZJD', '代建龙', 'DBD', '东北大区', 'WEEZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1274, 'WLDN', '董文龙', 'DBD', '东北大区', 'SNZG', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1275, 'TIKO', '孔添琪', 'DBD', '东北大区', 'LOLQ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1276, 'DGHU', '胡东兴', 'DBD', '东北大区', 'SNZG', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1277, 'FMEG', '孟凡博', 'DBD', '东北大区', 'WEEZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1278, 'JYUT', '滕家钰', 'DBD', '东北大区', 'LILW', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1279, 'JNUR', '任江月', 'DBD', '东北大区', 'LILW', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1280, 'QSQX', '齐爽', 'DBD', '东北大区', 'LILW', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1281, 'JGYI', '殷家祥', 'DBD', '东北大区', 'CNNZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1282, 'QXLI', '刘起', 'DBD', '东北大区', 'LILW', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1283, 'DLX', '吕冬', 'DBD', '东北大区', 'LILW', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1284, 'NAHX', '何娜', 'DBD', '东北大区', 'LILW', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1285, 'QEYA', '杨秋月', 'DBD', '东北大区', 'LILW', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1286, 'DMJG', '姜冬梅', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1287, 'HFUX', '许洪福', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1288, 'HOEZ', '周后成', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1289, 'JQGL', '李俊风', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1290, 'HEZY', '祝贺', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1291, 'HIZU', '朱惠', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1292, 'HEJI', '靖贺', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1293, 'XNQZ', '郑鑫', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1294, 'JDYU', '于京冬', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1295, 'JITQ', '田健', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1296, 'RUGU', '关锐', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1297, 'WEHY', '何伟', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1298, 'LZXX', '张利', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1299, 'ZTQ', '陶明浪', 'DBD', '东北大区', 'MNUJ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1300, 'JXQY', '杨金乐', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1301, 'YXZN', '张艳霞', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1302, 'TZCH', '陈亭', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1303, 'JJMG', '孟姣', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1304, 'XLCI', '蔡效利', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1305, 'LXAZ', '赵磊', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1306, 'LLIM', '马丽丽', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1307, 'JZGA', '高金鑫', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1308, 'YMZL', '梁明哲', 'DBD', '东北大区', 'TGGH', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1309, 'YBME', '梅跃博', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1310, 'YNDU', '杜洋', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1311, 'UYLZ', '刘阳', 'DBD', '东北大区', 'TGGH', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1312, 'BCHN', '陈柏延', 'DBD', '东北大区', 'TGGH', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1313, 'YGZW', '王艳', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1314, 'LJWA', '王丽杰', 'DBD', '东北大区', 'YQNL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1315, 'LXHO', '候丽', 'DBD', '东北大区', 'TGGH', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1316, 'NBWG', '王斌', 'DBD', '东北大区', 'TGGH', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1317, 'CEFU', '付崇琛', 'DBD', '东北大区', 'TGGH', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1318, 'ZHGE', '葛昭君', 'DBD', '东北大区', 'TGGH', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1319, 'NIZN', '张宁', 'DBD', '东北大区', 'YGQL', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1320, 'JZWE', '温建欣', 'DBD', '东北大区', 'TGGH', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1321, 'VYXL', '刘艳鑫', 'DBD', '东北大区', 'TGGH', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1322, 'ZERL', '鲁泽瑞', 'DBD', '东北大区', 'CIFU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1323, 'SNYO', '姚盛波', 'DBD', '东北大区', 'DULU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1324, 'DNZO', '赵丹杨', 'DBD', '东北大区', 'DULU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1325, 'LJIA', '姜玲', 'DBD', '东北大区', 'DULU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1326, 'YOQL', '李永秋', 'DBD', '东北大区', 'DULU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1327, 'YKQS', '盛凯', 'DBD', '东北大区', 'DULU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1328, 'DIYA', '闫迪', 'DBD', '东北大区', 'YONS', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1329, 'HJLV', '吕海静', 'DBD', '东北大区', 'CIFU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1330, 'YUCO', '曹媛媛', 'DBD', '东北大区', 'CIFU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1331, 'TYQG', '郭天宇', 'DBD', '东北大区', 'LILW', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1332, 'DIWU', '吴迪', 'DBD', '东北大区', 'XIUZ', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1333, 'XELV', '吕雪', 'DBD', '东北大区', 'CIFU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1334, 'XFA', '范晓磊', 'DBD', '东北大区', 'CIFU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1335, 'HOGN', '管昊', 'DBD', '东北大区', 'BAOS', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1336, 'HHUN', '黄鹤', 'DBD', '东北大区', 'BAOS', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1337, 'WNLH', '何文莉', 'DBD', '东北大区', 'BAOS', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1338, 'SHDQ', '杜帅', 'DBD', '东北大区', 'BAOS', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1339, 'SYYG', '高升', 'DBD', '东北大区', 'BAOS', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1340, 'KFZH', '张开锋', 'DBD', '东北大区', 'BAOS', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1341, 'YFWG', '王一帆', 'DBD', '东北大区', 'BAOS', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1342, 'SXWA', '王爽', 'DBD', '东北大区', 'BBLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1343, 'KOAI', '艾柯宏', 'DBD', '东北大区', 'BBLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1344, 'SYPE', '裴松月', 'DBD', '东北大区', 'BBLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1345, 'XQYI', '尹新新', 'DBD', '东北大区', 'BBLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1346, 'DMX', '徐冬梅', 'DBD', '东北大区', 'BBLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1347, 'ZHXN', '相志远', 'DBD', '东北大区', 'BBLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1348, 'BWLI', '李博文', 'DBD', '东北大区', 'YCHZ', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1349, 'FEWQ', '王飞', 'DBD', '东北大区', 'XGCU', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1350, 'HGWZ', '左洪伟', 'DBD', '东北大区', 'XGCU', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1351, 'JYYU', '于井辉', 'DBD', '东北大区', 'XGCU', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1352, 'BNGM', '马丙华', 'DBD', '东北大区', 'XGCU', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1353, 'XEWG', '王雪志', 'DBD', '东北大区', 'XGCU', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1354, 'YEXU', '许业凯', 'DBD', '东北大区', 'XGCU', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1355, 'DHGL', '李东航', 'DBD', '东北大区', 'XGCU', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1356, 'XIGT', '佟小彤', 'DBD', '东北大区', 'XSLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1357, 'FEGW', '王峰', 'DBD', '东北大区', 'XSLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1358, 'FJIA', '姜帆', 'DBD', '东北大区', 'XSLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1359, 'XUJL', '刘雪娇', 'DBD', '东北大区', 'XSLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1360, 'SZHO', '周爽', 'DBD', '东北大区', 'XSLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1361, 'PIYA', '杨平', 'DBD', '东北大区', 'XSLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1362, 'HEYZ', '姚鹤', 'DBD', '东北大区', 'XSLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1363, 'DQWU', '吴笛', 'DBD', '东北大区', 'HGTZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1364, 'YUTQ', '田宇', 'DBD', '东北大区', 'CNNZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1365, 'YMLN', '林苗', 'DBD', '东北大区', 'YCHZ', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1366, 'YCC', '陈晨', 'DBD', '东北大区', 'YCHZ', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1367, 'QZEG', '郑智宇', 'DBD', '东北大区', 'YCHZ', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1368, 'GUFE', '冯国珣', 'DBD', '东北大区', 'YCHZ', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1369, 'YWGU', '谷业微', 'DBD', '东北大区', 'YCHZ', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1370, 'HPLI', '李海鹏', 'DBD', '东北大区', 'YCHZ', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1371, 'XLWE', '魏小琳', 'DBD', '东北大区', 'WJIZ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1372, 'JEUS', '史洁慧', 'DBD', '东北大区', 'MNUJ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1373, 'CIAW', '王翠莲', 'DBD', '东北大区', 'MNUJ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1374, 'ZYHY', '韩宇', 'DBD', '东北大区', 'WEEZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1375, 'YDZH', '郑祎迪', 'DBD', '东北大区', 'WJIZ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1376, 'ZOQL', '刘兆奇', 'DBD', '东北大区', 'MNUJ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1377, 'XHZE', '郑秀慧', 'DBD', '东北大区', 'MNUJ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1378, 'WEHZ', '贺伟', 'DBD', '东北大区', 'MNUJ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1379, 'CUYN', '阎传家', 'DBD', '东北大区', 'WHGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1380, 'NWZ', '王娜', 'DBD', '东北大区', 'WHGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1381, 'HCGU', '顾超', 'DBD', '东北大区', 'WHGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1382, 'MYLQ', '李延宇', 'DBD', '东北大区', 'WHGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1383, 'WTGS', '孙婉婷', 'DBD', '东北大区', 'WHGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1384, 'KYUY', '于坤雨', 'DBD', '东北大区', 'WHGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1385, 'QYQ', '于倩', 'DBD', '东北大区', 'WHGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1386, 'XRZN', '曾祥瑞', 'DBD', '东北大区', 'DXLI', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1387, 'QJGU', '顾晶', 'DBD', '东北大区', 'DXLI', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1388, 'YUCU', '崔寓', 'DBD', '东北大区', 'DXLI', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1389, 'HAY', '杨欢', 'DBD', '东北大区', 'DXLI', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1390, 'ZHON', '洪金楠', 'DBD', '东北大区', 'DXLI', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1391, 'ZXCY', '程晓雪', 'DBD', '东北大区', 'DXLI', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1392, 'LZGU', '谷黎黎', 'DBD', '东北大区', 'DXLI', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1393, 'NMGS', '上官名焕', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1394, 'HLIZ', '赵丽', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1395, 'PXZ', '张佩翔', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1396, 'WCNI', '聂卫才', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1397, 'XNJN', '姜小龙', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1398, 'YNYG', '杨阳', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1399, 'XANH', '何小龙', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1400, 'MYQQ', '杨明亮', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1401, 'LZXU', '许兰珍', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1402, 'XOAW', '王晓阳', 'DBD', '东南大区', 'LILG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1403, 'NJQW', '王京', 'DBD', '东南大区', 'LILG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1404, 'YPGU', '郭勇平', 'DBD', '东南大区', 'LILG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1405, 'SZXL', '李赛', 'DBD', '东南大区', 'LILG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1406, 'HIGN', '龚海辉', 'DBD', '东南大区', 'LILG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1407, 'LGLO', '廖玲', 'DBD', '东南大区', 'LILG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1408, 'JXH', '黄金', 'DBD', '东南大区', 'LILG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1409, 'YGUA', '官艳菁', 'DBD', '东南大区', 'LILG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1410, 'ROYE', '叶荣珍', 'DBD', '东南大区', 'ZJYN', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1411, 'WNPH', '黄文萍', 'DBD', '东南大区', 'ZJYN', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1412, 'XALL', '李夏玲', 'DBD', '东南大区', 'ZJYN', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1413, 'XXW', '王星燕', 'DBD', '东南大区', 'ZJYN', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1414, 'CGAC', '谌诚南', 'DBD', '东南大区', 'ZJYN', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1415, 'JZL', '廖锦兵', 'DBD', '东南大区', 'ZJYN', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1416, 'ZWLU', '刘志武', 'DBD', '东南大区', 'ZJYN', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1417, 'ZLLN', '林丽', 'DBD', '东南大区', 'MEZG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1418, 'YLGW', '武玉龙', 'DBD', '东南大区', 'MEZG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1419, 'YTNW', '伍玉婷', 'DBD', '东南大区', 'MEZG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1420, 'AUPI', '皮爱花', 'DBD', '东南大区', 'MEZG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1421, 'YULV', '吕玉芳', 'DBD', '东南大区', 'MEZG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1422, 'PNHE', '何平', 'DBD', '东南大区', 'MEZG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1423, 'XGHE', '贺晓明', 'DBD', '东南大区', 'MEZG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1424, 'SHUO', '霍帅', 'DBD', '东南大区', 'WNDO', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1425, 'YAYM', '马彦彦', 'DBD', '东南大区', 'WNDO', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1426, 'XZLY', '李晓雨', 'DBD', '东南大区', 'WNDO', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1427, 'QYX', '余强', 'DBD', '东南大区', 'WNDO', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1428, 'QAOH', '侯秋苗', 'DBD', '东南大区', 'WNDO', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1429, 'WNLL', '李文丽', 'DBD', '东南大区', 'WNDO', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1430, 'BCU', '崔冰冰', 'DBD', '东南大区', 'WNDO', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1431, 'TLIA', '梁涛', 'DBD', '东南大区', 'WNDO', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1432, 'XBXE', '薛小波', 'DBD', '东南大区', 'LZSU', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1433, 'YFEQ', '齐玉峰', 'DBD', '东南大区', 'LZSU', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1434, 'WBZA', '翟维博', 'DBD', '东南大区', 'XAGW', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1435, 'FYSU', '孙福阳', 'DBD', '东南大区', 'XAGW', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1436, 'JQGY', '余家强', 'DBD', '东南大区', 'XAGW', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1437, 'FNZG', '张帆', 'DBD', '东南大区', 'XAGW', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1438, 'YUGX', '徐园宏', 'DBD', '东南大区', 'XAGW', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1439, 'LUAQ', '安璐', 'DBD', '东南大区', 'XAGW', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1440, 'DSZH', '赵东升', 'DBD', '东南大区', 'XAGW', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1441, 'QXWA', '王潇', 'DBD', '东南大区', 'XAGW', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1442, 'MJFE', '冯梦佳', 'DBD', '东南大区', 'XAGW', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1443, 'YMQR', '饶明强', 'DBD', '东南大区', 'XAGW', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1444, 'STQQ', '田松', 'DBD', '东南大区', 'HUMX', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1445, 'ZJZL', '刘静', 'DBD', '东南大区', 'HUMX', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1446, 'XIDZ', '张晓丹', 'DBD', '东南大区', 'HUMX', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1447, 'RFNL', '李瑞芳', 'DBD', '东南大区', 'HUMX', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1448, 'XLZH', '张晓丽', 'DBD', '东南大区', 'HUMX', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1449, 'XFEN', '冯翔冠', 'DBD', '东南大区', 'HUMX', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1450, 'ZGQ', '乔忠良', 'DBD', '东南大区', 'HUMX', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1451, 'ZHQ', '乔志娟', 'DBD', '东南大区', 'HUMX', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1452, 'FNCE', '陈芳', 'DBD', '东南大区', 'YNCG', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1453, 'DCN', '程迪', 'DBD', '东南大区', 'YNCG', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1454, 'DYQT', '滕达', 'DBD', '东南大区', 'YNCG', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1455, 'NZSU', '孙宁', 'DBD', '东南大区', 'LZSU', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1456, 'FGNL', '练方方', 'DBD', '东南大区', 'YNCG', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1457, 'XBTI', '田祥斌', 'DBD', '东南大区', 'SXWN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1458, 'YYXG', '郜晶晶', 'DBD', '东南大区', 'SXWN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1459, 'HSGH', '胡红松', 'DBD', '东南大区', 'SXWN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1460, 'CYG', '杨产勋', 'DBD', '东南大区', 'SXWN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1461, 'MEFX', '范猛', 'DBD', '东南大区', 'XXNG', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1462, 'CUIS', '宋翠华', 'DBD', '东南大区', 'XXNG', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1463, 'JNYI', '殷俊龙', 'DBD', '东南大区', 'XXNG', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1464, 'ZYLL', '李延玲', 'DBD', '东南大区', 'XXNG', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1465, 'RGF', '冯荣广', 'DBD', '东南大区', 'XXNG', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1466, 'LEZN', '张雷', 'DBD', '东南大区', 'XXNG', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1467, 'YAHX', '徐延征', 'DBD', '东南大区', 'XXNG', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1468, 'XETL', '李雪婷', 'DBD', '东南大区', 'WYAN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1469, 'WLYZ', '刘伟', 'DBD', '东南大区', 'XXNG', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1470, 'SYGL', '李山永', 'DBD', '东南大区', 'WYAN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1471, 'ZNZL', '娄真真', 'DBD', '东南大区', 'WYAN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1472, 'PGZL', '李朋枝', 'DBD', '东南大区', 'WYAN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1473, 'SQGM', '马士强', 'DBD', '东南大区', 'WYAN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1474, 'HFDE', '邓海峰', 'DBD', '东南大区', 'WYAN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1475, 'XMNL', '李敏敏', 'DBD', '东南大区', 'SXWN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1476, 'SGZO', '左胜利', 'DBD', '东南大区', 'EXYJ', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1477, 'ZUGL', '刘壮壮', 'DBD', '东南大区', 'EXYJ', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1478, 'GFNI', '牛桂芳', 'DBD', '东南大区', 'EXYJ', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1479, 'SKWG', '王书坤', 'DBD', '东南大区', 'EXYJ', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1480, 'YPGA', '高燕平', 'DBD', '东南大区', 'EXYJ', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1481, 'YNQA', '乔一丹', 'DBD', '东南大区', 'EXYJ', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1482, 'RUIR', '任瑞丽', 'DBD', '东南大区', 'SXWN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1483, 'MGJA', '姜萌萌', 'DBD', '东南大区', 'LZSU', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1484, 'SBYT', '田世威', 'DBD', '东南大区', 'LZSU', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1485, 'FEZ', '张凤伟', 'DBD', '东南大区', 'LZSU', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1486, 'LZAY', '赵丽', 'DBD', '东南大区', 'LZSU', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1487, 'HLJI', '纪海丽', 'DBD', '东南大区', 'SXWN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1488, 'TNXE', '谢婷婷', 'DBD', '东南大区', 'LZSU', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1489, 'LJNU', '牛利杰', 'DBD', '东南大区', 'LZSU', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1490, 'ZLIZ', '张磊', 'DBD', '东北大区', 'HGTZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1491, 'FUZG', '张福麟', 'DBD', '东北大区', 'HGTZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1492, 'LELW', '汪乐乐', 'DBD', '东北大区', 'CIFU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1493, 'PQZL', '刘鑫', 'DBD', '东北大区', 'HGTZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1494, 'ZMW', '魏志明', 'DBD', '东北大区', 'HGTZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1495, 'BYG', '杨博石', 'DBD', '东北大区', 'HGTZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1496, 'YBNG', '盖玉兵', 'DBD', '东北大区', 'LLSU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1497, 'CHDZ', '杜超', 'DBD', '东北大区', 'HGTZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1498, 'JTAI', '邰举', 'DBD', '东北大区', 'LLSU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1499, 'XNNS', '孙欣欣', 'DBD', '东北大区', 'LLSU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1500, 'XOMZ', '朱晓明', 'DBD', '东北大区', 'LLSU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1501, 'JLWG', '王金龙', 'DBD', '东北大区', 'DULU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1502, 'KQZL', '梁凯', 'DBD', '东北大区', 'LLSU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1503, 'LIXQ', '徐亮', 'DBD', '东北大区', 'XIUZ', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1504, 'UYZN', '张彦雨', 'DBD', '东北大区', 'LLSU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1505, 'XGKO', '孔祥荣', 'DBD', '东北大区', 'XIUZ', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1506, 'XQJ', '金鑫', 'DBD', '东北大区', 'XIUZ', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1507, 'HGAL', '刘宏楠', 'DBD', '东北大区', 'XIUZ', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1508, 'CZWG', '王晨瞩', 'DBD', '东北大区', 'XIUZ', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1509, 'QJZX', '张金龙', 'DBD', '东北大区', 'CIFU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1510, 'ZXQW', '王秀宇', 'DBD', '东北大区', 'LLSU', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1511, 'PZYL', '郎萍', 'DBD', '东北大区', 'XIUZ', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (1512, 'QNGH', '胡琼', 'DBD', '东南大区', 'QCH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1513, 'GRZH', '赵贵如', 'DBD', '东南大区', 'QCH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1514, 'MMWG', '王敏敏', 'DBD', '东南大区', 'QCH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1515, 'ZUMZ', '周祖明', 'DBD', '东南大区', 'QCH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1516, 'XANL', '卢贤', 'DBD', '东南大区', 'QCH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1517, 'QXEZ', '张晓雪', 'DBD', '东南大区', 'QCH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1518, 'RYHG', '黄瑜', 'DBD', '东南大区', 'QCH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1519, 'YYG', '杨媛媛', 'DBD', '东南大区', 'QCH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1520, 'SHJG', '江尚胜', 'DBD', '东南大区', 'QCH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1521, 'ZUWU', '吴祖芹', 'DBD', '东南大区', 'CNGC', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1522, 'DGZH', '张栋栋', 'DBD', '东南大区', 'CNGC', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1523, 'LQXU', '徐琳', 'DBD', '东南大区', 'CNGC', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1524, 'XYSG', '宋先艳', 'DBD', '东南大区', 'DESH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1525, 'YEXX', '徐叶', 'DBD', '东南大区', 'CNGC', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1526, 'JIDX', '戴剑', 'DBD', '东南大区', 'CNGC', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1527, 'HEYU', '于海峰', 'DBD', '东南大区', 'LUGZ', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1528, 'CHGY', '杨成', 'DBD', '东南大区', 'CNGC', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1529, 'RXLU', '陆冉', 'DBD', '东南大区', 'CNGC', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1530, 'XEYU', '于雪艳', 'DBD', '东南大区', 'CNGC', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1531, 'STGW', '王仕婷', 'DBD', '东南大区', 'DAQW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1532, 'IJZO', '周伦伦', 'DBD', '东南大区', 'DAQW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1533, 'QLYY', '李倩', 'DBD', '东南大区', 'DAQW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1534, 'ZOW', '汪志超', 'DBD', '东南大区', 'DAQW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1535, 'JLZZ', '李静', 'DBD', '东南大区', 'DAQW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1536, 'XIUY', '尹笑玉', 'DBD', '东南大区', 'DAQW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1537, 'QNQG', '郭晴晴', 'DBD', '东南大区', 'DAQW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1538, 'FGFW', '汪芳芳', 'DBD', '东南大区', 'DAQW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1539, 'YUCL', '吕育才', 'DBD', '东南大区', 'LUGZ', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1540, 'HACI', '蔡华雲', 'DBD', '东南大区', 'MGSW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1541, 'XIUC', '陈秀', 'DBD', '东南大区', 'YCE', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1542, 'HIUY', '颜惠惠', 'DBD', '东南大区', 'YCE', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1543, 'GJNJ', '江静', 'DBD', '东南大区', 'YCE', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1544, 'WLX', '刘伟', 'DBD', '东南大区', 'YCE', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1545, 'HOTG', '汤浩', 'DBD', '东南大区', 'YCE', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1546, 'GNWG', '王根', 'DBD', '东南大区', 'DAQW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1547, 'ZOIZ', '赵宗明', 'DBD', '东南大区', 'YCE', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1548, 'PEGC', '常鹏', 'DBD', '东南大区', 'LUGZ', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1549, 'YQYG', '郭杨', 'DBD', '东南大区', 'LUGZ', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1550, 'GUFG', '冯国锋', 'DBD', '东南大区', 'LUGZ', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1551, 'GZJW', '王基', 'DBD', '东南大区', 'LUGZ', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1552, 'LBYG', '杨柳波', 'DBD', '东南大区', 'LUGZ', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1553, 'SNWU', '吴胜利', 'DBD', '东南大区', 'LUGZ', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1554, 'ZXAW', '王娴', 'DBD', '东南大区', 'MGSW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1555, 'QCHQ', '黄春萍', 'DBD', '东南大区', 'MGSW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1556, 'CHZH', '张春', 'DBD', '东南大区', 'MGSW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1557, 'WFQ', '付维斌', 'DBD', '东南大区', 'MGSW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1558, 'WNEH', '韩雯雯', 'DBD', '东南大区', 'MGSW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1559, 'MZWU', '吴勉', 'DBD', '东南大区', 'MGSW', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (1560, 'HQNZ', '张钦', 'DBD', '中南大区', 'LNBO', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1561, 'XIFA', '樊晓彬', 'DBD', '中南大区', 'LNBO', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1562, 'LGML', '梁灵敏', 'DBD', '中南大区', 'LNBO', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1563, 'NFY', '杨娜飞', 'DBD', '中南大区', 'LNBO', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1564, 'XDYA', '姚小堞', 'DBD', '中南大区', 'LNBO', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1565, 'YQJI', '贾义', 'DBD', '中南大区', 'LNBO', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1566, 'QJWA', '王秋菊', 'DBD', '中南大区', 'LNBO', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1567, 'DEFL', '李德芳', 'DBD', '中南大区', 'LNBO', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1568, 'WWM', '马文武', 'DBD', '中南大区', 'LNBO', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1569, 'LNYU', '于琳', 'DBD', '中南大区', 'HGGT', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1570, 'HGD', '代恒', 'DBD', '中南大区', 'HGGT', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1571, 'ZIWU', '吴智洪', 'DBD', '中南大区', 'HGGT', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1572, 'SCWG', '王顺成', 'DBD', '中南大区', 'HAYY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1573, 'KYPN', '潘科羽', 'DBD', '中南大区', 'HAYY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1574, 'QHN', '黄倩', 'DBD', '中南大区', 'HAYY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1575, 'LFEI', '费拉拉', 'DBD', '中南大区', 'HAYY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1576, 'XQH', '侯鑫', 'DBD', '中南大区', 'HGGT', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1577, 'WGY', '禹望', 'DBD', '中南大区', 'HGGT', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1578, 'EJYH', '何纪林', 'DBD', '中南大区', 'HAYY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1579, 'CIYO', '姚彩艳', 'DBD', '中南大区', 'HGGT', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1580, 'XADE', '邓晓丽', 'DBD', '中南大区', 'HGGT', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1581, 'LYYS', '孙林娜', 'DBD', '中南大区', 'HGGT', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1582, 'MJNY', '杨美君', 'DBD', '中南大区', 'HAYY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1583, 'ZOWN', '万兆雪', 'DBD', '中南大区', 'QIBY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1584, 'YMWY', '吴明利', 'DBD', '中南大区', 'QIBY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1585, 'YWSY', '石文才', 'DBD', '中南大区', 'QIBY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1586, 'WANP', '庞万全', 'DBD', '中南大区', 'QIBY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1587, 'SZQI', '卿松', 'DBD', '中南大区', 'QIBY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1588, 'YBFG', '冯永波', 'DBD', '中南大区', 'QIBY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1589, 'XCC', '蔡新驰', 'DBD', '中南大区', 'QIBY', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1590, 'JUYY', '严俊', 'DBD', '中南大区', 'WJG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1591, 'FQIC', '程方琼', 'DBD', '中南大区', 'WJG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1592, 'NQGA', '高娜', 'DBD', '中南大区', 'WJG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1593, 'XADZ', '朱晓东', 'DBD', '中南大区', 'WJG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1594, 'JGXE', '薛军强', 'DBD', '中南大区', 'WJG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1595, 'QYUZ', '周宇', 'DBD', '中南大区', 'WJG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1596, 'GNCN', '陈广星', 'DBD', '中南大区', 'WJG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1597, 'FAWG', '汪非凡', 'DBD', '中南大区', 'WJG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1598, 'RQL', '李蓉', 'DBD', '中南大区', 'FNWG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1599, 'SIQN', '钱思翰', 'DBD', '中南大区', 'CYTU', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1600, 'QLYN', '杨力', 'DBD', '中南大区', 'CYTU', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1601, 'NMZL', '刘茂', 'DBD', '中南大区', 'CYTU', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1602, 'YJYL', '刘杰', 'DBD', '中南大区', 'PWAG', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1603, 'EYLZ', '李彦霖', 'DBD', '中南大区', 'CYTU', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1604, 'DXSU', '孙铎', 'DBD', '中南大区', 'WJG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1605, 'ZJIH', '黄佳玲', 'DBD', '中南大区', 'CYTU', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1606, 'NYAZ', '周逸梁', 'DBD', '中南大区', 'CYTU', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1607, 'KXYM', '马凯', 'DBD', '中南大区', 'CYTU', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1608, 'QIZE', '曾桥', 'DBD', '中南大区', 'FEIX', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1609, 'VYAL', '刘洋', 'DBD', '中南大区', 'YGJS', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1610, 'JNJD', '董金金', 'DBD', '中南大区', 'YGJS', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1611, 'TNCG', '成婷', 'DBD', '中南大区', 'YGJS', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1612, 'KFGO', '郭康飞', 'DBD', '中南大区', 'YGJS', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1613, 'TALQ', '刘涛', 'DBD', '中南大区', 'YGJS', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1614, 'XNCL', '刘芯岑', 'DBD', '中南大区', 'YGJS', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1615, 'GYZH', '周贵裕', 'DBD', '中南大区', 'WJG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1616, 'YZCN', '陈彦臻', 'DBD', '中南大区', 'YGJS', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1617, 'WEUL', '李文君', 'DBD', '中南大区', 'MWXG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1618, 'JUNJ', '贾军', 'DBD', '中南大区', 'MWXG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1619, 'PECQ', '陈鹏', 'DBD', '中南大区', 'MWXG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1620, 'CXZL', '刘春霞', 'DBD', '中南大区', 'MWXG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1621, 'XNXE', '谢香超', 'DBD', '中南大区', 'MWXG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1622, 'HUZA', '张慧', 'DBD', '中南大区', 'MWXG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1623, 'QYYU', '余清', 'DBD', '中南大区', 'MWXG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1624, 'JJEZ', '张俊杰', 'DBD', '中南大区', 'MWXG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1625, 'NYCE', '陈亚南', 'DBD', '中南大区', 'FEIX', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1626, 'ZXIZ', '赵鑫', 'DBD', '中南大区', 'FEIX', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1627, 'LIXO', '肖霖', 'DBD', '中南大区', 'PWAG', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1628, 'YKRZ', '冉钶', 'DBD', '中南大区', 'PWAG', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1629, 'GCYG', '杨成', 'DBD', '中南大区', 'ZONH', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1630, 'KANW', '韦康', 'DBD', '中南大区', 'PWAG', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1631, 'HZYB', '白桦', 'DBD', '中南大区', 'PWAG', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1632, 'GNYI', '易光博', 'DBD', '中南大区', 'PWAG', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1633, 'YJCY', '陈佳美', 'DBD', '中南大区', 'ZONH', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1634, 'HYAL', '刘宏燕', 'DBD', '中南大区', 'BBWA', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1635, 'XEZN', '张雪莲', 'DBD', '中南大区', 'BBWA', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1636, 'YAQH', '胡焱桥', 'DBD', '中南大区', 'BBWA', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1637, 'QAWU', '吴强', 'DBD', '中南大区', 'BBWA', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1638, 'MYZX', '张义林', 'DBD', '中南大区', 'FEIX', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1639, 'WUNL', '李文君', 'DBD', '中南大区', 'BBWA', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1640, 'WHAG', '黄巍', 'DBD', '中南大区', 'BBWA', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1641, 'QYZU', '邹玉琳', 'DBD', '中南大区', 'BBWA', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1642, 'SGWE', '温世红', 'DBD', '中南大区', 'BBWA', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1643, 'QWZY', '张维', 'DBD', '中南大区', 'FNWG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1644, 'TIKQ', '柯天雄', 'DBD', '中南大区', 'FNWG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1645, 'QJX', '徐杰', 'DBD', '中南大区', 'FNWG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1646, 'ZMCE', '陈明新', 'DBD', '中南大区', 'FNWG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1647, 'BGSO', '宋炳昕', 'DBD', '中南大区', 'FNWG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1648, 'CHTZ', '陶超', 'DBD', '中南大区', 'FNWG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1649, 'CZEN', '郑超', 'DBD', '中南大区', 'FNWG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1650, 'NLEZ', '张磊', 'DBD', '中南大区', 'FEIX', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1651, 'WQSU', '苏维', 'DBD', '中南大区', 'YIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1652, 'LGXG', '向刘琼', 'DBD', '中南大区', 'YIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1653, 'JXHL', '刘洁霜', 'DBD', '中南大区', 'YIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1654, 'JMJR', '饶米杰', 'DBD', '中南大区', 'YIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1655, 'HDLO', '罗浩冬', 'DBD', '中南大区', 'YIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1656, 'YPZN', '张云鹏', 'DBD', '中南大区', 'YIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1657, 'XUXA', '肖旭晖', 'DBD', '中南大区', 'YIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1658, 'SHCZ', '陈爽', 'DBD', '中南大区', 'LXHE', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1659, 'NIAW', '王念', 'DBD', '中南大区', 'LXHE', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1660, 'MQY', '袁萌', 'DBD', '中南大区', 'LXHE', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1661, 'NZY', '周纳', 'DBD', '中南大区', 'LXHE', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1662, 'QYUQ', '李雨晴', 'DBD', '中南大区', 'LXHE', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1663, 'QJGM', '莫静', 'DBD', '中南大区', 'LXHE', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1664, 'YPNG', '彭娅', 'DBD', '中南大区', 'LXHE', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1665, 'SZZL', '刘莎', 'DBD', '中南大区', 'LZUX', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1666, 'WSFE', '奉文尚', 'DBD', '中南大区', 'LZUX', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1667, 'HNYZ', '聂华', 'DBD', '中南大区', 'LZUX', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1668, 'HIQL', '卢海桥', 'DBD', '中南大区', 'LZUX', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1669, 'ZLQY', '刘云', 'DBD', '中南大区', 'LZUX', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1670, 'ZOY', '尹忠民', 'DBD', '中南大区', 'LZUX', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1671, 'LXNH', '黄烂', 'DBD', '中南大区', 'LZUX', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1672, 'LYYX', '姚玲玲', 'DBD', '中南大区', 'MLYI', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1673, 'QGZU', '周青青', 'DBD', '中南大区', 'MLYI', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1674, 'XONZ', '周小兰', 'DBD', '中南大区', 'MLYI', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1675, 'GEIL', '刘阁海', 'DBD', '中南大区', 'MLYI', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1676, 'XJYL', '刘军', 'DBD', '中南大区', 'MLYI', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1677, 'CZHN', '张纯', 'DBD', '中南大区', 'MLYI', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1678, 'YYNY', '易一杨', 'DBD', '中南大区', 'MLYI', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1679, 'LFMA', '满露芳', 'DBD', '中南大区', 'MLYI', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1680, 'TYLQ', '罗燕', 'DBD', '中南大区', 'MIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1681, 'JIHQ', '胡娇华', 'DBD', '中南大区', 'MIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1682, 'QJEG', '高洁', 'DBD', '中南大区', 'MIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1683, 'YXTN', '唐宇霞', 'DBD', '中南大区', 'MIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1684, 'AIHQ', '何爱虎', 'DBD', '中南大区', 'MIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1685, 'YAUC', '陈杨广', 'DBD', '中南大区', 'MIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1686, 'ZUWG', '王专', 'DBD', '中南大区', 'MIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1687, 'XSL', '刘思兰', 'DBD', '中南大区', 'MIYG', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1688, 'YICO', '曹毅', 'DBD', '中南大区', 'GOQI', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1689, 'EZLM', '毛磊磊', 'DBD', '中南大区', 'GOQI', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1690, 'FLZQ', '李凤', 'DBD', '中南大区', 'QHAO', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1691, 'NZQL', '李宁', 'DBD', '中南大区', 'GOQI', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1692, 'CHYR', '任晨阳', 'DBD', '中南大区', 'GOQI', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1693, 'YWNW', '王亚文', 'DBD', '中南大区', 'GOQI', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1694, 'ZGSH', '石升虎', 'DBD', '中南大区', 'GOQI', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1695, 'JMQX', '马娇', 'DBD', '中南大区', 'QGH', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1696, 'CWXU', '许长伟', 'DBD', '中南大区', 'QGH', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1697, 'ZLXY', '李珍', 'DBD', '中南大区', 'QGH', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1698, 'ZZYZ', '郑亚妮', 'DBD', '中南大区', 'QGH', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1699, 'XONY', '闫小新', 'DBD', '中南大区', 'QGH', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1700, 'LQTA', '汤丽', 'DBD', '中南大区', 'QGH', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1701, 'YYKZ', '柯有续', 'DBD', '中南大区', 'QGH', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1702, 'FIW', '王飞', 'DBD', '中南大区', 'QGH', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1703, 'NXGW', '王星', 'DBD', '中南大区', 'XAFW', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1704, 'WEJL', '李文娟', 'DBD', '中南大区', 'XAFW', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1705, 'RUY', '余瑞', 'DBD', '中南大区', 'XAFW', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1706, 'XIJZ', '赵喜军', 'DBD', '中南大区', 'XAFW', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1707, 'MEXI', '席蒙', 'DBD', '中南大区', 'XAFW', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1708, 'QYJL', '李亚娟', 'DBD', '中南大区', 'XAFW', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1709, 'CJIH', '和晨静', 'DBD', '中南大区', 'XAFW', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1710, 'YBLZ', '刘兵', 'DBD', '中南大区', 'XAFW', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1711, 'RUZN', '张瑞', 'DBD', '中南大区', 'MUC', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1712, 'PXXL', '李鹏', 'DBD', '中南大区', 'MUC', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1713, 'HUQ', '秦焕然', 'DBD', '中南大区', 'MUC', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1714, 'HUHL', '刘虎虎', 'DBD', '中南大区', 'MUC', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1715, 'SLNW', '王书龙', 'DBD', '中南大区', 'MUC', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1716, 'XAQL', '刘晓琴', 'DBD', '中南大区', 'MUC', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1717, 'LZZX', '张丽', 'DBD', '中南大区', 'DGLV', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1718, 'ZHYE', '叶正金', 'DBD', '中南大区', 'QHAO', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1719, 'KAZG', '张凯', 'DBD', '中南大区', 'QHAO', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1720, 'DORQ', '冉栋', 'DBD', '中南大区', 'QHAO', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1721, 'QLZH', '赵立娟', 'DBD', '中南大区', 'QHAO', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1722, 'YYAZ', '祝亚亚', 'DBD', '中南大区', 'QHAO', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1723, 'BNYR', '任炳云', 'DBD', '中南大区', 'MUC', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1724, 'NYZL', '李楠', 'DBD', '中南大区', 'QHAO', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1725, 'CGW', '魏聪丽', 'DBD', '中南大区', 'QHAO', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (1726, 'WJWG', '王娟', 'DBD', '华东大区', 'PSHN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1727, 'JNQN', '钱晶', 'DBD', '华东大区', 'PSHN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1728, 'AQHZ', '朱昊', 'DBD', '华东大区', 'LEYA', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1729, 'SLNJ', '季水玲', 'DBD', '华东大区', 'PSHN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1730, 'NLGZ', '张玲', 'DBD', '华东大区', 'CLXY', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1731, 'XIHE', '何笑', 'DBD', '华东大区', 'CLXY', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1732, 'XNX', '谢雄', 'DBD', '华东大区', 'SUCE', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1733, 'XIOC', '褚晓艳', 'DBD', '华东大区', 'LEYA', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1734, 'KQLU', '陆凯', 'DBD', '华东大区', 'LEYA', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1735, 'DOZU', '朱冬冬', 'DBD', '华东大区', 'HUXC', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1736, 'WJHA', '韩婉君', 'DBD', '华东大区', 'HUXC', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1737, 'YADL', '刘亚东', 'DBD', '华东大区', 'HUXC', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1738, 'ZZYW', '王妍', 'DBD', '华东大区', 'CJX', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1739, 'ZXLN', '林鑫', 'DBD', '华东大区', 'HUXC', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1740, 'XUJG', '蒋顼', 'DBD', '华东大区', 'CJX', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1741, 'TGFN', '樊婷婷', 'DBD', '华东大区', 'CLXY', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1742, 'GUIY', '姚桂兰', 'DBD', '华东大区', 'IYLQ', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1743, 'FYX', '喻芬', 'DBD', '华东大区', 'LIIY', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1744, 'GOLN', '伦国燕', 'DBD', '华东大区', 'LIIY', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1745, 'OCLI', '李超', 'DBD', '华东大区', 'LIIY', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1746, 'JNOZ', '张军勇', 'DBD', '华东大区', 'JXCN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1747, 'XGE', '葛馨华', 'DBD', '华东大区', 'JXCN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1748, 'XFNW', '王旭峰', 'DBD', '华东大区', 'PSHN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1749, 'HUHE', '贺慧丽', 'DBD', '华东大区', 'JXCN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1750, 'LAZE', '郑丽娜', 'DBD', '华东大区', 'LXO', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1751, 'ZXZA', '臧祖霞', 'DBD', '华东大区', 'SUCE', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1752, 'AIW', '吴爱勋', 'DBD', '华东大区', 'JXCN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1753, 'JLFG', '房家乐', 'DBD', '华东大区', 'CJX', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1754, 'AYZU', '周燕', 'DBD', '华东大区', 'LIIY', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1755, 'XZQS', '沈妙燕', 'DBD', '华东大区', 'CLXY', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1756, 'JIDE', '邓继武', 'DBD', '华东大区', 'DDZH', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1757, 'LYQQ', '杨丽', 'DBD', '华东大区', 'LXO', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1758, 'CUNW', '宛传银', 'DBD', '华东大区', 'DDZH', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1759, 'YTSH', '施玉婷', 'DBD', '华东大区', 'SUCE', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1760, 'IMDG', '董苗', 'DBD', '华东大区', 'LXO', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1761, 'CHXG', '向春雪', 'DBD', '华东大区', 'DDZH', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1762, 'XGLN', '林幸幸', 'DBD', '华东大区', 'XINS', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1763, 'CYOW', '王才勇', 'DBD', '华东大区', 'XINS', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1764, 'QWG', '王桥桥', 'DBD', '华东大区', 'CLXY', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1765, 'HOJG', '江浩', 'DBD', '华东大区', 'JCEG', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1766, 'SYNT', '陶书园', 'DBD', '华东大区', 'CLXY', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1767, 'SLHO', '郝素兰', 'DBD', '华东大区', 'DDZH', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1768, 'XGHL', '刘行欢', 'DBD', '华东大区', 'JCEG', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1769, 'ZLNS', '宋利敏', 'DBD', '华东大区', 'SUCE', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1770, 'HLYZ', '李宏宇', 'DBD', '华东大区', 'HUXC', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1771, 'CHWQ', '王冲', 'DBD', '华东大区', 'LXO', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1772, 'XGQI', '秦香香', 'DBD', '华东大区', 'SUCE', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1773, 'ZMDN', '邓敏', 'DBD', '华东大区', 'JXCN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1774, 'HIUW', '王海军', 'DBD', '华东大区', 'JXCN', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1775, 'DEXU', '徐登', 'DBD', '华东大区', 'JCEG', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1776, 'HOSG', '盛皓', 'DBD', '华东大区', 'JCEG', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1777, 'PGYN', '应佩容', 'DBD', '华东大区', 'FXLU', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1778, 'REWG', '汪忍', 'DBD', '华东大区', 'LXO', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1779, 'SLIG', '梁飒', 'DBD', '华东大区', 'LXO', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1780, 'XAJN', '姜晓雪', 'DBD', '华东大区', 'LXO', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1781, 'YIHW', '王一涵', 'DBD', '华东大区', 'XINS', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1782, 'YXWX', '王颖', 'DBD', '华东大区', 'JXXW', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1783, 'QD', '杜强', 'DBD', '华东大区', 'YILZ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1784, 'UJES', '沈珏', 'DBD', '华东大区', 'YILZ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1785, 'CX', '夏晨洲', 'DBD', '华东大区', 'DGWE', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1786, 'JZHL', '吕俊智', 'DBD', '华东大区', 'YILZ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1787, 'HCHE', '陈海波', 'DBD', '华东大区', 'XHA', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1788, 'KGNG', '龚恺', 'DBD', '华东大区', 'DGWE', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1789, 'YBWA', '王耀斌', 'DBD', '华东大区', 'YILZ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1790, 'HDWN', '王海东', 'DBD', '华东大区', 'GSHL', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1791, 'WNPN', '潘雯', 'DBD', '华东大区', 'GSHL', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1792, 'JYUJ', '江佳玉', 'DBD', '华东大区', 'GSHL', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1793, 'XJQI', '祁晓杰', 'DBD', '华东大区', 'GSHL', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1794, 'WJZ', '周雯静', 'DBD', '华东大区', 'GSHL', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1795, 'CNJZ', '张春健', 'DBD', '华东大区', 'GSHL', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1796, 'ZIIH', '胡志利', 'DBD', '华东大区', 'HOSU', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1797, 'LUNG', '葛鸾', 'DBD', '华东大区', 'ZGGJ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1798, 'QXZH', '张奇', 'DBD', '华东大区', 'JXXW', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1799, 'XOGZ', '朱新龙', 'DBD', '华东大区', 'JXXW', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1800, 'JXXZ', '朱静', 'DBD', '华东大区', 'JXXW', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1801, 'UZQY', '姚翔朔', 'DBD', '华东大区', 'ZGGJ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1802, 'SXLU', '罗少训', 'DBD', '华东大区', 'HOSU', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1803, 'YCGL', '陆义城', 'DBD', '华东大区', 'ZGGJ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1804, 'TNYN', '苑天红', 'DBD', '华东大区', 'ZGGJ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1805, 'JZYZ', '张佳佳', 'DBD', '华东大区', 'GSHL', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1806, 'ZWXI', '夏志伟', 'DBD', '华东大区', 'ZGGJ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1807, 'QUQN', '乾泉', 'DBD', '华东大区', 'HOSU', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1808, 'BILX', '刘彬', 'DBD', '华东大区', 'IYLQ', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1809, 'LIMT', '谭黎明', 'DBD', '华东大区', 'XHA', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1810, 'YWE', '韦颖', 'DBD', '华东大区', 'HOSU', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1811, 'YNFN', '冯艳', 'DBD', '华东大区', 'XHA', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1812, 'XYX', '余鑫', 'DBD', '华东大区', 'XHA', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1813, 'XAHW', '王晓红', 'DBD', '华东大区', 'XHA', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1814, 'XYUS', '石心雨', 'DBD', '华东大区', 'MNZA', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1815, 'XUQY', '于绪桥', 'DBD', '华东大区', 'DGWE', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1816, 'YJEL', '李杰云', 'DBD', '华东大区', 'DGWE', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1817, 'HJWN', '王洁', 'DBD', '华东大区', 'DGWE', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1818, 'YYGE', '葛阳阳', 'DBD', '华东大区', 'LXO', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1819, 'ZZQG', '高贞珍', 'DBD', '华东大区', 'IYLQ', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1820, 'YOGU', '顾尧', 'DBD', '华东大区', 'DGWE', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1821, 'CHGX', '许冲冲', 'DBD', '华东大区', 'XMZN', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1822, 'YCN', '程媛', 'DBD', '华东大区', 'XLNY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1823, 'ZNCO', '曹珍珍', 'DBD', '华东大区', 'XMZN', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1824, 'XIGE', '葛鑫', 'DBD', '华东大区', 'XMZN', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1825, 'IWHN', '黄卫', 'DBD', '华东大区', 'BNSI', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1826, 'XGU', '顾香', 'DBD', '华东大区', 'BNSI', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1827, 'JYIW', '王季银', 'DBD', '华东大区', 'BNSI', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1828, 'YAQZ', '郑亚琴', 'DBD', '华东大区', 'BNSI', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1829, 'YZIL', '刘余', 'DBD', '华东大区', 'BNSI', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1830, 'YNBA', '白彦春', 'DBD', '华东大区', 'MNZA', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1831, 'YNUH', '贺媛媛', 'DBD', '华东大区', 'MNZA', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1832, 'GUDG', '丁广霞', 'DBD', '华东大区', 'MNZA', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1833, 'WWHA', '韩维维', 'DBD', '华东大区', 'MNZA', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1834, 'WNEY', '严雯雯', 'DBD', '华东大区', 'MNZA', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1835, 'JUQI', '仇俊', 'DBD', '华东大区', 'XLNY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1836, 'LFNR', '任林峰', 'DBD', '华东大区', 'BNSI', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1837, 'HOCA', '曹宏林', 'DBD', '华东大区', 'XMZN', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1838, 'WQZA', '张文奇', 'DBD', '华东大区', 'XMZN', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1839, 'SDWN', '王帅东', 'DBD', '华东大区', 'YILZ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1840, 'YJ', '经雨佳', 'DBD', '华东大区', 'XLNY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1841, 'YFEI', '费越', 'DBD', '华东大区', 'XLNY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1842, 'ZENY', '叶震航', 'DBD', '华东大区', 'XLNY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1843, 'SWZH', '朱书炜', 'DBD', '华东大区', 'ZHM', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1844, 'HPSU', '孙华平', 'DBD', '华东大区', 'ZHM', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1845, 'ZYGL', '李艳青', 'DBD', '华东大区', 'ZHM', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1846, 'LETG', '唐乐', 'DBD', '华东大区', 'ZHM', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1847, 'RONZ', '张蓉', 'DBD', '华东大区', 'ZHM', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1848, 'WIZU', '朱伟', 'DBD', '华东大区', 'ZHM', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1849, 'KUZG', '张焜', 'DBD', '华东大区', 'ZHM', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1850, 'DOZA', '张栋', 'DBD', '华东大区', 'LIZO', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1851, 'XALG', '梁祥', 'DBD', '华东大区', 'LIZO', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1852, 'YCAG', '高云超', 'DBD', '华东大区', 'LIZO', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1853, 'LLXQ', '刘莉', 'DBD', '华东大区', 'LIZO', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1854, 'SHWQ', '王沙', 'DBD', '华东大区', 'LIZO', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1855, 'VJIL', '李金成', 'DBD', '华东大区', 'LIZO', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1856, 'WEWY', '王威', 'DBD', '华东大区', 'LIZO', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1857, 'LWYQ', '王良', 'DBD', '华东大区', 'JIGY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1858, 'QXYA', '杨倩', 'DBD', '华东大区', 'JIGY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1859, 'HBGS', '宋华邦', 'DBD', '华东大区', 'JIGY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1860, 'HYI', '尹慧', 'DBD', '华东大区', 'JIGY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1861, 'CUAS', '时春艳', 'DBD', '华东大区', 'JIGY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1862, 'WISG', '宋伟', 'DBD', '华东大区', 'JIGY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1863, 'XYHA', '韩啸', 'DBD', '华东大区', 'JIGY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1864, 'HIUZ', '朱慧慧', 'DBD', '华东大区', 'JIOS', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1865, 'TINX', '熊婷', 'DBD', '华东大区', 'JUHM', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1866, 'LAYI', '殷连保', 'DBD', '华东大区', 'JUHM', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1867, 'KAIG', '葛凯', 'DBD', '华东大区', 'JIOS', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1868, 'JOZU', '祖娇', 'DBD', '华东大区', 'JUHM', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1869, 'WIZE', '郑潍浩', 'DBD', '华东大区', 'JUHM', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1870, 'XWJI', '贾小维', 'DBD', '华东大区', 'JUHM', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1871, 'YISG', '宋玉梅', 'DBD', '华东大区', 'MXE', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1872, 'NQL', '李娜', 'DBD', '华东大区', 'MXE', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1873, 'YANS', '孙岩', 'DBD', '华东大区', 'PNGZ', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1874, 'ZYZI', '翟致远', 'DBD', '华东大区', 'PNGZ', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1875, 'NYSQ', '孙一跃', 'DBD', '华东大区', 'MXE', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1876, 'ISHM', '糜诗琦', 'DBD', '华东大区', 'MXE', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1877, 'PGSG', '宋鹏', 'DBD', '华东大区', 'MXE', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1878, 'WIXU', '胥卫丽', 'DBD', '华东大区', 'MXE', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1879, 'XZUA', '庄绪香', 'DBD', '华东大区', 'LZYA', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1880, 'KUQL', '李扣群', 'DBD', '华东大区', 'LZYA', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1881, 'CGDA', '戴成', 'DBD', '华东大区', 'LZYA', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1882, 'ZCWA', '王赠灿', 'DBD', '华东大区', 'LZYA', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1883, 'XACE', '陈祥', 'DBD', '华东大区', 'LZYA', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1884, 'ZHID', '董志瑞', 'DBD', '华东大区', 'LZYA', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1885, 'SNZE', '郑苏红', 'DBD', '华东大区', 'PNGZ', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1886, 'HUIN', '倪慧', 'DBD', '华东大区', 'YYSH', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1887, 'YIMS', '孙一民', 'DBD', '华东大区', 'QNJG', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1888, 'SCYZ', '陈硕', 'DBD', '华东大区', 'JNXW', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1889, 'DUIS', '舒大桂', 'DBD', '华东大区', 'JNXW', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1890, 'YNCL', '李运川', 'DBD', '华东大区', 'QNJG', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1891, 'XQIA', '乔翔', 'DBD', '华东大区', 'YYSH', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1892, 'GOHU', '胡国亮', 'DBD', '华东大区', 'QNJG', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1893, 'JZOH', '胡锦忠', 'DBD', '华东大区', 'QNJG', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1894, 'LPX', '项丽萍', 'DBD', '华东大区', 'QNJG', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1895, 'ZHJ', '金兆勇', 'DBD', '华东大区', 'YYSH', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1896, 'QWY', '吴强', 'DBD', '华东大区', 'JIOS', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1897, 'HULO', '罗徽', 'DBD', '华东大区', 'JUHM', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1898, 'WDWA', '万伟东', 'DBD', '华东大区', 'JIOS', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1899, 'SQUH', '胡守娟', 'DBD', '华东大区', 'JIOS', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1900, 'HJIG', '江海', 'DBD', '华东大区', 'XLNY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1901, 'HUFN', '冯辉', 'DBD', '华东大区', 'BNSI', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1902, 'FNHU', '黄锋洲', 'DBD', '华东大区', 'XLNY', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1903, 'YTOZ', '祝语童', 'DBD', '华东大区', 'MXE', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1904, 'NMX', '马娜', 'DBD', '华东大区', 'JNXW', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1905, 'XNYL', '李向阳', 'DBD', '华东大区', 'PNGZ', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1906, 'RNYN', '严荣海', 'DBD', '华东大区', 'JNXW', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1907, 'XXQZ', '张鑫', 'DBD', '华东大区', 'JNXW', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1908, 'ZAWN', '王昭业', 'DBD', '华东大区', 'JNXW', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1909, 'WQQL', '厉威', 'DBD', '华东大区', 'PNGZ', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1910, 'QZFY', '方知', 'DBD', '华东大区', 'YYSH', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (1911, 'QNKA', '康晴', 'DBD', '华南大区', 'HUIM', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1912, 'LEYZ', '颜雷', 'DBD', '华南大区', 'HUIM', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1913, 'FNGW', '王芳', 'DBD', '华南大区', 'HUIM', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1914, 'MIG', '谷明', 'DBD', '华南大区', 'HUIM', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1915, 'XOCN', '陈霄', 'DBD', '华南大区', 'HUIM', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1916, 'LILI', '李丽华', 'DBD', '华南大区', 'HUIM', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1917, 'YLLU', '刘玉兰', 'DBD', '华南大区', 'HUIM', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1918, 'JJJG', '江洁洁', 'DBD', '华南大区', 'YIZQ', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1919, 'YHZO', '周宇航', 'DBD', '华南大区', 'TAOW', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1920, 'CQWU', '吴楚鹏', 'DBD', '华南大区', 'TAOW', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1921, 'ZLLY', '刘丽丽', 'DBD', '华南大区', 'TAOW', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1922, 'BQNL', '李碧茜', 'DBD', '华南大区', 'TAOW', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1923, 'YHSN', '宋裕恒', 'DBD', '华南大区', 'TAOW', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1924, 'WTLG', '梁玮婷', 'DBD', '华南大区', 'TAOW', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1925, 'QJXC', '陈嘉旭', 'DBD', '华南大区', 'TAOW', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1926, 'XNTG', '唐晓岚', 'DBD', '华南大区', 'TAOW', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1927, 'QJEL', '刘洁瀚', 'DBD', '华南大区', 'TAOW', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1928, 'LYXU', '徐莉燕', 'DBD', '华南大区', 'TAOW', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1929, 'HXJI', '江红霞', 'DBD', '华南大区', 'NAXY', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1930, 'BCLI', '刘宝成', 'DBD', '华南大区', 'NAXY', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1931, 'CEZH', '赵晨蔚', 'DBD', '华南大区', 'NAXY', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1932, 'KICE', '陈凯琪', 'DBD', '华南大区', 'NAXY', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1933, 'CUAL', '刘楚男', 'DBD', '华南大区', 'NAXY', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1934, 'SQU', '丘思霖', 'DBD', '华南大区', 'NAXY', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1935, 'WQCN', '陈炜琪', 'DBD', '华南大区', 'NAXY', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1936, 'PMNL', '林佩漫', 'DBD', '华南大区', 'NAXY', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1937, 'LLIA', '练丽明', 'DBD', '华南大区', 'NAXY', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1938, 'JZZQ', '张洁', 'DBD', '华南大区', 'NAXY', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1939, 'SSYI', '尹实实', 'DBD', '华南大区', 'HMGU', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1940, 'XEEL', '李雪梅', 'DBD', '华南大区', 'HMGU', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1941, 'NJIC', '陈静', 'DBD', '华南大区', 'HMGU', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1942, 'HYNX', '徐海燕', 'DBD', '华南大区', 'HMGU', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1943, 'LUDQ', '戴璐', 'DBD', '华南大区', 'HMGU', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1944, 'GMLI', '李淦梅', 'DBD', '华南大区', 'YLU', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1945, 'HTLN', '蓝惠婷', 'DBD', '华南大区', 'HMGU', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1946, 'XUDH', '胡旭东', 'DBD', '华南大区', 'YIWI', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1947, 'GUHE', '何国文', 'DBD', '华南大区', 'HMGU', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1948, 'GALN', '梁光耀', 'DBD', '华南大区', 'CUCA', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1949, 'FYL', '李芳', 'DBD', '华南大区', 'CUCA', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1950, 'DUZ', '周端', 'DBD', '华南大区', 'CUCA', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1951, 'WEYE', '叶文庆', 'DBD', '华南大区', 'CUCA', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1952, 'YOLZ', '李永秋', 'DBD', '华南大区', 'CUCA', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1953, 'LOYN', '杨龙', 'DBD', '华南大区', 'CUCA', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1954, 'XYAW', '王晓燕', 'DBD', '华南大区', 'CUCA', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1955, 'WSWU', '吴文诗', 'DBD', '华南大区', 'CUCA', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1956, 'LNTA', '谭琳', 'DBD', '华南大区', 'XHZO', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1957, 'YQYP', '潘玉雁', 'DBD', '华南大区', 'HMGU', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1958, 'ZLLU', '卢致霖', 'DBD', '华南大区', 'YIWI', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1959, 'ZJSU', '孙靖超', 'DBD', '华南大区', 'YLU', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1960, 'IQNY', '杨琴', 'DBD', '华南大区', 'YLU', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1961, 'VYZO', '邹远霞', 'DBD', '华南大区', 'YLU', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1962, 'XMYH', '何敏仪', 'DBD', '华南大区', 'YIWI', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1963, 'HYNS', '石云含', 'DBD', '华南大区', 'YLU', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1964, 'LNDU', '杜琳', 'DBD', '华南大区', 'YIWI', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1965, 'ZSGH', '何胜男', 'DBD', '华南大区', 'YLU', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1966, 'ZQUE', '阙正林', 'DBD', '华南大区', 'YLU', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (1967, 'WEHL', '路文臣', 'DBD', '华中大区', 'YUNF', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1968, 'MNZJ', '姜美伶', 'DBD', '华中大区', 'YUNF', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1969, 'GSUT', '唐国帅', 'DBD', '华中大区', 'YUNF', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1970, 'ZJYM', '马俊', 'DBD', '华中大区', 'JZAO', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1971, 'ZFHU', '胡泽峰', 'DBD', '华中大区', 'YUNF', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1972, 'JQXY', '岳金珊', 'DBD', '华中大区', 'YUNF', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1973, 'YGH', '郝洋', 'DBD', '华中大区', 'YUNF', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1974, 'PGJ', '贾鹏', 'DBD', '华中大区', 'YUNF', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1975, 'YCZN', '张雨辰', 'DBD', '华中大区', 'JZAO', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1976, 'RLYZ', '李蕊', 'DBD', '华中大区', 'ZETI', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1977, 'YXZE', '郑袁旭', 'DBD', '华中大区', 'ZETI', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1978, 'JXAZ', '赵家萱', 'DBD', '华中大区', 'ZETI', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1979, 'XDAN', '段续', 'DBD', '华中大区', 'ZETI', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1980, 'ZBN', '边志超', 'DBD', '华中大区', 'ZETI', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1981, 'YEYL', '刘岳', 'DBD', '华中大区', 'ZETI', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1982, 'JNOQ', '仇金龙', 'DBD', '华中大区', 'ZETI', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1983, 'RNHL', '刘仁和', 'DBD', '华中大区', 'ZETI', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1984, 'SZNL', '刘素珍', 'DBD', '华中大区', 'JCNG', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1985, 'LYGU', '郭利军', 'DBD', '华中大区', 'JCNG', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1986, 'TNXU', '薛天阳', 'DBD', '华中大区', 'JCNG', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1987, 'JUZG', '张军平', 'DBD', '华中大区', 'JCNG', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1988, 'YICU', '崔莹', 'DBD', '华中大区', 'BIZA', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1989, 'PCAO', '曹鹏辉', 'DBD', '华中大区', 'JCNG', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1990, 'HALW', '万海龙', 'DBD', '华中大区', 'JCNG', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1991, 'JLLX', '刘金玲', 'DBD', '华中大区', 'JCNG', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1992, 'HGWE', '魏洪卫', 'DBD', '华中大区', 'CUIW', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1993, 'WJLI', '刘文静', 'DBD', '华中大区', 'CUIW', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1994, 'HYIL', '刘红银', 'DBD', '华中大区', 'CUIW', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1995, 'YJGA', '高永杰', 'DBD', '华中大区', 'CUOL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1996, 'JZWG', '王景章', 'DBD', '华中大区', 'CUIW', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1997, 'HQSU', '孙海森', 'DBD', '华中大区', 'CUIW', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1998, 'NYKH', '何康', 'DBD', '华中大区', 'CUIW', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (1999, 'QWWZ', '王伟', 'DBD', '华中大区', 'CUIW', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2000, 'PXWA', '王朋新', 'DBD', '华中大区', 'JCNG', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2001, 'YJLG', '梁雨佳', 'DBD', '华中大区', 'CUIW', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2002, 'NANJ', '贾楠', 'DBD', '华中大区', 'HNLV', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2003, 'YIAW', '武元霞', 'DBD', '华中大区', 'HNLV', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2004, 'HNZI', '辛宏宇', 'DBD', '华中大区', 'HNLV', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2005, 'WCNS', '石文成', 'DBD', '华中大区', 'HGAW', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2006, 'HBWA', '王宏斌', 'DBD', '华中大区', 'HNLV', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2007, 'WUSL', '刘武松', 'DBD', '华中大区', 'CUOL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2008, 'XPSU', '孙学朋', 'DBD', '华中大区', 'CUOL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2009, 'ZSGL', '刘曙光', 'DBD', '华中大区', 'CUOL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2010, 'CMWN', '王春明', 'DBD', '华中大区', 'CUOL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2011, 'GBYA', '杨国斌', 'DBD', '华中大区', 'CUOL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2012, 'HLTA', '陶华雷', 'DBD', '华中大区', 'XUHO', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2013, 'SIQH', '郝思奇', 'DBD', '华中大区', 'GUDL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2014, 'FWNG', '王飞', 'DBD', '华中大区', 'GUDL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2015, 'YYLV', '吕沿燕', 'DBD', '华中大区', 'GUDL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2016, 'YIIZ', '张印良', 'DBD', '华中大区', 'GUDL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2017, 'TALZ', '刘涛', 'DBD', '华中大区', 'GUDL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2018, 'QZU', '祖倩然', 'DBD', '华中大区', 'GUDL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2019, 'VMNL', '刘梦娇', 'DBD', '华中大区', 'XUHO', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2020, 'JNUK', '康京源', 'DBD', '华中大区', 'GUDL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2021, 'XIGQ', '郭欣', 'DBD', '华中大区', 'GUDL', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2022, 'ZGYL', '李增玉', 'DBD', '华中大区', 'XIW', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2023, 'XYAZ', '张喜艳', 'DBD', '华中大区', 'HGAW', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2024, 'NHNH', '韩寒', 'DBD', '华中大区', 'XIW', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2025, 'JEIY', '杨洁莉', 'DBD', '华中大区', 'HGAW', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2026, 'SHWX', '王烁', 'DBD', '华中大区', 'XIW', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2027, 'HZQZ', '赵海宁', 'DBD', '华中大区', 'XIW', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2028, 'LYQC', '陈亮', 'DBD', '华中大区', 'XUUS', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2029, 'ZXIW', '王昕', 'DBD', '华中大区', 'HGAW', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2030, 'JGOX', '高建凯', 'DBD', '华中大区', 'XUUS', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2031, 'HQXU', '许辉欣', 'DBD', '华中大区', 'QGXU', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2032, 'DLGL', '林东亮', 'DBD', '华中大区', 'HGAW', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2033, 'CEOG', '郭成昊', 'DBD', '华中大区', 'XUUS', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2034, 'JNWL', '李金伟', 'DBD', '华中大区', 'QGXU', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2035, 'CACQ', '陈参', 'DBD', '华中大区', 'QGXU', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2036, 'SZQW', '王胜', 'DBD', '华中大区', 'QGXU', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2037, 'XNSG', '安杏如', 'DBD', '华中大区', 'QGXU', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2038, 'MUZ', '张明珠', 'DBD', '华中大区', 'XUUS', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2039, 'WIIL', '刘卫喜', 'DBD', '华中大区', 'HNLV', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2040, 'CEZY', '赵策', 'DBD', '华中大区', 'HGAW', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2041, 'ZZEG', '郑亚楠', 'DBD', '华中大区', 'HGAW', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2042, 'BGCN', '陈兵', 'DBD', '华中大区', 'HGAW', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2043, 'XZQW', '王雪', 'DBD', '华中大区', 'XUUS', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2044, 'JIDN', '董津', 'DBD', '华中大区', 'PNZN', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2045, 'MQTI', '田苗苗', 'DBD', '华中大区', 'PNZN', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2046, 'YQNZ', '张艳', 'DBD', '华中大区', 'PNZN', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2047, 'LPCN', '常立平', 'DBD', '华中大区', 'XUUS', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2048, 'MYUZ', '张明远', 'DBD', '华中大区', 'PNZN', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2049, 'QID', '杜庆虎', 'DBD', '华中大区', 'PNZN', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2050, 'WMW', '武伟明', 'DBD', '华中大区', 'PNZN', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2051, 'YRUA', '阮永建', 'DBD', '华中大区', 'PNZN', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2052, 'ZHJX', '薛志佳', 'DBD', '华中大区', 'PNZN', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2053, 'YHNW', '王宜寒', 'DBD', '华中大区', 'LESY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2054, 'XIWZ', '王欣', 'DBD', '华中大区', 'XIY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2055, 'LWQY', '王磊', 'DBD', '华中大区', 'LESY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2056, 'XGAO', '高秀花', 'DBD', '华中大区', 'LESY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2057, 'XISO', '宋秀国', 'DBD', '华中大区', 'LESY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2058, 'ZIRZ', '赵志蓉', 'DBD', '华中大区', 'LESY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2059, 'HEZU', '朱汉成', 'DBD', '华中大区', 'LESY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2060, 'XKWA', '王小康', 'DBD', '华中大区', 'HZWA', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2061, 'YNXJ', '金元晓', 'DBD', '华中大区', 'JEZA', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2062, 'QJZ', '张净', 'DBD', '华中大区', 'JEZA', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2063, 'YHYZ', '张扬', 'DBD', '华中大区', 'FGYT', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2064, 'KNWG', '王坤强', 'DBD', '华中大区', 'JEZA', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2065, 'QRZQ', '张蕊', 'DBD', '华中大区', 'JEZA', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2066, 'HUWL', '刘华伟', 'DBD', '华中大区', 'FGYT', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2067, 'XGNK', '孔祥鹏', 'DBD', '华中大区', 'HZWA', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2068, 'DNWN', '王丹', 'DBD', '华中大区', 'JEZA', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2069, 'YGGS', '孙永岗', 'DBD', '华中大区', 'YMTG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2070, 'KUZH', '张坤志', 'DBD', '华中大区', 'XIY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2071, 'TMQT', '谭萌娜', 'DBD', '华中大区', 'XIY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2072, 'GXZS', '邵广华', 'DBD', '华中大区', 'XIY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2073, 'JJZL', '李佳佳', 'DBD', '华中大区', 'XIY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2074, 'YMXU', '薛玉苗', 'DBD', '华中大区', 'XIY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2075, 'WEWW', '王雯雯', 'DBD', '华中大区', 'XIY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2076, 'BULI', '李丙军', 'DBD', '华中大区', 'XIY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2077, 'XIJS', '孙晓娇', 'DBD', '华中大区', 'HZWA', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2078, 'ZSHU', '帅忠强', 'DBD', '华中大区', 'AIXZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2079, 'HYNY', '于海洋', 'DBD', '华中大区', 'JZG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2080, 'XUGE', '葛绪雪', 'DBD', '华中大区', 'JZG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2081, 'XPGA', '高雪鹏', 'DBD', '华中大区', 'JZG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2082, 'USNY', '于淑楠', 'DBD', '华中大区', 'JZG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2083, 'YPWG', '王亚鹏', 'DBD', '华中大区', 'JZG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2084, 'UHNL', '李欢欢', 'DBD', '华中大区', 'FGYT', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2085, 'ZOHN', '韩宗生', 'DBD', '华中大区', 'FGYT', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2086, 'CYGL', '刘传勇', 'DBD', '华中大区', 'LESY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2087, 'XYZW', '吴玉娜', 'DBD', '华中大区', 'LELV', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2088, 'GET', '田歌', 'DBD', '华中大区', 'LELV', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2089, 'ZNYG', '杨祯', 'DBD', '华中大区', 'LELV', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2090, 'GNFN', '冯公涛', 'DBD', '华中大区', 'LELV', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2091, 'XHLX', '刘洪玉', 'DBD', '华中大区', 'LELV', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2092, 'XNYW', '王心雨', 'DBD', '华中大区', 'YMTG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2093, 'NSGG', '郭爽', 'DBD', '华中大区', 'LELV', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2094, 'YJLO', '娄燕静', 'DBD', '华中大区', 'LELV', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2095, 'LXQI', '齐丽霞', 'DBD', '华中大区', 'LELV', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2096, 'FYUE', '岳芳宇', 'DBD', '华中大区', 'AIXZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2097, 'FFC', '陈方方', 'DBD', '华中大区', 'AIXZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2098, 'XUNC', '陈学庆', 'DBD', '华中大区', 'FGYT', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2099, 'YZBI', '毕于丛', 'DBD', '华中大区', 'JEZA', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2100, 'NGSN', '孙宁', 'DBD', '华中大区', 'JZG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2101, 'NYNL', '林燕', 'DBD', '华中大区', 'FGYT', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2102, 'YAJZ', '张亚婧', 'DBD', '华中大区', 'AIXZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2103, 'ZLWN', '王竹磊', 'DBD', '华中大区', 'FGYT', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2104, 'FHUA', '皇甫非凡', 'DBD', '华中大区', 'HZUO', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2105, 'ZJMA', '满健', 'DBD', '华中大区', 'HZUO', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2106, 'CYZP', '彭超', 'DBD', '华中大区', 'YJSG', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2107, 'OMIZ', '张明涛', 'DBD', '华中大区', 'YJSG', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2108, 'QJLV', '吕敬敬', 'DBD', '华中大区', 'HZUO', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2109, 'PGWN', '王鹏飞', 'DBD', '华中大区', 'HZUO', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2110, 'HWXG', '王欢', 'DBD', '华中大区', 'HZUO', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2111, 'LIIW', '汪丽丽', 'DBD', '华中大区', 'HZUO', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2112, 'XIJM', '满晓杰', 'DBD', '华中大区', 'YLZG', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2113, 'YUPL', '落宇鹏', 'DBD', '华中大区', 'FGJL', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2114, 'XEBD', '杜学宝', 'DBD', '华中大区', 'YLZG', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2115, 'ZGYG', '杨之鹏', 'DBD', '华中大区', 'YWAY', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2116, 'PNAI', '艾鹏', 'DBD', '华中大区', 'YLGH', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2117, 'QJAL', '李娟', 'DBD', '华中大区', 'YLGH', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2118, 'XAGH', '贺骁戈', 'DBD', '华中大区', 'YLGH', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2119, 'WSHA', '邵伟', 'DBD', '华中大区', 'FGJL', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2120, 'QSG', '宋琦', 'DBD', '华中大区', 'YLGH', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2121, 'JZZZ', '张洁', 'DBD', '华中大区', 'YLGH', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2122, 'ZXN', '玄志恒', 'DBD', '华中大区', 'YWAY', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2123, 'QLGO', '公冶庆力', 'DBD', '华中大区', 'HZUO', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2124, 'UMZL', '刘美玲', 'DBD', '华中大区', 'FGJL', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2125, 'YAGT', '汤洋', 'DBD', '华中大区', 'YLGH', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2126, 'CQCH', '陈翠青', 'DBD', '华中大区', 'YLGH', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2127, 'YXYH', '韩瑶瑶', 'DBD', '华中大区', 'FGJL', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2128, 'NSAZ', '张赛', 'DBD', '华中大区', 'YLGH', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2129, 'ZHMD', '杜之盟', 'DBD', '华中大区', 'YLGH', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2130, 'YZZN', '张永阵', 'DBD', '华中大区', 'YLGH', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2131, 'SZZ', '张帅', 'DBD', '华中大区', 'YLZG', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2132, 'KZGE', '葛凯', 'DBD', '华中大区', 'FGJL', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2133, 'YGMU', '慕永浚', 'DBD', '华中大区', 'SOLX', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2134, 'HNGX', '徐红艳', 'DBD', '华中大区', 'YJSG', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2135, 'QGYU', '于庆云', 'DBD', '华中大区', 'SOLX', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2136, 'VYZU', '周宇阳', 'DBD', '华中大区', 'SOLX', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2137, 'LQZL', '李玲', 'DBD', '华中大区', 'YJSG', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2138, 'XIGX', '徐相文', 'DBD', '华中大区', 'SOLX', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2139, 'QYUL', '刘媛媛', 'DBD', '华中大区', 'SOLX', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2140, 'QHYN', '杨清华', 'DBD', '华中大区', 'FGJL', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2141, 'NYMR', '任敏', 'DBD', '华中大区', 'YZQZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2142, 'ZHMN', '明志杰', 'DBD', '华中大区', 'SOLX', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2143, 'RIWG', '王瑞', 'DBD', '华中大区', 'SOLX', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2144, 'ECHW', '王超', 'DBD', '华中大区', 'SOLX', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2145, 'QANX', '许千', 'DBD', '华中大区', 'YLZG', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2146, 'DWWU', '吴殿伟', 'DBD', '华中大区', 'FGJL', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2147, 'BINX', '玄彬', 'DBD', '华中大区', 'FGJL', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2148, 'LLQY', '刘蕾', 'DBD', '华中大区', 'YZQZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2149, 'ZHTI', '田振', 'DBD', '华中大区', 'PNHN', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2150, 'LXIG', '邢乐乐', 'DBD', '华中大区', 'PNHN', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2151, 'WSYA', '杨文松', 'DBD', '华中大区', 'PNHN', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2152, 'XUYX', '闫旭', 'DBD', '华中大区', 'PNHN', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2153, 'DWZH', '赵德伟', 'DBD', '华中大区', 'PNHN', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2154, 'CXUE', '薛春潇', 'DBD', '华中大区', 'PNHN', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2155, 'MXUZ', '祝明雪', 'DBD', '华中大区', 'YZQZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2156, 'SGKA', '阚生伟', 'DBD', '华中大区', 'PNHN', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2157, 'LGLZ', '周玲玲', 'DBD', '华中大区', 'PNHN', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2158, 'HAFN', '冯浩', 'DBD', '华中大区', 'YWAY', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2159, 'DAFN', '冯丹丹', 'DBD', '华南大区', 'SZHE', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2160, 'XIYE', '叶小利', 'DBD', '华南大区', 'SZHE', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2161, 'PXUL', '刘培学', 'DBD', '华南大区', 'SZHE', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2162, 'LWG', '王莉', 'DBD', '华南大区', 'QQLI', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2163, 'XYN', '杨小惠', 'DBD', '华南大区', 'QQLI', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2164, 'SUTW', '王素婷', 'DBD', '华南大区', 'QQLI', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2165, 'DMGL', '李达明', 'DBD', '华南大区', 'SZHE', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2166, 'YXC', '陈裔雄', 'DBD', '华南大区', 'SZHE', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2167, 'ZFCN', '陈泽富', 'DBD', '华南大区', 'SZHE', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2168, 'XMIH', '黄敏', 'DBD', '华南大区', 'SZHE', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2169, 'LBZE', '曾令斌', 'DBD', '华南大区', 'SZHE', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2170, 'YLMO', '莫艳兰', 'DBD', '华南大区', 'JGLX', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2171, 'XUEH', '黄雪亮', 'DBD', '华南大区', 'THGY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2172, 'MULQ', '李木秀', 'DBD', '华南大区', 'THGY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2173, 'QCCY', '陈婵', 'DBD', '华南大区', 'THGY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2174, 'GQCH', '陈国福', 'DBD', '华南大区', 'THGY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2175, 'YMGL', '罗梦宁', 'DBD', '华南大区', 'THGY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2176, 'CYAO', '姚晨曦', 'DBD', '华南大区', 'THGY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2177, 'PZLI', '李佩莲', 'DBD', '华南大区', 'THGY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2178, 'HFZA', '张海飞', 'DBD', '华南大区', 'CXSU', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2179, 'ZJLG', '梁进茂', 'DBD', '华南大区', 'CXSU', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2180, 'LQWN', '王丽群', 'DBD', '华南大区', 'CXSU', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2181, 'DNDW', '韦丹丹', 'DBD', '华南大区', 'CXSU', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2182, 'YHHN', '黄于还', 'DBD', '华南大区', 'CXSU', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2183, 'ZYQY', '仇悦模', 'DBD', '华南大区', 'CXSU', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2184, 'JIDM', '莫金堆', 'DBD', '华南大区', 'CXSU', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2185, 'ZDLU', '罗志电', 'DBD', '华南大区', 'JNDY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2186, 'BGML', '刘炳敏', 'DBD', '华南大区', 'CXSU', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2187, 'LIUY', '杨柳林', 'DBD', '华南大区', 'JUNW', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2188, 'YNZI', '资艳妮', 'DBD', '华南大区', 'JGLX', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2189, 'BHCN', '陈碧婵', 'DBD', '华南大区', 'JUNW', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2190, 'VMCN', '陈媚', 'DBD', '华南大区', 'JUNW', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2191, 'ZXQZ', '秦小芳', 'DBD', '华南大区', 'THGY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2192, 'SLXU', '陆少梅', 'DBD', '华南大区', 'THGY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2193, 'MJWU', '吴梅娟', 'DBD', '华南大区', 'JNDY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2194, 'XGCN', '陈雪莹', 'DBD', '华南大区', 'JGLX', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2195, 'DELZ', '曾德林', 'DBD', '华南大区', 'JNDY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2196, 'CKZO', '周楚开', 'DBD', '华南大区', 'JNDY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2197, 'WWI', '韦微', 'DBD', '华南大区', 'JNDY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2198, 'GIM', '蒙桂芬', 'DBD', '华南大区', 'JNDY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2199, 'RUIC', '岑瑞', 'DBD', '华南大区', 'JUNW', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2200, 'QNZ', '钟情应', 'DBD', '华南大区', 'JNDY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2201, 'JZYI', '尹键', 'DBD', '华南大区', 'JNDY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2202, 'YPDN', '邓佑平', 'DBD', '华南大区', 'JNDY', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2203, 'GYWE', '文高章', 'DBD', '华南大区', 'JIQW', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2204, 'LQXS', '沈丽', 'DBD', '华南大区', 'JNQJ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2205, 'WMZN', '张韦闽', 'DBD', '华南大区', 'JIQW', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2206, 'JVZH', '詹婕', 'DBD', '华南大区', 'JIQW', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2207, 'YPZG', '张彦鹏', 'DBD', '华南大区', 'JIQW', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2208, 'XFGW', '吴晓凤', 'DBD', '华南大区', 'HXHE', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2209, 'XCHI', '池小妹', 'DBD', '华南大区', 'HXHE', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2210, 'SJFG', '冯尚晶', 'DBD', '华南大区', 'HXHE', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2211, 'NAHQ', '韩娜', 'DBD', '华南大区', 'HXHE', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2212, 'RZLN', '林瑞珠', 'DBD', '华南大区', 'HXHE', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2213, 'MWNG', '王美美', 'DBD', '华南大区', 'HXHE', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2214, 'RSLI', '廖日上', 'DBD', '华南大区', 'HXHE', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2215, 'WHLU', '刘文花', 'DBD', '华南大区', 'HXHE', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2216, 'YDGO', '高玉端', 'DBD', '华南大区', 'LNZ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2217, 'HFLN', '林惠芳', 'DBD', '华南大区', 'LNZ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2218, 'ZQLN', '林志强', 'DBD', '华南大区', 'LNZ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2219, 'USJX', '许思洁', 'DBD', '华南大区', 'XCEN', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2220, 'GNTN', '唐桂平', 'DBD', '华南大区', 'LNZ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2221, 'NMEW', '王萌', 'DBD', '华南大区', 'LNZ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2222, 'HNFA', '范航', 'DBD', '华南大区', 'LNZ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2223, 'MEIZ', '张梅', 'DBD', '华南大区', 'LNZ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2224, 'LJCN', '陈玲娟', 'DBD', '华南大区', 'XCEN', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2225, 'XHWU', '吴小红', 'DBD', '华南大区', 'XCEN', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2226, 'JWYL', '蓝晋委', 'DBD', '华南大区', 'XCEN', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2227, 'WASU', '孙婉君', 'DBD', '华南大区', 'JNQJ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2228, 'ZHFU', '傅志发', 'DBD', '华南大区', 'JNQJ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2229, 'YAYK', '柯雅瑜', 'DBD', '华南大区', 'ZYOL', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2230, 'JHZY', '黄娟', 'DBD', '华南大区', 'ZYOL', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2231, 'TGUO', '郭填填', 'DBD', '华南大区', 'ZYOL', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2232, 'SAXE', '谢莎', 'DBD', '华南大区', 'ZYOL', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2233, 'XULO', '罗小如', 'DBD', '华南大区', 'ZYOL', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2234, 'ZOHU', '黄忠斌', 'DBD', '华南大区', 'XZZY', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2235, 'JHZE', '曾家昌', 'DBD', '华南大区', 'XZZY', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2236, 'FWQ', '吴帆', 'DBD', '华南大区', 'XZZY', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2237, 'WYYL', '刘薇', 'DBD', '华南大区', 'XZZY', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2238, 'LJGU', '关丽娟', 'DBD', '华南大区', 'XZZY', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2239, 'JIFF', '方建逢', 'DBD', '华南大区', 'XWUD', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2240, 'SEQG', '郭升强', 'DBD', '华南大区', 'XWUD', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2241, 'CGCN', '陈聪敏', 'DBD', '华南大区', 'XWUD', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2242, 'HTZ', '赵慧婷', 'DBD', '华南大区', 'XWUD', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2243, 'GUXI', '解国庆', 'DBD', '华南大区', 'XWUD', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2244, 'QNLN', '林琼', 'DBD', '华南大区', 'XWUD', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2245, 'MOQI', '李敏瑶', 'DBD', '华南大区', 'XWUD', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2246, 'ZIEL', '李志伟', 'DBD', '华南大区', 'XWUD', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2247, 'JSOX', '宋娟', 'DBD', '华西大区', 'XSZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2248, 'CUYL', '李春漾', 'DBD', '华西大区', 'XSZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2249, 'ZHAJ', '巨兆蕾', 'DBD', '华西大区', 'XSZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2250, 'WJWU', '武文娟', 'DBD', '华西大区', 'XSZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2251, 'DZHA', '张丹', 'DBD', '华西大区', 'XSZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2252, 'HGYN', '杨华', 'DBD', '华西大区', 'XSZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2253, 'VMHZ', '韩玫', 'DBD', '华西大区', 'XSZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2254, 'JGWG', '王静', 'DBD', '华西大区', 'LIHX', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2255, 'QQZA', '张强强', 'DBD', '华西大区', 'LIHX', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2256, 'XGFG', '冯小峰', 'DBD', '华西大区', 'LIHX', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2257, 'XIGS', '苏晓平', 'DBD', '华西大区', 'LIHX', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2258, 'XGHU', '胡相存', 'DBD', '华西大区', 'LIHX', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2259, 'LIZQ', '张丽', 'DBD', '华西大区', 'LIHX', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2260, 'KEZQ', '周珂', 'DBD', '华西大区', 'LIHX', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2261, 'ZNQL', '李志强', 'DBD', '华西大区', 'LIHX', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2262, 'SMWG', '王思敏', 'DBD', '华西大区', 'HNYS', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2263, 'XMO', '牟小强', 'DBD', '华西大区', 'HNYS', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2264, 'HLGU', '郭海龙', 'DBD', '华西大区', 'HNYS', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2265, 'HXCH', '柴海霞', 'DBD', '华西大区', 'HNYS', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2266, 'HYQL', '李辉', 'DBD', '华西大区', 'HNYS', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2267, 'DGGL', '柳丁相', 'DBD', '华西大区', 'GOBY', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2268, 'HUYZ', '杨辉', 'DBD', '华西大区', 'HNYS', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2269, 'PJIN', '金鹏', 'DBD', '华西大区', 'GOBY', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2270, 'GJCE', '陈娟明', 'DBD', '华西大区', 'GOBY', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2271, 'GYZU', '周裕英', 'DBD', '华西大区', 'HLZU', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2272, 'QILN', '林强', 'DBD', '华西大区', 'HLZU', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2273, 'WNJI', '蒋文晶', 'DBD', '华西大区', 'GOBY', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2274, 'XLZY', '李鑫', 'DBD', '华西大区', 'GOBY', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2275, 'XUPH', '胡雪萍', 'DBD', '华西大区', 'HNYS', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2276, 'QLWA', '王磊', 'DBD', '华西大区', 'GOBY', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2277, 'DZQL', '李栋', 'DBD', '华西大区', 'QFH', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2278, 'XIAM', '马晓燕', 'DBD', '华西大区', 'VYJZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2279, 'CGNM', '马成龙', 'DBD', '华西大区', 'VYJZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2280, 'YPNL', '李亚萍', 'DBD', '华西大区', 'VYJZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2281, 'RUWE', '温润杰', 'DBD', '华西大区', 'QFH', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2282, 'HGMA', '马洪林', 'DBD', '华西大区', 'VYJZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2283, 'JQW', '王晶', 'DBD', '华中大区', 'XAZL', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2284, 'YYYO', '姚燕云', 'DBD', '华中大区', 'XAZL', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2285, 'YGOL', '李涌涌', 'DBD', '华中大区', 'XAZL', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2286, 'MNZH', '张敏', 'DBD', '华中大区', 'XAZL', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2287, 'FEZN', '张峰', 'DBD', '华中大区', 'XAZL', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2288, 'MCQQ', '蔡美玲', 'DBD', '华中大区', 'HUPZ', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2289, 'YNQS', '孙燕强', 'DBD', '华中大区', 'YMWG', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2290, 'QXWQ', '温秀明', 'DBD', '华中大区', 'HUPZ', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2291, 'YZBA', '白玉珍', 'DBD', '华中大区', 'HUPZ', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2292, 'NYZU', '左彦杰', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2293, 'HXMA', '马化神', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2294, 'HAZA', '张怀波', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2295, 'SFIG', '郭少飞', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2296, 'YADN', '段亚峰', 'DBD', '华中大区', 'YYHU', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2297, 'LXYX', '许立', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2298, 'ZQIL', '刘志强', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2299, 'YNGO', '高燕', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2300, 'QLXZ', '李雅琴', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2301, 'QCHA', '李超', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2302, 'KIFN', '范凯', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2303, 'YHZG', '张永和', 'DBD', '华中大区', 'YYHU', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2304, 'CZY', '闫晨沼', 'DBD', '华中大区', 'YYHU', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2305, 'ZJIB', '白洁', 'DBD', '华中大区', 'YYHU', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2306, 'LUYU', '原璐芳', 'DBD', '华中大区', 'YUYY', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2307, 'YJPH', '贺建平', 'DBD', '华中大区', 'YYHU', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2308, 'GOY', '杨国材', 'DBD', '华中大区', 'YYHU', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2309, 'XAJD', '杜晓娟', 'DBD', '华中大区', 'YYHU', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2310, 'LUYA', '杨柳', 'DBD', '华中大区', 'BAGW', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2311, 'YNTI', '遆艳娟', 'DBD', '华中大区', 'BAGW', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2312, 'WHOU', '侯文魁', 'DBD', '华中大区', 'BAGW', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2313, 'YQXY', '杨妍', 'DBD', '华中大区', 'YMWG', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2314, 'JJJA', '贾剑杰', 'DBD', '华中大区', 'BAGW', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2315, 'LUXW', '王璐', 'DBD', '华中大区', 'YMWG', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2316, 'LEZQ', '张乐', 'DBD', '华中大区', 'YMWG', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2317, 'FLWG', '王方林', 'DBD', '华中大区', 'YMWG', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2318, 'GUOC', '陈国栋', 'DBD', '华中大区', 'HUPZ', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2319, 'WZSH', '善文泽', 'DBD', '华中大区', 'HUPZ', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2320, 'DNZN', '张东旭', 'DBD', '华中大区', 'HUPZ', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2321, 'ZYYW', '王煜', 'DBD', '华中大区', 'HUPZ', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2322, 'ZJFL', '李晋峰', 'DBD', '华中大区', 'BAGW', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2323, 'MINC', '成敏', 'DBD', '华中大区', 'BAGW', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2324, 'YNFL', '李云飞', 'DBD', '华中大区', 'BAGW', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2325, 'HYEL', '刘宏业', 'DBD', '华中大区', 'YMWG', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2326, 'ZNSG', '尚尚', 'DBD', '华中大区', 'BAGW', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2327, 'FGCG', '程芳', 'DBD', '华中大区', 'YMWG', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2328, 'BAWN', '王宝宝', 'DBD', '华中大区', 'BAGW', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2329, 'DXQS', '孙丹', 'DBD', '华南大区', 'CGYW', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2330, 'XJZH', '周小军', 'DBD', '华南大区', 'WHUA', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2331, 'ZGXI', '谢振鸿', 'DBD', '华南大区', 'WHUA', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2332, 'YIEZ', '张印朋', 'DBD', '华南大区', 'CGYW', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2333, 'JIBZ', '张锦兵', 'DBD', '华南大区', 'CGYW', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2334, 'DYXI', '向代毅', 'DBD', '华南大区', 'WHUA', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2335, 'XYIH', '黄秀谊', 'DBD', '华南大区', 'YUW', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2336, 'WJNC', '蔡文静', 'DBD', '华南大区', 'ZHOC', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2337, 'HJAL', '梁建德', 'DBD', '华南大区', 'WHUA', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2338, 'SGCE', '陈舒婷', 'DBD', '华南大区', 'WHUA', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2339, 'GALU', '陆高丽', 'DBD', '华南大区', 'WHUA', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2340, 'SMCE', '陈少明', 'DBD', '华南大区', 'CGYW', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2341, 'YMYU', '余苑梅', 'DBD', '华南大区', 'WHUA', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2342, 'YYCE', '陈艳艳', 'DBD', '华南大区', 'WHUA', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2343, 'WFN', '范伟年', 'DBD', '华南大区', 'WHUA', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2344, 'YWWU', '吴裕伟', 'DBD', '华南大区', 'WHUA', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2345, 'PLZQ', '赖培贤', 'DBD', '华南大区', 'LGFL', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2346, 'SOLQ', '鲁颂楠', 'DBD', '华南大区', 'LGFL', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2347, 'DXIE', '谢丹', 'DBD', '华南大区', 'LGFL', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2348, 'LIED', '邓丽娥', 'DBD', '华南大区', 'LGFL', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2349, 'HSZL', '李思豪', 'DBD', '华南大区', 'LGFL', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2350, 'YRUX', '许映如', 'DBD', '华南大区', 'LGFL', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2351, 'JWZO', '邹俊炜', 'DBD', '华南大区', 'LGFL', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2352, 'QTU', '涂群', 'DBD', '华南大区', 'LGFL', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2353, 'HFYO', '游海锋', 'DBD', '华南大区', 'LGFL', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2354, 'XNGC', '陈雄', 'DBD', '华南大区', 'ZHOC', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2355, 'ZJHN', '洪景', 'DBD', '华南大区', 'ZHOC', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2356, 'RQD', '邓荣乾', 'DBD', '华南大区', 'ZHOC', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2357, 'YYS', '孙瑶', 'DBD', '华南大区', 'ZHOC', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2358, 'TINY', '宁婷', 'DBD', '华南大区', 'ZHOC', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2359, 'ZLXU', '徐子良', 'DBD', '华南大区', 'ZHOC', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2360, 'QRAO', '饶强', 'DBD', '华南大区', 'YUW', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2361, 'FQZL', '林福强', 'DBD', '华南大区', 'YIXS', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2362, 'QLIN', '林庆鑫', 'DBD', '华南大区', 'YUW', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2363, 'QSCN', '陈树洪', 'DBD', '华南大区', 'YUW', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2364, 'YECN', '陈跃跃', 'DBD', '华南大区', 'YUW', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2365, 'HUJN', '江焕仪', 'DBD', '华南大区', 'YUW', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2366, 'KWN', '王凯', 'DBD', '华南大区', 'YUW', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2367, 'ZFA', '范朝律', 'DBD', '华南大区', 'YUW', 'JTYU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2368, 'NSEY', '闫晟', 'DBD', '华北大区', 'XDNZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2369, 'QYWX', '吴岩', 'DBD', '华北大区', 'XDNZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2370, 'QXHE', '贺琪', 'DBD', '华北大区', 'XDNZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2371, 'YGGW', '王莹', 'DBD', '华北大区', 'XDNZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2372, 'YUFQ', '范钰', 'DBD', '华北大区', 'XDNZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2373, 'YFUL', '刘艳富', 'DBD', '华北大区', 'XDNZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2374, 'GUWQ', '王国宇', 'DBD', '华北大区', 'XDNZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2375, 'JZZY', '赵晋男', 'DBD', '华北大区', 'GOLI', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2376, 'ZJEB', '白杰', 'DBD', '华北大区', 'GOLI', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2377, 'GQL', '李国强', 'DBD', '华北大区', 'GOLI', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2378, 'JQYC', '陈俊超', 'DBD', '华北大区', 'GOLI', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2379, 'DAZL', '刘大振', 'DBD', '华北大区', 'GOLI', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2380, 'EHNL', '李蕙宁', 'DBD', '华北大区', 'GOLI', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2381, 'YNBL', '李元宾', 'DBD', '华北大区', 'GOLI', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2382, 'QGLV', '吕青华', 'DBD', '华北大区', 'GOLI', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2383, 'ZLZA', '张哲伦', 'DBD', '华北大区', 'GOLI', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2384, 'GAKN', '康安博', 'DBD', '华北大区', 'XLOL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2385, 'YBZH', '赵昱博', 'DBD', '华北大区', 'XLOL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2386, 'VLEL', '刘蕾', 'DBD', '华北大区', 'XLOL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2387, 'UWLU', '刘伟', 'DBD', '华北大区', 'XLOL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2388, 'YLSN', '孙永利', 'DBD', '华北大区', 'XLOL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2389, 'LYIG', '郭丽影', 'DBD', '华北大区', 'XLOL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2390, 'YQWE', '魏月强', 'DBD', '华北大区', 'XLOL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2391, 'SWDN', '董仕文', 'DBD', '华北大区', 'XLOL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2392, 'LEXX', '徐乐', 'DBD', '华北大区', 'FQL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2393, 'HBZU', '周海彬', 'DBD', '华北大区', 'FQL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2394, 'BQJI', '贾秉强', 'DBD', '华北大区', 'FQL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2395, 'ZQWX', '王小年', 'DBD', '华北大区', 'FQL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2396, 'XCHH', '韩春林', 'DBD', '华北大区', 'FQL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2397, 'BZPA', '潘斌', 'DBD', '华北大区', 'FQL', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2398, 'VMGL', '李明霞', 'DBD', '华北大区', 'YJIA', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2399, 'FIZO', '赵飞', 'DBD', '华北大区', 'YJIA', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2400, 'HLXY', '李海龙', 'DBD', '华北大区', 'YJIA', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2401, 'JUOG', '高俊峰', 'DBD', '华北大区', 'YJIA', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2402, 'QYXW', '王红亮', 'DBD', '华北大区', 'YJIA', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2403, 'PY', '燕鹏', 'DBD', '华北大区', 'YJIA', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2404, 'ZZLZ', '刘泽', 'DBD', '华北大区', 'YJIA', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2405, 'MGMG', '孟梦', 'DBD', '华北大区', 'JQYZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2406, 'HGF', '范蘅', 'DBD', '华北大区', 'JQYZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2407, 'LQQW', '王露', 'DBD', '华北大区', 'JQYZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2408, 'NSZL', '李生辉', 'DBD', '华北大区', 'JQYZ', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2409, 'BAXU', '徐宝勇', 'DBD', '华北大区', 'JIUG', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2410, 'MNDG', '关满达', 'DBD', '华北大区', 'JIUG', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2411, 'EYUZ', '周园', 'DBD', '华北大区', 'JIUG', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2412, 'ZEYZ', '张振宇', 'DBD', '华北大区', 'JIUG', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2413, 'YTGO', '郭玉涛', 'DBD', '华北大区', 'JIUG', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2414, 'LZXO', '赵磊', 'DBD', '华北大区', 'JIUG', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2415, 'GUAG', '高广前', 'DBD', '华北大区', 'JIUG', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2416, 'YEGL', '刘跃颖', 'DBD', '华北大区', 'QJOY', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2417, 'HHRE', '任海禾', 'DBD', '华北大区', 'QJOY', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2418, 'NLYZ', '李亚敏', 'DBD', '华北大区', 'QJOY', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2419, 'HCLI', '刘鸿城', 'DBD', '华北大区', 'QJOY', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2420, 'YFIL', '李雨霏', 'DBD', '华北大区', 'QJOY', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2421, 'SGXE', '谢尚辉', 'DBD', '华北大区', 'ML', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2422, 'GNSN', '孙广川', 'DBD', '华北大区', 'QJOY', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2423, 'AYLQ', '刘亚', 'DBD', '华北大区', 'QJOY', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2424, 'QQLZ', '路乔惠', 'DBD', '华北大区', 'RGKG', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2425, 'LYYM', '马丽', 'DBD', '华北大区', 'RGKG', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2426, 'VJNZ', '张京晋', 'DBD', '华北大区', 'RGKG', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2427, 'YIWY', '王怡', 'DBD', '华北大区', 'RGKG', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2428, 'FYGW', '魏福营', 'DBD', '华北大区', 'RGKG', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2429, 'ZQAW', '王子强', 'DBD', '华北大区', 'RGKG', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2430, 'HUC', '崔惠芳', 'DBD', '华北大区', 'RGKG', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2431, 'XXWU', '吴瑕', 'DBD', '华北大区', 'RGKG', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2432, 'LEYL', '李乐', 'DBD', '华北大区', 'TWNG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2433, 'SUOZ', '张硕', 'DBD', '华北大区', 'TWNG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2434, 'SCUI', '崔树娟', 'DBD', '华北大区', 'TWNG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2435, 'DGCI', '崔东平', 'DBD', '华北大区', 'TWNG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2436, 'DCG', '程丹', 'DBD', '华北大区', 'ML', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2437, 'DIWZ', '王迪', 'DBD', '华北大区', 'TWNG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2438, 'ZYIW', '王莹', 'DBD', '华北大区', 'TWNG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2439, 'YZC', '陈义众', 'DBD', '华北大区', 'TWNG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2440, 'ZUYN', '杨泽宇', 'DBD', '华北大区', 'XIAB', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2441, 'YNHJ', '贾延超', 'DBD', '华北大区', 'XIAB', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2442, 'ISHL', '李帅', 'DBD', '华北大区', 'XIAB', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2443, 'FYWA', '王帆', 'DBD', '华北大区', 'XIAB', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2444, 'XUJ', '贾学伟', 'DBD', '华北大区', 'XIAB', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2445, 'HNAZ', '张昊南', 'DBD', '华北大区', 'XIAB', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2446, 'YXGO', '郭雅欣', 'DBD', '华北大区', 'XIAB', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2447, 'ZJWL', '刘继维', 'DBD', '华北大区', 'XWWN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2448, 'EMQW', '王淼', 'DBD', '华北大区', 'XWWN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2449, 'ZHEH', '韩正禹', 'DBD', '华北大区', 'XWWN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2450, 'JQTG', '滕佳琦', 'DBD', '华北大区', 'XWWN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2451, 'WEXQ', '徐文', 'DBD', '华北大区', 'XWWN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2452, 'MQZ', '张萌', 'DBD', '华北大区', 'XWWN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2453, 'HBWG', '王鸿博', 'DBD', '华北大区', 'XWWN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2454, 'LYIN', '尹凌波', 'DBD', '华北大区', 'MUTN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2455, 'YNFA', '范宇彤', 'DBD', '华北大区', 'MUTN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2456, 'WPZ', '张卫萍', 'DBD', '华北大区', 'MUTN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2457, 'WEWN', '王威', 'DBD', '华北大区', 'MUTN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2458, 'HITL', '刘海涛', 'DBD', '华北大区', 'MUTN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2459, 'QGYW', '吴清云', 'DBD', '华北大区', 'MUTN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2460, 'SZZH', '张赛振', 'DBD', '华北大区', 'MUTN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2461, 'JZU', '朱婕', 'DBD', '华北大区', 'LKUI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2462, 'YICZ', '陈影', 'DBD', '华北大区', 'XJG', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2463, 'CENW', '王晨', 'DBD', '华北大区', 'LKUI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2464, 'LDZA', '赵利东', 'DBD', '华北大区', 'LKUI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2465, 'RJI', '姜仁飞', 'DBD', '华北大区', 'LKUI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2466, 'MMDQ', '邓明皓', 'DBD', '华北大区', 'LKUI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2467, 'LUWQ', '王璐', 'DBD', '华北大区', 'XJG', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2468, 'EHZU', '周鹤', 'DBD', '华北大区', 'XJG', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2469, 'HTZH', '张海涛', 'DBD', '华北大区', 'XJG', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2470, 'QGZO', '赵强', 'DBD', '华北大区', 'XJG', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2471, 'YAYY', '姚燕', 'DBD', '华北大区', 'XJG', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2472, 'QHLY', '李杭', 'DBD', '华北大区', 'XJG', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2473, 'HEZN', '张贺', 'DBD', '华北大区', 'LKUI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2474, 'SSHW', '吴姗姗', 'DBD', '华北大区', 'JHGO', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2475, 'CKSN', '孙承锴', 'DBD', '华北大区', 'WMEN', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2476, 'JJNH', '郝金金', 'DBD', '华北大区', 'WMEN', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2477, 'YXNS', '苏雅楠', 'DBD', '华北大区', 'WMEN', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2478, 'MGYB', '白明燕', 'DBD', '华北大区', 'WMEN', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2479, 'XUJA', '蒋学超', 'DBD', '华北大区', 'WMEN', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2480, 'FEFY', '于飞飞', 'DBD', '华北大区', 'DOLI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2481, 'YGTO', '佟阳运', 'DBD', '华北大区', 'WMEN', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2482, 'LOZG', '张龙', 'DBD', '华北大区', 'DOLI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2483, 'NJZH', '张健', 'DBD', '华北大区', 'DOLI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2484, 'ZQH', '韩志强', 'DBD', '华北大区', 'XJG', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2485, 'GEDL', '李庚迪', 'DBD', '华北大区', 'DOLI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2486, 'YLQL', '刘月', 'DBD', '华北大区', 'DOLI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2487, 'ZXAZ', '朱翔', 'DBD', '华北大区', 'DOLI', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2488, 'BCZH', '张博辰', 'DBD', '华北大区', 'JHGO', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2489, 'WNSG', '盛万娇', 'DBD', '华北大区', 'JHGO', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2490, 'LQF', '冯立权', 'DBD', '华北大区', 'JHGO', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2491, 'NNZA', '张楠', 'DBD', '华北大区', 'JHGO', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2492, 'CHLZ', '李超', 'DBD', '华北大区', 'JHGO', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2493, 'RLIS', '孙蕊丽', 'DBD', '华北大区', 'JHGO', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2494, 'YEXI', '谢玉文', 'DBD', '华北大区', 'JHGO', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2495, 'YFAS', '孙英凡', 'DBD', '华北大区', 'TNGJ', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2496, 'BGJZ', '周冰洁', 'DBD', '华北大区', 'TNGJ', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2497, 'QGYL', '刘庆阳', 'DBD', '华北大区', 'TNGJ', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2498, 'JJIM', '马金建', 'DBD', '华北大区', 'TNGJ', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2499, 'FSUN', '孙帆', 'DBD', '华北大区', 'TNGJ', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2500, 'GJIA', '江桂金', 'DBD', '华北大区', 'TNGJ', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2501, 'YAC', '曹阳', 'DBD', '华北大区', 'FFG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2502, 'ZYHQ', '黄燕', 'DBD', '华北大区', 'TNGJ', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2503, 'ZNYN', '殷振男', 'DBD', '华北大区', 'JYWA', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2504, 'HWEM', '苗浩伟', 'DBD', '华北大区', 'JYWA', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2505, 'WEQA', '安文琼', 'DBD', '华北大区', 'JYWA', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2506, 'MMYU', '于苗苗', 'DBD', '华北大区', 'JYWA', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2507, 'JJYN', '杨晶晶', 'DBD', '华北大区', 'JYWA', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2508, 'YJDU', '杜永杰', 'DBD', '华北大区', 'JYWA', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2509, 'SYNY', '李绍云', 'DBD', '华北大区', 'JYWA', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2510, 'QQNZ', '周倩', 'DBD', '华北大区', 'JYWA', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2511, 'YLNI', '尤丽都斯尼亚孜', 'DBD', '华北大区', 'JYWA', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2512, 'JYPG', '彭锦艳', 'DBD', '华北大区', 'LYLX', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2513, 'XYEL', '李新月', 'DBD', '华北大区', 'LYLX', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2514, 'NJYO', '姚金', 'DBD', '华北大区', 'LYLX', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2515, 'PYO', '雍佩佩', 'DBD', '华北大区', 'TNGJ', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2516, 'JIWZ', '王继兴', 'DBD', '华北大区', 'LYLX', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2517, 'HNCU', '褚洪艳', 'DBD', '华北大区', 'LYLX', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2518, 'SWJG', '姜思维', 'DBD', '华北大区', 'LYLX', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2519, 'PZLO', '娄朋展', 'DBD', '华北大区', 'LHSH', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2520, 'USKG', '孔帅', 'DBD', '华北大区', 'LHSH', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2521, 'YYGL', '李阳', 'DBD', '华北大区', 'LHSH', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2522, 'YPZO', '赵燕佩', 'DBD', '华北大区', 'LHSH', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2523, 'QCLQ', '李仓', 'DBD', '华北大区', 'LHSH', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2524, 'LOLM', '马龙龙', 'DBD', '华北大区', 'LHSH', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2525, 'HZYU', '于涣冰', 'DBD', '华北大区', 'LHSH', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2526, 'JWS', '史静伟', 'DBD', '华北大区', 'LHSH', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2527, 'BWNS', '孙博文', 'DBD', '华北大区', 'BYL', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2528, 'YOJZ', '赵永健', 'DBD', '华北大区', 'BYL', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2529, 'YJHN', '韩亚静', 'DBD', '华北大区', 'BYL', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2530, 'JAQL', '李建清', 'DBD', '华北大区', 'BYL', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2531, 'YZEM', '马玉真', 'DBD', '华北大区', 'BYL', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2532, 'JJCU', '崔娇娇', 'DBD', '华北大区', 'BYL', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2533, 'WCQS', '孙畅', 'DBD', '华北大区', 'BYL', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2534, 'QYZN', '张勇', 'DBD', '华北大区', 'MIYB', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2535, 'LCQ', '常琳', 'DBD', '华北大区', 'MIYB', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2536, 'YXIF', '范宇新', 'DBD', '华北大区', 'MIYB', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2537, 'SXG', '葛思思', 'DBD', '华北大区', 'MIYB', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2538, 'HIGR', '荣海玲', 'DBD', '华北大区', 'MIYB', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2539, 'NMZF', '范明', 'DBD', '华北大区', 'MIYB', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2540, 'XIZQ', '朱小翠', 'DBD', '华北大区', 'MIYB', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2541, 'AJIZ', '赵佳', 'DBD', '东北大区', 'LILW', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2542, 'PFGO', '郭培福', 'DBD', '东北大区', 'YONS', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2543, 'XDH', '侯旭东', 'DBD', '东北大区', 'YONS', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2544, 'JLYX', '李静', 'DBD', '东北大区', 'YONS', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2545, 'JNGY', '刘井艳', 'DBD', '东北大区', 'YONS', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2546, 'VJIC', '陈健', 'DBD', '东北大区', 'YONS', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2547, 'QJL', '林杰', 'DBD', '东北大区', 'YONS', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2548, 'CNUC', '陈春月', 'DBD', '东北大区', 'HGTZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2549, 'CGPN', '潘常鑫', 'DBD', '东北大区', 'CNNZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2550, 'XLXI', '邢相兰', 'DBD', '东北大区', 'BBLI', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2551, 'TGNL', '刘婷婷', 'DBD', '东北大区', 'BAOS', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2552, 'XNLA', '梁馨元', 'DBD', '东北大区', 'CNNZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2553, 'ZYNS', '孙雨英', 'DBD', '东北大区', 'CNNZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2554, 'YGMO', '毛洋', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2555, 'XGCG', '程晓龙', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2556, 'XAMN', '孟祥欣', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2557, 'ZWSN', '沈曌伟', 'DBD', '东北大区', 'XOWA', 'HCAI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2558, 'DNHN', '韩丹', 'DBD', '东北大区', 'GSON', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2559, 'JTGH', '韩佳佟', 'DBD', '东北大区', 'GSON', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2560, 'NNL', '李楠', 'DBD', '东北大区', 'GSON', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2561, 'XLQZ', '刘鑫', 'DBD', '东北大区', 'GSON', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2562, 'JCXW', '王竞晨', 'DBD', '东北大区', 'GSON', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2563, 'YAO', '欧阳科', 'DBD', '东北大区', 'GSON', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2564, 'XLIY', '李晓', 'DBD', '东北大区', 'GSON', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2565, 'XGUW', '吴祥瑞', 'DBD', '东北大区', 'GSON', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2566, 'JLIQ', '李晶', 'DBD', '东北大区', 'WJIZ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2567, 'CUGM', '马闯', 'DBD', '东北大区', 'WEEZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2568, 'OYAZ', '张尧', 'DBD', '东北大区', 'LOLQ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2569, 'HGSE', '沈宏雷', 'DBD', '东北大区', 'SNZG', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2570, 'QNSH', '时启翔', 'DBD', '东北大区', 'LOLQ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2571, 'TZQL', '李天霖', 'DBD', '东北大区', 'LOLQ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2572, 'DEJZ', '邹德娟', 'DBD', '东北大区', 'LOLQ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2573, 'CHHY', '韩超', 'DBD', '东北大区', 'SNZG', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2574, 'NNPA', '潘宁宁', 'DBD', '东北大区', 'SNZG', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2575, 'QJIN', '李晶阳', 'DBD', '东北大区', 'LOLQ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2576, 'XHDO', '董欣航', 'DBD', '东北大区', 'WEEZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2577, 'HNXE', '薛宏宇', 'DBD', '东北大区', 'WJIZ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2578, 'KGZA', '赵康', 'DBD', '东北大区', 'WJIZ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2579, 'TNGZ', '张婷', 'DBD', '东北大区', 'WJIZ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2580, 'WJEL', '刘文杰', 'DBD', '华北大区', 'RGKG', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2581, 'XIYF', '冯喜艳', 'DBD', '华北大区', 'RGKG', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2582, 'YCYA', '杨宇超', 'DBD', '华北大区', 'XIAB', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2583, 'NYFA', '范娜', 'DBD', '华北大区', 'LHSH', 'NNGW', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2584, 'DYQI', '仇丹丹', 'DBD', '华北大区', 'XWWN', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2585, 'YIQG', '谷迎秋', 'DBD', '华北大区', 'ZIUZ', 'JWLI', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2586, 'WRZ', '张乌云格日勒', 'DBD', '华北大区', 'JIUG', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2587, 'XHLQ', '刘合阳', 'DBD', '华北大区', 'HTZU', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2588, 'FRGY', '于芙荣', 'DBD', '华北大区', 'HTZU', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2589, 'JGTN', '谭景伟', 'DBD', '华北大区', 'XJG', 'JLIX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2590, 'WTZA', '赵文韬', 'DBD', '华北大区', 'FFG', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2591, 'SXQM', '马莎莎', 'DBD', '华北大区', 'HOXI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2592, 'QFWU', '吴玘璠', 'DBD', '华北大区', 'HOXI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2593, 'SFEG', '冯硕', 'DBD', '华北大区', 'HOXI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2594, 'HNPG', '庞惠颖', 'DBD', '华北大区', 'HOXI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2595, 'TTGO', '郭甜甜', 'DBD', '华北大区', 'HOXI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2596, 'ZIIL', '刘智慧', 'DBD', '华北大区', 'HOXI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2597, 'PYWA', '王朋', 'DBD', '华北大区', 'ML', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2598, 'HUZZ', '张欢', 'DBD', '华北大区', 'YZNI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2599, 'SIQW', '吴思琦', 'DBD', '华北大区', 'XIAB', 'CMIO', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2600, 'WAZA', '赵旺', 'DBD', '华北大区', 'ML', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2601, 'WWSH', '沈巍巍', 'DBD', '华北大区', 'ML', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2602, 'JDZQ', '董佳鹏', 'DBD', '华北大区', 'ML', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2603, 'XCZN', '张晓聪', 'DBD', '华北大区', 'ML', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2604, 'GZSU', '孙国柱', 'DBD', '华北大区', 'ML', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2605, 'WNYX', '夏文燕', 'DBD', '华北大区', 'ML', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2606, 'CAYX', '曹瑜', 'DBD', '华北大区', 'HOXI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2607, 'ITSI', '石婷', 'DBD', '华北大区', 'YZNI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2608, 'XWQZ', '王星', 'DBD', '华北大区', 'YZNI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2609, 'OYZH', '赵源', 'DBD', '华北大区', 'YZNI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2610, 'YQN', '乔雅楠', 'DBD', '华中大区', 'YUNF', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2611, 'DLTN', '汤东良', 'DBD', '华中大区', 'BIZA', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2612, 'ZXZE', '郑紫霞', 'DBD', '华中大区', 'YJSG', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2613, 'UYSL', '李延顺', 'DBD', '华中大区', 'YJSG', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2614, 'XNQL', '李宪启', 'DBD', '华中大区', 'YJSG', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2615, 'SNFG', '冯爽爽', 'DBD', '华中大区', 'YJSG', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2616, 'QXYG', '郭家铭', 'DBD', '华中大区', 'YWAY', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2617, 'VHLU', '卢洪运', 'DBD', '华中大区', 'YZQZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2618, 'JUQ', '秦军', 'DBD', '华中大区', 'HZWA', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2619, 'LOZE', '郑隆兴', 'DBD', '华中大区', 'HZWA', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2620, 'LNIW', '王连磊', 'DBD', '华中大区', 'HZWA', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2621, 'NJIW', '王洁', 'DBD', '华中大区', 'HZWA', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2622, 'XNIX', '许新翌', 'DBD', '华中大区', 'YMTG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2623, 'YVL', '李亚男', 'DBD', '华中大区', 'YZQZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2624, 'JFIW', '王久飞', 'DBD', '华中大区', 'YZQZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2625, 'PEGX', '许朋飞', 'DBD', '华中大区', 'SOLX', 'XOLY', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2626, 'WOKU', '寇卫国', 'DBD', '华中大区', 'AIXZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2627, 'QACN', '陈强', 'DBD', '华中大区', 'AIXZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2628, 'HEZX', '张贺', 'DBD', '华中大区', 'AIXZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2629, 'LWLN', '林立伟', 'DBD', '华中大区', 'YWAY', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2630, 'EQML', '李敏艳', 'DBD', '华中大区', 'AIXZ', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2631, 'YLWG', '王艳玲', 'DBD', '华中大区', 'YMTG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2632, 'BXW', '王蓓', 'DBD', '华中大区', 'XIW', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2633, 'XZDA', '戴小娜', 'DBD', '华中大区', 'XIW', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2634, 'VMOL', '李苗苗', 'DBD', '华中大区', 'YMWG', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2635, 'HISI', '史海根', 'DBD', '华中大区', 'YMWG', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2636, 'HFZU', '周海丰', 'DBD', '华中大区', 'YMWG', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2637, 'YYNC', '曹艳艳', 'DBD', '华中大区', 'XAZL', 'JHEX', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2638, 'WGDN', '段伟光', 'DBD', '华中大区', 'XIW', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2639, 'PZSU', '孙佩哲', 'DBD', '华中大区', 'XIW', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2640, 'LHCG', '常伦华', 'DBD', '华中大区', 'QGXU', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2641, 'XJZX', '张金陵', 'DBD', '华中大区', 'XUHO', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2642, 'QNTN', '田青怀', 'DBD', '华中大区', 'XUHO', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2643, 'WSNG', '尚维', 'DBD', '华中大区', 'XUHO', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2644, 'LPNO', '欧丽萍', 'DBD', '华中大区', 'XUHO', 'XIUJ', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2645, 'HTLI', '李浩特', 'DBD', '华中大区', 'YLZG', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2646, 'YHPN', '潘艳慧', 'DBD', '华中大区', 'YWAY', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2647, 'VSZL', '李莎', 'DBD', '华中大区', 'BIZA', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2648, 'QHUL', '刘欢', 'DBD', '华中大区', 'BIZA', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2649, 'XEGA', '高雪', 'DBD', '华中大区', 'BIZA', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2650, 'YSGW', '王月昇', 'DBD', '华中大区', 'JZAO', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2651, 'ZIGA', '高中强', 'DBD', '华中大区', 'JZAO', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2652, 'GNCO', '曹观松', 'DBD', '华中大区', 'JZAO', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2653, 'XNIJ', '冀鑫鑫', 'DBD', '华中大区', 'BIZA', 'WPEN', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2654, 'ZHIS', '沈士久', 'DBD', '华中大区', 'JZAO', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2655, 'YENL', '李悦阳', 'DBD', '华中大区', 'JZAO', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2656, 'ZAGA', '高章恒', 'DBD', '华中大区', 'QGXU', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2657, 'YIQD', '窦乙钦', 'DBD', '华中大区', 'QGXU', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2658, 'QGNZ', '赵庆港', 'DBD', '华中大区', 'YMTG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2659, 'TANW', '王甜甜', 'DBD', '华中大区', 'YMTG', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2660, 'QJEW', '吴捷', 'DBD', '华中大区', 'LESY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2661, 'CJZG', '张春进', 'DBD', '华中大区', 'LESY', 'FNXI', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2662, 'ZAZG', '仲召猛', 'DBD', '华中大区', 'YLZG', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2663, 'BWXO', '肖博文', 'DBD', '中南大区', 'JRNZ', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2664, 'YRNL', '李月榕', 'DBD', '中南大区', 'JRNZ', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2665, 'NXIZ', '邹晓敏', 'DBD', '中南大区', 'DGLV', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2666, 'YAXA', '向燕', 'DBD', '中南大区', 'DGLV', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2667, 'EQZC', '常二妮', 'DBD', '中南大区', 'GOQI', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2668, 'QPEL', '刘佩', 'DBD', '中南大区', 'DGLV', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2669, 'ZXUE', '薛震', 'DBD', '中南大区', 'DGLV', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2670, 'LZNY', '张蕾', 'DBD', '中南大区', 'DGLV', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2671, 'TQMA', '马涛', 'DBD', '中南大区', 'DGLV', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2672, 'TAYG', '杨涛', 'DBD', '中南大区', 'DGLV', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2673, 'XNCE', '陈欣', 'DBD', '中南大区', 'DGLV', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2674, 'XMZO', '周晓明', 'DBD', '中南大区', 'JRNZ', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2675, 'WECI', '蔡微娜', 'DBD', '中南大区', 'JRNZ', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2676, 'ZZHL', '刘海玉', 'DBD', '中南大区', 'JRNZ', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2677, 'LYS', '孙林', 'DBD', '中南大区', 'JRNZ', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2678, 'AJLI', '李晶晶', 'DBD', '中南大区', 'HOBS', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2679, 'HLQX', '李宏', 'DBD', '中南大区', 'HOBS', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2680, 'LXXY', '易力', 'DBD', '中南大区', 'HOBS', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2681, 'XEF', '封雪', 'DBD', '中南大区', 'HOBS', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2682, 'LNJI', '金兰', 'DBD', '中南大区', 'HOBS', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2683, 'RLIA', '廖荣平', 'DBD', '中南大区', 'HOBS', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2684, 'ZHJR', '冉志军', 'DBD', '中南大区', 'HOBS', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2685, 'CHZQ', '张承程', 'DBD', '中南大区', 'FEIX', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2686, 'XHWG', '王小红', 'DBD', '中南大区', 'FEIX', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2687, 'CJI', '纪陈', 'DBD', '中南大区', 'MWXG', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2688, 'JZEG', '曾娟', 'DBD', '中南大区', 'FEIX', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2689, 'ZCHM', '闵超', 'DBD', '中南大区', 'ZONH', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2690, 'YYJX', '蒋一凡', 'DBD', '中南大区', 'ZONH', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2691, 'JXYQ', '徐俊', 'DBD', '中南大区', 'ZONH', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2692, 'XLNZ', '周晓玲', 'DBD', '中南大区', 'ZONH', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2693, 'RHHG', '黄润华', 'DBD', '中南大区', 'ZONH', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2694, 'XZZW', '万杏', 'DBD', '中南大区', 'XOHZ', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2695, 'YATD', '段亚泰', 'DBD', '中南大区', 'XOHZ', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2696, 'XYNL', '李语嫣', 'DBD', '中南大区', 'XOHZ', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2697, 'XPLO', '罗秀萍', 'DBD', '中南大区', 'XOHZ', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2698, 'MEZQ', '赵梅娥', 'DBD', '中南大区', 'XOHZ', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2699, 'QW', '王啟宏', 'DBD', '中南大区', 'XOHZ', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2700, 'NSZG', '张珊', 'DBD', '中南大区', 'YGJS', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2701, 'HOMY', '杨浩敏', 'DBD', '中南大区', 'CUJL', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2702, 'JQHZ', '赵佳佳', 'DBD', '中南大区', 'CUJL', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2703, 'YYGW', '王阳', 'DBD', '中南大区', 'CUJL', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2704, 'WAYN', '杨万云', 'DBD', '中南大区', 'CUJL', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2705, 'PIWN', '王片梅', 'DBD', '中南大区', 'CUJL', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2706, 'VQIL', '李青', 'DBD', '中南大区', 'CUJL', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2707, 'QHZL', '刘慧', 'DBD', '中南大区', 'CUJL', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2708, 'JXZD', '董静娜', 'DBD', '华西大区', 'ZCA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2709, 'VQNL', '刘强', 'DBD', '华西大区', 'WHUG', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2710, 'FGWG', '王芳', 'DBD', '华西大区', 'LINZ', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2711, 'YZYE', '叶伊', 'DBD', '华西大区', 'LINZ', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2712, 'NJUW', '王珺', 'DBD', '华西大区', 'LINZ', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2713, 'OHWG', '汪浩', 'DBD', '华西大区', 'LINZ', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2714, 'LPWN', '完丽平', 'DBD', '华西大区', 'LINZ', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2715, 'JHYQ', '郝建强', 'DBD', '华西大区', 'LINZ', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2716, 'HTQ', '仝辉', 'DBD', '华西大区', 'YMA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2717, 'YPXU', '徐亚萍', 'DBD', '华西大区', 'YMA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2718, 'LBGO', '高立斌', 'DBD', '华西大区', 'YMA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2719, 'SZYQ', '张莎莎', 'DBD', '华西大区', 'YMA', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2720, 'CGCL', '刘冲冲', 'DBD', '华西大区', 'LINZ', 'LGAO', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2721, 'YGT', '田亚宁', 'DBD', '华西大区', 'HLZU', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2722, 'FQZH', '张富霞', 'DBD', '华西大区', 'HLZU', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2723, 'XNDN', '丁小娟', 'DBD', '华西大区', 'HLZU', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2724, 'GJGU', '顾军', 'DBD', '华西大区', 'HLZU', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2725, 'JLXG', '梁婕茹', 'DBD', '华西大区', 'QFH', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2726, 'UYNL', '路杨', 'DBD', '华西大区', 'QFH', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2727, 'QCZH', '钟启财', 'DBD', '华西大区', 'QFH', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2728, 'GJHU', '胡静', 'DBD', '华西大区', 'XSZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2729, 'PEYI', '裔鹏', 'DBD', '华西大区', 'XSZ', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2730, 'XZXQ', '张雪', 'DBD', '华西大区', 'LIHX', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2731, 'YGFE', '冯益兴', 'DBD', '华西大区', 'GACN', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2732, 'XGCE', '成向均', 'DBD', '华西大区', 'JYYI', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2733, 'YXIZ', '张小艳', 'DBD', '华西大区', 'ZUQH', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2734, 'GZML', '廖明月', 'DBD', '华西大区', 'ZUQH', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2735, 'YNUG', '辜云芸', 'DBD', '华西大区', 'ZUQH', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2736, 'PIYN', '杨鹏飞', 'DBD', '华西大区', 'ZUQH', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2737, 'ZFDG', '丁照飞', 'DBD', '华西大区', 'ZUQH', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2738, 'ZONY', '阎建勇', 'DBD', '华西大区', 'ZUQH', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2739, 'XHLG', '梁贤慧', 'DBD', '华西大区', 'ZUQH', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2740, 'KXRE', '任坤', 'DBD', '华西大区', 'YATL', 'YFEY', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2741, 'DZQU', '瞿大海', 'DBD', '华西大区', 'TZHG', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2742, 'JLGC', '陈久龙', 'DBD', '华西大区', 'CLUO', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2743, 'DLGC', '曹德龙', 'DBD', '华西大区', 'CLUO', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2744, 'XAYS', '苏轩艺', 'DBD', '华西大区', 'CLUO', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2745, 'ESZL', '李森', 'DBD', '华西大区', 'CLUO', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2746, 'XEMW', '王雪梅', 'DBD', '华西大区', 'CLUO', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2747, 'QYSQ', '史玉柱', 'DBD', '华西大区', 'TZHG', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2748, 'XHHU', '胡先豪', 'DBD', '华西大区', 'TZHG', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2749, 'QNHG', '黄庆飞', 'DBD', '华南大区', 'XZZY', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2750, 'SICZ', '陈思', 'DBD', '华南大区', 'XZZY', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2751, 'GVWA', '王冠', 'DBD', '华南大区', 'XZZY', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2752, 'NGLE', '乐宁', 'DBD', '华南大区', 'XZZY', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2753, 'QNBW', '吴钦兵', 'DBD', '华南大区', 'XCEN', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2754, 'QLZA', '张梁', 'DBD', '华南大区', 'XCEN', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2755, 'QZHE', '郑淇元', 'DBD', '华南大区', 'XCEN', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2756, 'JUXE', '谢娟', 'DBD', '华南大区', 'XCEN', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2757, 'QACH', '陈巧媚', 'DBD', '华南大区', 'JNQJ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2758, 'XFCE', '陈旭峰', 'DBD', '华南大区', 'JNQJ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2759, 'EYHL', '林一晃', 'DBD', '华南大区', 'JNQJ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2760, 'GUWE', '温贵安', 'DBD', '华南大区', 'JNQJ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2761, 'ZLAI', '赖朝辉', 'DBD', '华南大区', 'JNQJ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2762, 'HRZA', '张昊冉', 'DBD', '华南大区', 'QQLI', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2763, 'QGNL', '李青艳', 'DBD', '华南大区', 'QQLI', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2764, 'XOXU', '许晓卉', 'DBD', '华南大区', 'QQLI', 'YGLI', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2765, 'XQN', '秦小红', 'DBD', '华南大区', 'JUNW', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2766, 'YNAX', '谢燕艳', 'DBD', '华南大区', 'JUNW', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2767, 'YDWY', '王都', 'DBD', '华南大区', 'JUNW', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2768, 'HGIW', '吴宏伟', 'DBD', '华南大区', 'JGLX', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2769, 'YBSY', '索邦稳', 'DBD', '华南大区', 'JGLX', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2770, 'XIJY', '杨杏基', 'DBD', '华南大区', 'JGLX', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2771, 'CUNG', '高春伟', 'DBD', '华南大区', 'ZHOC', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2772, 'DTSG', '宋旦彤', 'DBD', '华南大区', 'ZHOC', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2773, 'GZLI', '黎光志', 'DBD', '华南大区', 'CGYW', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2774, 'ZLZO', '邹丽', 'DBD', '华南大区', 'CGYW', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2775, 'FUGL', '刘福庚', 'DBD', '华南大区', 'CGYW', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2776, 'DGDL', '刘丁丁', 'DBD', '华南大区', 'CGYW', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2777, 'KNOX', '许坤灶', 'DBD', '华南大区', 'YLU', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2778, 'JITG', '唐佳', 'DBD', '华南大区', 'YIWI', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2779, 'YUXU', '许玉婷', 'DBD', '华南大区', 'YIWI', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2780, 'BYMG', '蒙彬毅', 'DBD', '华南大区', 'YIWI', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2781, 'RHLI', '林荣盛', 'DBD', '华南大区', 'YIWI', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2782, 'GCHN', '陈光众', 'DBD', '华南大区', 'XHZO', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2783, 'CHYF', '符春莹', 'DBD', '华南大区', 'XHZO', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2784, 'ZELN', '林芷微', 'DBD', '华南大区', 'XHZO', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2785, 'QJZU', '朱家杰', 'DBD', '华南大区', 'XHZO', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2786, 'JEZI', '翟景梅', 'DBD', '华南大区', 'XHZO', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2787, 'LZZE', '曾丽萍', 'DBD', '华南大区', 'XHZO', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2788, 'RXNZ', '朱新云', 'DBD', '华南大区', 'YIZQ', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2789, 'MXZQ', '许美南', 'DBD', '华南大区', 'YIZQ', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2790, 'HZPN', '潘焕珍', 'DBD', '华南大区', 'YIZQ', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2791, 'XGF', '冯晓鹏', 'DBD', '华南大区', 'YIZQ', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2792, 'PQGU', '关培恩', 'DBD', '华南大区', 'YIZQ', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2793, 'YAUW', '万园园', 'DBD', '华南大区', 'ZHOC', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2794, 'LYYI', '易蕾', 'DBD', '华南大区', 'YIZQ', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2795, 'JHZG', '张建生', 'DBD', '华南大区', 'YIXS', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2796, 'JJGZ', '张晶', 'DBD', '华南大区', 'CGYW', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2797, 'QHAC', '陈启海', 'DBD', '华南大区', 'YIXS', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2798, 'RGCA', '蔡荣城', 'DBD', '华南大区', 'YIXS', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2799, 'ZYFZ', '张炎锋', 'DBD', '华南大区', 'YIXS', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2800, 'JDGW', '王纪东', 'DBD', '华南大区', 'YIXS', 'JIZN', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2801, 'YENC', '曹羽辰', 'DBD', '华东大区', 'SUCE', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2802, 'MMWN', '王嫚嫚', 'DBD', '华东大区', 'YYSH', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2803, 'NKNX', '徐坤', 'DBD', '华东大区', 'YYSH', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2804, 'HATL', '刘海涛', 'DBD', '华东大区', 'YYSH', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2805, 'QIYY', '杨琦', 'DBD', '华东大区', 'YYSH', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2806, 'HGLL', '李宏磊', 'DBD', '华东大区', 'YYSH', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2807, 'ZTZH', '张志涛', 'DBD', '华东大区', 'PNGZ', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2808, 'PYXT', '田鹏', 'DBD', '华东大区', 'PNGZ', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2809, 'NYLA', '廖媛', 'DBD', '华东大区', 'XMZN', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2810, 'QSEL', '刘森', 'DBD', '华东大区', 'XMZN', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2811, 'LZZC', '程丽', 'DBD', '华东大区', 'XMZN', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2812, 'YUAL', '陆元好', 'DBD', '华东大区', 'ZHM', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2813, 'YOIZ', '朱耀健', 'DBD', '华东大区', 'JNXW', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2814, 'YEHG', '黄燕儿', 'DBD', '华东大区', 'LZYA', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2815, 'XNTA', '唐欣', 'DBD', '华东大区', 'JUHM', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2816, 'ZJNJ', '金晶', 'DBD', '华东大区', 'QNJG', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2817, 'LCQY', '陈丽娟', 'DBD', '华东大区', 'YILZ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2818, 'ZENW', '王征', 'DBD', '华东大区', 'JXXW', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2819, 'BIWY', '汪彪', 'DBD', '华东大区', 'IYLQ', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2820, 'SJWN', '王胜健', 'DBD', '华东大区', 'DGWE', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2821, 'WNLX', '徐问岚', 'DBD', '华东大区', 'YILZ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2822, 'LQQC', '陈璐', 'DBD', '华东大区', 'ZGGJ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2823, 'YWZA', '张漪汶', 'DBD', '华东大区', 'XHA', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2824, 'SJGE', '葛上嘉', 'DBD', '华东大区', 'HOSU', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2825, 'SYWU', '吴苏苏', 'DBD', '华东大区', 'HOSU', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2826, 'UYJL', '刘雅晶', 'DBD', '华东大区', 'HOSU', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2827, 'YMQN', '秦明娅', 'DBD', '华东大区', 'ZGGJ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2828, 'WXYL', '李巍', 'DBD', '华东大区', 'IYLQ', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2829, 'YPYN', '杨雅平', 'DBD', '华东大区', 'JXXW', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2830, 'XAGL', '李祥霞', 'DBD', '华东大区', 'JXXW', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2831, 'AYGL', '陆瑛', 'DBD', '华东大区', 'IYLQ', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2832, 'LFZ', '朱丽峰', 'DBD', '华东大区', 'CLXY', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2833, 'XDIN', '丁小春', 'DBD', '华东大区', 'CJX', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2834, 'BZYQ', '张彬', 'DBD', '华东大区', 'JIOS', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2835, 'YSQQ', '孙艳', 'DBD', '华东大区', 'QNJG', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2836, 'PNZU', '周萍', 'DBD', '华东大区', 'JIOS', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2837, 'VQAL', '李强', 'DBD', '华东大区', 'JIOS', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2838, 'ZJOX', '徐建中', 'DBD', '华东大区', 'JIOS', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2839, 'ZNSO', '宋振兴', 'DBD', '华东大区', 'XMZN', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2840, 'VJSU', '孙镜棋', 'DBD', '华东大区', 'LEYA', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2841, 'YIYH', '黄逸益', 'DBD', '华东大区', 'CJX', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2842, 'CYQM', '马春燕', 'DBD', '东南大区', 'JIUX', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2843, 'JIGH', '何晶', 'DBD', '东南大区', 'JIUX', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2844, 'QNXU', '徐励', 'DBD', '东南大区', 'YJIC', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2845, 'JFYU', '袁捷烽', 'DBD', '东南大区', 'YJIC', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2846, 'MNLY', '刘敏', 'DBD', '东南大区', 'YJIC', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2847, 'JIOZ', '朱金国', 'DBD', '东南大区', 'YCE', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2848, 'LXUA', '宣磊', 'DBD', '东南大区', 'CNGC', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2849, 'XUCO', '曹雪婷', 'DBD', '东南大区', 'DESH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2850, 'CQWA', '王超', 'DBD', '东南大区', 'DESH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2851, 'HUES', '孙焕根', 'DBD', '东南大区', 'DESH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2852, 'QIWQ', '王勤', 'DBD', '东南大区', 'DESH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2853, 'CGNR', '芮成荣', 'DBD', '东南大区', 'DESH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2854, 'PZXL', '刘鹏', 'DBD', '东南大区', 'DESH', 'YEZC', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2855, 'NIHZ', '何念念', 'DBD', '东南大区', 'MEZG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2856, 'XUGU', '郭雪燕', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2857, 'CJYA', '杨春娟', 'DBD', '东南大区', 'YGXI', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2858, 'LNIY', '袁梁斌', 'DBD', '东南大区', 'LILG', 'HGJD', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2859, 'WPSU', '孙伟鹏', 'DBD', '东南大区', 'NLIN', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2860, 'SGNC', '常双龙', 'DBD', '东南大区', 'NLIN', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2861, 'ZSWL', '刘少伟', 'DBD', '东南大区', 'NLIN', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2862, 'YGNI', '刘杨', 'DBD', '东南大区', 'NLIN', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2863, 'YKQA', '乔彦轲', 'DBD', '东南大区', 'NLIN', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2864, 'HWQZ', '王怀兰', 'DBD', '东南大区', 'EXYJ', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2865, 'LLTG', '仝留良', 'DBD', '东南大区', 'YNCG', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2866, 'YEIS', '孙跃民', 'DBD', '东南大区', 'YNCG', 'PFAN', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2867, 'GNIG', '宁刚刚', 'DBD', '东南大区', 'WYAN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2868, 'KNTG', '唐康乐', 'DBD', '东南大区', 'WYAN', 'GULY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2869, 'VYIL', '卢毅', 'DBD', '东南大区', 'LIZX', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2870, 'YUQW', '王雨晴', 'DBD', '东南大区', 'LIZX', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2871, 'ZWFE', '冯志伟', 'DBD', '东南大区', 'LIZX', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2872, 'BLY', '刘波', 'DBD', '东南大区', 'LIZX', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2873, 'BNRE', '任炳房', 'DBD', '东南大区', 'LIZX', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2874, 'XISH', '寿笑琴', 'DBD', '东南大区', 'ZSHA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2875, 'YYXQ', '徐雁', 'DBD', '东南大区', 'XZHE', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2876, 'HYIG', '高鸿奕', 'DBD', '东南大区', 'XZHE', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2877, 'XQYN', '杨晓琴', 'DBD', '东南大区', 'XOWU', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2878, 'ZSGD', '杜尚红', 'DBD', '东南大区', 'XOWU', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2879, 'CGMH', '黄昌明', 'DBD', '东南大区', 'XOWU', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2880, 'LKNH', '韩乐康', 'DBD', '东南大区', 'XOWU', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2881, 'QFL', '刘俏凡', 'DBD', '东南大区', 'XOWU', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2882, 'GQWU', '吴高阳', 'DBD', '东南大区', 'XOWU', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2883, 'SYZU', '朱双影', 'DBD', '东南大区', 'XOWU', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2884, 'ZSCN', '陈铄', 'DBD', '东南大区', 'XOWU', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2885, 'QISI', '师琪', 'DBD', '东南大区', 'YNZA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2886, 'CQW', '王诚', 'DBD', '东南大区', 'YNZA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2887, 'LEWU', '吴磊', 'DBD', '东南大区', 'YNZA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2888, 'HWXY', '王海波', 'DBD', '华中大区', 'JZAO', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2889, 'SZQQ', '张姗姗', 'DBD', '华中大区', 'JZAO', 'GDF', 'WYU', 'mr');
INSERT INTO `mdm_sales` VALUES (2890, 'VCMH', '何春梅', 'DBD', '中南大区', 'XOHZ', 'CGLU', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2891, 'QNG', '郭庆标', 'DBD', '中南大区', 'YPLU', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2892, 'QYLO', '罗阳', 'DBD', '中南大区', 'HOBS', 'ZQUA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2893, 'AANW', '王安兰', 'DBD', '中南大区', 'MUC', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2894, 'ZBIZ', '张斌', 'DBD', '中南大区', 'QGH', 'BIFA', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2895, 'WEFN', '方炜', 'DBD', '东南大区', 'YNZA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2896, 'YUJC', '陈玉洁', 'DBD', '东南大区', 'YNZA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2897, 'XALH', '华晓丽', 'DBD', '东南大区', 'YNZA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2898, 'FLIU', '刘凤', 'DBD', '东南大区', 'YNZA', 'LPNY', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2899, 'WLYQ', '刘薇', 'DBD', '华东大区', 'LXO', 'YUTG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2900, 'PQW', '王鹏', 'DBD', '华东大区', 'LIIY', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2901, 'YYNA', '南亚', 'DBD', '华东大区', 'JCEG', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2902, 'JJYI', '尹晶晶', 'DBD', '华东大区', 'JCEG', 'XEZG', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2903, 'EJMQ', '马洁明', 'DBD', '华东大区', 'CJX', 'MISU', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2904, 'XONX', '谢雄', 'DBD', '中南大区', 'MLYI', 'ZHIL', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2905, 'ZSEY', '杨森', 'DBD', '华北大区', 'YZNI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2906, 'QYUE', '岳强', 'DBD', '华北大区', 'YZNI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2907, 'GSZH', '张国松', 'DBD', '华北大区', 'YZNI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2908, 'GNXI', '辛国栋', 'DBD', '华北大区', 'YZNI', 'YGZN', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2909, 'SWJN', '姜守伟', 'DBD', '华北大区', 'HTZU', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2910, 'ZIGW', '王志国', 'DBD', '华北大区', 'HTZU', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2911, 'KGLI', '刘康', 'DBD', '华北大区', 'HTZU', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2912, 'HAOM', '穆昊', 'DBD', '华北大区', 'HTZU', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2913, 'YNM', '马燕', 'DBD', '华北大区', 'HTZU', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2914, 'GSZW', '王世伟', 'DBD', '华北大区', 'HTZU', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2915, 'HLZL', '刘磊', 'DBD', '华北大区', 'HTZU', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2916, 'WQZZ', '张伟', 'DBD', '华北大区', 'HTZU', 'HWAX', 'XIZH', 'mr');
INSERT INTO `mdm_sales` VALUES (2917, 'WOZ', '赵文涛', 'DBD', '东北大区', 'WEEZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2918, 'WIYG', '杨威', 'DBD', '东北大区', 'WEEZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2919, 'XINQ', '戚鑫', 'DBD', '东北大区', 'YONS', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2920, 'ZZSY', '史解颐', 'DBD', '东北大区', 'YONS', 'HOXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2921, 'YZOG', '宗悦', 'DBD', '东北大区', 'SYGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2922, 'YUT', '谭宇', 'DBD', '东北大区', 'SYGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2923, 'RYUL', '刘悦', 'DBD', '东北大区', 'SYGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2924, 'XYXW', '吴亚楠', 'DBD', '东北大区', 'SYGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2925, 'XEX', '信雪维', 'DBD', '东北大区', 'SYGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2926, 'HGX', '高贺', 'DBD', '东北大区', 'PUGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2927, 'DOWL', '李东武', 'DBD', '东北大区', 'PUGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2928, 'VMXS', '孙明霞', 'DBD', '东北大区', 'PUGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2929, 'JUGW', '温九峰', 'DBD', '东北大区', 'PUGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2930, 'XYWZ', '王雨欣', 'DBD', '东北大区', 'PUGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2931, 'XUWY', '王璇', 'DBD', '东北大区', 'PUGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2932, 'CUBL', '李传博', 'DBD', '东北大区', 'PUGA', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2933, 'DDLV', '吕冬冬', 'DBD', '东北大区', 'ZENZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2934, 'HGXE', '薛红硕', 'DBD', '东北大区', 'ZENZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2935, 'NQMA', '马宁', 'DBD', '东北大区', 'ZENZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2936, 'ZIYW', '王子莹', 'DBD', '东北大区', 'ZENZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2937, 'VHLI', '刘海楠', 'DBD', '东北大区', 'ZENZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2938, 'YHXZ', '章雁', 'DBD', '东北大区', 'ZENZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2939, 'SLZY', '刘思辰', 'DBD', '东北大区', 'ZENZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2940, 'ZCI', '迟默', 'DBD', '东北大区', 'ZENZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2941, 'GCAI', '蔡国庆', 'DBD', '东北大区', 'UYGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2942, 'ZC', '曹仲', 'DBD', '东北大区', 'UYGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2943, 'FANC', '陈芳', 'DBD', '东北大区', 'UYGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2944, 'MZLQ', '李美瑶', 'DBD', '东北大区', 'WHGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2945, 'AIQI', '齐爱玲', 'DBD', '东北大区', 'UYGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2946, 'ELIU', '刘磊', 'DBD', '东北大区', 'UYGL', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2947, 'ZMWT', '谭明伟', 'DBD', '东北大区', 'WEEZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2948, 'ZIHQ', '何梓萱', 'DBD', '东北大区', 'DYWU', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2949, 'YUTL', '李岳婷', 'DBD', '东北大区', 'DYWU', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2950, 'QJWG', '王健鑫', 'DBD', '东北大区', 'DYWU', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2951, 'XCE', '陈秀娟', 'DBD', '东北大区', 'DYWU', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2952, 'LUW', '王璐', 'DBD', '东北大区', 'DYWU', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2953, 'HUFQ', '冯化伟', 'DBD', '东北大区', 'DYWU', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2954, 'DAYG', '杨丹', 'DBD', '东北大区', 'DYWU', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2955, 'XDZO', '周晓丹', 'DBD', '华西大区', 'TZHG', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2956, 'MXGC', '陈明翔', 'DBD', '华西大区', 'CLUO', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2957, 'WWZO', '邹文武', 'DBD', '华西大区', 'CLUO', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2958, 'XLGY', '杨小龙', 'DBD', '华西大区', 'TZHG', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2959, 'HZZY', '朱海军', 'DBD', '华西大区', 'TZHG', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2960, 'CEQI', '邱成莉', 'DBD', '华西大区', 'TZHG', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2961, 'NGZA', '赵宁', 'DBD', '华西大区', 'CLUO', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2962, 'QNPE', '彭权', 'DBD', '华西大区', 'TZHG', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2963, 'NJNS', '申军益', 'DBD', '华西大区', 'ZYWA', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2964, 'YPZQ', '蒲云华', 'DBD', '华西大区', 'ZYWA', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2965, 'LHLZ', '刘厚勇', 'DBD', '华西大区', 'ZYWA', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2966, 'ZJIC', '陈警', 'DBD', '华西大区', 'ZYWA', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2967, 'YZFA', '方禹', 'DBD', '华西大区', 'ZYWA', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2968, 'YECZ', '陈叶', 'DBD', '华西大区', 'ZYWA', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2969, 'HUTH', '胡慧婷', 'DBD', '华西大区', 'ZYWA', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2970, 'QGXI', '谢钦凤', 'DBD', '华西大区', 'ZYWA', 'YAOT', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2971, 'TJML', '李佳美', 'DBD', '中南大区', 'DLJI', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2972, 'VJLN', '林家莉', 'DBD', '中南大区', 'MUTY', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2973, 'YMYZ', '虞梦静', 'DBD', '东南大区', 'JIUX', 'GUAZ', 'JGUA', 'mr');
INSERT INTO `mdm_sales` VALUES (2974, 'YNLU', '刘艳', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (2975, 'BZQQ', '赵冰冰', 'DBD', '东北大区', 'LILW', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2976, 'HUXY', '徐欢', 'DBD', '东北大区', 'BAOS', 'HZOU', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2977, 'UZYA', '严粤', 'DBD', '华西大区', 'GACN', 'PNCN', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2978, 'YEIH', '黄叶海', 'DBD', '华南大区', 'CXSU', 'XSWA', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (2979, 'NJAX', '薛剑', 'DBD', '华东大区', 'JXXW', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2980, 'IJIH', '何佳丽', 'DBD', '华东大区', 'GSHL', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2981, 'WAZG', '张王有', 'DBD', '华东大区', 'YILZ', 'RUZL', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2982, 'XGC', '陈小冬', 'DBD', '华东大区', 'JNXW', 'YSW', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2983, 'YNPE', '彭勇', 'DBD', '东北大区', 'WJIZ', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2984, 'ZWIZ', '张伟', 'DBD', '东北大区', 'ZENZ', 'HGLI', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2985, 'PNFL', '陆鹏飞', 'DBD', '中南大区', 'BBWA', 'QHZN', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2986, 'YLZL', '李跃玲', 'DBD', '中南大区', 'SHME', 'XIGZ', 'XQF', 'mr');
INSERT INTO `mdm_sales` VALUES (2987, 'YAPD', '董亚萍', 'DBD', '华西大区', 'LIHX', 'XUEL', 'QIX', 'mr');
INSERT INTO `mdm_sales` VALUES (2988, 'GYNZ', '张颖', 'DBD', '东北大区', 'SNZG', 'LYXZ', 'CAZ', 'mr');
INSERT INTO `mdm_sales` VALUES (2989, 'PNXI', '夏朋', 'DBD', '华东大区', 'JICZ', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2990, 'FEIG', '郭飞', 'DBD', '华东大区', 'JICZ', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2991, 'YFJI', '贾燕峰', 'DBD', '华东大区', 'JICZ', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2992, 'DGNX', '徐栋梁', 'DBD', '华东大区', 'JICZ', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2993, 'SIZA', '张士玉', 'DBD', '华东大区', 'JICZ', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2994, 'JQQI', '秦进', 'DBD', '华东大区', 'JICZ', 'YLYI', 'SHTU', 'mr');
INSERT INTO `mdm_sales` VALUES (2995, 'CZWN', '王长志', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (2996, 'OHYA', '闫昊', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (2997, 'IWZA', '赵微', 'EBD', '东北大区', 'XDWG', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (2998, 'KKQZ', '康凯', 'EBD', '东北大区', 'YRCH', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (2999, 'JGNX', '谢经灿', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3000, 'TIQC', '陈天奇', 'EBD', '东北大区', 'HSSD', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3001, 'UYWA', '王玉妍', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3002, 'DEYW', '王德宇', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3003, 'ZAGU', '顾兆辉', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3004, 'FGDA', '戴芳', 'EBD', '东南大区', 'YSE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3005, 'JNBZ', '张骏豪', 'EBD', '东南大区', 'SHIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3006, 'XQWU', '吴霞', 'EBD', '东南大区', 'GIIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3007, 'DNXA', '项丹东', 'EBD', '东南大区', 'XOWE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3008, 'QJGN', '龚杰', 'EBD', '东南大区', 'JZHS', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3009, 'HJNZ', '朱俊桦', 'EBD', '东南大区', 'WICE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3010, 'WGLU', '刘旺斌', 'EBD', '东南大区', 'DHX', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3011, 'UHZO', '周辉', 'EBD', '东南大区', 'JZHS', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3012, 'XKMN', '孟现魁', 'EBD', '东南大区', 'SCAI', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3013, 'JQAJ', '金锦权', 'EBD', '东南大区', 'WICE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3014, 'DOWA', '王东', 'EBD', '东南大区', 'FBZH', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3015, 'JNQW', '吴健全', 'EBD', '东南大区', 'FBZH', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3016, 'GZCN', '陈光珠', 'EBD', '中南大区', 'JWTG', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3017, 'JGZC', '常静', 'EBD', '中南大区', 'NJXL', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3018, 'HZGZ', '赵志航', 'EBD', '中南大区', 'FENX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3019, 'IJLI', '李江', 'EBD', '中南大区', 'QICA', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3020, 'DDNH', '何丹丹', 'EBD', '中南大区', 'WILU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3021, 'PZLU', '卢鹏', 'EBD', '中南大区', 'FGWU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3022, 'COYE', '叶朝栋', 'EBD', '中南大区', 'MIXQ', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3023, 'WNEZ', '邹文文', 'EBD', '中南大区', 'MIXQ', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3024, 'YBZA', '张越兵', 'EBD', '中南大区', 'MIXQ', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3025, 'QNGN', '甘琴琴', 'EBD', '华东大区', 'XGGT', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3026, 'SGYG', '杨生强', 'EBD', '华东大区', 'JZXY', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3027, 'XADA', '安小蝶', 'EBD', '华东大区', 'JZXY', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3028, 'YQMI', '苗忆明', 'EBD', '华东大区', '', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3029, 'IXZO', '赵霞', 'EBD', '华东大区', 'JYNX', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3030, 'VMDG', '董梦娜', 'EBD', '华东大区', 'JAFU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3031, 'UYAZ', '赵燕', 'EBD', '华东大区', 'XGGT', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3032, 'DZXL', '李丹丹', 'EBD', '华东大区', 'JAFU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3033, 'HUDL', '柳慧栋', 'EBD', '华东大区', 'YNZO', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3034, 'FAYA', '杨帆', 'EBD', '华东大区', 'YNZO', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3035, 'XWT', '汤先伟', 'EBD', '华东大区', 'YNZO', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3036, 'IHMO', '毛海', 'EBD', '华东大区', 'MZJI', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3037, 'SQJG', '姜思泉', 'EBD', '华东大区', 'MZJI', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3038, 'XNBS', '孙新博', 'EBD', '华中大区', 'CEZ', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3039, 'HZQW', '王欢', 'EBD', '华中大区', 'ILWG', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3040, 'USGL', '李善国', 'EBD', '华中大区', 'LXXX', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3041, 'HAAW', '王汉男', 'EBD', '华中大区', 'LXXX', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3042, 'JGHG', '黄金程', 'EBD', '华中大区', 'JIWY', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3043, 'XIWB', '谢文彬', 'EBD', '华中大区', 'JIIS', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3044, 'UCHL', '李春', 'EBD', '华北大区', 'UYGZ', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3045, 'LFZN', '张莉菲', 'EBD', '华北大区', 'BNGS', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3046, 'KUOS', '沈阔', 'EBD', '华北大区', 'HXYA', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3047, 'DQYZ', '张丹策', 'EBD', '华北大区', 'HXYA', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3048, 'JMXL', '李金梅', 'EBD', '华北大区', 'LIJG', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3049, 'WYAG', '杨维', 'EBD', '华北大区', 'LILX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3050, 'DXHU', '胡丹', 'EBD', '华北大区', 'TGTL', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3051, 'EZHL', '李红斌', 'EBD', '华北大区', 'XOQ', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3052, 'WFGJ', '贾文芳', 'EBD', '华北大区', 'DGGX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3053, 'IALU', '路安琪', 'EBD', '华北大区', 'ZUSO', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3054, 'SQCN', '陈思琦', 'EBD', '华北大区', 'ZUSO', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3055, 'RUGY', '高瑞', 'EBD', '华南大区', 'YZHL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3056, 'WQYA', '杨文强', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3057, 'CPZL', '李程鹏', 'EBD', '华南大区', 'XOSN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3058, 'YBJI', '纪永标', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3059, 'HHIW', '王海怀', 'EBD', '华南大区', 'TFWN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3060, 'DJNG', '高登炯', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3061, 'ZNCY', '喻正春', 'EBD', '华西大区', 'USMG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3062, 'HMYG', '杨红梅', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3063, 'YMZO', '邹英明', 'EBD', '华西大区', 'USMG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3064, 'KUWQ', '吴坤', 'EBD', '华西大区', 'SJIG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3065, 'ZTWA', '王治涛', 'EBD', '华西大区', 'HAPH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3066, 'WJSU', '孙万菊', 'EBD', '华西大区', 'HOYI', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3067, 'LLIN', '李林静', 'EBD', '华西大区', 'YXZM', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3068, 'XWLZ', '李昕蔓', 'EBD', '华西大区', 'YXZM', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3069, 'JLGQ', '邱杰龙', 'EBD', '华西大区', 'QYAG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3070, 'HAUW', '王海欧', 'EBD', '华西大区', 'QYAG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3071, 'BISY', '叶碧山', 'DBD', '华南大区', 'LNZ', 'ZHLU', 'CYEW', 'mr');
INSERT INTO `mdm_sales` VALUES (3072, 'WYGU', '谷文悦', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3073, 'NYZN', '张宇', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3074, 'NYNW', '马援', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3075, 'AXZO', '赵旭', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3076, 'NJGO', '高晶', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3077, 'NXWG', '王迅', 'EBD', '东北大区', 'YRCH', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3078, 'WHZN', '郑雯瀚', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3079, 'ZUWA', '王竹', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3080, 'DWTO', '佟大威', 'EBD', '东北大区', 'HSSD', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3081, 'GYHE', '何杨', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3082, 'QZYU', '于茜', 'EBD', '东北大区', 'XDWG', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3083, 'WGQA', '乔文鹏', 'EBD', '东北大区', 'XDWG', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3084, 'FEHU', '黄峰', 'EBD', '东南大区', 'SHIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3085, 'WGYN', '袁文祥', 'EBD', '东南大区', 'SHIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3086, 'GYIL', '刘影', 'EBD', '东南大区', 'DHX', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3087, 'RUWQ', '王儒', 'EBD', '东南大区', 'GUHG', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3088, 'OBYN', '严搏', 'EBD', '东南大区', 'JZHS', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3089, 'HBGZ', '张海兵', 'EBD', '东南大区', 'JZHS', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3090, 'YNAC', '陈伊娜', 'EBD', '东南大区', 'XOWE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3091, 'RNGC', '曹蓉', 'EBD', '东南大区', 'YSE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3092, 'XJIX', '许贤劼', 'EBD', '东南大区', 'YSE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3093, 'AYUZ', '张园', 'EBD', '东南大区', 'YSE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3094, 'OYHE', '何瑶', 'EBD', '东南大区', 'WICE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3095, 'AYWU', '吴瑶', 'EBD', '东南大区', 'WICE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3096, 'HJLO', '罗慧娟', 'EBD', '东南大区', 'FBZH', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3097, 'UNWN', '王娜', 'EBD', '东南大区', 'XJYE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3098, 'XOES', '苏晓媚', 'EBD', '华北大区', 'JUFN', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3099, 'NXJN', '金鑫', 'EBD', '华北大区', 'BNGS', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3100, 'FQZY', '杨帆', 'EBD', '华北大区', 'BNGS', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3101, 'HGLH', '何虹良', 'EBD', '华北大区', 'HXYA', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3102, 'DQSD', '董嗣鹤', 'EBD', '华北大区', 'HXYA', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3103, 'LEXZ', '徐蕾', 'EBD', '华北大区', 'LGSU', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3104, 'RYHU', '胡若南', 'EBD', '华北大区', 'LGSU', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3105, 'ZMZO', '左智敏', 'EBD', '华北大区', 'DGGX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3106, 'GZDU', '段国英', 'EBD', '华北大区', 'LIJG', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3107, 'DUOM', '马铎', 'EBD', '华北大区', 'LIJG', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3108, 'IJDI', '戴晶', 'EBD', '华北大区', 'LILX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3109, 'UYDN', '董宇', 'EBD', '华北大区', 'YALX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3110, 'EDYL', '李德', 'EBD', '华北大区', 'YALX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3111, 'FFLI', '李飞飞', 'EBD', '华北大区', 'YALX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3112, 'MFLV', '律明飞', 'EBD', '华北大区', 'YALX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3113, 'JGGS', '史江英', 'EBD', '华北大区', 'YALX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3114, 'ZPLI', '刘志鹏', 'EBD', '华北大区', 'YALX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3115, 'XIHX', '郝新', 'EBD', '华北大区', 'YALX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3116, 'DAGM', '马单平', 'EBD', '华北大区', 'XOQ', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3117, 'CQUL', '李成全', 'EBD', '华北大区', 'XOQ', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3118, 'NJDO', '董乃静', 'EBD', '华北大区', 'XOQ', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3119, 'NMEZ', '张朦雨', 'EBD', '华东大区', 'XQYW', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3120, 'QYDA', '戴新华', 'EBD', '华东大区', 'XGGT', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3121, 'XICQ', '程鑫', 'EBD', '华东大区', 'WWSU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3122, 'XAUH', '何小雪', 'EBD', '华东大区', 'WWSU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3123, 'BHGU', '顾海波', 'EBD', '华东大区', 'XQYW', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3124, 'NZGL', '刘壮', 'EBD', '华东大区', 'MZJI', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3125, 'RJZQ', '周建旭', 'EBD', '华东大区', 'MZJI', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3126, 'HSWG', '王海生', 'EBD', '华东大区', 'JAFU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3127, 'KDGS', '石凯冬', 'EBD', '华东大区', 'YWNZ', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3128, 'YOTG', '佟永升', 'EBD', '华东大区', 'YWNZ', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3129, 'WLQZ', '李文萧', 'EBD', '华东大区', 'YWNZ', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3130, 'NXAW', '王宪', 'EBD', '华东大区', '', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3131, 'ZIZW', '王子钊', 'EBD', '华东大区', '', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3132, 'WJLN', '林伟杰', 'EBD', '华东大区', 'JZXY', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3133, 'CAUB', '卞超越', 'EBD', '华东大区', 'JYNX', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3134, 'XUNR', '茹旭年', 'EBD', '华东大区', 'JYNX', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3135, 'WNZQ', '倪伟伟', 'EBD', '华东大区', 'SNXL', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3136, 'OBLI', '李渤', 'EBD', '华东大区', 'SNXL', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3137, 'ZHJH', '胡章剑', 'EBD', '华南大区', 'TFWN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3138, 'NQZL', '刘浪', 'EBD', '华南大区', 'TFWN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3139, 'HTWU', '吴亨通', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3140, 'HWXA', '夏涵威', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3141, 'JUOF', '冯俊浩', 'EBD', '华南大区', 'LFHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3142, 'ZHNF', '符兆团', 'EBD', '华南大区', 'LZHE', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3143, 'VQHZ', '赵赫', 'EBD', '华南大区', 'LZHE', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3144, 'SYIC', '陈淑仪', 'EBD', '华南大区', 'LZHE', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3145, 'IMZU', '周敏', 'EBD', '华南大区', 'LZHE', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3146, 'NLLS', '孙琳琳', 'EBD', '华南大区', 'YIUX', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3147, 'MWIY', '颜民伟', 'EBD', '华南大区', 'YIUX', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3148, 'QXWY', '韦晓毛', 'EBD', '华南大区', 'YIUX', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3149, 'QHGU', '郭庆华', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3150, 'SIZL', '林思志', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3151, 'GYIZ', '赵莹', 'EBD', '华西大区', 'HAPH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3152, 'RMQ', '马瑞', 'EBD', '华西大区', 'HAPH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3153, 'EYQI', '祁小艳', 'EBD', '华西大区', 'HOYI', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3154, 'DYQC', '迟丹阳', 'EBD', '华西大区', 'QYAG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3155, 'WSZQ', '苏旺宏', 'EBD', '华西大区', 'HQZH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3156, 'ZDYA', '姚鼎', 'EBD', '华西大区', 'HQZH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3157, 'LKAG', '康乐', 'EBD', '华西大区', 'HQZH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3158, 'YULJ', '姜岳良', 'EBD', '华西大区', 'HQZH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3159, 'NXLU', '刘祥', 'EBD', '华西大区', 'HQZH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3160, 'JKYG', '阳金珂', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3161, 'UYZZ', '张银川', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3162, 'RZQY', '杨雪梅', 'EBD', '华西大区', 'JNGB', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3163, 'GYAZ', '张杨', 'EBD', '华西大区', 'USMG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3164, 'ICYL', '李春立', 'EBD', '华中大区', 'JRZU', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3165, 'XHIZ', '赵希辉', 'EBD', '华中大区', 'YNHM', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3166, 'QGGW', '王青龙', 'EBD', '华中大区', 'JIWY', 'ZHHL', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3167, 'YGRE', '任永发', 'EBD', '华中大区', 'LXXX', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3168, 'XYNG', '杨曦', 'EBD', '华中大区', 'GUXU', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3169, 'BTYN', '杨宝通', 'EBD', '华中大区', 'CEZ', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3170, 'MZHG', '张敏', 'EBD', '华中大区', 'NXYA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3171, 'HNQH', '胡红勤', 'EBD', '中南大区', 'WILU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3172, 'HUTN', '童虎', 'EBD', '中南大区', 'FGWU', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3173, 'NSOC', '陈善勇', 'EBD', '中南大区', 'JWTG', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3174, 'HDXG', '向辉典', 'EBD', '中南大区', 'JWTG', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3175, 'USPL', '陆顺平', 'EBD', '中南大区', 'NJXL', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3176, 'VMQR', '任明高', 'EBD', '中南大区', 'WJHE', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3177, 'XBWN', '王兴彪', 'EBD', '中南大区', 'WJHE', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3178, 'UQJL', '雷靖宇', 'EBD', '中南大区', 'QICA', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3179, 'LWZO', '邹良望', 'EBD', '华中大区', 'LXXX', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3180, 'TGBA', '暴桐', 'EBD', '华北大区', 'UYGZ', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3181, 'LQZP', '潘利', 'EBD', '华北大区', 'KZXL', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3182, 'AQYY', '杨意', 'EBD', '华北大区', 'KZXL', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3183, 'LYRN', '任丽颖', 'EBD', '华北大区', 'UYGZ', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3184, 'NYGC', '曹阳', 'EBD', '中南大区', 'MIXQ', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3185, 'UHWA', '王辉', 'EBD', '中南大区', 'NJXL', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3186, 'JXIW', '吴佳欣', 'EBD', '中南大区', 'QICA', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3187, 'ZICN', '陈智慧', 'EBD', '中南大区', 'JWTG', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3188, 'CYDI', '戴晨瑜', 'EBD', '华东大区', 'YWNZ', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3189, 'ULIN', '林莉钧', 'EBD', '华中大区', 'JIIS', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3190, 'NJEL', '梁洁', 'EBD', '华中大区', 'NXYA', '', 'WSHC', 'mr');
INSERT INTO `mdm_sales` VALUES (3191, 'CEJG', '蒋臣良', 'EBD', '东南大区', 'XOWE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3192, 'ZNHA', '韩忠庆', 'EBD', '东南大区', 'YSE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3193, 'XIQW', '吴星旗', 'EBD', '华西大区', 'SJIG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3194, 'IYSZ', '石毅', 'EBD', '华西大区', 'QYAG', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3195, 'NJIL', '李静', 'EBD', '华西大区', 'HAPH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3196, 'SJZA', '赵晟钧', 'EBD', '华南大区', 'XOSN', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3197, 'YCYU', '于有臣', 'EBD', '华南大区', 'YZHL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3198, 'ZYTA', '唐再尧', 'EBD', '华南大区', 'HHHG', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3199, 'ZHOU', '欧哲妹', 'EBD', '华南大区', 'DOXL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3200, 'KIZN', '张凯', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3201, 'DSHN', '单丹', 'EBD', '东北大区', 'XDWG', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3202, 'USOL', '刘硕', 'EBD', '东北大区', 'XDWG', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3203, 'XIQY', '尹宪秋', 'EBD', '东北大区', 'XDWG', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3204, 'CUNB', '鲍春林', 'EBD', '华北大区', 'HXYA', '', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3205, 'EYZH', '朱宇娴', 'EBD', '华南大区', 'HHHG', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3206, 'WOXI', '谢文博', 'EBD', '华南大区', 'HHHG', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3207, 'TIWQ', '万婷', 'EBD', '华南大区', 'YZHL', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3208, 'BYWU', '吴斌', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3209, 'HGZE', '郑泓杰', 'EBD', '华南大区', 'ZBHU', '', 'XICO', 'mr');
INSERT INTO `mdm_sales` VALUES (3210, 'HYQN', '牛慧', 'EBD', '华北大区', 'DGGX', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3211, 'FEWU', '武飞', 'EBD', '华北大区', 'ZUSO', 'YGZO', 'JIEY', 'mr');
INSERT INTO `mdm_sales` VALUES (3212, 'TTZA', '张彤彤', 'EBD', '华西大区', 'HAPH', '', 'YGWA', 'mr');
INSERT INTO `mdm_sales` VALUES (3213, 'NHYA', '杨贺', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3214, 'WLGL', '刘文玲', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3215, 'YBYG', '杨玉波', 'EBD', '东北大区', '', '', '', 'mr');
INSERT INTO `mdm_sales` VALUES (3216, 'GQWA', '王贵', 'EBD', '东南大区', 'XJYE', '', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3217, 'QLWG', '王杞龙', 'EBD', '东南大区', 'DHX', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3218, 'YUGE', '葛元锴', 'EBD', '东南大区', 'GUHG', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3219, 'OTZA', '张涛', 'EBD', '东南大区', 'SHIZ', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3220, 'JYUY', '叶建宇', 'EBD', '东南大区', 'SCAI', 'JEGW', 'YUXQ', 'mr');
INSERT INTO `mdm_sales` VALUES (3221, 'XHSO', '宋修成', 'EBD', '华东大区', 'YILE', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3222, 'CMNG', '顾城铭', 'EBD', '华东大区', 'YILE', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3223, 'MZFU', '伏铭', 'EBD', '华东大区', 'JZXY', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3224, 'GFXE', '谢桂芳', 'EBD', '华东大区', 'JZXY', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3225, 'NYHZ', '张伊寒', 'EBD', '华东大区', 'SNXL', '', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3226, 'YOPG', '彭姚', 'EBD', '中南大区', 'LLHX', '', 'HBAI', 'mr');
INSERT INTO `mdm_sales` VALUES (3227, 'XHYN', '杨晓涵', 'EBD', '华东大区', 'WWSU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3228, 'LEYX', '杨磊', 'EBD', '华东大区', 'WWSU', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3229, 'JJGG', '葛菁菁', 'EBD', '华东大区', 'XGGT', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3230, 'FNFW', '王芬芬', 'EBD', '华东大区', 'XQYW', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3231, 'HKZA', '张凯', 'EBD', '华东大区', 'XGGT', 'XAFA', 'HONH', 'mr');
INSERT INTO `mdm_sales` VALUES (3232, 'LJZG', '郑立娟', 'EBD', '东北大区', '', '', '', 'mr');

SET FOREIGN_KEY_CHECKS = 1;
