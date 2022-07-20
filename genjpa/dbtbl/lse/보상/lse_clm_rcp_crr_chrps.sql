--
-- Table structure for table `lse_clm_rcp_crr_chrps`
--

DROP TABLE IF EXISTS `lse_clm_rcp_crr_chrps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_rcp_crr_chrps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `rcp_crr_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '접수이력순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `lsetm_stf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사직원구분코드',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `chbf_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전담당자직원번호',
  `chbf_chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전담당자기관코드',
  `chaf_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후담당자직원번호',
  `chaf_chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후담당자기관코드',
  `dv_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당사유',
  `lsetm_dv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사배당유형코드',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `hprm_requ_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HPRM의뢰대상여부',
  `smtcl_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMARTCLAIM대상여부',
  `enddt` date DEFAULT NULL COMMENT '종결일자',
  `end_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종결여부',
  `dcn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확정여부',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `dv_dl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당처리유형코드',
  `dv_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당사유코드',
  `dv_cnfm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당확인자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_rcp_crr_chrps_00` (`rcp_yymm`,`rcp_nv_seqno`,`rcp_crr_seqno`,`clmps_seqno`,`plyno`,`lsetm_stf_flgcd`,`ap_nd_dthms`,`ap_str_dthms`),
  KEY `idx_lse_clm_rcp_crr_chrps_10` (`chaf_chrps_stfno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=7696 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고접수이력별담당자';
