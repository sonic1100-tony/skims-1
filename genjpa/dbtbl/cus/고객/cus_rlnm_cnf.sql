--
-- Table structure for table `cus_rlnm_cnf`
--

DROP TABLE IF EXISTS `cus_rlnm_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_rlnm_cnf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin NOT NULL COMMENT '한글고객명',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `rlnm_cnf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실명확인구분코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `evd_cnfyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙확인여부',
  `rqcr_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청발생사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_rlnm_cnf_00` (`ctm_dscno`,`hngl_ctmnm`,`ctmno`)
) ENGINE=InnoDB AUTO_INCREMENT=820 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객실명확인';
