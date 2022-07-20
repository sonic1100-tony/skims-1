--
-- Table structure for table `fin_adtx_rpr_xcpt`
--

DROP TABLE IF EXISTS `fin_adtx_rpr_xcpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_adtx_rpr_xcpt` (
  `evddt` date NOT NULL COMMENT '증빙일자',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생시스템코드',
  `evdno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '증빙번호',
  `evd_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '증빙종류코드',
  `rpr_xcpt_rs` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '신고제외사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`evddt`,`cr_syscd`,`evdno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부가세신고제외';
