--
-- Table structure for table `lse_auto_xi_crr_dt`
--

DROP TABLE IF EXISTS `lse_auto_xi_crr_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_auto_xi_crr_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `auto_xi_crr_seqno` decimal(3,0) NOT NULL COMMENT '자동추산이력순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `auto_xi_rcal_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동추산재산출여부',
  `xi_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분코드',
  `xi_py_flg_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분사유코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약담보코드',
  `isamt` decimal(17,2) DEFAULT NULL COMMENT '가입금액',
  `dm_dmamt` decimal(17,2) DEFAULT NULL COMMENT '청구손해액',
  `remn_xi_amt` decimal(17,2) DEFAULT NULL COMMENT '잔여추산금액',
  `rlpmi_cvr_db_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실손담보중복가입여부',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_auto_xi_crr_dt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`dm_seqno`,`auto_xi_crr_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동추산이력상세';
