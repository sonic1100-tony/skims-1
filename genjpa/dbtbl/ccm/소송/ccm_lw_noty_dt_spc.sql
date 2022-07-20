--
-- Table structure for table `ccm_lw_noty_dt_spc`
--

DROP TABLE IF EXISTS `ccm_lw_noty_dt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lw_noty_dt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '소송접수년도',
  `lw_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '소송일련번호',
  `lwjd` decimal(2,0) NOT NULL COMMENT '심급',
  `lw_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '소송서열',
  `lw_noty_seqno` decimal(4,0) NOT NULL COMMENT '소송알림순번',
  `lw_noty_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송알림항목코드',
  `noty_dt_cn_seqno` decimal(3,0) NOT NULL COMMENT '알림세부내용순번',
  `lw_prg_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '소송진행내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lw_noty_dt_spc_00` (`lw_rcp_yr`,`lw_sno`,`lwjd`,`lw_rank`,`lw_noty_seqno`,`lw_noty_itcd`,`noty_dt_cn_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송알림세부내용';
