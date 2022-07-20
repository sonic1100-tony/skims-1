--
-- Table structure for table `lse_nsly_hsp_rtx_spc`
--

DROP TABLE IF EXISTS `lse_nsly_hsp_rtx_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_nsly_hsp_rtx_spc` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `trmt_seqno` decimal(20,0) NOT NULL COMMENT '진료순번',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `mdcs_rtx_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비영수증유형코드',
  `relpc_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자고객번호',
  `trmt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료구분코드',
  `rcpr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요양구분코드',
  `hspcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원코드',
  `spcf_hsp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특정병원구분코드',
  `trmt_sbjcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료과목코드',
  `trmt_strdt` date NOT NULL COMMENT '진료시작일자',
  `trmt_nddt` date NOT NULL COMMENT '진료종료일자',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `slc_trmt_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '선택진료금액',
  `slc_trmt_amt_out_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '선택진료료외금액',
  `nsly_trt_appr_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '비급여특약인정금액',
  `md_slc_trmt_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '조정선택진료금액',
  `md_slc_trmt_amt_out_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '조정선택진료료외금액',
  `md_nsly_trt_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '조정비급여특약금액',
  `appr_slc_trmt_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '인정선택진료금액',
  `appr_slc_trmt_amt_out_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '인정선택진료료외금액',
  `appr_nsly_trt_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '인정비급여특약금액',
  `nsly_slc_trmt_amt_out_rx_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '비급여선택진료료외감면액',
  `nsly_slc_trmt_amt_out_md_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '비급여선택진료료외조정액',
  `upr_wramt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '상급병실료',
  `upr_wramt_diamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '상급병실료차액',
  `vald_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유효여부',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`trmt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비급여입원영수증내역';
