--
-- Table structure for table `lse_clmnv_st_trmt`
--

DROP TABLE IF EXISTS `lse_clmnv_st_trmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmnv_st_trmt` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `trmt_seqno` decimal(20,0) NOT NULL COMMENT '진료순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `trmt_inp_stncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료입력기준코드',
  `hspcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원코드',
  `pt_rgtno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환자등록번호',
  `trmt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료구분코드',
  `rcpr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요양구분코드',
  `trmt_strdt` date DEFAULT NULL COMMENT '진료시작일자',
  `trmt_nddt` date DEFAULT NULL COMMENT '진료종료일자',
  `spcf_hsp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특정병원구분코드',
  `trmt_sbjcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료과목코드',
  `dm_self_chamt_smamt` decimal(15,0) DEFAULT '0' COMMENT '청구본인부담금합계금액',
  `dm_pbco_chamt_smamt` decimal(15,0) DEFAULT '0' COMMENT '청구공단부담금합계금액',
  `dm_tamt_self_chamt_smamt` decimal(15,0) DEFAULT '0' COMMENT '청구전액본인부담금합계금액',
  `dm_slc_trpa_smamt` decimal(15,0) DEFAULT '0' COMMENT '청구선택진료비합계금액',
  `dm_slc_trmt_xcpt_smamt` decimal(15,0) DEFAULT '0' COMMENT '청구선택진료이외합계금액',
  `rl_pamt` decimal(15,0) DEFAULT '0' COMMENT '실제납입금액',
  `ad_vl_txamt` decimal(17,2) DEFAULT '0.00' COMMENT '부가가치세액',
  `rx_amt` decimal(15,0) DEFAULT '0' COMMENT '감면금액',
  `tc_amt` decimal(15,0) DEFAULT '0' COMMENT '절사금액',
  `nsly_self_rx_amt` decimal(15,0) DEFAULT '0' COMMENT '비급여본인감면액',
  `mtetmt_rx_amt` decimal(15,0) DEFAULT '0' COMMENT '도체증감면액',
  `injc_amt_rx_amt` decimal(15,0) DEFAULT '0' COMMENT '주사료감면액',
  `mri_rx_amt` decimal(15,0) DEFAULT '0' COMMENT 'MRI감면액',
  `rtx_rv_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증수납종류코드',
  `mdcf_rx_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '치료비감면구분코드',
  `cc_ad_rflt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출추가반영구분코드',
  `dtspc_inp_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부내역입력대상여부',
  `dtspc_inp_cnfyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부내역입력확인여부',
  `auto_xi_cc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동추산산출여부',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`trmt_seqno`),
  KEY `idx_lse_clmnv_st_trmt_10` (`hspcd`,`trmt_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사기준진료';
