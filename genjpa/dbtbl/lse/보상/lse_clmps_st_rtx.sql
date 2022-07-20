--
-- Table structure for table `lse_clmps_st_rtx`
--

DROP TABLE IF EXISTS `lse_clmps_st_rtx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmps_st_rtx` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `trmt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료항목코드',
  `self_chamt_amt` decimal(17,2) DEFAULT '0.00' COMMENT '본인부담금금액',
  `pbco_chamt_amt` decimal(17,2) DEFAULT '0.00' COMMENT '공단부담금금액',
  `tamt_self_chamt_amt` decimal(17,2) DEFAULT '0.00' COMMENT '전액본인부담금금액',
  `slc_trmt_amt` decimal(17,2) DEFAULT '0.00' COMMENT '선택진료금액',
  `slc_trmt_xcpt_amt` decimal(17,2) DEFAULT '0.00' COMMENT '선택진료이외금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  `trmt_seqno` decimal(20,0) NOT NULL COMMENT '진료순번',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`trmt_seqno`,`trmt_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고자기준영수증';
