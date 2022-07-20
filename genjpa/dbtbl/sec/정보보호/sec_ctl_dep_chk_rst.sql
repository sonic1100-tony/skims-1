--
-- Table structure for table `sec_ctl_dep_chk_rst`
--

DROP TABLE IF EXISTS `sec_ctl_dep_chk_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_ctl_dep_chk_rst` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `chkdt` date DEFAULT NULL COMMENT '점검일자',
  `chk_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검직원번호',
  `bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통제부서점검결과';
