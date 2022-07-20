--
-- Table structure for table `lse_cvrcl_dm_rde`
--

DROP TABLE IF EXISTS `lse_cvrcl_dm_rde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cvrcl_dm_rde` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dm_ibamt` decimal(15,0) NOT NULL COMMENT '청구보험금액',
  `py_ibamt` decimal(15,0) NOT NULL COMMENT '지급보험금액',
  `dm_rdamt` decimal(15,0) NOT NULL COMMENT '손해감소금액',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `rd_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감소유형코드',
  `rd_tp_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감소유형세부코드',
  `rd_tp_dt_smccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감소유형세부소분류코드',
  `imu_rs_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책사유세부코드',
  `ad_py_rflt_seq` decimal(3,0) DEFAULT NULL COMMENT '추가지급반영회차',
  `emamt_mdf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구금액수정여부',
  `oldcd_appr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구코드인정여부',
  `nwcd_appr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신코드인정여부',
  `nmd_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미조정사유코드',
  `nmd_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미조정내용',
  `acrc_mdud_apamt` decimal(17,2) DEFAULT NULL COMMENT '정밀의료심사승인금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cvrcl_dm_rde_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`stfno`,`xi_py_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담보별손해절감';
