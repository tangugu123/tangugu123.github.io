/*
Navicat MySQL Data Transfer

Source Server         : tgg
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : tgg-s1

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2022-10-14 17:22:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cno` char(6) NOT NULL,
  `cname` char(20) NOT NULL,
  `cteacher` char(10) DEFAULT NULL,
  `csemester` int(1) DEFAULT NULL,
  `credic` int(1) NOT NULL,
  `ctime` int(1) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('101', '计算机原理', '陈红', '2', '3', '45');
INSERT INTO `course` VALUES ('102', '计算方法', '王颐', '3', '3', '45');
INSERT INTO `course` VALUES ('103', '操作系统', '徐格', '2', '4', '60');
INSERT INTO `course` VALUES ('104', '数据库原理及应用', '应对刚', '3', '5', '75');
INSERT INTO `course` VALUES ('105', '网络基础', '吴江江', '4', '3', '45');
INSERT INTO `course` VALUES ('106', '高等数学', '孙中文', '1', '6', '90');
INSERT INTO `course` VALUES ('107', '英语', '陈刚', '1', '6', '90');
INSERT INTO `course` VALUES ('108', 'VB程序设计', '赵红韦', '3', '5', '70');

-- ----------------------------
-- Table structure for `sc`
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `sno` char(6) NOT NULL,
  `cno` char(6) NOT NULL,
  `grade` int(1) DEFAULT NULL,
  KEY `i` (`sno`),
  KEY `u` (`cno`),
  CONSTRAINT `i` FOREIGN KEY (`sno`) REFERENCES `student` (`sno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `u` FOREIGN KEY (`cno`) REFERENCES `course` (`cno`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('020101', '101', '85');
INSERT INTO `sc` VALUES ('020101', '102', '87');
INSERT INTO `sc` VALUES ('020101', '107', '88');
INSERT INTO `sc` VALUES ('020102', '101', '58');
INSERT INTO `sc` VALUES ('020102', '102', '63');
INSERT INTO `sc` VALUES ('020104', '107', '76');
INSERT INTO `sc` VALUES ('020102', '103', '55');
INSERT INTO `sc` VALUES ('020102', '108', '80');
INSERT INTO `sc` VALUES ('020103', '103', '57');
INSERT INTO `sc` VALUES ('020104', '103', '71');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sno` char(6) NOT NULL,
  `sname` char(8) NOT NULL,
  `ssex` char(1) NOT NULL,
  `sage` int(4) NOT NULL,
  `sjob` char(10) NOT NULL,
  `sdept` char(10) NOT NULL,
  `snumber` char(11) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('020101', '杨颖', '0', '18', '计算机应用', '计算机', '88297147');
INSERT INTO `student` VALUES ('020102', '方露露', '0', '20', '计算机应用', '计算机', '64545454');
INSERT INTO `student` VALUES ('020103', '俞奇军', '1', '13', '信息管理', '计算机', '64487874');
INSERT INTO `student` VALUES ('020104', '胡国强', '1', '12', '信息管理', '计算机', '89797488');
INSERT INTO `student` VALUES ('020105', '薛冰', '1', '58', '水利工程', '水利系', '87164156');
INSERT INTO `student` VALUES ('020201', '秦盈飞', '0', '54', '电子商务', '经济系', '49789445');
INSERT INTO `student` VALUES ('020202', '董含静', '0', '11', '电子商务', '经济系', '89797844');
INSERT INTO `student` VALUES ('020203', '陈伟', '1', '34', '电子商务', '经济系', '97897443');
INSERT INTO `student` VALUES ('020204', '陈新江', '1', '9', '房建', '水利系', '87979797');
