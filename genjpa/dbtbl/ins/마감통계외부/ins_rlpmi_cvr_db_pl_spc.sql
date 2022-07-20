--
-- Table structure for table `ins_rlpmi_cvr_db_pl_spc`
--

DROP TABLE IF EXISTS `ins_rlpmi_cvr_db_pl_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rlpmi_cvr_db_pl_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mdcs_tlm_opndt` date NOT NULL COMMENT '의료비전문개시일자',
  `mdcs_tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비전문관리번호',
  `mdcs_tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '의료비전문전송순번',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `sndr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송신자직원번호',
  `nrdps_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자주민번호',
  `inq_stdt` date DEFAULT NULL COMMENT '조회기준일자',
  `nrdps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자성명',
  `t_rgt_ct` decimal(3,0) DEFAULT NULL COMMENT '총등록건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rlpmi_cvr_db_pl_spc_00` (`mdcs_tlm_opndt`,`mdcs_tlm_admno`,`mdcs_tlm_ts_seqno`,`plno`,`cgaf_ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실손담보중복설계내역';
