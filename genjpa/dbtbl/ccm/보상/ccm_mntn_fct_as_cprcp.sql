--
-- Table structure for table `ccm_mntn_fct_as_cprcp`
--

DROP TABLE IF EXISTS `ccm_mntn_fct_as_cprcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_mntn_fct_as_cprcp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `as_cprcp_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AS협력사코드',
  `mdabr_crnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외제차량명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_mntn_fct_as_cprcp_00` (`ctmno`,`cprt_entp_seqno`,`as_cprcp_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='정비공장AS협력사';
