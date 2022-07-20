--
-- Table structure for table `lse_dm_rd_vl`
--

DROP TABLE IF EXISTS `lse_dm_rd_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dm_rd_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청구분코드',
  `cnb_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '기여금액',
  `cn_dl_md_cnbys` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해지처리조정기여여부',
  `chrps_cnbd` decimal(3,0) DEFAULT NULL COMMENT '담당자기여도',
  `vl_requ_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가의뢰사유',
  `vl_requ_iptdt` date DEFAULT NULL COMMENT '평가의뢰입력일자',
  `tmnd_cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팀장확인여부',
  `tmnd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팀장직원번호',
  `hdof_cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본사확인여부',
  `hdof_cnf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본사확인직원번호',
  `requ_org_seqno` decimal(3,0) DEFAULT NULL COMMENT '의뢰기관순번',
  `dm_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구보험금액',
  `py_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급보험금액',
  `dm_rdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '손해감소금액',
  `prsdt` date DEFAULT NULL COMMENT '제출일자',
  `siu_rcod_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU등재여부',
  `udwr_cnb_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사자기여여부',
  `onsf_dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자체처리여부',
  `dmas_crp_requ_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정법인의뢰여부',
  `mdud_requ_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사의뢰여부',
  `ibnf_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금처리결과코드',
  `dm_cr_admcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해계약관리코드',
  `cnf_wrcs_clrq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인동의서징구여부',
  `cndt` date DEFAULT NULL COMMENT '해약일자',
  `idm_dher_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상취급자여부',
  `idm_ctm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상고객여부',
  `idm_thrps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상제3자여부',
  `cancr_ddalw_bfntc_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '암일당사전안내방법코드',
  `mdud_nmd_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사미조정사유코드',
  `mdud_nmd_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사미조정사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dm_rd_vl_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해절감평가';
