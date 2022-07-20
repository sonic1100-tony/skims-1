--
-- Table structure for table `ins_mdcs_trt_befo_inq`
--

DROP TABLE IF EXISTS `ins_mdcs_trt_befo_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mdcs_trt_befo_inq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mdcs_tlm_opndt` date NOT NULL COMMENT '의료비전문개시일자',
  `mdcs_tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비전문관리번호',
  `mdcs_tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '의료비전문전송순번',
  `mdcs_cvr_seqno` decimal(5,0) NOT NULL COMMENT '의료비담보순번',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보명',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `mdcs_trt_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비특약계약상태코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_mdcs_trt_befo_inq_00` (`mdcs_tlm_opndt`,`mdcs_tlm_admno`,`mdcs_tlm_ts_seqno`,`mdcs_cvr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료비특약사전조회';
