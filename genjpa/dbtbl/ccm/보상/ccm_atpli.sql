--
-- Table structure for table `ccm_atpli`
--

DROP TABLE IF EXISTS `ccm_atpli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_atpli` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `atpli_seqno` decimal(3,0) NOT NULL COMMENT '자배책순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `rpbl_sng_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '책임단독여부',
  `cocpy_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당타사구분코드',
  `ot_inscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타보험사코드',
  `rpbl_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '책임증권번호',
  `rpbl_ins_st` date DEFAULT NULL COMMENT '책임보험시기',
  `rpbl_ins_clstr` date DEFAULT NULL COMMENT '책임보험종기',
  `optn_ins_st` date DEFAULT NULL COMMENT '임의보험시기',
  `optn_ins_clstr` date DEFAULT NULL COMMENT '임의보험종기',
  `atpli_dmdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자배책청구사코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_atpli_00` (`rcp_yymm`,`rcp_nv_seqno`,`atpli_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자배책';
