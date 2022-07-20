--
-- Table structure for table `ins_safe_dgn_rptg_it`
--

DROP TABLE IF EXISTS `ins_safe_dgn_rptg_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_safe_dgn_rptg_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `safe_dgn_rptg_no` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '안전진단보고서번호',
  `it_lvl` decimal(3,0) NOT NULL COMMENT '항목레벨',
  `it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '항목구분코드',
  `it_pst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '항목위치구분코드',
  `itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명',
  `it_dt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목세부내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_safe_dgn_rptg_it_00` (`safe_dgn_rptg_no`,`it_lvl`,`it_flgcd`,`it_pst_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='안전진단보고서항목';
