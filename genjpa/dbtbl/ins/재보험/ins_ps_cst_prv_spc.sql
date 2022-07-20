--
-- Table structure for table `ins_ps_cst_prv_spc`
--

DROP TABLE IF EXISTS `ins_ps_cst_prv_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ps_cst_prv_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ps_cstno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보유품의번호',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `prv_dthms` datetime NOT NULL COMMENT '결재일시',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자직원번호',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재상태코드',
  `prv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재구분코드',
  `slc_psrt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택보유율구분코드',
  `st_psrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '기준보유율',
  `tsi_st_psamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'TSI기준보유금액',
  `risk_st_psamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'RISK기준보유금액',
  `slc_psrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '선택보유율',
  `tsi_slc_psamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'TSI선택보유금액',
  `risk_slc_psamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'RISK선택보유금액',
  `psrt_1` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '보유율1',
  `psrt_2` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '보유율2',
  `ps_prv_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보유결재의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ps_cst_prv_spc_00` (`ps_cstno`,`prv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보유품의결재내역';
