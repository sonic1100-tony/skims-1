--
-- Table structure for table `ccm_lw_noty_spc`
--

DROP TABLE IF EXISTS `ccm_lw_noty_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lw_noty_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lw_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '소송접수년도',
  `lw_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '소송일련번호',
  `lwjd` decimal(2,0) NOT NULL COMMENT '심급',
  `lw_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '소송서열',
  `lw_noty_seqno` decimal(4,0) NOT NULL COMMENT '소송알림순번',
  `lw_noty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송알림구분코드',
  `lw_noty_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소송알림상세구분코드',
  `cuttm_ddy_dthms` datetime DEFAULT NULL COMMENT '당회기일일시',
  `nxtm_noty_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차회알림상세구분코드',
  `nxtm_ddy_dthms` datetime DEFAULT NULL COMMENT '차회기일일시',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chrps_cnf_dthms` datetime DEFAULT NULL COMMENT '담당자확인일시',
  `jdaf_crp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법무법인직원번호',
  `btfh_crp_cnf_dthms` datetime DEFAULT NULL COMMENT '특연법인확인일시',
  `dpcsr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발신자직원번호',
  `dpc_dthms` datetime DEFAULT NULL COMMENT '발신일시',
  `rcvpt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신자직원번호',
  `rcv_dthms` datetime DEFAULT NULL COMMENT '수신일시',
  `lw_rcv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송수신상태코드',
  `noty_inp_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림입력상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lw_noty_spc_00` (`lw_rcp_yr`,`lw_sno`,`lwjd`,`lw_rank`,`lw_noty_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송알림내역';
