--
-- Table structure for table `lse_clmnv_nrdps_st_rtx_temp`
--

DROP TABLE IF EXISTS `lse_clmnv_nrdps_st_rtx_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmnv_nrdps_st_rtx_temp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `trmt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료구분코드',
  `trmt_spc_seqno` decimal(5,0) NOT NULL COMMENT '진료내역순번',
  `trmt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료항목코드',
  `self_chamt_amt` decimal(17,2) DEFAULT NULL COMMENT '본인부담금금액',
  `pbco_chamt_amt` decimal(17,2) DEFAULT NULL COMMENT '공단부담금금액',
  `tamt_self_chamt_amt` decimal(17,2) DEFAULT NULL COMMENT '전액본인부담금금액',
  `slc_trmt_amt` decimal(17,2) DEFAULT NULL COMMENT '선택진료금액',
  `slc_trmt_xcpt_amt` decimal(17,2) DEFAULT NULL COMMENT '선택진료이외금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clmnv_nrdps_st_rtx_00` (`ctm_dscno`,`trmt_flgcd`,`trmt_spc_seqno`,`trmt_itcd`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사피보험자기준영수증';
