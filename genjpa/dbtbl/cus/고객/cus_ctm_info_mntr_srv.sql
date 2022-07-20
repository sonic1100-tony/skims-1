--
-- Table structure for table `cus_ctm_info_mntr_srv`
--

DROP TABLE IF EXISTS `cus_ctm_info_mntr_srv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_info_mntr_srv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_info_srv_id` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객정보서비스ID',
  `ctm_info_srvnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객정보서비스명',
  `ctm_info_inq_bsncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객정보조회업무코드',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당직원번호',
  `noty_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '알림여부',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_info_mntr_srv_00` (`ctm_info_srv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객정보모니터링서비스';
