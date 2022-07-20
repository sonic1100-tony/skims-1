--
-- Table structure for table `sec_dep_cl_chk_rst`
--

DROP TABLE IF EXISTS `sec_dep_cl_chk_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_dep_cl_chk_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `chk_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검직원번호',
  `psinf_chk_rst_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보점검결과내용',
  `bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무파일KEY',
  `ctl_dep_vrf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통제부서검증여부',
  `ctl_dep_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통제부서직원번호',
  `ctl_dep_vrf_dt` date DEFAULT NULL COMMENT '통제부서검증일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sec_dep_cl_chk_rst_00` (`st_yymm`,`orgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부서별점검결과';
