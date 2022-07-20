--
-- Table structure for table `ins_safe_dgn_rptg_obst`
--

DROP TABLE IF EXISTS `ins_safe_dgn_rptg_obst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_safe_dgn_rptg_obst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lctn_pstno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '소재지우편번호',
  `pst_sno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '우편일련번호',
  `st_strdt` date DEFAULT NULL COMMENT '기준시작일자',
  `st_nddt` date DEFAULT NULL COMMENT '기준종료일자',
  `obst_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관측소명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_safe_dgn_rptg_obst_00` (`lctn_pstno`,`pst_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='안전진단보고서관측소';
