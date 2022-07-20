--
-- Table structure for table `ins_rlpmi_cvr_spc`
--

DROP TABLE IF EXISTS `ins_rlpmi_cvr_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rlpmi_cvr_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `rgt_seqno` decimal(3,0) NOT NULL COMMENT '등록순번',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험회사코드',
  `mdcs_trt_plyno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비특약증권번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `unins_cr_injr_rlpmi_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무보험차상해실손가입여부',
  `ot_cr_drve_rlpmi_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타자동차운전실손여부',
  `ot_cr_dm_rlpmi_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타자동차손해실손여부',
  `lwr_snrt_cs_rlpmi_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변호사선임비용실손여부',
  `crmcs_agamt_rlpmi_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '형사합의금실손여부',
  `pnlty_rlpmi_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '벌금실손여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_rlpmi_cvr_spc_00` (`plno`,`rgt_seqno`,`ins_cmpcd`,`mdcs_trt_plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=1264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실손담보내역';
