--
-- Table structure for table `lse_hprm_rptg_otcm_py`
--

DROP TABLE IF EXISTS `lse_hprm_rptg_otcm_py`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_rptg_otcm_py` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `py_seqno` decimal(5,0) NOT NULL COMMENT '지급순번',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험회사코드',
  `ins_cmpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '보험회사명',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보명',
  `isamt` decimal(17,2) DEFAULT NULL COMMENT '가입금액',
  `pyamt` decimal(17,2) NOT NULL COMMENT '지급금액',
  `py_dl_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처리내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_rptg_otcm_py_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`py_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM보고서타사지급';
