--
-- Table structure for table `ins_rlpmi_cvr_db_cvr_spc`
--

DROP TABLE IF EXISTS `ins_rlpmi_cvr_db_cvr_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rlpmi_cvr_db_cvr_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mdcs_tlm_opndt` date NOT NULL COMMENT '의료비전문개시일자',
  `mdcs_tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비전문관리번호',
  `mdcs_tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '의료비전문전송순번',
  `mdcs_cr_nds_seqno` decimal(3,0) NOT NULL COMMENT '의료비계약배서순번',
  `mdcs_cvr_seqno` decimal(5,0) NOT NULL COMMENT '의료비담보순번',
  `mdcs_trt_inq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비특약조회구분코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보명',
  `isamt` decimal(17,2) NOT NULL COMMENT '가입금액',
  `dcof_uiamt` decimal(15,0) NOT NULL COMMENT '의원공제금액',
  `hsp_uiamt` decimal(15,0) NOT NULL COMMENT '병원공제금액',
  `rcpr_org_uiamt` decimal(15,0) NOT NULL COMMENT '요양기관공제금액',
  `drfe_uiamt` decimal(15,0) NOT NULL COMMENT '약제비공제금액',
  `uiamt` decimal(17,2) NOT NULL COMMENT '공제금액',
  `gn_cncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보장내용코드',
  `cvr_spcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보특성코드',
  `cpyt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'COPAYMENT구분코드',
  `uiamt_stncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공제금액기준코드',
  `cmp_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상기간코드',
  `ward_diamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병실차액구분코드',
  `npp_hlprm_napc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국민건강보험미적용구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rlpmi_cvr_db_cvr_spc_00` (`mdcs_tlm_opndt`,`mdcs_tlm_admno`,`mdcs_tlm_ts_seqno`,`mdcs_cr_nds_seqno`,`mdcs_cvr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실손담보중복담보내역';
