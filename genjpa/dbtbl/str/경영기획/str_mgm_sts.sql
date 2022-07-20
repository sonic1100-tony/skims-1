--
-- Table structure for table `str_mgm_sts`
--

DROP TABLE IF EXISTS `str_mgm_sts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_mgm_sts` (
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `mgm_sts_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경영통계구분코드',
  `sts_flg_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계구분항목코드',
  `sts_flg_dt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계구분세부항목코드',
  `sts_da_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계자료속성코드',
  `sts_da_atr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계자료속성구분코드',
  `mgm_sts_davl` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '경영통계자료값',
  `popu_strdt` date DEFAULT NULL COMMENT '팝업시작일자',
  `popu_nddt` date DEFAULT NULL COMMENT '팝업종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cy_yr`,`mgm_sts_flgcd`,`sts_flg_itcd`,`sts_flg_dt_itcd`,`sts_da_atrcd`,`sts_da_atr_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='경영통계';
