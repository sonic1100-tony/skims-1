--
-- Table structure for table `ins_xol_clm_ins_itm`
--

DROP TABLE IF EXISTS `ins_xol_clm_ins_itm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_xol_clm_ins_itm` (
  `xol_event_clm_dmno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL이벤트사고청구번호',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `py_dvrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '지급배분율',
  `xi_dvrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '추산배분율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`xol_event_clm_dmno`,`ins_imcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='XOL사고보험종목';
