--
-- Table structure for table `lse_clmnv_st_dt_spcft`
--

DROP TABLE IF EXISTS `lse_clmnv_st_dt_spcft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmnv_st_dt_spcft` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `trmt_seqno` decimal(20,0) NOT NULL COMMENT '진료순번',
  `trmt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료항목코드',
  `dtspc_rgt_seqno` decimal(5,0) NOT NULL COMMENT '세부내역등록순번',
  `rmdy_dt` date DEFAULT NULL COMMENT '치료일자',
  `trt_rlpmi_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약실손구분코드',
  `dt_spccd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부내역코드',
  `dt_spcnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부내역명',
  `amt` decimal(17,2) DEFAULT '0.00' COMMENT '금액',
  `rmdy_ct` decimal(3,0) DEFAULT NULL COMMENT '치료횟수',
  `days` decimal(5,0) DEFAULT NULL COMMENT '일수',
  `tamt` decimal(15,0) DEFAULT '0' COMMENT '총금액',
  `self_chamt_amt` decimal(17,2) DEFAULT '0.00' COMMENT '본인부담금금액',
  `pbco_chamt_amt` decimal(17,2) DEFAULT '0.00' COMMENT '공단부담금금액',
  `tamt_self_chamt_amt` decimal(17,2) DEFAULT '0.00' COMMENT '전액본인부담금금액',
  `slc_trmt_xcpt_amt` decimal(17,2) DEFAULT '0.00' COMMENT '선택진료이외금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`trmt_seqno`,`trmt_itcd`,`dtspc_rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사기준세부내역서';
