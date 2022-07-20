--
-- Table structure for table `ccm_siu_rcp_adx_file`
--

DROP TABLE IF EXISTS `ccm_siu_rcp_adx_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_siu_rcp_adx_file` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `siu_admno_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU관리번호년도',
  `siu_admno_seqno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU관리번호순번',
  `adx_seqno` decimal(5,0) NOT NULL COMMENT '첨부순번',
  `adx_finm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_siu_rcp_adx_file_00` (`siu_admno_yr`,`siu_admno_seqno`,`adx_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU접수첨부파일';
