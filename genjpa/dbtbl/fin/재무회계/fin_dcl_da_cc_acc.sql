--
-- Table structure for table `fin_dcl_da_cc_acc`
--

DROP TABLE IF EXISTS `fin_dcl_da_cc_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dcl_da_cc_acc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `dcl_da_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공시자료분류코드',
  `cy_fy_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'CYFY구분코드',
  `dcl_rowno` decimal(3,0) NOT NULL COMMENT '공시행번호',
  `dcl_colno` decimal(3,0) NOT NULL COMMENT '공시열번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `sign` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부호',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `cy_cc_it_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CY산출항목유형코드',
  `cy_cc_st_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CY산출기준년월',
  `cy_da_rowno` decimal(3,0) DEFAULT NULL COMMENT 'CY자료행번호',
  `cy_da_colno` decimal(3,0) DEFAULT NULL COMMENT 'CY자료열번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공시자료산출계정';
