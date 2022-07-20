--
-- Table structure for table `com_cus_info_mskdl_bjadm`
--

DROP TABLE IF EXISTS `com_cus_info_mskdl_bjadm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_cus_info_mskdl_bjadm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `scr_id` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '화면ID',
  `bj_fednm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '대상필드명',
  `msk_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마스크유형코드',
  `feld_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '필드유형코드',
  `feld_dt_info` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '필드세부정보',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_cus_info_mskdl_bjadm_00` (`scr_id`,`bj_fednm`,`msk_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객정보마스크처리대상관리';
