--
-- Table structure for table `ins_dvpns_icps_inq_auadm`
--

DROP TABLE IF EXISTS `ins_dvpns_icps_inq_auadm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_icps_inq_auadm` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `icps_lgin_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'ICPS로그인사용자ID',
  `scrno` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '비밀번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원ICPS조회권한관리';
