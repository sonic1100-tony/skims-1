--
-- Table structure for table `lse_hprm_crps_equ`
--

DROP TABLE IF EXISTS `lse_hprm_crps_equ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_crps_equ` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `prprt_dt_seqno` decimal(3,0) NOT NULL COMMENT '재물상세순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `crps_equ_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부대설비코드',
  `crps_equnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부대설비명',
  `are` decimal(17,2) DEFAULT NULL COMMENT '면적',
  `unprc` decimal(15,0) DEFAULT NULL COMMENT '단가',
  `amt` decimal(17,2) DEFAULT NULL COMMENT '금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_crps_equ_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`prprt_dt_seqno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM부대설비';
