/*
Navicat MySQL Data Transfer

Source Server         : Vinus
Source Server Version : 50547
Source Host           : 192.168.1.245:3306
Source Database       : contratos

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-06-14 09:19:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auditoria
-- ----------------------------
DROP TABLE IF EXISTS `auditoria`;
CREATE TABLE `auditoria` (
  `Id_Auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha y hora del acceso',
  `Fk_Id_Usuario` int(11) DEFAULT NULL COMMENT 'Id foráneo del usuario que realiza la acción',
  `Descripcion` varchar(300) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL COMMENT 'Descripción de la acción realizada',
  `Fk_Id_Auditoria_Tipo` int(11) DEFAULT NULL COMMENT 'Id foráneo del tipo de acción',
  PRIMARY KEY (`Id_Auditoria`),
  KEY `Tipo de auditoria` (`Fk_Id_Auditoria_Tipo`),
  CONSTRAINT `Tipo de auditoria` FOREIGN KEY (`Fk_Id_Auditoria_Tipo`) REFERENCES `auditoria_tipo` (`Pk_Id_Auditoria_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auditoria
-- ----------------------------
INSERT INTO `auditoria` VALUES ('1', '2016-03-08 21:01:10', '9', 'Sale de la aplicación', '3');
INSERT INTO `auditoria` VALUES ('2', '2016-03-08 21:01:18', null, 'cflorez intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('3', '2016-03-08 21:01:18', '9', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('4', '2016-03-08 21:02:13', '9', 'Sale de la aplicación', '3');
INSERT INTO `auditoria` VALUES ('5', '2016-03-09 08:43:47', null, 'cflorez intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('6', '2016-03-09 08:43:47', '9', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('7', '2016-03-09 09:04:34', null, 'jcano intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('8', '2016-03-09 09:04:34', '1', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('9', '2016-03-09 09:28:27', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('10', '2016-03-09 09:42:14', null, 'jcano intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('11', '2016-03-09 09:42:14', '1', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('12', '2016-03-09 10:05:27', '1', 'Sale de la aplicación', '3');
INSERT INTO `auditoria` VALUES ('13', '2016-03-09 10:05:31', null, 'jcano intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('14', '2016-03-09 10:05:31', '1', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('15', '2016-03-09 10:35:54', '9', 'Sale de la aplicación', '3');
INSERT INTO `auditoria` VALUES ('16', '2016-03-09 10:49:39', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('17', '2016-03-09 13:26:19', null, 'jcano intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('18', '2016-03-09 13:26:19', '1', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('19', '2016-03-10 10:23:41', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('20', '2016-03-10 10:23:41', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('21', '2016-03-10 10:59:52', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('22', '2016-03-10 10:59:59', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('23', '2016-03-10 10:59:59', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('24', '2016-03-10 11:03:58', '43', 'Crea el tercero 1 (SISMEDICA LIMITADA)', '7');
INSERT INTO `auditoria` VALUES ('25', '2016-03-10 11:06:49', '43', 'Crea el tercero 2 (DISTRITECKS S.A.S.)', '7');
INSERT INTO `auditoria` VALUES ('26', '2016-03-10 11:12:58', '43', 'Crea el contrato 2016002', '5');
INSERT INTO `auditoria` VALUES ('27', '2016-03-10 11:13:52', '43', 'Crea el tercero 3 (VINUS S.A.S.)', '7');
INSERT INTO `auditoria` VALUES ('28', '2016-03-10 11:13:59', '43', 'Modifica el contrato 2016002', '6');
INSERT INTO `auditoria` VALUES ('29', '2016-03-10 12:00:35', '43', 'Sube el archivo 06 Anexo Contrato 2016002.pdf', '14');
INSERT INTO `auditoria` VALUES ('30', '2016-03-10 12:12:37', '43', 'Crea el contrato 2016003', '5');
INSERT INTO `auditoria` VALUES ('31', '2016-03-10 12:15:55', '43', 'Crea el tercero 4 (GUSTAVO TRUJILLO MONTOYA)', '7');
INSERT INTO `auditoria` VALUES ('32', '2016-03-10 12:19:42', '43', 'Crea el contrato 2016001', '5');
INSERT INTO `auditoria` VALUES ('33', '2016-03-10 12:22:47', '43', 'Sube el archivo 06 Anexo Contrato 2016003.pdf', '14');
INSERT INTO `auditoria` VALUES ('34', '2016-03-10 14:09:00', '43', 'Crea el tercero 5 (OTILIO DE JESUS GAVIRIA BETANCUR)', '7');
INSERT INTO `auditoria` VALUES ('35', '2016-03-10 14:10:21', '43', 'Crea el contrato 2016004', '5');
INSERT INTO `auditoria` VALUES ('36', '2016-03-10 21:59:46', null, 'jcano intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('37', '2016-03-10 21:59:46', '1', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('38', '2016-03-10 22:01:06', '1', 'Genera el acta de inicio para el contrato 3', '15');
INSERT INTO `auditoria` VALUES ('39', '2016-03-14 12:08:16', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('40', '2016-03-14 12:08:23', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('41', '2016-03-14 12:08:34', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('42', '2016-03-14 12:08:34', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('43', '2016-03-14 12:10:44', '43', 'Crea el tercero 6 (TRANSPORTES Y TURISMO 1A S.A.S.)', '7');
INSERT INTO `auditoria` VALUES ('44', '2016-03-14 12:10:44', '43', 'Crea el contrato 2016005', '5');
INSERT INTO `auditoria` VALUES ('45', '2016-03-14 14:37:27', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('46', '2016-03-14 14:37:27', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('47', '2016-03-14 14:38:00', '43', 'Sube el archivo 05 Contrato 2016001.pdf', '14');
INSERT INTO `auditoria` VALUES ('48', '2016-03-15 07:30:43', null, 'jcano intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('49', '2016-03-15 07:30:43', '1', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('50', '2016-03-15 11:48:45', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('51', '2016-03-15 11:48:45', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('52', '2016-03-15 14:56:15', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('53', '2016-03-15 14:56:15', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('54', '2016-03-15 15:00:12', '43', 'Crea el tercero 7 (SEGUROS CONFIANZA S.A.)', '7');
INSERT INTO `auditoria` VALUES ('55', '2016-03-15 15:02:48', '43', 'Modifica el contrato 2016002', '6');
INSERT INTO `auditoria` VALUES ('56', '2016-03-15 15:12:45', '43', 'Modifica el contrato 2016003', '6');
INSERT INTO `auditoria` VALUES ('57', '2016-03-16 07:46:18', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('58', '2016-03-16 07:46:18', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('59', '2016-03-16 07:46:47', '43', 'Sube el archivo 08 Poliza Cumplimiento 2016002.pdf', '14');
INSERT INTO `auditoria` VALUES ('60', '2016-03-16 07:46:55', '43', 'Sube el archivo 13 Poliza RC 2016002.pdf', '14');
INSERT INTO `auditoria` VALUES ('61', '2016-03-16 07:47:30', '43', 'Sube el archivo 08 Poliza Cumplimiento 2016003.pdf', '14');
INSERT INTO `auditoria` VALUES ('62', '2016-03-16 07:47:41', '43', 'Sube el archivo 13 Poliza RC 2016003.pdf', '14');
INSERT INTO `auditoria` VALUES ('63', '2016-03-30 17:06:15', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('64', '2016-03-30 17:06:26', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('65', '2016-03-30 17:06:36', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('66', '2016-03-30 17:06:40', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('67', '2016-03-30 17:06:40', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('68', '2016-03-31 16:14:55', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('69', '2016-03-31 16:14:55', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('70', '2016-03-31 16:23:54', '43', 'Sube el archivo 05 Contrato 2016003.pdf', '14');
INSERT INTO `auditoria` VALUES ('71', '2016-03-31 16:59:36', '43', 'Sube el archivo 05 Contrato 2016002.pdf', '14');
INSERT INTO `auditoria` VALUES ('72', '2016-04-05 08:58:49', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('73', '2016-04-05 08:59:05', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('74', '2016-04-05 08:59:13', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('75', '2016-04-05 08:59:13', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('76', '2016-04-05 08:59:45', '43', 'Sube el archivo 05 Contrato 2016004.pdf', '14');
INSERT INTO `auditoria` VALUES ('77', '2016-04-11 11:36:44', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('78', '2016-04-11 11:36:44', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('79', '2016-04-11 11:38:29', '43', 'Crea el tercero 8 (MARIA LUZMILA VALENCIA TOBON)', '7');
INSERT INTO `auditoria` VALUES ('80', '2016-04-11 11:38:29', '43', 'Crea el contrato 2016006', '5');
INSERT INTO `auditoria` VALUES ('81', '2016-04-11 11:40:58', '43', 'Crea el tercero 9 (TECNUMEC S.A.S.)', '7');
INSERT INTO `auditoria` VALUES ('82', '2016-04-11 11:40:58', '43', 'Crea el contrato 2016007', '5');
INSERT INTO `auditoria` VALUES ('83', '2016-04-11 11:43:43', '43', 'Crea el tercero 10 (INVERSIONES HERMANOS VILLEGAS Y ASOCIADOS LIMITADA)', '7');
INSERT INTO `auditoria` VALUES ('84', '2016-04-11 11:43:43', '43', 'Crea el contrato 2016008', '5');
INSERT INTO `auditoria` VALUES ('85', '2016-04-11 11:47:18', '43', 'Crea el tercero 11 (SERACIS LIMITADA)', '7');
INSERT INTO `auditoria` VALUES ('86', '2016-04-11 11:47:18', '43', 'Crea el contrato 2016009', '5');
INSERT INTO `auditoria` VALUES ('87', '2016-04-11 11:52:02', '43', 'Crea el tercero 12 (REGENCY SERVICES DE COLOMBIA S.A.S.)', '7');
INSERT INTO `auditoria` VALUES ('88', '2016-04-11 11:52:02', '43', 'Crea el contrato 2016010', '5');
INSERT INTO `auditoria` VALUES ('89', '2016-04-11 17:46:38', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('90', '2016-04-11 17:46:38', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('91', '2016-04-12 09:00:41', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('92', '2016-04-12 09:00:42', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('93', '2016-04-12 09:01:54', '43', 'Sube el archivo 05 Contrato 2016006.pdf', '14');
INSERT INTO `auditoria` VALUES ('94', '2016-04-18 12:31:40', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('95', '2016-04-18 12:31:45', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('96', '2016-04-18 12:31:45', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('97', '2016-04-18 12:34:18', '43', 'Crea el tercero 13 (RADIOENLACE S.A.S.)', '7');
INSERT INTO `auditoria` VALUES ('98', '2016-04-18 12:34:18', '43', 'Crea el contrato 2016011', '5');
INSERT INTO `auditoria` VALUES ('99', '2016-04-18 12:37:27', '43', 'Crea el tercero 14 (DYMANICA INGENIERIA Y AMBIENTE S.A.S.)', '7');
INSERT INTO `auditoria` VALUES ('100', '2016-04-18 12:37:27', '43', 'Crea el contrato 2016013', '5');
INSERT INTO `auditoria` VALUES ('101', '2016-04-18 12:55:33', '43', 'Crea el tercero 15 (ESTRUCTURADORES LEGALES S.A.S.)', '7');
INSERT INTO `auditoria` VALUES ('102', '2016-04-18 12:55:33', '43', 'Crea el contrato 2016012', '5');
INSERT INTO `auditoria` VALUES ('103', '2016-04-18 15:24:56', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('104', '2016-04-18 15:25:03', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('105', '2016-04-18 15:25:07', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('106', '2016-04-18 15:25:07', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('107', '2016-04-19 08:42:42', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('108', '2016-04-19 08:42:42', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('109', '2016-04-20 15:01:47', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('110', '2016-04-20 15:01:47', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('111', '2016-04-20 17:23:27', '43', 'Sube el archivo 13 Poliza RC 2016010.pdf', '14');
INSERT INTO `auditoria` VALUES ('112', '2016-04-20 17:23:36', '43', 'Sube el archivo 08 Poliza Cumplimiento 2016010.pdf', '14');
INSERT INTO `auditoria` VALUES ('113', '2016-04-21 08:57:25', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('114', '2016-04-21 08:57:25', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('115', '2016-04-21 13:09:47', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('116', '2016-04-21 13:09:47', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('117', '2016-04-26 14:23:32', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('118', '2016-04-26 14:23:32', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('119', '2016-04-27 16:55:23', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('120', '2016-04-27 16:55:23', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('121', '2016-04-27 16:56:15', '43', 'Sube el archivo 05 Contrato 2016013.pdf', '14');
INSERT INTO `auditoria` VALUES ('122', '2016-04-27 17:01:05', '43', 'Crea el tercero 16 (CORALONJA)', '7');
INSERT INTO `auditoria` VALUES ('123', '2016-04-27 17:01:05', '43', 'Crea el contrato 2016014', '5');
INSERT INTO `auditoria` VALUES ('124', '2016-04-27 17:01:30', '43', 'Sube el archivo 05 Contrato 2016014.pdf', '14');
INSERT INTO `auditoria` VALUES ('125', '2016-04-27 17:01:38', '43', 'Sube el archivo 08 Poliza Cumplimiento 2016014.pdf', '14');
INSERT INTO `auditoria` VALUES ('126', '2016-05-06 16:47:39', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('127', '2016-05-06 16:47:44', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('128', '2016-05-06 16:47:52', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('129', '2016-05-06 16:47:59', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('130', '2016-05-06 16:47:59', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('131', '2016-05-10 11:48:09', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('132', '2016-05-10 11:48:14', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('133', '2016-05-10 11:48:14', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('134', '2016-05-10 14:13:04', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('135', '2016-05-10 14:13:04', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('136', '2016-05-12 17:06:29', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('137', '2016-05-12 17:06:29', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('138', '2016-05-12 17:11:24', '43', 'Crea el tercero 17 (CONSORCIO GRUPO EJECUTOR HATOVIAL - GEHATOVIAL)', '7');
INSERT INTO `auditoria` VALUES ('139', '2016-05-12 17:11:24', '43', 'Crea el contrato 0012016', '5');
INSERT INTO `auditoria` VALUES ('140', '2016-05-12 17:15:54', '43', 'Crea el tercero 18 (CORPORACION ALTERNATIVA DE GIRARDOTA)', '7');
INSERT INTO `auditoria` VALUES ('141', '2016-05-12 17:15:55', '43', 'Crea el contrato 2016015', '5');
INSERT INTO `auditoria` VALUES ('142', '2016-05-12 17:18:10', '43', 'Crea el tercero 19 (EDISON SERAFIN CARDENAS MARIN)', '7');
INSERT INTO `auditoria` VALUES ('143', '2016-05-12 17:18:10', '43', 'Crea el contrato 2016016', '5');
INSERT INTO `auditoria` VALUES ('144', '2016-05-12 17:20:09', '43', 'Crea el tercero 20 (GUSTAVO ADOLFO CHAVERRA AMAYA)', '7');
INSERT INTO `auditoria` VALUES ('145', '2016-05-12 17:20:09', '43', 'Crea el contrato 2016017', '5');
INSERT INTO `auditoria` VALUES ('146', '2016-05-12 17:20:42', '43', 'Sube el archivo 05 Contrato 2016015.pdf', '14');
INSERT INTO `auditoria` VALUES ('147', '2016-05-12 17:21:10', '43', 'Sube el archivo 05 Contrato 2016016.pdf', '14');
INSERT INTO `auditoria` VALUES ('148', '2016-05-12 17:21:31', '43', 'Sube el archivo 05 Contrato 2016017.pdf', '14');
INSERT INTO `auditoria` VALUES ('149', '2016-05-12 17:25:11', '43', 'Sube el archivo 05 Contrato 12016.pdf', '14');
INSERT INTO `auditoria` VALUES ('150', '2016-05-16 14:04:45', null, 'cflorez intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('151', '2016-05-17 12:32:28', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('152', '2016-05-17 12:32:28', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('153', '2016-05-17 12:36:15', '43', 'Crea el tercero 21 (MINCIVIL S.A.S.)', '7');
INSERT INTO `auditoria` VALUES ('154', '2016-05-17 12:36:15', '43', 'Crea el contrato 22016', '5');
INSERT INTO `auditoria` VALUES ('155', '2016-05-17 16:02:12', null, 'jcano intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('156', '2016-05-17 16:02:12', '1', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('157', '2016-05-23 07:58:24', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('158', '2016-05-23 07:58:24', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('159', '2016-05-23 12:20:11', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('160', '2016-05-23 12:20:11', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('161', '2016-06-01 17:13:47', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('162', '2016-06-01 17:13:47', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('163', '2016-06-10 09:15:04', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('164', '2016-06-10 09:15:12', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('165', '2016-06-10 09:15:12', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('166', '2016-06-10 16:39:17', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('167', '2016-06-10 16:39:17', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('168', '2016-06-10 16:39:31', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('169', '2016-06-10 16:39:31', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('170', '2016-06-13 08:26:19', null, 'oalarcon intenta validarse', '1');
INSERT INTO `auditoria` VALUES ('171', '2016-06-13 08:26:19', '43', 'Ingresa a la aplicación', '2');
INSERT INTO `auditoria` VALUES ('172', '2016-06-13 08:27:42', '43', 'Sube el archivo 08 Poliza Cumplimiento 2016010.pdf', '14');
INSERT INTO `auditoria` VALUES ('173', '2016-06-13 08:27:52', '43', 'Sube el archivo 05 Contrato 2016010.pdf', '14');

-- ----------------------------
-- Table structure for auditoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS `auditoria_tipo`;
CREATE TABLE `auditoria_tipo` (
  `Pk_Id_Auditoria_Tipo` int(11) NOT NULL AUTO_INCREMENT,
  `Auditoria_Tipo` varchar(30) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Tipo de acción realizada',
  PRIMARY KEY (`Pk_Id_Auditoria_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auditoria_tipo
-- ----------------------------
INSERT INTO `auditoria_tipo` VALUES ('1', 'Intento de inicio de sesión');
INSERT INTO `auditoria_tipo` VALUES ('2', 'Ingreso a la aplicación');
INSERT INTO `auditoria_tipo` VALUES ('3', 'Salida de la aplicación');
INSERT INTO `auditoria_tipo` VALUES ('4', 'Creación de usuario');
INSERT INTO `auditoria_tipo` VALUES ('5', 'Creación de contrato');
INSERT INTO `auditoria_tipo` VALUES ('6', 'Modificación de contrato');
INSERT INTO `auditoria_tipo` VALUES ('7', 'Creación de tercero');
INSERT INTO `auditoria_tipo` VALUES ('8', 'Modificación de tercero');
INSERT INTO `auditoria_tipo` VALUES ('9', 'Registro de pago');
INSERT INTO `auditoria_tipo` VALUES ('10', 'Eliminación de pago');
INSERT INTO `auditoria_tipo` VALUES ('11', 'Registro de bitácora');
INSERT INTO `auditoria_tipo` VALUES ('12', 'Modificación de bitácora');
INSERT INTO `auditoria_tipo` VALUES ('13', 'Eliminación de bitácora');
INSERT INTO `auditoria_tipo` VALUES ('14', 'Subida de archivo');
INSERT INTO `auditoria_tipo` VALUES ('15', 'Acta de inicio');
INSERT INTO `auditoria_tipo` VALUES ('16', 'Acta de recibo');

-- ----------------------------
-- Table structure for contratos
-- ----------------------------
DROP TABLE IF EXISTS `contratos`;
CREATE TABLE `contratos` (
  `Pk_Id_Contrato` int(11) NOT NULL AUTO_INCREMENT,
  `Numero` bigint(7) NOT NULL,
  `Objeto` text CHARACTER SET utf8 COLLATE utf8_spanish_ci COMMENT 'Objeto del contrato',
  `Lugar` varchar(45) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Lozalizacion del contrato',
  `Fk_Id_Estado` int(11) DEFAULT NULL COMMENT 'Id foráneo del estado del contrato',
  `Valor_Inicial` decimal(13,2) DEFAULT '0.00' COMMENT 'Valor Inicial del Contrato',
  `Fecha_Inicial` date DEFAULT NULL COMMENT 'Fecha Inicial del contrato',
  `Plazo` int(3) DEFAULT NULL COMMENT 'Plazo del contrato (En días)',
  `Fecha_Vencimiento` date DEFAULT NULL COMMENT 'Fecha de vencimiento del contrato',
  `Porcentaje_Avance` decimal(3,0) DEFAULT NULL COMMENT 'Porcentaje de avance del contrato',
  `Acta_Inicio` int(1) DEFAULT '0' COMMENT 'Verifica si existe o no un acta de inicio',
  `Fecha_Acta_Inicio` date DEFAULT NULL COMMENT 'Fecha del acta de inicio',
  `Fk_Id_Usuario` int(11) DEFAULT NULL COMMENT 'Id foráneo del usuario que registra el contrato',
  `Fk_Id_Terceros` int(11) DEFAULT NULL COMMENT 'Id foráneo del tercero (Contratista)',
  `Fk_Id_Terceros_Contratante` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Contrato`),
  UNIQUE KEY `Pk_Id_Contrato` (`Pk_Id_Contrato`) USING BTREE,
  KEY `Fk_Id_Usuario` (`Fk_Id_Usuario`),
  KEY `Fk_Id_Estado` (`Fk_Id_Estado`),
  KEY `Tercero` (`Fk_Id_Terceros`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contratos
-- ----------------------------
INSERT INTO `contratos` VALUES ('1', '2016002', 'El CONTRATISTA se compromete a proveer del servicio de los vehículos necesarios para la operación de las vías concesionadas que hacen parte del Proyecto Vial de las Vías del Nus, de acuerdo al Apéndice Técnico 2, del contrato de concesión bajo el esquema APP No. 001 de 2016.', 'Pradera - Alto de Dolores', '1', '798000000.00', '2016-03-08', '180', '2016-09-04', '0', '0', '0000-00-00', '43', '2', '3');
INSERT INTO `contratos` VALUES ('2', '2016003', 'El objeto del presente contrato es la prestación de servicios de ambulancia 24 horas, que hace el CONTRATISTA al CONTRATANTE, para la operación por parte del CONTRATANTE del contrato de concesión bajo la modalidad de APP No. 001 de 2016, suscrito con la AGENCIA NACIONAL DE INFRAESTRUCTURA – ANI.', 'Pradera - Alto de Dolores', '1', '816000000.00', '2016-03-08', '180', '2016-09-04', '0', '0', '0000-00-00', '43', '1', '3');
INSERT INTO `contratos` VALUES ('3', '2016001', 'EL ARRENDATARIO se compromete a tomar en arriendo a EL ARRENDADOR un lote de terreno de su propiedad, que se describe así:\nLote de terreno con un área aproximada de 5.729 m2, dentro del cual se encuentra una edificación que consta de tres cuartos, un salón, un cuarto pequeño para instalar un baño, cinco sanitarios, tres lavamanos, un baño y un mezzanine en la zona del primer piso; y en el segundo piso una habitación con baño.\n\nLos linderos del lote objeto del presente contrato son: por el norte con la carretera al Municipio de Puerto Berrío, por el oriente con la finca Santa Ana  y con la quebrada El Molino, por el sur y occidente con el predio restante, propiedad del arrendador.', 'Cisneros', '1', '108000000.00', '2016-02-15', '1095', '2019-02-14', '0', '1', '2016-02-15', '43', '4', '3');
INSERT INTO `contratos` VALUES ('4', '2016004', 'EL TRANSPORTADOR se compromete a proporcionar a VINUS S.A.S. el servicio de transporte de carga, por medio de un CAMIÓN, el cual estará disponible 10 horas al día, 6 días a la semana, de lunes a sábado EL TRANSPORTADOR pondrá a disposición de VINUS S.AS. un CAMIÓN, para transportar la carga que EL CONTRATANTE requiera, dentro de las actividades de operación y mantenimiento incluidas en el contrato de concesión No. 97-CO-20-1737 y en cado uno de sus otrosí. El vehículo se encuentra en buenas condiciones mecánicas  y con los documentos que la Ley exige.', 'Todo el proyecto', '1', '18600000.00', '2016-03-08', '180', '2016-09-04', '0', '1', '2016-03-08', '43', '5', '3');
INSERT INTO `contratos` VALUES ('5', '2016005', 'El CONTRANTANTE contrata el servicio de transporte de personal de lunes a sábado por 12 horas diarias, en las vías que tiene concesionadas la Concesión Vías del Nus S.A.S., tales vías comprenden desde Cisneros -  Alto de Dolores – San Jose del Nus', 'Todo el proyecto', '1', '1.00', '2016-03-08', '180', null, '0', '1', '0000-00-00', '43', '6', '3');
INSERT INTO `contratos` VALUES ('6', '2016006', 'EL ARRENDATARIO se compromete a tomar en arriendo a EL ARRENDADOR un lote de terreno de su propiedad, que se describe así:\nLote de terreno con su correspondiente casa de habitación, demás mejoras y anexidades, con una superficie aproximada de trescientos doce (312) metros, cuyos linderos constan en la Escritura Nro. 40 del 19 de febrero de 1987.', 'Cisneros', '1', '3600000.00', '2016-04-01', '180', '2016-09-28', '0', '1', '2016-04-01', '43', '8', '3');
INSERT INTO `contratos` VALUES ('7', '2016007', 'Orden de servicio, cuyo objeto es realizar la medición de fisuras y grietas con equipo de alto rendimiento y calificación de estado de las obras de drenaje que se encuentran a lo largo de las vías concesionadas a la sociedad VINUS S.A.S., comprendida entre Cisneros y Alto de Dolores, en aproximadamente 35 kilómetros.', 'Cisneros - Alto de Dolores', '1', '14700000.00', '2016-03-31', '5', '2016-04-05', '0', '1', '2016-03-31', '43', '9', '3');
INSERT INTO `contratos` VALUES ('8', '2016008', 'EL ARRENDATARIO se compromete a tomar en arriendo a EL ARRENDADOR un lote de terreno de su propiedad, que se describe así:\n\nParqueadero con área aproximada de 139.2 mts cuadrados para parquear una ambulancia y dos cama-bajas, se encuentra descubierto, y una habitación (numero 34) para ser acondicionada como oficina las 24 horas, la cual cuenta con baño privado y será entregada desocupada. EL ARRENDATARIO deberá acondicionar por su cuenta y riesgo la oficina con el compromiso de dejarla igual como le será entregada. \n\nLos linderos del lote objeto del presente contrato son: por el frente con la autopista Cisneros Puerto Berrio y por los costados derecho, izquierdo y parte de atrás con el arrendador.\n \nEl parqueadero y la oficina se encuentran ubicadas en Servicentro Puerto Nus y su dirección es: Autopista Cisneros Puerto- Berrio km 35+800 corregimiento Puerto Nus Maceo Antioquia.', 'Cisneros', '1', '19200000.00', '2016-03-01', '365', '2017-03-01', '0', '1', '2016-03-01', '43', '10', '3');
INSERT INTO `contratos` VALUES ('9', '2016009', 'El CONTRATISTA se compromete con el CONTRATANTE a prestar bajo su exclusiva responsabilidad, el servicio de vigilancia y seguridad privada en los lugares donde se adelanten obras del proyecto, en los lugares, días y horarios establecidos en los anexos del presente contrato los cuales hacen parte integral del mismo.', 'Todo el proyecto', '1', '124007784.00', '2016-03-01', '365', '2017-03-01', '0', '1', '2016-03-01', '43', '11', '3');
INSERT INTO `contratos` VALUES ('10', '2016010', 'EL CONTRATISTA ofrece prestar los servicios de administración, operación y mantenimiento, el recaudo, la custodia, el transporte y la consignación de los valores obtenidos con el cobro de las tasas de peaje a los usuarios de la vía de la estación de peaje Cisneros para el Proyecto Vías del Nus.', 'Estacion Peaje Cisneros', '1', '396000000.00', '2016-04-08', '365', '2017-04-08', '0', '0', '0000-00-00', '43', '12', '3');
INSERT INTO `contratos` VALUES ('11', '2016011', 'El CONTRATISTA se compromete a proveer de un sistema integral de comunicaciones necesarias para coordinar el personal de operaciones y las actividades necesaria para cumplir con el objeto del contrato de concesión suscrito por la sociedad contratante y la AGENCIA NACIONAL DE INFRAESTRUCTURA – ANI', 'Todo el proyecto', '1', '28080000.00', '2016-04-15', '180', '2016-10-12', '0', '0', '0000-00-00', '43', '13', '3');
INSERT INTO `contratos` VALUES ('12', '2016013', 'EL CONTRATISTA, de manera independiente, es decir, sin que exista subordinación jurídica, utilizando sus propios medios, prestará asesoría y acompañamiento a EL CONTRATANTE en el proceso de verificación de disponibilidad de áreas mineras, para la consecución de materiales necesarios para la obra.', 'Todo el proyecto', '1', '1378870.00', '2016-04-18', '30', null, '0', '1', '0000-00-00', '43', '14', '3');
INSERT INTO `contratos` VALUES ('13', '2016012', '“PRESTAR A LA GERENCIA DE LA CONCESIÓN VÍAS DEL NUS S.A.S., LOS SERVICIOS PROFESIONALES DE ASESORÍA PARA EL DESARROLLO DE ACTIVIDADES DE APOYO Y ACOMPAÑAMIENTO JURÍDICO Y PARA LA ELABORACIÓN Y REVISIÓN DE LOS DOCUMENTOS PARA LA EJECUCIÓN DE OBLIGACIONES, DENTRO DEL CONTRATO DE CONCESIÓN BAJO EL ESQUEMA DE IP-APP VÍAS DEL NUS - VINUS”.', 'Copacabana', '1', '91008060.00', '2016-03-01', '365', '2017-03-01', '0', '1', '2016-03-01', '43', '15', '3');
INSERT INTO `contratos` VALUES ('14', '2016014', 'Elaboración y entrega, por parte de la Corporación Nacional de Lonjas de Propiedad Raíz, de los informes de los avalúos comerciales corporativos de los predios, mejoras, y actividades comerciales, requeridos para la ejecución del Proyecto Vial Vías del Nus.', 'Todo el proyecto', '1', '125048000.00', '2016-04-19', '180', null, '0', '1', '0000-00-00', '43', '16', '3');
INSERT INTO `contratos` VALUES ('15', '12016', 'Elaborar y suministrar los estudios de trazado y diseño geométrico y los estudios de detalles de intervenciones , actualizando, ajustando y llevando hasta fase III los diseños elaborados en el marco de la Estructuración del Proyecto Vías del Nus, requeridos para el proyecto.', 'Todo el proyecto', '1', '19000000000.00', '0000-00-00', '210', null, '0', '1', '0000-00-00', '43', '17', '3');
INSERT INTO `contratos` VALUES ('16', '2016015', 'EL CONTRATISTA en forma independiente y con plena autonomía directiva, administrativa, técnica, financiera y laboral, se compromete para con EL CONTRATANTE, a prestar los servicios de radio difusión exigidos por el Apéndice 2 del contrato de concesión No. 001 de 2016, suscrito entre el CONTRATANTE y la AGENCIA NACIONAL DE INFRAESTRUCTURA – ANI.', 'Todo el proyecto', '1', '56880000.00', '2016-04-01', '365', '2017-05-01', '0', '1', '2016-05-01', '43', '18', '3');
INSERT INTO `contratos` VALUES ('17', '2016016', 'LA CONCESIONARIA,  en virtud del presente convenio, pondrá a disposición del taller, los vehículos que sufran averías menores en las vías de la concesión y que dichas averías no puedan ser superadas con el carro taller del cual dispone la CONCESIONARIA. \n\nLa actividad desarrollada por LA CONCESIONARIA, a través del presente convenio, se limita a llevar los vehículos con los equipos dispuestos para ello, sin asumir ninguna responsabilidad o reconocimiento económico al taller por las reparaciones que se tenga que hacer con ocasión de las averías presentadas por el vehículo que se remita o se remolque.', 'Todo el proyecto', '1', '0.00', '2016-04-01', '365', '2017-04-01', '0', '1', '2016-04-01', '43', '19', '3');
INSERT INTO `contratos` VALUES ('18', '2016017', 'LA CONCESIONARIA, en virtud del presente convenio, pondrá a disposición del taller, los vehículos que sufran averías menores en las vías de la concesión y que dichas averías no puedan ser superadas con el carro taller del cual dispone la CONCESIONARIA. \n\nLa actividad desarrollada por LA CONCESIONARIA, a través del presente convenio, se limita a llevar los vehículos con los equipos dispuestos para ello, sin asumir ninguna responsabilidad o reconocimiento económico al taller por las reparaciones que se tenga que hacer con ocasión de las averías presentadas por el vehículo que se remita o se remolque.', 'Todo el proyecto', '1', '0.00', '2016-04-01', '365', '2017-04-01', '0', '1', '2016-04-01', '43', '20', '3');
INSERT INTO `contratos` VALUES ('19', '22016', 'Objeto del Contrato. Mediante el presente CONTRATO EL ARRENDADOR se obliga a  conceder a EL ARRENDATARIO, la tenencia de las Oficinas 628 y 629 ubicadas en el Centro Empresarial  Ciudad del Río 2, Carrera. 48  No. 20-114  Piso 6 del municipio de Medellín, Antioquia, con matrículas inmobiliarias No. 001-1206740 y 001-1206741 respectivamente,  y parqueaderos 3114 y 3115 piso 3, con matrículas inmobiliarias No.001-1206893 y 001-1206894 respectivamente  con los linderos  que se indican en la CLÁUSULA SEGUNDA.', 'Medellín', '1', '46056000.00', '2016-02-01', '365', null, '0', '1', '0000-00-00', '43', '21', '3');

-- ----------------------------
-- Table structure for contratos_adiciones
-- ----------------------------
DROP TABLE IF EXISTS `contratos_adiciones`;
CREATE TABLE `contratos_adiciones` (
  `Pk_Id_Contratos_Adicion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador principal de la adición al contrato',
  `Valor` decimal(13,2) DEFAULT '0.00' COMMENT 'Valor de la adición',
  `Plazo` int(11) DEFAULT NULL COMMENT 'Plazo de la adición',
  `Fk_Id_Contrato` int(11) NOT NULL COMMENT 'Identificador foráneo del contrato',
  PRIMARY KEY (`Pk_Id_Contratos_Adicion`),
  KEY `Fk_Id_Contrato` (`Fk_Id_Contrato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contratos_adiciones
-- ----------------------------

-- ----------------------------
-- Table structure for contratos_bitacora
-- ----------------------------
DROP TABLE IF EXISTS `contratos_bitacora`;
CREATE TABLE `contratos_bitacora` (
  `Pk_Id_Bitacora` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` datetime DEFAULT NULL COMMENT 'Fecha y hora de ingreso de la bitácora',
  `Remitente` varchar(30) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Nombre del remitente',
  `Asunto` varchar(30) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Asunto de la botácora',
  `Observacion` varchar(400) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Observación de la bitácora',
  `Fk_Id_Contratos` int(11) DEFAULT NULL COMMENT 'Id foráneo del contrato',
  `Fk_Id_Usuario` int(11) DEFAULT NULL COMMENT 'Id foráneo del usuario que crea la anotación',
  PRIMARY KEY (`Pk_Id_Bitacora`),
  KEY `Fk_Id_Contratos` (`Fk_Id_Contratos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contratos_bitacora
-- ----------------------------

-- ----------------------------
-- Table structure for contratos_pagos
-- ----------------------------
DROP TABLE IF EXISTS `contratos_pagos`;
CREATE TABLE `contratos_pagos` (
  `Pk_Id_Contratos_Pagos` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL COMMENT 'Fecha del pago',
  `Numero_Acta` varchar(10) DEFAULT NULL COMMENT 'Número del acta',
  `Valor_Pago` decimal(13,2) DEFAULT '0.00' COMMENT 'Valor pagado',
  `Valor_Retenido` decimal(13,2) DEFAULT '0.00' COMMENT 'Valor pagado',
  `Fk_Id_Contratos` int(11) DEFAULT NULL COMMENT 'Id foráneo del contrato',
  PRIMARY KEY (`Pk_Id_Contratos_Pagos`),
  KEY `Fk_Id_Contratos` (`Fk_Id_Contratos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contratos_pagos
-- ----------------------------

-- ----------------------------
-- Table structure for contratos_polizas
-- ----------------------------
DROP TABLE IF EXISTS `contratos_polizas`;
CREATE TABLE `contratos_polizas` (
  `Pk_Id_Contratos_Poliza` int(11) NOT NULL AUTO_INCREMENT,
  `Numero` varchar(8) NOT NULL COMMENT 'Número de la póliza',
  `Fecha_Inicio` date DEFAULT NULL COMMENT 'Fecha inicial de la póliza',
  `Fecha_Final` date DEFAULT NULL COMMENT 'Fecha final de la póliza',
  `Valor` decimal(13,2) DEFAULT NULL COMMENT 'Valor de la póliza',
  `Fk_Id_Tercero` int(11) DEFAULT NULL COMMENT 'Id foráneo del tercero (Asegurador)',
  `Fk_Id_Contratos` int(11) DEFAULT NULL COMMENT 'Id foráneo del contrato',
  `Fk_Id_Poliza_Tipo` int(11) DEFAULT NULL COMMENT 'Id foráneo del tipo de póliza',
  PRIMARY KEY (`Pk_Id_Contratos_Poliza`),
  KEY `Polizas` (`Fk_Id_Contratos`),
  KEY `Tipo de poliza` (`Fk_Id_Poliza_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of contratos_polizas
-- ----------------------------
INSERT INTO `contratos_polizas` VALUES ('1', 'CU100635', '2016-03-08', '2016-12-08', '119700000.00', '7', '1', '1');
INSERT INTO `contratos_polizas` VALUES ('2', 'CU100635', '2016-03-08', '2019-09-08', '79800000.00', '7', '1', '2');
INSERT INTO `contratos_polizas` VALUES ('3', '', '0000-00-00', '0000-00-00', '0.00', '0', '1', '3');
INSERT INTO `contratos_polizas` VALUES ('4', '', '0000-00-00', '0000-00-00', '0.00', '0', '1', '4');
INSERT INTO `contratos_polizas` VALUES ('5', '', '0000-00-00', '0000-00-00', '0.00', '0', '1', '5');
INSERT INTO `contratos_polizas` VALUES ('6', 'RO053125', '2016-03-08', '2016-09-08', '239400000.00', '7', '1', '6');
INSERT INTO `contratos_polizas` VALUES ('7', 'CU100630', '2016-03-01', '2017-06-01', '122400000.00', '7', '2', '1');
INSERT INTO `contratos_polizas` VALUES ('8', 'CU100630', '2016-03-01', '2020-03-01', '81600000.00', '7', '2', '2');
INSERT INTO `contratos_polizas` VALUES ('9', '', '0000-00-00', '0000-00-00', '0.00', '0', '2', '3');
INSERT INTO `contratos_polizas` VALUES ('10', '', '0000-00-00', '0000-00-00', '0.00', '0', '2', '4');
INSERT INTO `contratos_polizas` VALUES ('11', '', '0000-00-00', '0000-00-00', '0.00', '0', '2', '5');
INSERT INTO `contratos_polizas` VALUES ('12', 'RO053122', '2016-03-01', '2017-06-01', '244800000.00', '7', '2', '6');
INSERT INTO `contratos_polizas` VALUES ('13', '', '0000-00-00', '0000-00-00', '0.00', '0', '3', '1');
INSERT INTO `contratos_polizas` VALUES ('14', '', '0000-00-00', '0000-00-00', '0.00', '0', '3', '2');
INSERT INTO `contratos_polizas` VALUES ('15', '', '0000-00-00', '0000-00-00', '0.00', '0', '3', '3');
INSERT INTO `contratos_polizas` VALUES ('16', '', '0000-00-00', '0000-00-00', '0.00', '0', '3', '4');
INSERT INTO `contratos_polizas` VALUES ('17', '', '0000-00-00', '0000-00-00', '0.00', '0', '3', '5');
INSERT INTO `contratos_polizas` VALUES ('18', '', '0000-00-00', '0000-00-00', '0.00', '0', '3', '6');
INSERT INTO `contratos_polizas` VALUES ('19', '', '0000-00-00', '0000-00-00', '0.00', '0', '4', '1');
INSERT INTO `contratos_polizas` VALUES ('20', '', '0000-00-00', '0000-00-00', '0.00', '0', '4', '2');
INSERT INTO `contratos_polizas` VALUES ('21', '', '0000-00-00', '0000-00-00', '0.00', '0', '4', '3');
INSERT INTO `contratos_polizas` VALUES ('22', '', '0000-00-00', '0000-00-00', '0.00', '0', '4', '4');
INSERT INTO `contratos_polizas` VALUES ('23', '', '0000-00-00', '0000-00-00', '0.00', '0', '4', '5');
INSERT INTO `contratos_polizas` VALUES ('24', '', '0000-00-00', '0000-00-00', '0.00', '0', '4', '6');
INSERT INTO `contratos_polizas` VALUES ('25', '', '0000-00-00', '0000-00-00', '0.00', '0', '5', '1');
INSERT INTO `contratos_polizas` VALUES ('26', '', '0000-00-00', '0000-00-00', '0.00', '0', '5', '2');
INSERT INTO `contratos_polizas` VALUES ('27', '', '0000-00-00', '0000-00-00', '0.00', '0', '5', '3');
INSERT INTO `contratos_polizas` VALUES ('28', '', '0000-00-00', '0000-00-00', '0.00', '0', '5', '4');
INSERT INTO `contratos_polizas` VALUES ('29', '', '0000-00-00', '0000-00-00', '0.00', '0', '5', '5');
INSERT INTO `contratos_polizas` VALUES ('30', '', '0000-00-00', '0000-00-00', '0.00', '0', '5', '6');
INSERT INTO `contratos_polizas` VALUES ('31', '', '0000-00-00', '0000-00-00', '0.00', '0', '6', '1');
INSERT INTO `contratos_polizas` VALUES ('32', '', '0000-00-00', '0000-00-00', '0.00', '0', '6', '2');
INSERT INTO `contratos_polizas` VALUES ('33', '', '0000-00-00', '0000-00-00', '0.00', '0', '6', '3');
INSERT INTO `contratos_polizas` VALUES ('34', '', '0000-00-00', '0000-00-00', '0.00', '0', '6', '4');
INSERT INTO `contratos_polizas` VALUES ('35', '', '0000-00-00', '0000-00-00', '0.00', '0', '6', '5');
INSERT INTO `contratos_polizas` VALUES ('36', '', '0000-00-00', '0000-00-00', '0.00', '0', '6', '6');
INSERT INTO `contratos_polizas` VALUES ('37', '', '0000-00-00', '0000-00-00', '0.00', '0', '7', '1');
INSERT INTO `contratos_polizas` VALUES ('38', '', '0000-00-00', '0000-00-00', '0.00', '0', '7', '2');
INSERT INTO `contratos_polizas` VALUES ('39', '', '0000-00-00', '0000-00-00', '0.00', '0', '7', '3');
INSERT INTO `contratos_polizas` VALUES ('40', '', '0000-00-00', '0000-00-00', '0.00', '0', '7', '4');
INSERT INTO `contratos_polizas` VALUES ('41', '', '0000-00-00', '0000-00-00', '0.00', '0', '7', '5');
INSERT INTO `contratos_polizas` VALUES ('42', '', '0000-00-00', '0000-00-00', '0.00', '0', '7', '6');
INSERT INTO `contratos_polizas` VALUES ('43', '', '0000-00-00', '0000-00-00', '0.00', '0', '8', '1');
INSERT INTO `contratos_polizas` VALUES ('44', '', '0000-00-00', '0000-00-00', '0.00', '0', '8', '2');
INSERT INTO `contratos_polizas` VALUES ('45', '', '0000-00-00', '0000-00-00', '0.00', '0', '8', '3');
INSERT INTO `contratos_polizas` VALUES ('46', '', '0000-00-00', '0000-00-00', '0.00', '0', '8', '4');
INSERT INTO `contratos_polizas` VALUES ('47', '', '0000-00-00', '0000-00-00', '0.00', '0', '8', '5');
INSERT INTO `contratos_polizas` VALUES ('48', '', '0000-00-00', '0000-00-00', '0.00', '0', '8', '6');
INSERT INTO `contratos_polizas` VALUES ('49', '', '0000-00-00', '0000-00-00', '0.00', '0', '9', '1');
INSERT INTO `contratos_polizas` VALUES ('50', '', '0000-00-00', '0000-00-00', '0.00', '0', '9', '2');
INSERT INTO `contratos_polizas` VALUES ('51', '', '0000-00-00', '0000-00-00', '0.00', '0', '9', '3');
INSERT INTO `contratos_polizas` VALUES ('52', '', '0000-00-00', '0000-00-00', '0.00', '0', '9', '4');
INSERT INTO `contratos_polizas` VALUES ('53', '', '0000-00-00', '0000-00-00', '0.00', '0', '9', '5');
INSERT INTO `contratos_polizas` VALUES ('54', '', '0000-00-00', '0000-00-00', '0.00', '0', '9', '6');
INSERT INTO `contratos_polizas` VALUES ('55', '', '0000-00-00', '0000-00-00', '0.00', '0', '10', '1');
INSERT INTO `contratos_polizas` VALUES ('56', '', '0000-00-00', '0000-00-00', '0.00', '0', '10', '2');
INSERT INTO `contratos_polizas` VALUES ('57', '', '0000-00-00', '0000-00-00', '0.00', '0', '10', '3');
INSERT INTO `contratos_polizas` VALUES ('58', '', '0000-00-00', '0000-00-00', '0.00', '0', '10', '4');
INSERT INTO `contratos_polizas` VALUES ('59', '', '0000-00-00', '0000-00-00', '0.00', '0', '10', '5');
INSERT INTO `contratos_polizas` VALUES ('60', '', '0000-00-00', '0000-00-00', '0.00', '0', '10', '6');
INSERT INTO `contratos_polizas` VALUES ('61', '', '0000-00-00', '0000-00-00', '0.00', '0', '11', '1');
INSERT INTO `contratos_polizas` VALUES ('62', '', '0000-00-00', '0000-00-00', '0.00', '0', '11', '2');
INSERT INTO `contratos_polizas` VALUES ('63', '', '0000-00-00', '0000-00-00', '0.00', '0', '11', '3');
INSERT INTO `contratos_polizas` VALUES ('64', '', '0000-00-00', '0000-00-00', '0.00', '0', '11', '4');
INSERT INTO `contratos_polizas` VALUES ('65', '', '0000-00-00', '0000-00-00', '0.00', '0', '11', '5');
INSERT INTO `contratos_polizas` VALUES ('66', '', '0000-00-00', '0000-00-00', '0.00', '0', '11', '6');
INSERT INTO `contratos_polizas` VALUES ('67', '', '0000-00-00', '0000-00-00', '0.00', '0', '12', '1');
INSERT INTO `contratos_polizas` VALUES ('68', '', '0000-00-00', '0000-00-00', '0.00', '0', '12', '2');
INSERT INTO `contratos_polizas` VALUES ('69', '', '0000-00-00', '0000-00-00', '0.00', '0', '12', '3');
INSERT INTO `contratos_polizas` VALUES ('70', '', '0000-00-00', '0000-00-00', '0.00', '0', '12', '4');
INSERT INTO `contratos_polizas` VALUES ('71', '', '0000-00-00', '0000-00-00', '0.00', '0', '12', '5');
INSERT INTO `contratos_polizas` VALUES ('72', '', '0000-00-00', '0000-00-00', '0.00', '0', '12', '6');
INSERT INTO `contratos_polizas` VALUES ('73', '', '0000-00-00', '0000-00-00', '0.00', '0', '13', '1');
INSERT INTO `contratos_polizas` VALUES ('74', '', '0000-00-00', '0000-00-00', '0.00', '0', '13', '2');
INSERT INTO `contratos_polizas` VALUES ('75', '', '0000-00-00', '0000-00-00', '0.00', '0', '13', '3');
INSERT INTO `contratos_polizas` VALUES ('76', '', '0000-00-00', '0000-00-00', '0.00', '0', '13', '4');
INSERT INTO `contratos_polizas` VALUES ('77', '', '0000-00-00', '0000-00-00', '0.00', '0', '13', '5');
INSERT INTO `contratos_polizas` VALUES ('78', '', '0000-00-00', '0000-00-00', '0.00', '0', '13', '6');
INSERT INTO `contratos_polizas` VALUES ('79', '10103467', '2016-04-19', '2017-01-19', '18757200.00', '7', '14', '1');
INSERT INTO `contratos_polizas` VALUES ('80', '10103467', '2016-04-19', '2019-10-19', '12504800.00', '7', '14', '2');
INSERT INTO `contratos_polizas` VALUES ('81', '', '0000-00-00', '0000-00-00', '0.00', '0', '14', '3');
INSERT INTO `contratos_polizas` VALUES ('82', '10103467', '2016-04-19', '2017-02-19', '25009600.00', '7', '14', '4');
INSERT INTO `contratos_polizas` VALUES ('83', '', '0000-00-00', '0000-00-00', '0.00', '0', '14', '5');
INSERT INTO `contratos_polizas` VALUES ('84', '', '0000-00-00', '0000-00-00', '0.00', '0', '14', '6');
INSERT INTO `contratos_polizas` VALUES ('85', '', '0000-00-00', '0000-00-00', '0.00', '0', '15', '1');
INSERT INTO `contratos_polizas` VALUES ('86', '', '0000-00-00', '0000-00-00', '0.00', '0', '15', '2');
INSERT INTO `contratos_polizas` VALUES ('87', '', '0000-00-00', '0000-00-00', '0.00', '0', '15', '3');
INSERT INTO `contratos_polizas` VALUES ('88', '', '0000-00-00', '0000-00-00', '0.00', '0', '15', '4');
INSERT INTO `contratos_polizas` VALUES ('89', '', '0000-00-00', '0000-00-00', '0.00', '0', '15', '5');
INSERT INTO `contratos_polizas` VALUES ('90', '', '0000-00-00', '0000-00-00', '0.00', '0', '15', '6');
INSERT INTO `contratos_polizas` VALUES ('91', '', '0000-00-00', '0000-00-00', '0.00', '0', '16', '1');
INSERT INTO `contratos_polizas` VALUES ('92', '', '0000-00-00', '0000-00-00', '0.00', '0', '16', '2');
INSERT INTO `contratos_polizas` VALUES ('93', '', '0000-00-00', '0000-00-00', '0.00', '0', '16', '3');
INSERT INTO `contratos_polizas` VALUES ('94', '', '0000-00-00', '0000-00-00', '0.00', '0', '16', '4');
INSERT INTO `contratos_polizas` VALUES ('95', '', '0000-00-00', '0000-00-00', '0.00', '0', '16', '5');
INSERT INTO `contratos_polizas` VALUES ('96', '', '0000-00-00', '0000-00-00', '0.00', '0', '16', '6');
INSERT INTO `contratos_polizas` VALUES ('97', '', '0000-00-00', '0000-00-00', '0.00', '0', '17', '1');
INSERT INTO `contratos_polizas` VALUES ('98', '', '0000-00-00', '0000-00-00', '0.00', '0', '17', '2');
INSERT INTO `contratos_polizas` VALUES ('99', '', '0000-00-00', '0000-00-00', '0.00', '0', '17', '3');
INSERT INTO `contratos_polizas` VALUES ('100', '', '0000-00-00', '0000-00-00', '0.00', '0', '17', '4');
INSERT INTO `contratos_polizas` VALUES ('101', '', '0000-00-00', '0000-00-00', '0.00', '0', '17', '5');
INSERT INTO `contratos_polizas` VALUES ('102', '', '0000-00-00', '0000-00-00', '0.00', '0', '17', '6');
INSERT INTO `contratos_polizas` VALUES ('103', '', '0000-00-00', '0000-00-00', '0.00', '0', '18', '1');
INSERT INTO `contratos_polizas` VALUES ('104', '', '0000-00-00', '0000-00-00', '0.00', '0', '18', '2');
INSERT INTO `contratos_polizas` VALUES ('105', '', '0000-00-00', '0000-00-00', '0.00', '0', '18', '3');
INSERT INTO `contratos_polizas` VALUES ('106', '', '0000-00-00', '0000-00-00', '0.00', '0', '18', '4');
INSERT INTO `contratos_polizas` VALUES ('107', '', '0000-00-00', '0000-00-00', '0.00', '0', '18', '5');
INSERT INTO `contratos_polizas` VALUES ('108', '', '0000-00-00', '0000-00-00', '0.00', '0', '18', '6');
INSERT INTO `contratos_polizas` VALUES ('109', '', '0000-00-00', '0000-00-00', '0.00', '0', '19', '1');
INSERT INTO `contratos_polizas` VALUES ('110', '', '0000-00-00', '0000-00-00', '0.00', '0', '19', '2');
INSERT INTO `contratos_polizas` VALUES ('111', '', '0000-00-00', '0000-00-00', '0.00', '0', '19', '3');
INSERT INTO `contratos_polizas` VALUES ('112', '', '0000-00-00', '0000-00-00', '0.00', '0', '19', '4');
INSERT INTO `contratos_polizas` VALUES ('113', '', '0000-00-00', '0000-00-00', '0.00', '0', '19', '5');
INSERT INTO `contratos_polizas` VALUES ('114', '', '0000-00-00', '0000-00-00', '0.00', '0', '19', '6');

-- ----------------------------
-- Table structure for poliza_tipo
-- ----------------------------
DROP TABLE IF EXISTS `poliza_tipo`;
CREATE TABLE `poliza_tipo` (
  `Pk_Id_Poliza_Tipo` int(11) NOT NULL AUTO_INCREMENT,
  `Poliza_Tipo` varchar(35) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Tipo de póliza',
  PRIMARY KEY (`Pk_Id_Poliza_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of poliza_tipo
-- ----------------------------
INSERT INTO `poliza_tipo` VALUES ('1', 'Cumplimiento');
INSERT INTO `poliza_tipo` VALUES ('2', 'Prestaciones sociales');
INSERT INTO `poliza_tipo` VALUES ('3', 'Anticipos');
INSERT INTO `poliza_tipo` VALUES ('4', 'Calidad');
INSERT INTO `poliza_tipo` VALUES ('5', 'Estabilidad');
INSERT INTO `poliza_tipo` VALUES ('6', 'Responsabilidad Civil Contractual');

-- ----------------------------
-- Table structure for tbl_categorias
-- ----------------------------
DROP TABLE IF EXISTS `tbl_categorias`;
CREATE TABLE `tbl_categorias` (
  `Pk_Id_Categoria` int(11) NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_categorias
-- ----------------------------
INSERT INTO `tbl_categorias` VALUES ('1', 'Contrato');
INSERT INTO `tbl_categorias` VALUES ('2', 'Contratista');
INSERT INTO `tbl_categorias` VALUES ('3', 'Pólizas');
INSERT INTO `tbl_categorias` VALUES ('4', 'Actas de obra o facturas');
INSERT INTO `tbl_categorias` VALUES ('5', 'Otrosi 1');
INSERT INTO `tbl_categorias` VALUES ('6', 'Acta de Reinicio');
INSERT INTO `tbl_categorias` VALUES ('7', 'Otrosi 2');
INSERT INTO `tbl_categorias` VALUES ('8', 'Otrosi 3');

-- ----------------------------
-- Table structure for tbl_estados
-- ----------------------------
DROP TABLE IF EXISTS `tbl_estados`;
CREATE TABLE `tbl_estados` (
  `Pk_Id_Estado` int(11) NOT NULL AUTO_INCREMENT,
  `Estado` varchar(30) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Estado de un contrato',
  PRIMARY KEY (`Pk_Id_Estado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_estados
-- ----------------------------
INSERT INTO `tbl_estados` VALUES ('1', 'En Ejecución');
INSERT INTO `tbl_estados` VALUES ('2', 'Liquidado');
INSERT INTO `tbl_estados` VALUES ('3', 'Suspendido');
INSERT INTO `tbl_estados` VALUES ('4', 'Pendiente');

-- ----------------------------
-- Table structure for tbl_subcategorias
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subcategorias`;
CREATE TABLE `tbl_subcategorias` (
  `Pk_Id_Subcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Categoria` int(11) NOT NULL,
  `Subcategoria` varchar(55) NOT NULL,
  `Unica` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`Pk_Id_Subcategoria`),
  KEY `Fk_Id_Categoria` (`Fk_Id_Categoria`),
  CONSTRAINT `tbl_subcategorias_ibfk_1` FOREIGN KEY (`Fk_Id_Categoria`) REFERENCES `tbl_categorias` (`Pk_Id_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_subcategorias
-- ----------------------------
INSERT INTO `tbl_subcategorias` VALUES ('1', '1', '01 Orden', '');
INSERT INTO `tbl_subcategorias` VALUES ('2', '1', '05 Contrato', '');
INSERT INTO `tbl_subcategorias` VALUES ('3', '1', '06 Anexo Contrato', '');
INSERT INTO `tbl_subcategorias` VALUES ('4', '1', '07 Acta Inicio', '');
INSERT INTO `tbl_subcategorias` VALUES ('5', '1', '16 Solicitud Modificacion', '');
INSERT INTO `tbl_subcategorias` VALUES ('6', '1', '17 Acta Recibo', '');
INSERT INTO `tbl_subcategorias` VALUES ('7', '1', '18 Ata Liquidacion-Documentos', '');
INSERT INTO `tbl_subcategorias` VALUES ('8', '1', '19 Acta Suspension', '');
INSERT INTO `tbl_subcategorias` VALUES ('9', '2', '02 Certificado Existencia Representacion Legal', '');
INSERT INTO `tbl_subcategorias` VALUES ('10', '2', '03 Copia CC Representante Legal', '');
INSERT INTO `tbl_subcategorias` VALUES ('11', '2', '04 Copia RUT Representante Legal', '');
INSERT INTO `tbl_subcategorias` VALUES ('12', '3', '08 Poliza Cumplimiento', '');
INSERT INTO `tbl_subcategorias` VALUES ('13', '3', '09 Poliza Prestaciones Sociales', '');
INSERT INTO `tbl_subcategorias` VALUES ('14', '3', '10 Poliza Anticipos', '');
INSERT INTO `tbl_subcategorias` VALUES ('15', '3', '11 Poliza Calidad', '');
INSERT INTO `tbl_subcategorias` VALUES ('16', '3', '12 Poliza Estabilidad', '');
INSERT INTO `tbl_subcategorias` VALUES ('17', '3', '13 Poliza RC', '');
INSERT INTO `tbl_subcategorias` VALUES ('19', '4', '14 Acta Obra', '');
INSERT INTO `tbl_subcategorias` VALUES ('20', '4', '15 Factura', '');
INSERT INTO `tbl_subcategorias` VALUES ('26', '5', '16 Otrosi', '');
INSERT INTO `tbl_subcategorias` VALUES ('27', '6', '21 Reinicio Poliza Cumplimiento', '');
INSERT INTO `tbl_subcategorias` VALUES ('28', '6', '21 Reinicio Poliza Prestaciones Sociales', '');
INSERT INTO `tbl_subcategorias` VALUES ('29', '6', '21 Reinicio Poliza Anticipos', '');
INSERT INTO `tbl_subcategorias` VALUES ('30', '6', '21 Reinicio Poliza Calidad', '');
INSERT INTO `tbl_subcategorias` VALUES ('31', '6', '21 Reinicio Poliza Estabilidad', '');
INSERT INTO `tbl_subcategorias` VALUES ('32', '6', '21 Reinicio Poliza RC', '');
INSERT INTO `tbl_subcategorias` VALUES ('34', '5', '16 Otrosi Poliza Cumplimiento', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('35', '5', '16 Otrosi Poliza Prestaciones Sociales', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('36', '5', '16 Otrosi Poliza Anticipos', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('37', '5', '16 Otrosi Poliza Calidad', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('38', '5', '16 Otrosi Poliza Estabilidad', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('39', '5', '16 Otrosi Poliza RC', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('40', '7', '22 Otrosi', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('41', '7', '22 Otrosi Poliza Anticipos', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('42', '7', '22 Otrosi Poliza Calidad', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('43', '7', '22 Otrosi Poliza Cumplimiento', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('44', '7', '22 Otrosi Poliza Estabilidad', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('45', '7', '22 Otrosi Poliza Prestaciones Sociales', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('46', '8', '23 Otrosi', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('47', '8', '23 Otrosi Poliza Anticipos', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('48', '8', '23 Otrosi Poliza Calidad', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('49', '8', '23 Otrosi Poliza Cumplimiento', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('50', '8', '23 Otrosi Poliza Estabilidad', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('51', '8', '23 Otrosi Poliza Prestaciones Sociales', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('52', '7', '22 Póliza de Responsabilidad Civil Extracontractual', '\0');
INSERT INTO `tbl_subcategorias` VALUES ('53', '8', '23 Póliza de Responsabilidad Civil Extracontractual', '\0');

-- ----------------------------
-- Table structure for tbl_terceros
-- ----------------------------
DROP TABLE IF EXISTS `tbl_terceros`;
CREATE TABLE `tbl_terceros` (
  `Pk_Id_Terceros` int(11) NOT NULL AUTO_INCREMENT,
  `Direccion` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Documento` varchar(15) DEFAULT NULL,
  `Fk_Id_Terceros_Tipo` int(11) DEFAULT NULL,
  `Nombre` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Representante_Legal` varchar(60) NOT NULL COMMENT 'Representante Legal del tercero',
  PRIMARY KEY (`Pk_Id_Terceros`),
  KEY `Fk_Id_Terceros_Tipo` (`Fk_Id_Terceros_Tipo`),
  CONSTRAINT `Tipo de tercero` FOREIGN KEY (`Fk_Id_Terceros_Tipo`) REFERENCES `tbl_terceros_tipo` (`Pk_Id_Terceros_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_terceros
-- ----------------------------
INSERT INTO `tbl_terceros` VALUES ('1', 'CALLE 127 B # 49 59. Bogotá', '830015870', '2', 'SISMEDICA LIMITADA', '(1)3902118', 'Claudia Pilar Quijano Bendek');
INSERT INTO `tbl_terceros` VALUES ('2', 'Calle 5 Sur # 35 - 50. Medellín', '900857849', '2', 'DISTRITECKS S.A.S.', '3113016823', 'Juan David Toro Bedoya');
INSERT INTO `tbl_terceros` VALUES ('3', 'Calle 59 # 48 - 35', '900920562', '3', 'VINUS S.A.S.', '4012277', 'Germán Vélez Villegas');
INSERT INTO `tbl_terceros` VALUES ('4', '', '8272278', '2', 'GUSTAVO TRUJILLO MONTOYA', '', '');
INSERT INTO `tbl_terceros` VALUES ('5', '', '3464960 ', '2', 'OTILIO DE JESUS GAVIRIA BETANCUR', '4066670', '');
INSERT INTO `tbl_terceros` VALUES ('6', null, null, '2', 'TRANSPORTES Y TURISMO 1A S.A.S.', null, '');
INSERT INTO `tbl_terceros` VALUES ('7', '', '860070374-9', '1', 'SEGUROS CONFIANZA S.A.', '5128491', '');
INSERT INTO `tbl_terceros` VALUES ('8', null, null, '2', 'MARIA LUZMILA VALENCIA TOBON', null, '');
INSERT INTO `tbl_terceros` VALUES ('9', null, null, '2', 'TECNUMEC S.A.S.', null, '');
INSERT INTO `tbl_terceros` VALUES ('10', null, null, '2', 'INVERSIONES HERMANOS VILLEGAS Y ASOCIADOS LIMITADA', null, '');
INSERT INTO `tbl_terceros` VALUES ('11', null, null, '2', 'SERACIS LIMITADA', null, '');
INSERT INTO `tbl_terceros` VALUES ('12', null, null, '2', 'REGENCY SERVICES DE COLOMBIA S.A.S.', null, '');
INSERT INTO `tbl_terceros` VALUES ('13', null, null, '2', 'RADIOENLACE S.A.S.', null, '');
INSERT INTO `tbl_terceros` VALUES ('14', null, null, '2', 'DYMANICA INGENIERIA Y AMBIENTE S.A.S.', null, '');
INSERT INTO `tbl_terceros` VALUES ('15', null, null, '2', 'ESTRUCTURADORES LEGALES S.A.S.', null, '');
INSERT INTO `tbl_terceros` VALUES ('16', null, null, '2', 'CORALONJA', null, '');
INSERT INTO `tbl_terceros` VALUES ('17', null, null, '2', 'CONSORCIO GRUPO EJECUTOR HATOVIAL - GEHATOVIAL', null, '');
INSERT INTO `tbl_terceros` VALUES ('18', null, null, '2', 'CORPORACION ALTERNATIVA DE GIRARDOTA', null, '');
INSERT INTO `tbl_terceros` VALUES ('19', null, null, '2', 'EDISON SERAFIN CARDENAS MARIN', null, '');
INSERT INTO `tbl_terceros` VALUES ('20', null, null, '2', 'GUSTAVO ADOLFO CHAVERRA AMAYA', null, '');
INSERT INTO `tbl_terceros` VALUES ('21', null, null, '2', 'MINCIVIL S.A.S.', null, '');

-- ----------------------------
-- Table structure for tbl_terceros_tipo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_terceros_tipo`;
CREATE TABLE `tbl_terceros_tipo` (
  `Pk_Id_Terceros_Tipo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Terceros_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_terceros_tipo
-- ----------------------------
INSERT INTO `tbl_terceros_tipo` VALUES ('1', 'Aseguradora');
INSERT INTO `tbl_terceros_tipo` VALUES ('2', 'Contratista');
INSERT INTO `tbl_terceros_tipo` VALUES ('3', 'Contratante');

-- ----------------------------
-- Table structure for tbl_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `tbl_usuarios`;
CREATE TABLE `tbl_usuarios` (
  `Pk_Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `Apellidos` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `Usuario` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `Clave` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `Email` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Fecha_Hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha y hora de registro del usuario',
  `Tipo` tinyint(1) DEFAULT '1' COMMENT 'Tipo de perfil. 1: Lectura y Escritura; 0: Lectura',
  PRIMARY KEY (`Pk_Id_Usuario`),
  UNIQUE KEY `Pk_Id_Usuario` (`Pk_Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_usuarios
-- ----------------------------
INSERT INTO `tbl_usuarios` VALUES ('1', 'John Arley', 'Cano Salinas', 'jcano', '827ccb0eea8a706c4c34a16891f84e7b', 'johnarleycano@hotmail.com', '3217160376', '', '2012-11-21 10:11:51', '1');
INSERT INTO `tbl_usuarios` VALUES ('2', 'German', 'Velez', 'gvelez', 'dff93c58c38638f2ff754db3b51dd05f', 'german.velez@hatovial.com', '3187776666', '', '2012-11-21 10:11:51', '1');
INSERT INTO `tbl_usuarios` VALUES ('9', 'Carlos', 'Florez', 'cflorez', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '2012-11-21 10:11:51', '1');
INSERT INTO `tbl_usuarios` VALUES ('22', 'Carlos', 'Montenegro', 'cmontenegro', '7ec3fc980c57c5c6b62941fb07a754fa', 'carlos.montenegro@hatovial.com', null, '', '2013-05-14 13:01:05', '1');
INSERT INTO `tbl_usuarios` VALUES ('23', 'Maribel', 'Peña', 'mpena', 'c7468ef1b2305158880953c58eafca54', 'maribel.pena@hotmail.com', null, '', '2013-05-30 14:05:47', '0');
INSERT INTO `tbl_usuarios` VALUES ('43', 'Oscar ', 'Alarcon', 'oalarcon', '827ccb0eea8a706c4c34a16891f84e7b', 'oscar.alarcon@vinus.com.co', '4012277', '', '2016-03-10 00:00:00', '1');
