--
-- Table structure for table `lse_crdis_rlpmi_intn_cvr_tlm`
--

DROP TABLE IF EXISTS `lse_crdis_rlpmi_intn_cvr_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_crdis_rlpmi_intn_cvr_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `intn_tlmcd` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT '대외전문코드',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `inq_stdt` date NOT NULL COMMENT '조회기준일자',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험회사코드',
  `crdis_plyno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원증권번호',
  `gn_cncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보장내용코드',
  `cvr_spcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보특성코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `crdis_stf_chrg_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원직원부담코드',
  `uiamt_stncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공제금액기준코드',
  `cmp_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상기간코드',
  `ward_diamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병실차액구분코드',
  `npp_hlprm_napc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국민건강보험미적용구분코드',
  `cvr_strdt` date DEFAULT NULL COMMENT '담보시작일자',
  `cvr_nddt` date DEFAULT NULL COMMENT '담보종료일자',
  `cvr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보상태코드',
  `cvr_st_chdt` date DEFAULT NULL COMMENT '담보상태변경일자',
  `dcndt` date DEFAULT NULL COMMENT '확정일자',
  `cvr_isamt` decimal(15,0) DEFAULT NULL COMMENT '담보가입금액',
  `dcof_uiamt` decimal(15,0) DEFAULT NULL COMMENT '의원공제금액',
  `hsp_uiamt` decimal(15,0) DEFAULT NULL COMMENT '병원공제금액',
  `rcpr_hsp_uiamt` decimal(15,0) DEFAULT NULL COMMENT '요양병원공제금액',
  `drfe_uiamt` decimal(15,0) DEFAULT NULL COMMENT '약제비공제금액',
  `befo_uiamt` decimal(15,0) DEFAULT NULL COMMENT '이전공제금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_crdis_rlpmi_intn_cvr_tlm_00` (`intn_tlmcd`,`nrdps_ctmno`,`inq_stdt`,`ins_cmpcd`,`crdis_plyno`,`gn_cncd`,`cvr_spcd`,`cvr_seqno`),
  KEY `idx_lse_crdis_rlpmi_intn_cvr_tlm_10` (`nrdps_ctmno`,`inq_stdt`,`ins_cmpcd`,`crdis_plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용정보원실손대외담보전문';
