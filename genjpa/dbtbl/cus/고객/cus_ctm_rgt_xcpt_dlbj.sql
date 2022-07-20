--
-- Table structure for table `cus_ctm_rgt_xcpt_dlbj`
--

DROP TABLE IF EXISTS `cus_ctm_rgt_xcpt_dlbj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_rgt_xcpt_dlbj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `xcpt_dl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예외처리유형코드',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `xcpt_dl_ctfct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예외처리증표구분코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `frg_stay_ojccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외국인체류목적코드',
  `frg_stay_nddt` date DEFAULT NULL COMMENT '외국인체류만료일자',
  `file_key` decimal(20,0) DEFAULT NULL COMMENT '파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_rgt_xcpt_dlbj_00` (`ctm_dscno`,`xcpt_dl_tpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객등록예외처리대상';
