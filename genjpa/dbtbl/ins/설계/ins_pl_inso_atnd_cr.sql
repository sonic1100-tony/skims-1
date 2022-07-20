--
-- Table structure for table `ins_pl_inso_atnd_cr`
--

DROP TABLE IF EXISTS `ins_pl_inso_atnd_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_inso_atnd_cr` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `ce_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '모집직원번호',
  `atnd_cr_ap_dcuno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유의계약승인문서번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계부실유의계약';
