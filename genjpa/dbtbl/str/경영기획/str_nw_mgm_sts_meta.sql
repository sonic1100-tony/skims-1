--
-- Table structure for table `str_nw_mgm_sts_meta`
--

DROP TABLE IF EXISTS `str_nw_mgm_sts_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_nw_mgm_sts_meta` (
  `mgm_sts_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경영통계구분코드',
  `mgm_sts_meta_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경영통계메타구분코드',
  `sts_1_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계1자료명',
  `sts_2_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계2자료명',
  `sts_3_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계3자료명',
  `sts_4_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계4자료명',
  `sts_5_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계5자료명',
  `sts_6_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계6자료명',
  `sts_7_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계7자료명',
  `sts_8_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계8자료명',
  `sts_9_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계9자료명',
  `sts_10_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계10자료명',
  `sts_11_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계11자료명',
  `sts_12_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계12자료명',
  `sts_13_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계13자료명',
  `sts_14_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계14자료명',
  `sts_15_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계15자료명',
  `sts_16_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계16자료명',
  `sts_17_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계17자료명',
  `sts_18_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계18자료명',
  `sts_19_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계19자료명',
  `sts_20_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계20자료명',
  `sts_21_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계21자료명',
  `sts_22_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계22자료명',
  `sts_23_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계23자료명',
  `sts_24_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계24자료명',
  `sts_25_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계25자료명',
  `sts_26_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계26자료명',
  `sts_27_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계27자료명',
  `sts_28_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계28자료명',
  `sts_29_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계29자료명',
  `sts_30_danm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계30자료명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`mgm_sts_flgcd`,`mgm_sts_meta_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신경영통계메타';
