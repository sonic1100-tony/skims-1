--
-- Table structure for table `lse_hsp_prpn_cmp`
--

DROP TABLE IF EXISTS `lse_hsp_prpn_cmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hsp_prpn_cmp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `ccmtd_seqno` decimal(3,0) NOT NULL COMMENT '산출식순번',
  `hspcs_seqno` decimal(3,0) NOT NULL COMMENT '입원비순번',
  `inscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험사코드',
  `mdcs_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비유형코드',
  `isamt` decimal(17,2) NOT NULL COMMENT '가입금액',
  `hsp_self_chamt` decimal(15,0) NOT NULL COMMENT '병원본인부담금액',
  `non_appr_amt` decimal(17,2) NOT NULL COMMENT '불인정금액',
  `indpd_rpamt` decimal(17,2) NOT NULL COMMENT '독립책임금액',
  `appr_ward_diamt` decimal(17,2) NOT NULL COMMENT '인정병실차액',
  `dmamt` decimal(15,0) NOT NULL COMMENT '손해금액',
  `mdcs_ccamt` decimal(17,2) NOT NULL COMMENT '의료비산출금액',
  `ward_diamt_sng_cpamt` decimal(17,2) NOT NULL COMMENT '병실차액단독보상금액',
  `py_ibamt` decimal(15,0) NOT NULL COMMENT '지급보험금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hsp_prpn_cmp_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`,`ccmtd_seqno`,`hspcs_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='입원비례보상';
