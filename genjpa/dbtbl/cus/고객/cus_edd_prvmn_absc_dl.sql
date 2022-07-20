--
-- Table structure for table `cus_edd_prvmn_absc_dl`
--

DROP TABLE IF EXISTS `cus_edd_prvmn_absc_dl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_edd_prvmn_absc_dl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자직원번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `prvmn_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자기관코드',
  `edd_absc_dl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'EDD부재처리유형코드',
  `edd_absc_dl_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'EDD부재처리사유코드',
  `ag_prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '대리결재자직원번호',
  `edd_auto_aryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'EDD자동승인여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_edd_prvmn_absc_dl_00` (`prvmn_stfno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='EDD결재자부재처리';
