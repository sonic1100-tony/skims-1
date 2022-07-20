--
-- Table structure for table `str_nw_mgm_sts`
--

DROP TABLE IF EXISTS `str_nw_mgm_sts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_nw_mgm_sts` (
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `mgm_sts_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경영통계구분코드',
  `sts_flg_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계구분항목코드',
  `sts_flg_dt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계구분세부항목코드',
  `sts_da_atr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계자료속성구분코드',
  `mgm_sts_meta_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경영통계메타구분코드',
  `sts_flg_dt_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계구분세부항목명',
  `sts_1_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계1자료값',
  `sts_2_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계2자료값',
  `sts_3_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계3자료값',
  `sts_4_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계4자료값',
  `sts_5_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계5자료값',
  `sts_6_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계6자료값',
  `sts_7_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계7자료값',
  `sts_8_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계8자료값',
  `sts_9_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계9자료값',
  `sts_10_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계10자료값',
  `sts_11_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계11자료값',
  `sts_12_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계12자료값',
  `sts_13_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계13자료값',
  `sts_14_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계14자료값',
  `sts_15_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계15자료값',
  `sts_16_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계16자료값',
  `sts_17_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계17자료값',
  `sts_18_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계18자료값',
  `sts_19_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계19자료값',
  `sts_20_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계20자료값',
  `sts_21_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계21자료값',
  `sts_22_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계22자료값',
  `sts_23_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계23자료값',
  `sts_24_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계24자료값',
  `sts_25_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계25자료값',
  `sts_26_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계26자료값',
  `sts_27_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계27자료값',
  `sts_28_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계28자료값',
  `sts_29_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계29자료값',
  `sts_30_davl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계30자료값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cy_yr`,`mgm_sts_flgcd`,`sts_flg_itcd`,`sts_flg_dt_itcd`,`sts_da_atr_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신경영통계';
