--
-- Table structure for table `fin_condt`
--

DROP TABLE IF EXISTS `fin_condt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_condt` (
  `rv_py_cnnno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '수납지급관련번호',
  `cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고구분코드',
  `pt_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여회사코드',
  `qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '지분율',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `woncr_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화배분금액',
  `fc_dvamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화배분금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rv_py_cnnno`,`cr_clm_flgcd`,`pt_cmpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공동인수';
