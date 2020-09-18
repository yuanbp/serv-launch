/*
 Navicat Premium Data Transfer

 Source Server         : mysql8@docker
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 127.0.0.1:3308
 Source Schema         : serv_launch

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 18/09/2020 17:32:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for icon
-- ----------------------------
DROP TABLE IF EXISTS `icon`;
CREATE TABLE `icon` (
  `id` bigint NOT NULL,
  `url` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of icon
-- ----------------------------
BEGIN;
INSERT INTO `icon` VALUES (1, 'fa-home', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `icon` VALUES (2, 'fa-book', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `icon` VALUES (3, 'fa-pencil', NULL, NULL, NULL, NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uri` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `logTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
BEGIN;
INSERT INTO `log` VALUES (94680085558108419, 'admin', '/manager/index', '2020-09-18 06:24:51');
INSERT INTO `log` VALUES (94680085973347689, 'admin', '/manager/console', '2020-09-18 06:24:52');
INSERT INTO `log` VALUES (94680086598303267, 'admin', '/manager/treeMenu', '2020-09-18 06:24:52');
INSERT INTO `log` VALUES (94680095213388519, 'admin', '/manager/permission', '2020-09-18 06:24:54');
INSERT INTO `log` VALUES (94680096031278281, 'admin', '/manager/permissionList', '2020-09-18 06:24:54');
INSERT INTO `log` VALUES (94680106974225784, 'admin', '/manager/delPermission', '2020-09-18 06:24:57');
INSERT INTO `log` VALUES (94680155925941511, 'admin', '/manager/delPermission', '2020-09-18 06:25:08');
INSERT INTO `log` VALUES (94680281302081819, 'admin', '/manager/delPermission', '2020-09-18 06:25:38');
INSERT INTO `log` VALUES (94680590675847311, 'admin', '/manager/index', '2020-09-18 06:26:52');
INSERT INTO `log` VALUES (94680591183354078, 'admin', '/manager/console', '2020-09-18 06:26:52');
INSERT INTO `log` VALUES (94680591959305336, 'admin', '/manager/treeMenu', '2020-09-18 06:26:52');
INSERT INTO `log` VALUES (94680603460090357, 'admin', '/manager/permission', '2020-09-18 06:26:55');
INSERT INTO `log` VALUES (94680604621908369, 'admin', '/manager/permissionList', '2020-09-18 06:26:55');
INSERT INTO `log` VALUES (94680619104831221, 'admin', '/manager/addPermission', '2020-09-18 06:26:59');
INSERT INTO `log` VALUES (94680619146783097, 'admin', '/manager/error/error400', '2020-09-18 06:26:59');
INSERT INTO `log` VALUES (94680711232719583, 'admin', '/manager/delPermission', '2020-09-18 06:27:21');
INSERT INTO `log` VALUES (94681498088353545, 'admin', '/manager/index', '2020-09-18 06:30:28');
INSERT INTO `log` VALUES (94681498654588645, 'admin', '/manager/console', '2020-09-18 06:30:28');
INSERT INTO `log` VALUES (94681499413743499, 'admin', '/manager/treeMenu', '2020-09-18 06:30:29');
INSERT INTO `log` VALUES (94681505478705241, 'admin', '/manager/permission', '2020-09-18 06:30:30');
INSERT INTO `log` VALUES (94681506573427131, 'admin', '/manager/permissionList', '2020-09-18 06:30:30');
INSERT INTO `log` VALUES (94681521446421300, 'admin', '/manager/addPermission', '2020-09-18 06:30:34');
INSERT INTO `log` VALUES (94681540438237948, 'admin', '/manager/addPermission', '2020-09-18 06:30:38');
INSERT INTO `log` VALUES (94681544812900808, 'admin', '/manager/permission', '2020-09-18 06:30:39');
INSERT INTO `log` VALUES (94681545869853252, 'admin', '/manager/permissionList', '2020-09-18 06:30:40');
INSERT INTO `log` VALUES (94681564492576016, 'admin', '/manager/delPermission', '2020-09-18 06:30:44');
INSERT INTO `log` VALUES (94681911093083148, 'admin', '/manager/delPermission', '2020-09-18 06:32:07');
INSERT INTO `log` VALUES (94682873199307801, 'admin', '/manager/permission', '2020-09-18 06:35:56');
INSERT INTO `log` VALUES (94682958301739634, 'admin', '/manager/permissionList', '2020-09-18 06:36:16');
INSERT INTO `log` VALUES (94683247746462404, 'admin', '/manager/permission', '2020-09-18 06:37:25');
INSERT INTO `log` VALUES (94683253299708960, 'admin', '/manager/permissionList', '2020-09-18 06:37:27');
INSERT INTO `log` VALUES (94683630313118718, 'admin', '/manager/delPermission', '2020-09-18 06:38:57');
INSERT INTO `log` VALUES (94683648533180748, 'admin', '/manager/permission', '2020-09-18 06:39:01');
INSERT INTO `log` VALUES (94683655189537948, 'admin', '/manager/permissionList', '2020-09-18 06:39:03');
INSERT INTO `log` VALUES (94683916343682777, 'admin', '/manager/permission', '2020-09-18 06:40:05');
INSERT INTO `log` VALUES (94684027635349316, 'admin', '/manager/permissionList', '2020-09-18 06:40:31');
INSERT INTO `log` VALUES (94686224122752949, 'admin', '/manager/index', '2020-09-18 06:49:15');
INSERT INTO `log` VALUES (94686224718332258, 'admin', '/manager/console', '2020-09-18 06:49:15');
INSERT INTO `log` VALUES (94686225234240917, 'admin', '/manager/treeMenu', '2020-09-18 06:49:15');
INSERT INTO `log` VALUES (94686234423962517, 'admin', '/manager/permission', '2020-09-18 06:49:17');
INSERT INTO `log` VALUES (94686242355388933, 'admin', '/manager/permissionList', '2020-09-18 06:49:19');
INSERT INTO `log` VALUES (94687026868873499, 'admin', '/manager/index', '2020-09-18 06:52:26');
INSERT INTO `log` VALUES (94687027590295090, 'admin', '/manager/console', '2020-09-18 06:52:27');
INSERT INTO `log` VALUES (94687028169105854, 'admin', '/manager/treeMenu', '2020-09-18 06:52:27');
INSERT INTO `log` VALUES (94687034645109138, 'admin', '/manager/permission', '2020-09-18 06:52:28');
INSERT INTO `log` VALUES (94687041444079435, 'admin', '/manager/permissionList', '2020-09-18 06:52:30');
INSERT INTO `log` VALUES (94687167331909858, 'admin', '/manager/permission', '2020-09-18 06:53:00');
INSERT INTO `log` VALUES (94687372953480330, 'admin', '/manager/permissionList', '2020-09-18 06:53:49');
INSERT INTO `log` VALUES (94688005474910427, 'admin', '/manager/index', '2020-09-18 06:56:20');
INSERT INTO `log` VALUES (94688005953076371, 'admin', '/manager/console', '2020-09-18 06:56:20');
INSERT INTO `log` VALUES (94688006536080985, 'admin', '/manager/treeMenu', '2020-09-18 06:56:20');
INSERT INTO `log` VALUES (94688019349677364, 'admin', '/manager/permission', '2020-09-18 06:56:23');
INSERT INTO `log` VALUES (94688171426748962, 'admin', '/manager/permissionList', '2020-09-18 06:56:59');
INSERT INTO `log` VALUES (94689425840995062, 'admin', '/manager/index', '2020-09-18 07:01:58');
INSERT INTO `log` VALUES (94689426398836422, 'admin', '/manager/console', '2020-09-18 07:01:58');
INSERT INTO `log` VALUES (94689427174777802, 'admin', '/manager/treeMenu', '2020-09-18 07:01:59');
INSERT INTO `log` VALUES (94689434011492516, 'admin', '/manager/permission', '2020-09-18 07:02:00');
INSERT INTO `log` VALUES (94689441456375323, 'admin', '/manager/permissionList', '2020-09-18 07:02:02');
INSERT INTO `log` VALUES (94689525996774757, 'admin', '/manager/delPermission', '2020-09-18 07:02:22');
INSERT INTO `log` VALUES (94689987072412834, 'admin', '/manager/addPermission', '2020-09-18 07:04:12');
INSERT INTO `log` VALUES (94690030718340639, 'admin', '/manager/addPermission', '2020-09-18 07:04:23');
INSERT INTO `log` VALUES (94690041271217051, 'admin', '/manager/permission', '2020-09-18 07:04:25');
INSERT INTO `log` VALUES (94690132002392185, 'admin', '/manager/permissionList', '2020-09-18 07:04:47');
INSERT INTO `log` VALUES (94690511755083414, 'admin', '/manager/index', '2020-09-18 07:06:17');
INSERT INTO `log` VALUES (94690512317109352, 'admin', '/manager/console', '2020-09-18 07:06:17');
INSERT INTO `log` VALUES (94690522253414721, 'admin', '/manager/treeMenu', '2020-09-18 07:06:20');
INSERT INTO `log` VALUES (94690558752251699, 'admin', '/manager/index', '2020-09-18 07:06:28');
INSERT INTO `log` VALUES (94690559154898409, 'admin', '/manager/console', '2020-09-18 07:06:29');
INSERT INTO `log` VALUES (94690606802202809, 'admin', '/manager/treeMenu', '2020-09-18 07:06:40');
INSERT INTO `log` VALUES (94691421498277522, 'admin', '/manager/index', '2020-09-18 07:09:54');
INSERT INTO `log` VALUES (94691422026755777, 'admin', '/manager/console', '2020-09-18 07:09:54');
INSERT INTO `log` VALUES (94691422882382195, 'admin', '/manager/treeMenu', '2020-09-18 07:09:54');
INSERT INTO `log` VALUES (94691432759980899, 'admin', '/manager/index', '2020-09-18 07:09:57');
INSERT INTO `log` VALUES (94691433162621710, 'admin', '/manager/console', '2020-09-18 07:09:57');
INSERT INTO `log` VALUES (94691434181841121, 'admin', '/manager/treeMenu', '2020-09-18 07:09:57');
INSERT INTO `log` VALUES (94691436010561307, 'admin', '/manager/index', '2020-09-18 07:09:58');
INSERT INTO `log` VALUES (94691436400628080, 'admin', '/manager/console', '2020-09-18 07:09:58');
INSERT INTO `log` VALUES (94691437159797162, 'admin', '/manager/treeMenu', '2020-09-18 07:09:58');
INSERT INTO `log` VALUES (94691438875262982, 'admin', '/manager/index', '2020-09-18 07:09:58');
INSERT INTO `log` VALUES (94691439248564592, 'admin', '/manager/console', '2020-09-18 07:09:58');
INSERT INTO `log` VALUES (94691440179698905, 'admin', '/manager/treeMenu', '2020-09-18 07:09:59');
INSERT INTO `log` VALUES (94691441979050887, 'admin', '/manager/index', '2020-09-18 07:09:59');
INSERT INTO `log` VALUES (94691442352349292, 'admin', '/manager/console', '2020-09-18 07:09:59');
INSERT INTO `log` VALUES (94691443107327959, 'admin', '/manager/treeMenu', '2020-09-18 07:09:59');
INSERT INTO `log` VALUES (94691444436914292, 'admin', '/manager/index', '2020-09-18 07:10:00');
INSERT INTO `log` VALUES (94691444826995563, 'admin', '/manager/console', '2020-09-18 07:10:00');
INSERT INTO `log` VALUES (94691445619707773, 'admin', '/manager/treeMenu', '2020-09-18 07:10:00');
INSERT INTO `log` VALUES (94691529522572564, 'admin', '/manager/index', '2020-09-18 07:10:20');
INSERT INTO `log` VALUES (94691529933608546, 'admin', '/manager/console', '2020-09-18 07:10:20');
INSERT INTO `log` VALUES (94691530747302473, 'admin', '/manager/treeMenu', '2020-09-18 07:10:20');
INSERT INTO `log` VALUES (94691532613770465, 'admin', '/manager/index', '2020-09-18 07:10:21');
INSERT INTO `log` VALUES (94691533020620559, 'admin', '/manager/console', '2020-09-18 07:10:21');
INSERT INTO `log` VALUES (94691534010470569, 'admin', '/manager/treeMenu', '2020-09-18 07:10:21');
INSERT INTO `log` VALUES (94691777663089548, 'admin', '/manager/index', '2020-09-18 07:11:19');
INSERT INTO `log` VALUES (94691778145433405, 'admin', '/manager/console', '2020-09-18 07:11:19');
INSERT INTO `log` VALUES (94691778707469450, 'admin', '/manager/treeMenu', '2020-09-18 07:11:19');
INSERT INTO `log` VALUES (94692268593785504, 'admin', '/manager/index', '2020-09-18 07:13:16');
INSERT INTO `log` VALUES (94692269063543798, 'admin', '/manager/console', '2020-09-18 07:13:16');
INSERT INTO `log` VALUES (94692321626559839, 'admin', '/manager/treeMenu', '2020-09-18 07:13:29');
INSERT INTO `log` VALUES (94692449467320178, 'admin', '/manager/index', '2020-09-18 07:13:59');
INSERT INTO `log` VALUES (94692450142617223, 'admin', '/manager/console', '2020-09-18 07:13:59');
INSERT INTO `log` VALUES (94692764136592726, 'admin', '/manager/treeMenu', '2020-09-18 07:15:14');
INSERT INTO `log` VALUES (94693002103860081, 'admin', '/manager/index', '2020-09-18 07:16:11');
INSERT INTO `log` VALUES (94693002628146905, 'admin', '/manager/console', '2020-09-18 07:16:11');
INSERT INTO `log` VALUES (94693012853854767, 'admin', '/manager/treeMenu', '2020-09-18 07:16:14');
INSERT INTO `log` VALUES (94694849351181214, 'admin', '/manager/index', '2020-09-18 07:23:31');
INSERT INTO `log` VALUES (94694850030653589, 'admin', '/manager/console', '2020-09-18 07:23:32');
INSERT INTO `log` VALUES (94694867206338747, 'admin', '/manager/treeMenu', '2020-09-18 07:23:36');
INSERT INTO `log` VALUES (94694879147519549, 'admin', '/manager/permission', '2020-09-18 07:23:39');
INSERT INTO `log` VALUES (94694885887766462, 'admin', '/manager/permissionList', '2020-09-18 07:23:40');
INSERT INTO `log` VALUES (94694926648005598, 'admin', '/manager/delPermission', '2020-09-18 07:23:50');
INSERT INTO `log` VALUES (94695113793801893, 'admin', '/manager/index', '2020-09-18 07:24:34');
INSERT INTO `log` VALUES (94695114292928663, 'admin', '/manager/console', '2020-09-18 07:24:35');
INSERT INTO `log` VALUES (94695149168564210, 'admin', '/manager/treeMenu', '2020-09-18 07:24:43');
INSERT INTO `log` VALUES (94695161600483674, 'admin', '/manager/log', '2020-09-18 07:24:46');
INSERT INTO `log` VALUES (94695168940511374, 'admin', '/manager/permission', '2020-09-18 07:24:48');
INSERT INTO `log` VALUES (94695182228069558, 'admin', '/manager/permissionList', '2020-09-18 07:24:51');
INSERT INTO `log` VALUES (94695190289526839, 'admin', '/manager/addPermission', '2020-09-18 07:24:53');
INSERT INTO `log` VALUES (94695203279274659, 'admin', '/manager/addPermission', '2020-09-18 07:24:56');
INSERT INTO `log` VALUES (94695206806686758, 'admin', '/manager/permission', '2020-09-18 07:24:57');
INSERT INTO `log` VALUES (94695207804941365, 'admin', '/manager/permissionList', '2020-09-18 07:24:57');
INSERT INTO `log` VALUES (94695239379650677, 'admin', '/manager/addPermission', '2020-09-18 07:25:04');
INSERT INTO `log` VALUES (94695239421606624, 'admin', '/manager/error/error400', '2020-09-18 07:25:04');
INSERT INTO `log` VALUES (94695348016326755, 'admin', '/manager/addPermission', '2020-09-18 07:25:30');
INSERT INTO `log` VALUES (94695348045687961, 'admin', '/manager/error/error400', '2020-09-18 07:25:30');
INSERT INTO `log` VALUES (94695910665757791, 'admin', '/manager/index', '2020-09-18 07:27:44');
INSERT INTO `log` VALUES (94695911307485395, 'admin', '/manager/console', '2020-09-18 07:27:45');
INSERT INTO `log` VALUES (94695912293140751, 'admin', '/manager/treeMenu', '2020-09-18 07:27:45');
INSERT INTO `log` VALUES (94695919012429809, 'admin', '/manager/permission', '2020-09-18 07:27:46');
INSERT INTO `log` VALUES (94695920115518742, 'admin', '/manager/permissionList', '2020-09-18 07:27:47');
INSERT INTO `log` VALUES (94695939551933569, 'admin', '/manager/addPermission', '2020-09-18 07:27:51');
INSERT INTO `log` VALUES (94695970132594353, 'admin', '/manager/addPermission', '2020-09-18 07:27:59');
INSERT INTO `log` VALUES (94695974922495002, 'admin', '/manager/permission', '2020-09-18 07:28:00');
INSERT INTO `log` VALUES (94695976033982389, 'admin', '/manager/permissionList', '2020-09-18 07:28:00');
INSERT INTO `log` VALUES (94695997164888124, 'admin', '/manager/addPermission', '2020-09-18 07:28:05');
INSERT INTO `log` VALUES (94696022074865639, 'admin', '/manager/addPermission', '2020-09-18 07:28:11');
INSERT INTO `log` VALUES (94696027040912448, 'admin', '/manager/permission', '2020-09-18 07:28:12');
INSERT INTO `log` VALUES (94696028085294567, 'admin', '/manager/permissionList', '2020-09-18 07:28:12');
INSERT INTO `log` VALUES (94696065527856293, 'admin', '/manager/delPermission', '2020-09-18 07:28:21');
INSERT INTO `log` VALUES (94696584125286445, 'admin', '/manager/index', '2020-09-18 07:30:25');
INSERT INTO `log` VALUES (94696584695722688, 'admin', '/manager/console', '2020-09-18 07:30:25');
INSERT INTO `log` VALUES (94696585790427145, 'admin', '/manager/treeMenu', '2020-09-18 07:30:25');
INSERT INTO `log` VALUES (94696594661387670, 'admin', '/manager/permission', '2020-09-18 07:30:28');
INSERT INTO `log` VALUES (94696595831597759, 'admin', '/manager/permissionList', '2020-09-18 07:30:28');
INSERT INTO `log` VALUES (94696636709287151, 'admin', '/manager/addPermission', '2020-09-18 07:30:38');
INSERT INTO `log` VALUES (94696666920848711, 'admin', '/manager/addPermission', '2020-09-18 07:30:45');
INSERT INTO `log` VALUES (94696671891110423, 'admin', '/manager/permission', '2020-09-18 07:30:46');
INSERT INTO `log` VALUES (94696672889352274, 'admin', '/manager/permissionList', '2020-09-18 07:30:46');
INSERT INTO `log` VALUES (94696736776991116, 'admin', '/manager/delPermission', '2020-09-18 07:31:01');
INSERT INTO `log` VALUES (94696765281481103, 'admin', '/manager/delPermission', '2020-09-18 07:31:08');
INSERT INTO `log` VALUES (94696777973446864, 'admin', '/manager/delPermission', '2020-09-18 07:31:11');
INSERT INTO `log` VALUES (94696789348395879, 'admin', '/manager/log', '2020-09-18 07:31:14');
INSERT INTO `log` VALUES (94696848236422549, 'admin', '/manager/role', '2020-09-18 07:31:28');
INSERT INTO `log` VALUES (94696849238867553, 'admin', '/manager/roleList', '2020-09-18 07:31:28');
INSERT INTO `log` VALUES (94696856188827657, 'admin', '/manager/addRole', '2020-09-18 07:31:30');
INSERT INTO `log` VALUES (94696873666483542, 'admin', '/manager/addRole', '2020-09-18 07:31:34');
INSERT INTO `log` VALUES (94696873716823590, 'admin', '/manager/error/error500', '2020-09-18 07:31:34');
INSERT INTO `log` VALUES (94696882105433481, 'admin', '/manager/addRole', '2020-09-18 07:31:36');
INSERT INTO `log` VALUES (94696882138984092, 'admin', '/manager/error/error500', '2020-09-18 07:31:36');
INSERT INTO `log` VALUES (94696950548082443, 'admin', '/manager/addRole', '2020-09-18 07:31:52');
INSERT INTO `log` VALUES (94696950577441306, 'admin', '/manager/error/error500', '2020-09-18 07:31:52');
INSERT INTO `log` VALUES (94697044496290746, 'admin', '/manager/addRole', '2020-09-18 07:32:15');
INSERT INTO `log` VALUES (94697054738787248, 'admin', '/manager/addRole', '2020-09-18 07:32:17');
INSERT INTO `log` VALUES (94697054772334482, 'admin', '/manager/error/error500', '2020-09-18 07:32:17');
INSERT INTO `log` VALUES (94697060413671801, 'admin', '/manager/addRole', '2020-09-18 07:32:19');
INSERT INTO `log` VALUES (94697060438838000, 'admin', '/manager/error/error500', '2020-09-18 07:32:19');
INSERT INTO `log` VALUES (94703064912168728, 'admin', '/manager/addRole', '2020-09-18 07:56:10');
INSERT INTO `log` VALUES (94703064941528740, 'admin', '/manager/error/error500', '2020-09-18 07:56:10');
INSERT INTO `log` VALUES (94703122797771499, 'admin', '/manager/role', '2020-09-18 07:56:24');
INSERT INTO `log` VALUES (94703123833754975, 'admin', '/manager/roleList', '2020-09-18 07:56:24');
INSERT INTO `log` VALUES (94703138962613532, 'admin', '/manager/addRole', '2020-09-18 07:56:28');
INSERT INTO `log` VALUES (94703156419302317, 'admin', '/manager/addRole', '2020-09-18 07:56:32');
INSERT INTO `log` VALUES (94703156448671014, 'admin', '/manager/error/error500', '2020-09-18 07:56:32');
INSERT INTO `log` VALUES (94703226107665456, 'admin', '/manager/addRole', '2020-09-18 07:56:49');
INSERT INTO `log` VALUES (94703249591570109, 'admin', '/manager/addRole', '2020-09-18 07:56:54');
INSERT INTO `log` VALUES (94703249625131970, 'admin', '/manager/error/error500', '2020-09-18 07:56:54');
INSERT INTO `log` VALUES (94703711954870866, 'admin', '/manager/addRole', '2020-09-18 07:58:44');
INSERT INTO `log` VALUES (94703711988432782, 'admin', '/manager/error/error500', '2020-09-18 07:58:44');
INSERT INTO `log` VALUES (94703747904257720, 'admin', '/manager/addRole', '2020-09-18 07:58:53');
INSERT INTO `log` VALUES (94703882214258855, 'admin', '/manager/addRole', '2020-09-18 07:59:25');
INSERT INTO `log` VALUES (94703882247808672, 'admin', '/manager/error/error500', '2020-09-18 07:59:25');
INSERT INTO `log` VALUES (94704425048347004, 'admin', '/manager/index', '2020-09-18 08:01:34');
INSERT INTO `log` VALUES (94704425652334831, 'admin', '/manager/console', '2020-09-18 08:01:35');
INSERT INTO `log` VALUES (94704426336009690, 'admin', '/manager/treeMenu', '2020-09-18 08:01:35');
INSERT INTO `log` VALUES (94704433734746681, 'admin', '/manager/role', '2020-09-18 08:01:37');
INSERT INTO `log` VALUES (94704434812685288, 'admin', '/manager/roleList', '2020-09-18 08:01:37');
INSERT INTO `log` VALUES (94704444241492585, 'admin', '/manager/addRole', '2020-09-18 08:01:39');
INSERT INTO `log` VALUES (94704448557425365, 'admin', '/manager/addRole', '2020-09-18 08:01:40');
INSERT INTO `log` VALUES (94704448603568651, 'admin', '/manager/error/error500', '2020-09-18 08:01:40');
INSERT INTO `log` VALUES (94704458854441637, 'admin', '/manager/addRole', '2020-09-18 08:01:43');
INSERT INTO `log` VALUES (94704468790754970, 'admin', '/manager/addRole', '2020-09-18 08:01:45');
INSERT INTO `log` VALUES (94704468820106554, 'admin', '/manager/error/error500', '2020-09-18 08:01:45');
INSERT INTO `log` VALUES (94704580082416087, 'admin', '/manager/addRole', '2020-09-18 08:02:11');
INSERT INTO `log` VALUES (94704610637914244, 'admin', '/manager/index', '2020-09-18 08:02:19');
INSERT INTO `log` VALUES (94704611485162004, 'admin', '/manager/console', '2020-09-18 08:02:19');
INSERT INTO `log` VALUES (94704613079000510, 'admin', '/manager/treeMenu', '2020-09-18 08:02:19');
INSERT INTO `log` VALUES (94704619785684464, 'admin', '/manager/role', '2020-09-18 08:02:21');
INSERT INTO `log` VALUES (94704620892990611, 'admin', '/manager/roleList', '2020-09-18 08:02:21');
INSERT INTO `log` VALUES (94704632376991813, 'admin', '/manager/delRole', '2020-09-18 08:02:24');
INSERT INTO `log` VALUES (94704632406345345, 'admin', '/manager/error/error500', '2020-09-18 08:02:24');
INSERT INTO `log` VALUES (94704730464988763, 'admin', '/manager/delRole', '2020-09-18 08:02:47');
INSERT INTO `log` VALUES (94704819514218215, 'admin', '/manager/index', '2020-09-18 08:03:08');
INSERT INTO `log` VALUES (94704820030126211, 'admin', '/manager/console', '2020-09-18 08:03:09');
INSERT INTO `log` VALUES (94704820629903788, 'admin', '/manager/treeMenu', '2020-09-18 08:03:09');
INSERT INTO `log` VALUES (94704826774564013, 'admin', '/manager/role', '2020-09-18 08:03:10');
INSERT INTO `log` VALUES (94704827915418342, 'admin', '/manager/roleList', '2020-09-18 08:03:11');
INSERT INTO `log` VALUES (94704895464676374, 'admin', '/manager/addRole', '2020-09-18 08:03:27');
INSERT INTO `log` VALUES (94704914368412004, 'admin', '/manager/addRole', '2020-09-18 08:03:31');
INSERT INTO `log` VALUES (94704914435509382, 'admin', '/manager/error/error500', '2020-09-18 08:03:31');
INSERT INTO `log` VALUES (94705294854700440, 'admin', '/manager/index', '2020-09-18 08:05:02');
INSERT INTO `log` VALUES (94705295328646108, 'admin', '/manager/console', '2020-09-18 08:05:02');
INSERT INTO `log` VALUES (94705296138144234, 'admin', '/manager/treeMenu', '2020-09-18 08:05:02');
INSERT INTO `log` VALUES (94705303352348116, 'admin', '/manager/role', '2020-09-18 08:05:04');
INSERT INTO `log` VALUES (94705304455446774, 'admin', '/manager/roleList', '2020-09-18 08:05:04');
INSERT INTO `log` VALUES (94705328035839915, 'admin', '/manager/delRole', '2020-09-18 08:05:10');
INSERT INTO `log` VALUES (94705328262324202, 'admin', '/manager/error/error500', '2020-09-18 08:05:10');
INSERT INTO `log` VALUES (94705541448102767, 'admin', '/manager/index', '2020-09-18 08:06:01');
INSERT INTO `log` VALUES (94705541955605411, 'admin', '/manager/console', '2020-09-18 08:06:01');
INSERT INTO `log` VALUES (94705542748329943, 'admin', '/manager/treeMenu', '2020-09-18 08:06:01');
INSERT INTO `log` VALUES (94705549585054429, 'admin', '/manager/role', '2020-09-18 08:06:03');
INSERT INTO `log` VALUES (94705550713318189, 'admin', '/manager/roleList', '2020-09-18 08:06:03');
INSERT INTO `log` VALUES (94705565561152565, 'admin', '/manager/addRole', '2020-09-18 08:06:06');
INSERT INTO `log` VALUES (94705582623586177, 'admin', '/manager/addRole', '2020-09-18 08:06:10');
INSERT INTO `log` VALUES (94705590122996776, 'admin', '/manager/role', '2020-09-18 08:06:12');
INSERT INTO `log` VALUES (94705591087690401, 'admin', '/manager/roleList', '2020-09-18 08:06:12');
INSERT INTO `log` VALUES (94705604404596019, 'admin', '/manager/delRole', '2020-09-18 08:06:16');
INSERT INTO `log` VALUES (94705627267755473, 'admin', '/manager/allotPer', '2020-09-18 08:06:21');
INSERT INTO `log` VALUES (94705628345693997, 'admin', '/manager/permissionList', '2020-09-18 08:06:21');
INSERT INTO `log` VALUES (94705649967318041, 'admin', '/manager/allotPer', '2020-09-18 08:06:26');
INSERT INTO `log` VALUES (94705650009260839, 'admin', '/manager/error/error500', '2020-09-18 08:06:27');
INSERT INTO `log` VALUES (94705881975461257, 'admin', '/manager/index', '2020-09-18 08:07:22');
INSERT INTO `log` VALUES (94705882554279948, 'admin', '/manager/console', '2020-09-18 08:07:22');
INSERT INTO `log` VALUES (94705883607056323, 'admin', '/manager/treeMenu', '2020-09-18 08:07:22');
INSERT INTO `log` VALUES (94705890456349187, 'admin', '/manager/role', '2020-09-18 08:07:24');
INSERT INTO `log` VALUES (94705891538484012, 'admin', '/manager/roleList', '2020-09-18 08:07:24');
INSERT INTO `log` VALUES (94705904259805560, 'admin', '/manager/allotPer', '2020-09-18 08:07:27');
INSERT INTO `log` VALUES (94705905299995346, 'admin', '/manager/permissionList', '2020-09-18 08:07:27');
INSERT INTO `log` VALUES (94705920894405155, 'admin', '/manager/allotPer', '2020-09-18 08:07:31');
INSERT INTO `log` VALUES (94705920940553930, 'admin', '/manager/error/error500', '2020-09-18 08:07:31');
INSERT INTO `log` VALUES (94706329402842310, 'admin', '/manager/allotPer', '2020-09-18 08:09:08');
INSERT INTO `log` VALUES (94706329440585955, 'admin', '/manager/error/error500', '2020-09-18 08:09:08');
INSERT INTO `log` VALUES (94706608918026003, 'admin', '/manager/index', '2020-09-18 08:10:15');
INSERT INTO `log` VALUES (94706609601697394, 'admin', '/manager/console', '2020-09-18 08:10:15');
INSERT INTO `log` VALUES (94706610583172528, 'admin', '/manager/treeMenu', '2020-09-18 08:10:16');
INSERT INTO `log` VALUES (94706617113691145, 'admin', '/manager/role', '2020-09-18 08:10:17');
INSERT INTO `log` VALUES (94706618158074830, 'admin', '/manager/roleList', '2020-09-18 08:10:17');
INSERT INTO `log` VALUES (94706631772788727, 'admin', '/manager/allotPer', '2020-09-18 08:10:21');
INSERT INTO `log` VALUES (94706632943005024, 'admin', '/manager/permissionList', '2020-09-18 08:10:21');
INSERT INTO `log` VALUES (94706693160621017, 'admin', '/manager/allotPer', '2020-09-18 08:10:35');
INSERT INTO `log` VALUES (94706693215151115, 'admin', '/manager/error/error500', '2020-09-18 08:10:35');
INSERT INTO `log` VALUES (94707062053773105, 'admin', '/manager/index', '2020-09-18 08:12:03');
INSERT INTO `log` VALUES (94707062578066755, 'admin', '/manager/console', '2020-09-18 08:12:03');
INSERT INTO `log` VALUES (94707063177847297, 'admin', '/manager/treeMenu', '2020-09-18 08:12:03');
INSERT INTO `log` VALUES (94707073827183574, 'admin', '/manager/role', '2020-09-18 08:12:06');
INSERT INTO `log` VALUES (94707074867369264, 'admin', '/manager/roleList', '2020-09-18 08:12:06');
INSERT INTO `log` VALUES (94707079019725977, 'admin', '/manager/allotPer', '2020-09-18 08:12:07');
INSERT INTO `log` VALUES (94707080055719269, 'admin', '/manager/permissionList', '2020-09-18 08:12:07');
INSERT INTO `log` VALUES (94707103577384118, 'admin', '/manager/allotPer', '2020-09-18 08:12:13');
INSERT INTO `log` VALUES (94707103623526424, 'admin', '/manager/error/error500', '2020-09-18 08:12:13');
INSERT INTO `log` VALUES (94707715242602475, 'admin', '/manager/index', '2020-09-18 08:14:39');
INSERT INTO `log` VALUES (94707715838184948, 'admin', '/manager/console', '2020-09-18 08:14:39');
INSERT INTO `log` VALUES (94707716760931443, 'admin', '/manager/treeMenu', '2020-09-18 08:14:39');
INSERT INTO `log` VALUES (94707722477769339, 'admin', '/manager/role', '2020-09-18 08:14:41');
INSERT INTO `log` VALUES (94707723551521831, 'admin', '/manager/roleList', '2020-09-18 08:14:41');
INSERT INTO `log` VALUES (94707727255080041, 'admin', '/manager/addRole', '2020-09-18 08:14:42');
INSERT INTO `log` VALUES (94707739015909059, 'admin', '/manager/addRole', '2020-09-18 08:14:45');
INSERT INTO `log` VALUES (94707753188458529, 'admin', '/manager/addRole', '2020-09-18 08:14:48');
INSERT INTO `log` VALUES (94707765347756462, 'admin', '/manager/role', '2020-09-18 08:14:51');
INSERT INTO `log` VALUES (94707766354385915, 'admin', '/manager/roleList', '2020-09-18 08:14:51');
INSERT INTO `log` VALUES (94707772373208273, 'admin', '/manager/allotPer', '2020-09-18 08:14:53');
INSERT INTO `log` VALUES (94707773371465470, 'admin', '/manager/permissionList', '2020-09-18 08:14:53');
INSERT INTO `log` VALUES (94707793499923348, 'admin', '/manager/allotPer', '2020-09-18 08:14:58');
INSERT INTO `log` VALUES (94707793541869575, 'admin', '/manager/error/error500', '2020-09-18 08:14:58');
INSERT INTO `log` VALUES (94707874139603223, 'admin', '/manager/allotPer', '2020-09-18 08:15:17');
INSERT INTO `log` VALUES (94707874173164645, 'admin', '/manager/error/error500', '2020-09-18 08:15:17');
INSERT INTO `log` VALUES (94708085713103506, 'admin', '/manager/index', '2020-09-18 08:16:07');
INSERT INTO `log` VALUES (94708086228997927, 'admin', '/manager/console', '2020-09-18 08:16:07');
INSERT INTO `log` VALUES (94708086853957567, 'admin', '/manager/treeMenu', '2020-09-18 08:16:07');
INSERT INTO `log` VALUES (94708096404384836, 'admin', '/manager/role', '2020-09-18 08:16:10');
INSERT INTO `log` VALUES (94708097440370624, 'admin', '/manager/roleList', '2020-09-18 08:16:10');
INSERT INTO `log` VALUES (94708101223634067, 'admin', '/manager/allotPer', '2020-09-18 08:16:11');
INSERT INTO `log` VALUES (94708102242858400, 'admin', '/manager/permissionList', '2020-09-18 08:16:11');
INSERT INTO `log` VALUES (94708126016173655, 'admin', '/manager/allotPer', '2020-09-18 08:16:17');
INSERT INTO `log` VALUES (94708126062305143, 'admin', '/manager/error/error500', '2020-09-18 08:16:17');
INSERT INTO `log` VALUES (94708334784030612, 'admin', '/manager/index', '2020-09-18 08:17:07');
INSERT INTO `log` VALUES (94708335421562031, 'admin', '/manager/console', '2020-09-18 08:17:07');
INSERT INTO `log` VALUES (94708336440782965, 'admin', '/manager/treeMenu', '2020-09-18 08:17:07');
INSERT INTO `log` VALUES (94708342379909086, 'admin', '/manager/role', '2020-09-18 08:17:08');
INSERT INTO `log` VALUES (94708343487213551, 'admin', '/manager/roleList', '2020-09-18 08:17:09');
INSERT INTO `log` VALUES (94708347450834924, 'admin', '/manager/allotPer', '2020-09-18 08:17:10');
INSERT INTO `log` VALUES (94708348587477133, 'admin', '/manager/permissionList', '2020-09-18 08:17:10');
INSERT INTO `log` VALUES (94708374944497376, 'admin', '/manager/allotPer', '2020-09-18 08:17:16');
INSERT INTO `log` VALUES (94708375238094540, 'admin', '/manager/role', '2020-09-18 08:17:16');
INSERT INTO `log` VALUES (94708376395724694, 'admin', '/manager/roleList', '2020-09-18 08:17:17');
INSERT INTO `log` VALUES (94708387330272808, 'admin', '/manager/allotPer', '2020-09-18 08:17:19');
INSERT INTO `log` VALUES (94708388324321172, 'admin', '/manager/permissionList', '2020-09-18 08:17:19');
INSERT INTO `log` VALUES (94708410164064438, 'admin', '/manager/admin', '2020-09-18 08:17:25');
INSERT INTO `log` VALUES (94708411237794375, 'admin', '/manager/adminList', '2020-09-18 08:17:25');
INSERT INTO `log` VALUES (94708433580858165, 'admin', '/manager/addAdmin', '2020-09-18 08:17:30');
INSERT INTO `log` VALUES (94708446851640675, 'admin', '/manager/addAdmin', '2020-09-18 08:17:33');
INSERT INTO `log` VALUES (94708455068275468, 'admin', '/manager/admin', '2020-09-18 08:17:35');
INSERT INTO `log` VALUES (94708456095878835, 'admin', '/manager/adminList', '2020-09-18 08:17:36');
INSERT INTO `log` VALUES (94708473460298392, 'admin', '/manager/addAdmin', '2020-09-18 08:17:40');
INSERT INTO `log` VALUES (94708535703776861, 'admin', '/manager/addAdmin', '2020-09-18 08:17:55');
INSERT INTO `log` VALUES (94708543907836910, 'admin', '/manager/admin', '2020-09-18 08:17:56');
INSERT INTO `log` VALUES (94708544922852261, 'admin', '/manager/adminList', '2020-09-18 08:17:57');
INSERT INTO `log` VALUES (94708568188662219, 'admin', '/manager/delAdmin', '2020-09-18 08:18:02');
INSERT INTO `log` VALUES (94708575088281411, 'admin', '/manager/addAdmin', '2020-09-18 08:18:04');
INSERT INTO `log` VALUES (94708642524303780, 'admin', '/manager/addAdmin', '2020-09-18 08:18:20');
INSERT INTO `log` VALUES (94708654121559860, 'admin', '/manager/admin', '2020-09-18 08:18:23');
INSERT INTO `log` VALUES (94708655186905379, 'admin', '/manager/adminList', '2020-09-18 08:18:23');
INSERT INTO `log` VALUES (94708679119610824, 'admin', '/manager/delAdmin', '2020-09-18 08:18:29');
INSERT INTO `log` VALUES (94708679241241079, 'admin', '/manager/admin', '2020-09-18 08:18:29');
INSERT INTO `log` VALUES (94708680239483724, 'admin', '/manager/adminList', '2020-09-18 08:18:29');
INSERT INTO `log` VALUES (94708696077181078, 'admin', '/manager/log', '2020-09-18 08:18:33');
INSERT INTO `log` VALUES (94709483792642794, 'admin', '/manager/permission', '2020-09-18 08:21:41');
INSERT INTO `log` VALUES (94709484979625896, 'admin', '/manager/permissionList', '2020-09-18 08:21:41');
INSERT INTO `log` VALUES (94709957908344788, 'admin', '/manager/index', '2020-09-18 08:23:34');
INSERT INTO `log` VALUES (94709958420041155, 'admin', '/manager/console', '2020-09-18 08:23:34');
INSERT INTO `log` VALUES (94709959305044249, 'admin', '/manager/treeMenu', '2020-09-18 08:23:34');
INSERT INTO `log` VALUES (94709967639121941, 'admin', '/manager/log', '2020-09-18 08:23:36');
INSERT INTO `log` VALUES (94710123520439350, 'admin', '/manager/log', '2020-09-18 08:24:13');
INSERT INTO `log` VALUES (94710800424788605, 'admin', '/manager/index', '2020-09-18 08:26:54');
INSERT INTO `log` VALUES (94710801003603785, 'admin', '/manager/console', '2020-09-18 08:26:55');
INSERT INTO `log` VALUES (94710802014422247, 'admin', '/manager/treeMenu', '2020-09-18 08:26:55');
INSERT INTO `log` VALUES (94710808201032625, 'admin', '/manager/log', '2020-09-18 08:26:56');
INSERT INTO `log` VALUES (94710853822467746, 'admin', '/manager/permission', '2020-09-18 08:27:07');
INSERT INTO `log` VALUES (94710854866848111, 'admin', '/manager/permissionList', '2020-09-18 08:27:07');
INSERT INTO `log` VALUES (94710869748241646, 'admin', '/manager/role', '2020-09-18 08:27:11');
INSERT INTO `log` VALUES (94710870784235886, 'admin', '/manager/roleList', '2020-09-18 08:27:11');
INSERT INTO `log` VALUES (94710881597149252, 'admin', '/manager/admin', '2020-09-18 08:27:14');
INSERT INTO `log` VALUES (94710882742205825, 'admin', '/manager/adminList', '2020-09-18 08:27:14');
INSERT INTO `log` VALUES (94710938174121039, 'admin', '/manager/delRole', '2020-09-18 08:27:27');
INSERT INTO `log` VALUES (94710972890367682, 'admin', '/manager/addPermission', '2020-09-18 08:27:36');
INSERT INTO `log` VALUES (94710987486559491, 'admin', '/manager/addPermission', '2020-09-18 08:27:39');
INSERT INTO `log` VALUES (94710991391454562, 'admin', '/manager/permission', '2020-09-18 08:27:40');
INSERT INTO `log` VALUES (94710992406462817, 'admin', '/manager/permissionList', '2020-09-18 08:27:40');
INSERT INTO `log` VALUES (94711002657342102, 'admin', '/manager/addPermission', '2020-09-18 08:27:43');
INSERT INTO `log` VALUES (94711009204655463, 'admin', '/manager/addPermission', '2020-09-18 08:27:44');
INSERT INTO `log` VALUES (94711026275482308, 'admin', '/manager/addPermission', '2020-09-18 08:27:48');
INSERT INTO `log` VALUES (94712502359479211, 'admin', '/manager/index', '2020-09-18 08:33:40');
INSERT INTO `log` VALUES (94712502883774609, 'admin', '/manager/console', '2020-09-18 08:33:40');
INSERT INTO `log` VALUES (94712503584220565, 'admin', '/manager/treeMenu', '2020-09-18 08:33:41');
INSERT INTO `log` VALUES (94713421171207218, 'admin', '/manager/index', '2020-09-18 08:37:19');
INSERT INTO `log` VALUES (94713421611611979, 'admin', '/manager/console', '2020-09-18 08:37:19');
INSERT INTO `log` VALUES (94713422261717630, 'admin', '/manager/treeMenu', '2020-09-18 08:37:20');
INSERT INTO `log` VALUES (94713449314979785, 'admin', '/manager/admin', '2020-09-18 08:37:26');
INSERT INTO `log` VALUES (94713450594251231, 'admin', '/manager/adminList', '2020-09-18 08:37:26');
INSERT INTO `log` VALUES (94713674711508051, 'admin', '/manager/index', '2020-09-18 08:38:20');
INSERT INTO `log` VALUES (94713675248372821, 'admin', '/manager/console', '2020-09-18 08:38:20');
INSERT INTO `log` VALUES (94713675982386642, 'admin', '/manager/treeMenu', '2020-09-18 08:38:20');
INSERT INTO `log` VALUES (94713682353532666, 'admin', '/manager/admin', '2020-09-18 08:38:22');
INSERT INTO `log` VALUES (94713683544705428, 'admin', '/manager/adminList', '2020-09-18 08:38:22');
INSERT INTO `log` VALUES (94714582980171712, 'admin', '/manager/index', '2020-09-18 08:41:56');
INSERT INTO `log` VALUES (94714583449929812, 'admin', '/manager/console', '2020-09-18 08:41:56');
INSERT INTO `log` VALUES (94714584041326285, 'admin', '/manager/treeMenu', '2020-09-18 08:41:57');
INSERT INTO `log` VALUES (94714607755932918, 'admin', '/manager/role', '2020-09-18 08:42:02');
INSERT INTO `log` VALUES (94714608808693711, 'admin', '/manager/roleList', '2020-09-18 08:42:02');
INSERT INTO `log` VALUES (94716537411138439, 'admin', '/manager/index', '2020-09-18 08:49:42');
INSERT INTO `log` VALUES (94716537834760618, 'admin', '/manager/console', '2020-09-18 08:49:42');
INSERT INTO `log` VALUES (94716538535206965, 'admin', '/manager/treeMenu', '2020-09-18 08:49:43');
INSERT INTO `log` VALUES (94716547351635030, 'admin', '/manager/log', '2020-09-18 08:49:45');
INSERT INTO `log` VALUES (94718366058254264, 'admin', '/manager/index', '2020-09-18 08:56:58');
INSERT INTO `log` VALUES (94718366548990183, 'admin', '/manager/console', '2020-09-18 08:56:58');
INSERT INTO `log` VALUES (94718367299772825, 'admin', '/manager/treeMenu', '2020-09-18 08:56:59');
INSERT INTO `log` VALUES (94718428389809750, 'admin', '/manager/log', '2020-09-18 08:57:13');
INSERT INTO `log` VALUES (94718658318743391, 'admin', '/manager/index', '2020-09-18 08:58:08');
INSERT INTO `log` VALUES (94718658843026760, 'admin', '/manager/console', '2020-09-18 08:58:08');
INSERT INTO `log` VALUES (94718659602194929, 'admin', '/manager/treeMenu', '2020-09-18 08:58:08');
INSERT INTO `log` VALUES (94718897555657964, 'admin', '/manager/index', '2020-09-18 08:59:05');
INSERT INTO `log` VALUES (94718898050583338, 'admin', '/manager/console', '2020-09-18 08:59:05');
INSERT INTO `log` VALUES (94718898847505618, 'admin', '/manager/treeMenu', '2020-09-18 08:59:05');
INSERT INTO `log` VALUES (94719341930608432, 'admin', '/manager/index', '2020-09-18 09:00:51');
INSERT INTO `log` VALUES (94719342438112693, 'admin', '/manager/console', '2020-09-18 09:00:51');
INSERT INTO `log` VALUES (94719343117585053, 'admin', '/manager/treeMenu', '2020-09-18 09:00:51');
INSERT INTO `log` VALUES (94719734953005972, 'admin', '/manager/index', '2020-09-18 09:02:25');
INSERT INTO `log` VALUES (94719735435353181, 'admin', '/manager/console', '2020-09-18 09:02:25');
INSERT INTO `log` VALUES (94719736190324291, 'admin', '/manager/treeMenu', '2020-09-18 09:02:25');
INSERT INTO `log` VALUES (94720336663669052, 'admin', '/manager/index', '2020-09-18 09:04:48');
INSERT INTO `log` VALUES (94720337129236577, 'admin', '/manager/console', '2020-09-18 09:04:48');
INSERT INTO `log` VALUES (94720338127474814, 'admin', '/manager/treeMenu', '2020-09-18 09:04:48');
INSERT INTO `log` VALUES (94720341289986485, 'admin', '/manager/index', '2020-09-18 09:04:49');
INSERT INTO `log` VALUES (94720342023986003, 'admin', '/manager/console', '2020-09-18 09:04:49');
INSERT INTO `log` VALUES (94720343080945502, 'admin', '/manager/treeMenu', '2020-09-18 09:04:50');
INSERT INTO `log` VALUES (94720352643972488, 'admin', '/manager/info', '2020-09-18 09:04:52');
INSERT INTO `log` VALUES (94720363918255336, 'admin', '/manager/password', '2020-09-18 09:04:55');
INSERT INTO `log` VALUES (94720383828608395, 'admin', '/manager/editPassword', '2020-09-18 09:04:59');
INSERT INTO `log` VALUES (94720624652541519, 'admin', '/manager/index', '2020-09-18 09:05:57');
INSERT INTO `log` VALUES (94720625134890724, 'admin', '/manager/console', '2020-09-18 09:05:57');
INSERT INTO `log` VALUES (94720625902443105, 'admin', '/manager/treeMenu', '2020-09-18 09:05:57');
INSERT INTO `log` VALUES (94720633913557547, 'admin', '/manager/log', '2020-09-18 09:05:59');
INSERT INTO `log` VALUES (94722603688747110, 'admin', '/manager/index', '2020-09-18 09:13:49');
INSERT INTO `log` VALUES (94722604213036103, 'admin', '/manager/console', '2020-09-18 09:13:49');
INSERT INTO `log` VALUES (94722604733127346, 'admin', '/manager/treeMenu', '2020-09-18 09:13:49');
INSERT INTO `log` VALUES (94722621132862801, 'admin', '/manager/admin', '2020-09-18 09:13:53');
INSERT INTO `log` VALUES (94722622009464802, 'admin', '/manager/adminList', '2020-09-18 09:13:53');
INSERT INTO `log` VALUES (94724326759162457, 'admin', '/manager/index', '2020-09-18 09:20:39');
INSERT INTO `log` VALUES (94724327182792053, 'admin', '/manager/console', '2020-09-18 09:20:39');
INSERT INTO `log` VALUES (94724327736435337, 'admin', '/manager/treeMenu', '2020-09-18 09:20:40');
INSERT INTO `log` VALUES (94724546659429817, 'admin', '/manager/index', '2020-09-18 09:21:32');
INSERT INTO `log` VALUES (94724547133374555, 'admin', '/manager/console', '2020-09-18 09:21:32');
INSERT INTO `log` VALUES (94724547930299004, 'admin', '/manager/treeMenu', '2020-09-18 09:21:32');
INSERT INTO `log` VALUES (94724558311204167, 'admin', '/manager/role', '2020-09-18 09:21:35');
INSERT INTO `log` VALUES (94724559414312877, 'admin', '/manager/roleList', '2020-09-18 09:21:35');
INSERT INTO `log` VALUES (94724562664888987, 'admin', '/manager/admin', '2020-09-18 09:21:36');
INSERT INTO `log` VALUES (94724563646352401, 'admin', '/manager/adminList', '2020-09-18 09:21:36');
INSERT INTO `log` VALUES (94724568939566299, 'admin', '/manager/addAdmin', '2020-09-18 09:21:37');
INSERT INTO `log` VALUES (94724664263516488, 'admin', '/manager/addAdmin', '2020-09-18 09:22:00');
INSERT INTO `log` VALUES (94724668780779231, 'admin', '/manager/admin', '2020-09-18 09:22:01');
INSERT INTO `log` VALUES (94724669753860853, 'admin', '/manager/adminList', '2020-09-18 09:22:01');
INSERT INTO `log` VALUES (94724703706755786, 'chen', '/manager/index', '2020-09-18 09:22:09');
INSERT INTO `log` VALUES (94724704147152604, 'chen', '/manager/console', '2020-09-18 09:22:09');
INSERT INTO `log` VALUES (94724704734358435, 'chen', '/manager/treeMenu', '2020-09-18 09:22:10');
INSERT INTO `log` VALUES (94724730390906658, 'chen', '/manager/log', '2020-09-18 09:22:16');
INSERT INTO `log` VALUES (94724778080153704, 'chen', '/manager/admin', '2020-09-18 09:22:27');
INSERT INTO `log` VALUES (94724778998698045, 'chen', '/manager/adminList', '2020-09-18 09:22:27');
INSERT INTO `log` VALUES (94724785655060521, 'chen', '/manager/role', '2020-09-18 09:22:29');
INSERT INTO `log` VALUES (94724786481340757, 'chen', '/manager/roleList', '2020-09-18 09:22:29');
INSERT INTO `log` VALUES (94724807519967502, 'chen', '/manager/allotPer', '2020-09-18 09:22:34');
INSERT INTO `log` VALUES (94724808312695940, 'chen', '/manager/permissionList', '2020-09-18 09:22:34');
INSERT INTO `log` VALUES (94724842546598845, 'chen', '/manager/allotPer', '2020-09-18 09:22:42');
INSERT INTO `log` VALUES (94724842710173846, 'chen', '/manager/role', '2020-09-18 09:22:42');
INSERT INTO `log` VALUES (94724843549044318, 'chen', '/manager/roleList', '2020-09-18 09:22:43');
INSERT INTO `log` VALUES (94724849651754492, 'chen', '/manager/index', '2020-09-18 09:22:44');
INSERT INTO `log` VALUES (94724850071179822, 'chen', '/manager/console', '2020-09-18 09:22:44');
INSERT INTO `log` VALUES (94724850633212865, 'chen', '/manager/treeMenu', '2020-09-18 09:22:44');
INSERT INTO `log` VALUES (94724892496574122, 'chen', '/manager/index', '2020-09-18 09:22:54');
INSERT INTO `log` VALUES (94724892957945207, 'chen', '/manager/console', '2020-09-18 09:22:54');
INSERT INTO `log` VALUES (94724893704526062, 'chen', '/manager/treeMenu', '2020-09-18 09:22:55');
INSERT INTO `log` VALUES (94724911517732892, 'chen', '/manager/role', '2020-09-18 09:22:59');
INSERT INTO `log` VALUES (94724912339821156, 'chen', '/manager/roleList', '2020-09-18 09:22:59');
INSERT INTO `log` VALUES (94724921030414630, 'chen', '/manager/admin', '2020-09-18 09:23:01');
INSERT INTO `log` VALUES (94724921911228674, 'chen', '/manager/adminList', '2020-09-18 09:23:01');
INSERT INTO `log` VALUES (1306841106763251714, 'admin', '/manager/index', '2020-09-18 06:22:54');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint NOT NULL,
  `pid` bigint DEFAULT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, -1, '控制面板', 'fa-home', '-1    ', NULL, NULL, '2020-09-18 08:27:39', NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2, -1, '用户管理', 'fa-book', '', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (3, 2, '用户列表', NULL, '/manager/admin', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (4, 2, '角色列表', NULL, '/manager/role', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (6, 1, '后台主页', NULL, '/manager/index', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (7, -1, '系统日志', 'fa-pencil', '', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (9, 2, '权限列表', NULL, '/manager/permission', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (11, 7, '日志列表', NULL, '/manager/log', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (94681540383709935, -1, 't1', '0', '-1', '2020-09-18 06:30:38', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (94690004415863093, -1, 't1', '0', '-1', '2020-09-18 07:04:16', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (94695203216368723, -1, 't11', 'fa-home', '-1', '2020-09-18 07:24:56', NULL, '2020-09-18 07:27:59', NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (94696022028721433, 94695203216368723, 't2', NULL, '-2', '2020-09-18 07:28:11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_menu` VALUES (94696666866330006, 94695203216368723, 't2', NULL, 't2', '2020-09-18 07:30:45', NULL, NULL, NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_Time` timestamp NULL DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, 'ROLE_SUPER_ADMIN', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_role` VALUES (2, 'ROLE_ADMIN', NULL, NULL, '2020-09-18 08:01:40', NULL, NULL, 0);
INSERT INTO `sys_role` VALUES (94704913915421766, 't1', '2020-09-18 08:03:31', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (94705582506131481, 't1', '2020-09-18 08:06:10', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (94707753029078600, 't1', '2020-09-18 08:14:48', NULL, NULL, NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint NOT NULL,
  `rid` bigint DEFAULT NULL,
  `tid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_role_treemenu` (`rid`) USING BTREE,
  KEY `FK_role_treemenu1` (`tid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (85, 1, 1);
INSERT INTO `sys_role_menu` VALUES (86, 1, 6);
INSERT INTO `sys_role_menu` VALUES (87, 1, 2);
INSERT INTO `sys_role_menu` VALUES (88, 1, 3);
INSERT INTO `sys_role_menu` VALUES (89, 1, 4);
INSERT INTO `sys_role_menu` VALUES (90, 1, 9);
INSERT INTO `sys_role_menu` VALUES (91, 1, 7);
INSERT INTO `sys_role_menu` VALUES (92, 1, 11);
INSERT INTO `sys_role_menu` VALUES (94724838834645325, 2, 1);
INSERT INTO `sys_role_menu` VALUES (94724838834645326, 2, 6);
INSERT INTO `sys_role_menu` VALUES (94724838834645327, 2, 2);
INSERT INTO `sys_role_menu` VALUES (94724838834645328, 2, 3);
INSERT INTO `sys_role_menu` VALUES (94724838834645329, 2, 4);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rid` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_user` bigint DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_user` bigint DEFAULT NULL,
  `version` bigint DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_admin` (`rid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (15, 'admin', '$2a$10$EoeTmeoeNPBDH2g5qM.tYuQAkkQTi/uL..WszntwqEHzQkkAMPScC', '13333634203', '1710031565@qq.com', 1, 1, '2019-07-18 00:00:00', 0, NULL, 0, NULL, 0);
INSERT INTO `sys_user` VALUES (27, 'superNice', '$2a$10$EoeTmeoeNPBDH2g5qM.tYuQAkkQTi/uL..WszntwqEHzQkkAMPScC', '12589745201', 'wdd@qq.com', 2, 1, '2019-07-19 00:00:00', NULL, '2020-09-18 08:17:33', NULL, NULL, 0);
INSERT INTO `sys_user` VALUES (94708535288530203, 'test', '$2a$10$adA9IM0i1EmMTsJL1pID4OjipoCi/3Frn8MD/SLSjK6K5UWqQ5rP.', '12121212121', '1212@12.com', 2, 1, '2020-09-18 08:17:54', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (94708642121656229, 'test', '$2a$10$kb.QJVzdlgcdjwP/z8lXe.D3WC.AXXvVV/PgFdFRgxMaFqaDU9Mca', '12121212121', '12112@12.com', 2, 1, '2020-09-18 08:18:20', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_user` VALUES (94724663915388661, 'chen', '$2a$10$6f2/vBtKPSyb/SXcF.HMT.d341wbllNW9JTNHRN5vaDHvrD22JIj6', '12312312312', '123123@oo.oo', 2, 1, '2020-09-18 09:22:00', NULL, NULL, NULL, NULL, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
