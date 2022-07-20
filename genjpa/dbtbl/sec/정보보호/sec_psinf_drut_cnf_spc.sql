--
-- Table structure for table `sec_psinf_drut_cnf_spc`
--

DROP TABLE IF EXISTS `sec_psinf_drut_cnf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_psinf_drut_cnf_spc` (
  `wrkdt` date NOT NULL COMMENT '작업일자',
  `tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '테이블명',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `o1_prv_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재의견',
  `o2_prv_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재의견',
  `o3_prv_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차결재의견',
  `o4_prv_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차결재의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`wrkdt`,`tabnm`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보파기확인내역';
