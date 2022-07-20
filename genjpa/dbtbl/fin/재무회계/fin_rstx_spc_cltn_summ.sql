--
-- Table structure for table `fin_rstx_spc_cltn_summ`
--

DROP TABLE IF EXISTS `fin_rstx_spc_cltn_summ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rstx_spc_cltn_summ` (
  `rr_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속년월',
  `jrd_uofcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관할관청코드',
  `dat_sourc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '3' COMMENT '데이터소스구분코드',
  `bz_ic_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '사업소득인원',
  `bz_ic_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업소득과표금액',
  `bz_ic_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '사업소득주민세액',
  `gxntx_ic_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '갑근소득인원',
  `gxntx_ic_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '갑근소득과표금액',
  `gxntx_ic_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '갑근소득주민세액',
  `nt_ic_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '이자소득인원',
  `nt_ic_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이자소득과표금액',
  `nt_ic_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이자소득주민세액',
  `crp_intic_psct` decimal(7,0) DEFAULT NULL COMMENT '법인이자소득인원수',
  `crp_intic_txst_amt` decimal(15,0) DEFAULT NULL COMMENT '법인이자소득과표금액',
  `crp_intic_rxamt` decimal(15,0) DEFAULT NULL COMMENT '법인이자소득주민세액',
  `lbr_rtm_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '근로퇴직인원',
  `lbr_rtm_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근로퇴직과표금액',
  `lbr_rtm_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '근로퇴직주민세액',
  `an_pty_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '연금추징인원',
  `an_pty_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금추징과표금액',
  `an_pty_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금추징주민세액',
  `et_ic_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '기타소득인원',
  `et_ic_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타소득과표금액',
  `et_ic_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타소득주민세액',
  `dv_ic_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '배당소득인원',
  `dv_ic_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배당소득과표금액',
  `dv_ic_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배당소득주민세액',
  `an_ic_prsn` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '연금소득인원',
  `an_ic_txst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금소득과표금액',
  `an_ic_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금소득주민세액',
  `cc_rxamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '산출주민세액합계',
  `ba_nptrt_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기초미환급잔액',
  `mdamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '조정금액',
  `pym_bj_rxamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부대상주민세액',
  `pym_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부금액',
  `cc_tx_std_sm` decimal(15,0) NOT NULL COMMENT '산출과세표준합계',
  `tx_std_nptrt_tblam` decimal(15,0) NOT NULL COMMENT '과세표준미환급잔액',
  `tx_std_mdamt` decimal(15,0) NOT NULL COMMENT '과세표준조정금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rr_yymm`,`jrd_uofcd`,`dat_sourc_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주민세특별징수요약';
