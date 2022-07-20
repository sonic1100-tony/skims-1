--
-- Table structure for table `cus_idca_truth_cnf_spc`
--

DROP TABLE IF EXISTS `cus_idca_truth_cnf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_idca_truth_cnf_spc` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `truth_cnfdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '진위확인일자',
  `idca_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신분증종류코드',
  `idca_no` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신분증번호',
  `isdt` date DEFAULT NULL COMMENT '발급일자',
  `ctm_brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객생년월일',
  `truth_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진위여부',
  `truth_cnf_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진위확인결과코드',
  `truth_cnf_rst_cn` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진위확인결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctmno`,`truth_cnfdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신분증진위확인내역';
