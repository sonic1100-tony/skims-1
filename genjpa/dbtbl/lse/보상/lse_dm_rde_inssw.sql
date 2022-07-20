--
-- Table structure for table `lse_dm_rde_inssw`
--

DROP TABLE IF EXISTS `lse_dm_rde_inssw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dm_rde_inssw` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `imu_tp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '면책유형구분코드',
  `imu_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책유형코드',
  `rptg_nv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보고서조사유형코드',
  `cvap_rcgnt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인식여부',
  `prnt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보유형코드',
  `psc_pmn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검찰경찰구분코드',
  `lclt_psc_pmncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지방검찰경찰코드',
  `psc_pcecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검찰경찰서코드',
  `ndtdt` date DEFAULT NULL COMMENT '고발일자',
  `detc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수사여부',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `dm_rd_rptg_seqno` decimal(3,0) DEFAULT NULL COMMENT '손해감소보고서순번',
  `vwpt` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '착안점',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dm_rde_inssw_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해절감보험사기';
