--
-- Table structure for table `lse_siu_co_relco`
--

DROP TABLE IF EXISTS `lse_siu_co_relco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_siu_co_relco` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `siu_co_nv_admno` bigint(20) NOT NULL COMMENT 'SIU공동조사관리번호',
  `siu_relco_seqno` decimal(3,0) NOT NULL COMMENT 'SIU관계사순번',
  `mn_mg_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '주간사여부',
  `relco_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '관계회사명',
  `relco_chrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '관계회사담당자명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_siu_co_relco_00` (`siu_co_nv_admno`,`siu_relco_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU공동관계사';
