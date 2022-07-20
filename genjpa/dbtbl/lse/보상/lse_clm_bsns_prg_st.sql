--
-- Table structure for table `lse_clm_bsns_prg_st`
--

DROP TABLE IF EXISTS `lse_clm_bsns_prg_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_bsns_prg_st` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `clm_bsns_prg_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고업무진행상태코드',
  `clm_prg_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고진행분류코드',
  `idmrt` decimal(12,6) DEFAULT NULL COMMENT '구상율',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `xcrt` decimal(12,6) DEFAULT NULL COMMENT '환율',
  `xcrt_apdt` date DEFAULT NULL COMMENT '환율적용일자',
  `rn_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수보험금액',
  `woncr_cv_pyamt` decimal(17,2) DEFAULT NULL COMMENT '원화환산지급금액',
  `cs_xcrt` decimal(12,6) DEFAULT NULL COMMENT '비용환율',
  `cs_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비용화폐코드',
  `cs_amt` decimal(17,2) DEFAULT NULL COMMENT '비용금액',
  `woncr_cv_csamt` decimal(17,2) DEFAULT NULL COMMENT '원화환산비용금액',
  `psrt` decimal(12,6) DEFAULT NULL COMMENT '보유율',
  `xi_xcrt` decimal(12,6) DEFAULT NULL COMMENT '추산환율',
  `remn_xi_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔여추산화폐코드',
  `remn_xi_amt` decimal(17,2) DEFAULT NULL COMMENT '잔여추산금액',
  `woncr_cv_xiamt` decimal(15,0) DEFAULT NULL COMMENT '원화환산추산금액',
  `remn_xi_cs_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔여추산비용화폐코드',
  `remn_xi_csamt` decimal(17,2) DEFAULT NULL COMMENT '잔여추산비용금액',
  `woncv_xi_csamt` decimal(17,2) DEFAULT NULL COMMENT '원화환산추산비용금액',
  `tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팀기관코드',
  `tm_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팀기관명',
  `ppr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관코드',
  `ppr_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관명',
  `nots_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요내용',
  `cr_dm_amt` decimal(17,2) DEFAULT NULL COMMENT '발생손해액',
  `cc_seq` decimal(3,0) DEFAULT NULL COMMENT '산출회차',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_bsns_prg_st_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cr_seqno`,`clm_bsns_prg_stcd`)
) ENGINE=InnoDB AUTO_INCREMENT=11756 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고업무진행상태';
