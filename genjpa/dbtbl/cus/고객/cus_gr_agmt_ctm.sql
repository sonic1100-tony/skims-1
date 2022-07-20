--
-- Table structure for table `cus_gr_agmt_ctm`
--

DROP TABLE IF EXISTS `cus_gr_agmt_ctm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_gr_agmt_ctm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '단체고객번호',
  `ppr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '상위고객번호',
  `gr_cop_psct` decimal(5,0) DEFAULT NULL COMMENT '단체구성인원수',
  `gr_agmt_dcuno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체협정문서번호',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `gr_agmt_ap_dthms` datetime DEFAULT NULL COMMENT '단체협정승인일시',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `file_key` decimal(20,0) DEFAULT NULL COMMENT '파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_gr_agmt_ctm_00` (`gr_ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='단체협정고객';
