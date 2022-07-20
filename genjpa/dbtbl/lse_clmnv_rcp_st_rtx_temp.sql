--
-- Table structure for table `lse_clmnv_rcp_st_rtx_temp`
--

DROP TABLE IF EXISTS `lse_clmnv_rcp_st_rtx_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmnv_rcp_st_rtx_temp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `trmt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료구분코드',
  `trmt_spc_seqno` decimal(5,0) NOT NULL COMMENT '진료내역순번',
  `trmt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료항목코드',
  `self_chamt_amt` decimal(17,2) DEFAULT NULL COMMENT '본인부담금금액',
  `pbco_chamt_amt` decimal(17,2) DEFAULT NULL COMMENT '공단부담금금액',
  `tamt_self_chamt_amt` decimal(17,2) DEFAULT NULL COMMENT '전액본인부담금금액',
  `slc_trmt_amt` decimal(17,2) DEFAULT NULL COMMENT '선택진료금액',
  `slc_trmt_xcpt_amt` decimal(17,2) DEFAULT NULL COMMENT '선택진료이외금액',
  `trpa_ud_slr_smamt` decimal(17,2) DEFAULT NULL COMMENT '진료비심사급여합계금액',
  `trpa_ud_nsly_smamt` decimal(17,2) DEFAULT NULL COMMENT '진료비심사비급여합계금액',
  `trpa_ud_bsc_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비심사근거내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clmnv_rcp_st_rtx_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`clm_nv_seqno`,`trmt_flgcd`,`trmt_spc_seqno`,`trmt_itcd`)
) ENGINE=InnoDB AUTO_INCREMENT=567 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사접수기준영수증';
