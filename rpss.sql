-- Adminer 4.8.1 MySQL 5.5.5-10.4.24-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `rpss` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `rpss`;

DROP TABLE IF EXISTS `broadsheet`;
CREATE TABLE `broadsheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `students_id` int(11) DEFAULT NULL,
  `name` tinytext DEFAULT NULL,
  `class` varchar(5) DEFAULT NULL,
  `sessionterm` varchar(11) DEFAULT NULL,
  `ar_cat` int(11) NOT NULL DEFAULT 0,
  `ar_project` int(11) NOT NULL DEFAULT 0,
  `ar_exam` int(11) NOT NULL DEFAULT 0,
  `ar_total` int(11) GENERATED ALWAYS AS (`ar_cat` + `ar_project` + `ar_exam`) VIRTUAL,
  `bs1_cat` int(11) NOT NULL DEFAULT 0,
  `bs1_project` int(11) NOT NULL DEFAULT 0,
  `bs1_exam` int(11) NOT NULL DEFAULT 0,
  `bs1_total` int(11) GENERATED ALWAYS AS (`bs1_cat` + `bs1_project` + `bs1_exam`) VIRTUAL,
  `bs2_cat` int(11) NOT NULL DEFAULT 0,
  `bs2_project` int(11) NOT NULL DEFAULT 0,
  `bs2_exam` int(11) NOT NULL DEFAULT 0,
  `bs2_total` int(11) GENERATED ALWAYS AS (`bs2_cat` + `bs2_project` + `bs2_exam`) VIRTUAL,
  `bu_cat` int(11) NOT NULL DEFAULT 0,
  `bu_project` int(11) NOT NULL DEFAULT 0,
  `bu_exam` int(11) NOT NULL DEFAULT 0,
  `bu_total` int(11) GENERATED ALWAYS AS (`bu_cat` + `bu_project` + `bu_exam`) VIRTUAL,
  `ca_cat` int(11) NOT NULL DEFAULT 0,
  `ca_project` int(11) NOT NULL DEFAULT 0,
  `ca_exam` int(11) NOT NULL DEFAULT 0,
  `ca_total` int(11) GENERATED ALWAYS AS (`ca_cat` + `ca_project` + `ca_exam`) VIRTUAL,
  `en_cat` int(11) NOT NULL DEFAULT 0,
  `en_project` int(11) NOT NULL DEFAULT 0,
  `en_exam` int(11) NOT NULL DEFAULT 0,
  `en_total` int(11) GENERATED ALWAYS AS (`en_cat` + `en_project` + `en_exam`) VIRTUAL,
  `ir_cat` int(11) NOT NULL DEFAULT 0,
  `ir_project` int(11) NOT NULL DEFAULT 0,
  `ir_exam` int(11) NOT NULL DEFAULT 0,
  `ir_total` int(11) GENERATED ALWAYS AS (`ir_cat` + `ir_project` + `ir_exam`) VIRTUAL,
  `mt_cat` int(11) NOT NULL DEFAULT 0,
  `mt_project` int(11) NOT NULL DEFAULT 0,
  `mt_exam` int(11) NOT NULL DEFAULT 0,
  `mt_total` int(11) GENERATED ALWAYS AS (`mt_cat` + `mt_project` + `mt_exam`) VIRTUAL,
  `qr_cat` int(11) NOT NULL DEFAULT 0,
  `qr_project` int(11) NOT NULL DEFAULT 0,
  `qr_exam` int(11) NOT NULL DEFAULT 0,
  `qr_total` int(11) GENERATED ALWAYS AS (`qr_cat` + `qr_project` + `qr_exam`) VIRTUAL,
  `nv_cat` int(11) NOT NULL DEFAULT 0,
  `nv_project` int(11) NOT NULL DEFAULT 0,
  `nv_exam` int(11) NOT NULL DEFAULT 0,
  `nv_total` int(11) GENERATED ALWAYS AS (`nv_cat` + `nv_project` + `nv_exam`) VIRTUAL,
  `pv_cat` int(11) NOT NULL DEFAULT 0,
  `pv_project` int(11) NOT NULL DEFAULT 0,
  `pv_exam` int(11) NOT NULL DEFAULT 0,
  `pv_total` int(11) GENERATED ALWAYS AS (`pv_cat` + `pv_project` + `pv_exam`) VIRTUAL,
  `yo_cat` int(11) NOT NULL DEFAULT 0,
  `yo_project` int(11) NOT NULL DEFAULT 0,
  `yo_exam` int(11) NOT NULL DEFAULT 0,
  `yo_total` int(11) GENERATED ALWAYS AS (`yo_cat` + `yo_project` + `yo_exam`) VIRTUAL,
  `cat_total` int(11) GENERATED ALWAYS AS (`ar_cat` + `bs1_cat` + `bs2_cat` + `bu_cat` + `ca_cat` + `nv_cat` + `pv_cat` + `en_cat` + `qr_cat` + `ir_cat` + `mt_cat` + `yo_cat` + 0) VIRTUAL,
  `project_total` int(11) GENERATED ALWAYS AS (`ar_project` + `bs1_project` + `bs2_project` + `bu_project` + `ca_project` + `nv_project` + `pv_project` + `en_project` + `qr_project` + `ir_project` + `mt_project` + `yo_project` + 0) VIRTUAL,
  `exam_total` int(11) GENERATED ALWAYS AS (`ar_exam` + `bs1_exam` + `bs2_exam` + `bu_exam` + `ca_exam` + `nv_exam` + `pv_exam` + `en_exam` + `qr_exam` + `ir_exam` + `mt_exam` + `yo_exam` + 0) VIRTUAL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `broadsheet` (`id`, `students_id`, `name`, `class`, `sessionterm`, `ar_cat`, `ar_project`, `ar_exam`, `ar_total`, `bs1_cat`, `bs1_project`, `bs1_exam`, `bs1_total`, `bs2_cat`, `bs2_project`, `bs2_exam`, `bs2_total`, `bu_cat`, `bu_project`, `bu_exam`, `bu_total`, `ca_cat`, `ca_project`, `ca_exam`, `ca_total`, `en_cat`, `en_project`, `en_exam`, `en_total`, `ir_cat`, `ir_project`, `ir_exam`, `ir_total`, `mt_cat`, `mt_project`, `mt_exam`, `mt_total`, `qr_cat`, `qr_project`, `qr_exam`, `qr_total`, `nv_cat`, `nv_project`, `nv_exam`, `nv_total`, `pv_cat`, `pv_project`, `pv_exam`, `pv_total`, `yo_cat`, `yo_project`, `yo_exam`, `yo_total`, `cat_total`, `project_total`, `exam_total`) VALUES
(1,	1902,	'Bello AbdurRasheed',	'JS3',	'21223',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(2,	1901,	'Akinyemi AbdulMalik',	'JS3',	'21223',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(3,	1903,	'Haroon Muhammad',	'JS3',	'21223',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(4,	1905,	'Muslim Tajudeen',	'JS3',	'21223',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0);

DROP TABLE IF EXISTS `broadsheets`;
CREATE TABLE `broadsheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `students_id` int(11) DEFAULT NULL,
  `name` tinytext DEFAULT NULL,
  `class` varchar(5) DEFAULT NULL,
  `sessionterm` varchar(11) DEFAULT NULL,
  `ag_cat` int(11) NOT NULL DEFAULT 0,
  `ag_project` int(11) NOT NULL DEFAULT 0,
  `ag_exam` int(11) NOT NULL DEFAULT 0,
  `ag_total` int(11) GENERATED ALWAYS AS (`ag_cat` + `ag_project` + `ag_exam`) VIRTUAL,
  `ar_cat` int(11) NOT NULL DEFAULT 0,
  `ar_project` int(11) NOT NULL DEFAULT 0,
  `ar_exam` int(11) NOT NULL DEFAULT 0,
  `ar_total` int(11) GENERATED ALWAYS AS (`ar_cat` + `ar_project` + `ar_exam`) VIRTUAL,
  `bc_cat` int(11) NOT NULL DEFAULT 0,
  `bc_project` int(11) NOT NULL DEFAULT 0,
  `bc_exam` int(11) NOT NULL DEFAULT 0,
  `bc_total` int(11) GENERATED ALWAYS AS (`bc_cat` + `bc_project` + `bc_exam`) VIRTUAL,
  `bt_cat` int(11) NOT NULL DEFAULT 0,
  `bt_project` int(11) NOT NULL DEFAULT 0,
  `bt_exam` int(11) NOT NULL DEFAULT 0,
  `bt_total` int(11) GENERATED ALWAYS AS (`bt_cat` + `bt_project` + `bt_exam`) VIRTUAL,
  `bs_cat` int(11) NOT NULL DEFAULT 0,
  `bs_project` int(11) NOT NULL DEFAULT 0,
  `bs_exam` int(11) NOT NULL DEFAULT 0,
  `bs_total` int(11) GENERATED ALWAYS AS (`bs_cat` + `bs_project` + `bs_exam`) VIRTUAL,
  `ca_cat` int(11) NOT NULL DEFAULT 0,
  `ca_project` int(11) NOT NULL DEFAULT 0,
  `ca_exam` int(11) NOT NULL DEFAULT 0,
  `ca_total` int(11) GENERATED ALWAYS AS (`ca_cat` + `ca_project` + `ca_exam`) VIRTUAL,
  `cv_cat` int(11) NOT NULL DEFAULT 0,
  `cv_project` int(11) NOT NULL DEFAULT 0,
  `cv_exam` int(11) NOT NULL DEFAULT 0,
  `cv_total` int(11) GENERATED ALWAYS AS (`cv_cat` + `cv_project` + `cv_exam`) VIRTUAL,
  `cs_cat` int(11) NOT NULL DEFAULT 0,
  `cs_project` int(11) NOT NULL DEFAULT 0,
  `cs_exam` int(11) NOT NULL DEFAULT 0,
  `cs_total` int(11) GENERATED ALWAYS AS (`cs_cat` + `cs_project` + `cs_exam`) VIRTUAL,
  `en_cat` int(11) NOT NULL DEFAULT 0,
  `en_project` int(11) NOT NULL DEFAULT 0,
  `en_exam` int(11) NOT NULL DEFAULT 0,
  `en_total` int(11) GENERATED ALWAYS AS (`en_cat` + `en_project` + `en_exam`) VIRTUAL,
  `he_cat` int(11) NOT NULL DEFAULT 0,
  `he_project` int(11) NOT NULL DEFAULT 0,
  `he_exam` int(11) NOT NULL DEFAULT 0,
  `he_total` int(11) GENERATED ALWAYS AS (`he_cat` + `he_project` + `he_exam`) VIRTUAL,
  `ir_cat` int(11) NOT NULL DEFAULT 0,
  `ir_project` int(11) NOT NULL DEFAULT 0,
  `ir_exam` int(11) NOT NULL DEFAULT 0,
  `ir_total` int(11) GENERATED ALWAYS AS (`ir_cat` + `ir_project` + `ir_exam`) VIRTUAL,
  `mt_cat` int(11) NOT NULL DEFAULT 0,
  `mt_project` int(11) NOT NULL DEFAULT 0,
  `mt_exam` int(11) NOT NULL DEFAULT 0,
  `mt_total` int(11) GENERATED ALWAYS AS (`mt_cat` + `mt_project` + `mt_exam`) VIRTUAL,
  `ph_cat` int(11) NOT NULL DEFAULT 0,
  `ph_project` int(11) NOT NULL DEFAULT 0,
  `ph_exam` int(11) NOT NULL DEFAULT 0,
  `ph_total` int(11) GENERATED ALWAYS AS (`ph_cat` + `ph_project` + `ph_exam`) VIRTUAL,
  `qr_cat` int(11) NOT NULL DEFAULT 0,
  `qr_project` int(11) NOT NULL DEFAULT 0,
  `qr_exam` int(11) NOT NULL DEFAULT 0,
  `qr_total` int(11) GENERATED ALWAYS AS (`qr_cat` + `qr_project` + `qr_exam`) VIRTUAL,
  `se_cat` int(11) NOT NULL DEFAULT 0,
  `se_project` int(11) NOT NULL DEFAULT 0,
  `se_exam` int(11) NOT NULL DEFAULT 0,
  `se_total` int(11) GENERATED ALWAYS AS (`se_cat` + `se_project` + `se_exam`) VIRTUAL,
  `ss_cat` int(11) NOT NULL DEFAULT 0,
  `ss_project` int(11) NOT NULL DEFAULT 0,
  `ss_exam` int(11) NOT NULL DEFAULT 0,
  `ss_total` int(11) GENERATED ALWAYS AS (`ss_cat` + `ss_project` + `ss_exam`) VIRTUAL,
  `yo_cat` int(11) NOT NULL DEFAULT 0,
  `yo_project` int(11) NOT NULL DEFAULT 0,
  `yo_exam` int(11) NOT NULL DEFAULT 0,
  `yo_total` int(11) GENERATED ALWAYS AS (`yo_cat` + `yo_project` + `yo_exam`) VIRTUAL,
  `cat_total` int(11) GENERATED ALWAYS AS (`ag_cat` + `ar_cat` + `bc_cat` + `bt_cat` + `bs_cat` + `ca_cat` + `cv_cat` + `cs_cat` + `en_cat` + `he_cat` + `ir_cat` + `mt_cat` + `ph_cat` + `qr_cat` + `se_cat` + `ss_cat` + `yo_cat` + 0) VIRTUAL,
  `project_total` int(11) GENERATED ALWAYS AS (`ag_project` + `ar_project` + `bc_project` + `bt_project` + `bs_project` + `ca_project` + `cv_project` + `cs_project` + `en_project` + `he_project` + `ir_project` + `mt_project` + `ph_project` + `qr_project` + `se_project` + `ss_project` + `yo_project` + 0) VIRTUAL,
  `exam_total` int(11) GENERATED ALWAYS AS (`ag_exam` + `ar_exam` + `bc_exam` + `bt_exam` + `bs_exam` + `ca_exam` + `cv_exam` + `cs_exam` + `en_exam` + `he_exam` + `ir_exam` + `mt_exam` + `ph_exam` + `qr_exam` + `se_exam` + `ss_exam` + `yo_exam` + 0) VIRTUAL,
  PRIMARY KEY (`id`),
  KEY `students_id` (`students_id`),
  CONSTRAINT `broadsheet_ibfk_1` FOREIGN KEY (`students_id`) REFERENCES `students` (`adm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `broadsheets` (`id`, `students_id`, `name`, `class`, `sessionterm`, `ag_cat`, `ag_project`, `ag_exam`, `ag_total`, `ar_cat`, `ar_project`, `ar_exam`, `ar_total`, `bc_cat`, `bc_project`, `bc_exam`, `bc_total`, `bt_cat`, `bt_project`, `bt_exam`, `bt_total`, `bs_cat`, `bs_project`, `bs_exam`, `bs_total`, `ca_cat`, `ca_project`, `ca_exam`, `ca_total`, `cv_cat`, `cv_project`, `cv_exam`, `cv_total`, `cs_cat`, `cs_project`, `cs_exam`, `cs_total`, `en_cat`, `en_project`, `en_exam`, `en_total`, `he_cat`, `he_project`, `he_exam`, `he_total`, `ir_cat`, `ir_project`, `ir_exam`, `ir_total`, `mt_cat`, `mt_project`, `mt_exam`, `mt_total`, `ph_cat`, `ph_project`, `ph_exam`, `ph_total`, `qr_cat`, `qr_project`, `qr_exam`, `qr_total`, `se_cat`, `se_project`, `se_exam`, `se_total`, `ss_cat`, `ss_project`, `ss_exam`, `ss_total`, `yo_cat`, `yo_project`, `yo_exam`, `yo_total`, `cat_total`, `project_total`, `exam_total`) VALUES
(4,	1801,	'Babangida Aisha',	'JS3',	'20211',	15,	10,	42,	67,	15,	10,	46,	71,	20,	10,	50,	80,	16,	10,	46,	72,	18,	10,	40,	68,	19,	10,	53,	82,	18,	10,	42,	70,	27,	8,	44,	79,	16,	7,	30,	53,	20,	10,	55,	85,	16,	10,	56,	82,	24,	10,	50,	84,	25,	10,	40,	75,	30,	10,	60,	100,	18,	10,	42,	70,	14,	10,	36,	60,	20,	10,	25,	55,	331,	165,	757),
(5,	1802,	'Bello Fathiu',	'JS3',	'20211',	9,	10,	41,	60,	10,	10,	30,	50,	14,	10,	43,	67,	13,	10,	38,	61,	18,	10,	43,	71,	20,	10,	52,	82,	14,	10,	34,	58,	19,	10,	27,	56,	15,	2,	30,	47,	21,	10,	53,	84,	10,	10,	46,	66,	18,	10,	40,	68,	25,	10,	43,	78,	20,	10,	20,	50,	20,	10,	44,	74,	20,	10,	0,	30,	12,	10,	26,	48,	278,	162,	610),
(6,	1803,	'Ibraheem Nusroh',	'JS3',	'20211',	15,	10,	45,	70,	18,	10,	38,	66,	20,	10,	40,	70,	13,	10,	36,	59,	18,	10,	30,	58,	30,	10,	53,	93,	18,	10,	40,	68,	21,	10,	48,	79,	14,	2,	28,	44,	28,	10,	56,	94,	15,	10,	56,	81,	24,	10,	48,	82,	25,	10,	30,	65,	30,	10,	50,	90,	20,	10,	49,	79,	12,	10,	36,	58,	9,	10,	27,	46,	330,	162,	710),
(7,	1805,	'Olalere AbdulBasit',	'JS3',	'20211',	15,	10,	45,	70,	18,	10,	28,	56,	15,	10,	43,	68,	13,	10,	26,	49,	18,	10,	39,	67,	23,	10,	49,	82,	12,	10,	30,	52,	12,	8,	34,	54,	12,	10,	34,	56,	19,	10,	48,	77,	12,	10,	36,	58,	25,	10,	42,	77,	25,	10,	39,	74,	22,	10,	45,	77,	10,	10,	35,	55,	8,	10,	22,	40,	19,	10,	25,	54,	278,	168,	620),
(8,	1806,	'Quzeem AbdurRahman',	'JS3',	'20211',	19,	10,	40,	69,	10,	10,	26,	46,	20,	10,	50,	80,	16,	10,	41,	67,	18,	10,	43,	71,	30,	5,	53,	88,	18,	10,	45,	73,	20,	10,	31,	61,	13,	2,	25,	40,	25,	10,	54,	89,	8,	10,	48,	66,	22,	8,	40,	70,	25,	10,	43,	78,	25,	10,	40,	75,	20,	10,	49,	79,	12,	10,	44,	66,	14,	10,	42,	66,	315,	155,	714),
(9,	1901,	'Akinyemi AbdulMalik',	'JS2',	'20211',	19,	10,	57,	86,	30,	10,	50,	90,	20,	10,	47,	77,	13,	10,	54,	77,	18,	10,	45,	73,	26,	5,	55,	86,	20,	10,	47,	77,	15,	8,	47,	70,	12,	2,	38,	52,	20,	8,	44,	72,	5,	10,	50,	65,	22,	10,	48,	80,	25,	10,	45,	80,	20,	10,	45,	75,	20,	10,	54,	84,	15,	10,	45,	70,	18,	10,	50,	78,	318,	153,	821),
(10,	1902,	'Bello AbdurRasheed',	'JS2',	'20211',	15,	10,	36,	61,	24,	10,	36,	70,	10,	10,	27,	47,	11,	10,	37,	58,	16,	10,	41,	67,	25,	5,	42,	72,	8,	10,	23,	41,	15,	7,	35,	57,	13,	3,	30,	46,	10,	8,	30,	48,	5,	10,	25,	40,	15,	5,	40,	60,	20,	10,	41,	71,	28,	10,	30,	68,	12,	10,	36,	58,	4,	10,	25,	39,	3,	10,	14,	27,	234,	148,	548),
(11,	1903,	'Haroon Muhammad',	'JS2',	'20211',	15,	10,	58,	83,	24,	10,	56,	90,	19,	10,	51,	80,	14,	10,	51,	75,	18,	10,	47,	75,	27,	5,	52,	84,	18,	10,	51,	79,	27,	10,	50,	87,	18,	2,	40,	60,	21,	8,	56,	85,	5,	10,	56,	71,	15,	10,	50,	75,	25,	10,	47,	82,	30,	10,	60,	100,	20,	10,	53,	83,	14,	10,	45,	69,	14,	10,	42,	66,	324,	155,	865),
(12,	1904,	'Yahya Aisha',	'JS2',	'20211',	10,	7,	0,	17,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	13,	6,	35,	54,	0,	0,	0,	0,	15,	6,	24,	45,	19,	8,	24,	51,	11,	0,	0,	11,	0,	0,	0,	0,	0,	0,	0,	0,	14,	10,	29,	53,	15,	10,	0,	25,	30,	10,	50,	90,	0,	0,	0,	0,	4,	8,	26,	38,	10,	8,	22,	40,	141,	73,	210),
(13,	2001,	'AbdulHameed Ayuba',	'JS1',	'20211',	13,	10,	42,	65,	5,	10,	35,	50,	19,	10,	36,	65,	20,	10,	41,	71,	22,	9,	44,	75,	19,	10,	47,	76,	10,	10,	37,	57,	22,	9,	50,	81,	16,	9,	30,	55,	28,	10,	47,	85,	20,	10,	64,	94,	20,	10,	33,	63,	30,	10,	44,	84,	25,	10,	45,	80,	15,	10,	31,	56,	18,	10,	43,	71,	26,	10,	49,	85,	328,	167,	718),
(14,	2003,	'Abdullah Imran',	'JS1',	'20211',	14,	10,	50,	74,	10,	10,	61,	81,	19,	10,	48,	77,	19,	10,	52,	81,	26,	10,	51,	87,	270,	10,	47,	327,	20,	10,	53,	83,	28,	10,	58,	96,	23,	10,	40,	73,	30,	10,	57,	97,	20,	10,	61,	91,	28,	10,	52,	90,	30,	10,	50,	90,	30,	10,	55,	95,	18,	10,	41,	69,	16,	10,	49,	75,	10,	10,	38,	58,	611,	170,	863),
(15,	2002,	'AbdulAzeez Bashir',	'JS1',	'20211',	6,	10,	35,	51,	0,	10,	41,	51,	5,	10,	17,	32,	17,	10,	33,	60,	14,	7,	23,	44,	5,	10,	18,	33,	1,	10,	28,	39,	19,	8,	28,	55,	10,	2,	20,	32,	7,	10,	28,	45,	20,	10,	28,	58,	17,	5,	38,	60,	20,	8,	31,	59,	30,	10,	50,	90,	1,	10,	26,	37,	1,	10,	17,	28,	0,	10,	20,	30,	173,	150,	481),
(16,	2005,	'Ibrahim Qaudri',	'JS1',	'20211',	10,	10,	36,	56,	10,	10,	32,	52,	14,	10,	31,	55,	19,	10,	38,	67,	16,	8,	33,	57,	13,	0,	33,	46,	8,	8,	26,	42,	22,	8,	34,	64,	15,	6,	30,	51,	15,	10,	44,	69,	20,	10,	30,	60,	13,	5,	35,	53,	30,	10,	31,	71,	20,	10,	30,	60,	12,	8,	30,	50,	5,	10,	29,	44,	20,	10,	28,	58,	262,	143,	550),
(17,	2006,	'Odukoya Qazeem',	'JS1',	'20211',	13,	10,	39,	62,	10,	10,	50,	70,	9,	10,	29,	48,	15,	10,	26,	51,	16,	8,	26,	50,	19,	10,	39,	68,	7,	8,	29,	44,	19,	9,	30,	58,	13,	2,	30,	45,	12,	10,	45,	67,	20,	10,	38,	68,	15,	5,	40,	60,	30,	10,	42,	82,	20,	10,	25,	55,	5,	8,	22,	35,	5,	10,	30,	45,	21,	10,	35,	66,	249,	150,	575),
(18,	2007,	'Ogunfunwa AbdulMumin',	'JS1',	'20211',	9,	10,	26,	45,	5,	10,	34,	49,	15,	10,	40,	65,	20,	10,	40,	70,	22,	9,	30,	61,	19,	10,	39,	68,	10,	10,	37,	57,	13,	10,	45,	68,	13,	2,	30,	45,	23,	10,	46,	79,	20,	10,	49,	79,	20,	10,	40,	70,	30,	10,	42,	82,	20,	10,	40,	70,	12,	10,	28,	50,	10,	10,	30,	50,	25,	10,	38,	73,	286,	161,	634),
(19,	2008,	'Olagunju AbdulMojeed',	'JS1',	'20211',	8,	10,	38,	56,	10,	10,	65,	85,	18,	10,	50,	78,	20,	10,	46,	76,	26,	9,	49,	84,	25,	10,	47,	82,	15,	10,	47,	72,	24,	8,	47,	79,	17,	8,	32,	57,	27,	10,	57,	94,	20,	10,	39,	69,	26,	10,	51,	87,	25,	10,	51,	86,	20,	10,	60,	90,	10,	10,	47,	67,	18,	10,	45,	73,	25,	10,	42,	77,	334,	165,	813),
(20,	2004,	'Ezzideen Muhammad',	'JS1',	'20211',	15,	10,	38,	63,	20,	10,	58,	88,	14,	10,	47,	71,	18,	10,	47,	75,	21,	9,	43,	73,	27,	10,	51,	88,	8,	10,	44,	62,	18,	8,	53,	79,	14,	5,	30,	49,	27,	10,	52,	89,	20,	10,	47,	77,	20,	10,	48,	78,	30,	10,	36,	76,	28,	10,	60,	98,	15,	10,	41,	66,	8,	10,	32,	50,	13,	10,	22,	45,	316,	162,	749),
(21,	2012,	'Babatunde Sodiq',	'JS1',	'20211',	9,	10,	31,	50,	20,	10,	53,	83,	14,	10,	22,	46,	16,	10,	26,	52,	21,	9,	33,	63,	14,	10,	40,	64,	10,	8,	24,	42,	18,	8,	34,	60,	12,	5,	25,	42,	18,	10,	33,	61,	20,	10,	37,	67,	20,	8,	40,	68,	30,	10,	38,	78,	25,	10,	50,	85,	1,	8,	21,	30,	9,	10,	20,	39,	8,	10,	35,	53,	265,	156,	562),
(22,	2009,	'Oloyede Azzydeen',	'JS1',	'20211',	20,	10,	48,	78,	5,	10,	39,	54,	20,	10,	57,	87,	20,	10,	46,	76,	20,	9,	57,	86,	26,	10,	53,	89,	19,	10,	39,	68,	24,	9,	49,	82,	21,	8,	40,	69,	30,	10,	56,	96,	20,	10,	47,	77,	26,	10,	50,	86,	30,	10,	52,	92,	27,	10,	55,	92,	17,	10,	41,	68,	14,	10,	35,	59,	24,	10,	32,	66,	363,	166,	796),
(23,	2011,	'Sanni Siddiqoh',	'JS1',	'20211',	9,	10,	39,	58,	10,	10,	67,	87,	13,	10,	26,	49,	18,	10,	38,	66,	20,	10,	17,	47,	7,	10,	32,	49,	9,	8,	23,	40,	18,	8,	40,	66,	20,	5,	40,	65,	23,	10,	56,	89,	20,	10,	40,	70,	17,	5,	37,	59,	20,	10,	40,	70,	30,	10,	60,	100,	9,	8,	30,	47,	10,	10,	33,	53,	0,	10,	24,	34,	253,	154,	642),
(24,	2010,	'Sanni Maryam',	'JS1',	'20211',	10,	10,	32,	52,	10,	10,	50,	70,	15,	10,	36,	61,	20,	10,	43,	73,	22,	10,	45,	77,	8,	10,	41,	59,	12,	8,	37,	57,	18,	8,	50,	76,	13,	3,	30,	46,	15,	10,	43,	68,	20,	10,	38,	68,	20,	10,	45,	75,	30,	10,	37,	77,	30,	10,	40,	80,	10,	8,	21,	39,	12,	10,	30,	52,	6,	10,	38,	54,	271,	157,	656),
(25,	1804,	'Lawal Muhammad',	'JS3',	'20211',	6,	10,	10,	26,	5,	10,	10,	25,	0,	0,	0,	0,	0,	0,	0,	0,	14,	10,	0,	24,	0,	0,	12,	12,	0,	10,	6,	16,	4,	2,	17,	23,	6,	2,	13,	21,	0,	0,	0,	0,	5,	10,	12,	27,	15,	5,	30,	50,	15,	10,	0,	25,	30,	10,	35,	75,	3,	10,	3,	16,	0,	10,	0,	10,	0,	10,	2,	12,	103,	109,	150),
(28,	1807,	'Musodiq Muhammad',	'JS3',	NULL,	12,	10,	43,	65,	18,	10,	38,	66,	20,	10,	50,	80,	20,	10,	44,	74,	18,	10,	37,	65,	27,	0,	56,	83,	7,	10,	44,	61,	18,	10,	48,	76,	8,	2,	15,	25,	23,	10,	53,	86,	15,	10,	56,	81,	20,	5,	35,	60,	25,	10,	37,	72,	24,	8,	48,	80,	20,	10,	45,	75,	13,	10,	0,	23,	20,	10,	34,	64,	308,	145,	683),
(29,	1905,	'Tajudeen Muslim',	'JS2',	NULL,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(80,	1801,	'Babangida Aisha',	'JS3',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(81,	1802,	'Bello Fathiu',	'JS3',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(82,	1803,	'Ibraheem Nusroh',	'JS3',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(83,	1805,	'Olalere AbdulBasit',	'JS3',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(84,	1806,	'Quzeem AbdurRahman',	'JS3',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(85,	1901,	'Akinyemi AbdulMalik',	'JS2',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(86,	1902,	'Bello AbdurRasheed',	'JS2',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(87,	1903,	'Haroon Muhammad',	'JS2',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(88,	1904,	'Yahya Aisha',	'JS2',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(89,	2001,	'AbdulHameed Ayuba',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(90,	2003,	'Abdullah Imran',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(91,	2002,	'AbdulAzeez Bashir',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(92,	2005,	'Ibrahim Qaudri',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(93,	2006,	'Odukoya Qazeem',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(94,	2007,	'Ogunfunwa AbdulMumin',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(95,	2008,	'Olagunju AbdulMojeed',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(96,	2004,	'Ezzideen Muhammad',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(97,	2012,	'Babatunde Sodiq',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(98,	2009,	'Oloyede Azzydeen',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(99,	2011,	'Sanni Siddiqoh',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(100,	2010,	'Sanni Maryam',	'JS1',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(101,	1804,	'Lawal Muhammad',	'JS3',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(102,	1807,	'Musodiq Muhammad',	'JS3',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0),
(103,	1905,	'Tajudeen Muslim',	'JS2',	'20213',	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0);

DROP TABLE IF EXISTS `indiv_students`;
CREATE TABLE `indiv_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `students_id` int(11) NOT NULL,
  `term` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL,
  `class` varchar(5) NOT NULL,
  `paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `present` int(11) NOT NULL,
  `absent` int(11) NOT NULL,
  `comment` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `students_id` (`students_id`),
  CONSTRAINT `indiv_students_ibfk_2` FOREIGN KEY (`students_id`) REFERENCES `students` (`adm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `indiv_students` (`id`, `students_id`, `term`, `session`, `class`, `paid`, `balance`, `present`, `absent`, `comment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	1901,	'3',	'2122',	'JS3',	1,	0,	98,	0,	'Good performance ❤️, keep the ball rolling. He should work on his non challant attitude.',	'2022-07-20 09:25:50',	'2022-07-20 09:25:50',	'0000-00-00 00:00:00');

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adm` int(11) NOT NULL,
  `fname` varchar(220) NOT NULL,
  `lname` varchar(220) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `class` varchar(6) NOT NULL,
  `dob` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`,`adm`),
  KEY `adm` (`adm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `students` (`id`, `adm`, `fname`, `lname`, `phone`, `class`, `dob`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	1902,	'AbdurRasheed',	'Bello',	'08108097322',	'JS3',	'2020-03-27',	'2021-11-16 05:10:01',	'2021-11-16 05:10:01',	'0000-00-00 00:00:00'),
(2,	1901,	'AbdulMalik',	'Akinyemi',	'08108097322',	'JS3',	'2020-03-27',	'2022-04-07 09:01:51',	'2022-04-07 09:01:51',	'0000-00-00 00:00:00'),
(3,	1903,	'Muhammad',	'Haroon',	'08108097322',	'JS3',	'2021-04-20',	'2022-04-07 09:02:41',	'2022-04-07 09:02:41',	'0000-00-00 00:00:00'),
(4,	1905,	'Tajudeen',	'Muslim',	'08108097322',	'JS3',	'2021-03-27',	'2022-04-07 09:04:48',	'2022-04-07 09:04:48',	'0000-00-00 00:00:00');

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` tinytext NOT NULL,
  `subject_code` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `subjects` (`id`, `subject`, `subject_code`) VALUES
(1,	'English',	'en'),
(2,	'Mathematics',	'mt'),
(3,	'Yoruba',	'yo'),
(4,	'Arabic',	'ar'),
(5,	'French',	'fr'),
(6,	'Agricultural Science',	'ag'),
(7,	'Basic Science',	'bc'),
(8,	'Basic Tech',	'bt'),
(9,	'Physical Health Education',	'ph'),
(10,	'Computer Studies',	'cs'),
(11,	'Home Economics',	'he'),
(12,	'Basic Science & Technology 1',	'bs1'),
(13,	'Basic Science & Technology 2',	'bs2'),
(14,	'Prevocational Studies',	'pv'),
(15,	'Biology',	'bi'),
(16,	'Chemistry',	'ch'),
(17,	'Physics',	'py'),
(18,	'Technical Drawing',	'td'),
(19,	'Further Mathematics',	'fm'),
(20,	'Christian Religious Studies',	'cr'),
(21,	'Music',	'ms'),
(22,	'Government',	'gv'),
(23,	'Literature',	'lt'),
(24,	'Commerce',	'cm'),
(25,	'Accounting',	'ac'),
(26,	'Book Keeping',	'bk'),
(27,	'Business Studies',	'bu'),
(28,	'National Value',	'nv'),
(29,	'Social Studies',	'ss'),
(30,	'Security Education',	'se'),
(31,	'Civic Education',	'cv'),
(32,	'Cultural & Creative Art',	'ca'),
(33,	'Quran',	'qr'),
(34,	'Islamic Religious Studies',	'ir');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` tinytext NOT NULL,
  `lname` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `password` tinytext NOT NULL,
  `clearance` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `clearance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'Admin',	'Super',	'superadmin',	'3a928d5e56d9387ba7781fffe2d7977583d54ae967ecc993020151aa4082af9b',	99,	'2021-11-16 06:28:35',	'2021-11-16 06:28:35',	'0000-00-00 00:00:00');

DROP TABLE IF EXISTS `variable`;
CREATE TABLE `variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `value` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `variable` (`id`, `name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'classes',	'JS1,JS2,JS3',	'2021-11-16 10:54:04',	'2021-11-16 10:54:04',	'0000-00-00 00:00:00'),
(2,	'subjects',	'en,mt,ar,yo,bs1,bs2,bu,ca,ir,qr,yo,nv,pv',	'2021-11-16 10:54:04',	'2021-11-16 10:54:04',	'0000-00-00 00:00:00'),
(3,	'score_style',	'Project,CAT,Exam',	'2021-11-16 10:54:04',	'2021-11-16 10:54:04',	'0000-00-00 00:00:00'),
(4,	'installed',	'1',	'2021-11-16 10:54:04',	'2021-11-16 10:54:04',	'0000-00-00 00:00:00'),
(5,	'term',	'3',	'2021-11-16 10:54:04',	'2022-07-20 07:28:56',	'0000-00-00 00:00:00'),
(6,	'session',	'2122',	'2021-11-16 10:54:04',	'2021-11-16 10:54:04',	'0000-00-00 00:00:00'),
(7,	'schoolOpened',	'120',	'2021-11-16 10:54:04',	'2021-11-16 10:54:04',	'0000-00-00 00:00:00');

-- 2022-07-20 15:45:54
