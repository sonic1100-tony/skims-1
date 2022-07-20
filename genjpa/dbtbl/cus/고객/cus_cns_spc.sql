--
-- Table structure for table `cus_cns_spc`
--

DROP TABLE IF EXISTS `cus_cns_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_cns_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cns_rq_dthms` datetime NOT NULL COMMENT '상담신청일시',
  `cns_dthms` datetime DEFAULT NULL COMMENT '상담일시',
  `cns_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담유형코드',
  `cns_tp_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담유형세부코드',
  `cns_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담내용',
  `cns_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담직원번호',
  `cns_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담경로코드',
  `cns_dtcn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담세부내용',
  `cns_tp_lclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담유형대분류코드',
  `cns_tp_mdccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담유형중분류코드',
  `cns_tp_smccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담유형소분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_cns_spc_00` (`ctmno`,`cns_rq_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상담내역';
