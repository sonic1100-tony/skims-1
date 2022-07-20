--
-- Table structure for table `fin_pa_inr`
--

DROP TABLE IF EXISTS `fin_pa_inr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_pa_inr` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `bdl_tf_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일괄이체업무구분코드',
  `bdl_tf_dl_seqno` decimal(5,0) NOT NULL COMMENT '일괄이체처리순번',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생시스템코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `pyamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부금액합계',
  `py_xcamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급제외금액합계',
  `uiamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공제금액합계',
  `cnfdt` date DEFAULT NULL COMMENT '확인일자',
  `cnf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`bdl_tf_bsns_flgcd`,`bdl_tf_dl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='임금통합';
