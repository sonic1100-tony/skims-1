--
-- Table structure for table `ccm_icps_scrg_index`
--

DROP TABLE IF EXISTS `ccm_icps_scrg_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_icps_scrg_index` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `inqdt` date NOT NULL COMMENT '조회일자',
  `inq_st_mc` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '조회기준월수',
  `main_index_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '주요지표코드',
  `main_index_vl` decimal(15,0) NOT NULL COMMENT '주요지표값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_icps_scrg_index_00` (`ctm_dscno`,`inqdt`,`inq_st_mc`,`main_index_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ICPS스코어링지표';
