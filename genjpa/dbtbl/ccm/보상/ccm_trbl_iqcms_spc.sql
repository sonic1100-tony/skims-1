--
-- Table structure for table `ccm_trbl_iqcms_spc`
--

DROP TABLE IF EXISTS `ccm_trbl_iqcms_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iqcms_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `trbl_iqcms_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁심의회결과코드',
  `pt80_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '80퍼센트지급금액',
  `pt80_pydt` date DEFAULT NULL COMMENT '80퍼센트지급일자',
  `remn_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '잔여지급금액',
  `pt80_py_perd` date NOT NULL COMMENT '80퍼센트지급기한',
  `trbl_vlamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '분쟁가액',
  `ud_dm_perd` date NOT NULL COMMENT '심사청구기한',
  `iq_dmdt` date NOT NULL COMMENT '심의청구일자',
  `ins_md_appr_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보험조정인정금액',
  `mdorg_dm_appr_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '의료기관청구인정금액',
  `ud_excn_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '심사배제금액',
  `mdorg_part_agre_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '의료기관일부동의금액',
  `ins_py_pramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보험지급예정금액',
  `mdorg_rtn_pramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '의료기관반환예정금액',
  `norm_irt` decimal(5,3) NOT NULL DEFAULT '0.000' COMMENT '보통금리',
  `norm_irt_pd` decimal(1,0) DEFAULT NULL COMMENT '보통금리할',
  `norm_irt_pun` decimal(1,0) DEFAULT NULL COMMENT '보통금리푼',
  `norm_irt_ri` decimal(1,0) DEFAULT NULL COMMENT '보통금리리',
  `ar_irt` decimal(5,3) NOT NULL DEFAULT '0.000' COMMENT '연체금리',
  `ar_irt_pd` decimal(1,0) DEFAULT NULL COMMENT '연체금리할',
  `ar_irt_pun` decimal(1,0) DEFAULT NULL COMMENT '연체금리푼',
  `ar_irt_ri` decimal(1,0) DEFAULT NULL COMMENT '연체금리리',
  `pym_perd` date DEFAULT NULL COMMENT '납입기한',
  `t_ud_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총심사수수료',
  `ins_bzps_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보험사업자수수료',
  `mdorg_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '의료기관수수료',
  `udcm_pym_dty_pcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '심사수수료납입의무원금',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `xc_pcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '정산원금',
  `trbl_iqcms_dsno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁심의회결정번호',
  `trbl_iqcms_dsdt` date DEFAULT NULL COMMENT '분쟁심의회결정일자',
  `xc_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산결과코드',
  `dm_ud_seqno` decimal(3,0) NOT NULL COMMENT '청구심사순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iqcms_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`dm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의회내역';
