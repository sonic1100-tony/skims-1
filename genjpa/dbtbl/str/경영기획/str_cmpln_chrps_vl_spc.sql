--
-- Table structure for table `str_cmpln_chrps_vl_spc`
--

DROP TABLE IF EXISTS `str_cmpln_chrps_vl_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_cmpln_chrps_vl_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `lwad_part_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '준법부문구분코드',
  `psgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '소속기관코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `vl_seqno` decimal(5,0) NOT NULL COMMENT '평가순번',
  `scr_dmk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가점감점구분코드',
  `poct` decimal(3,0) NOT NULL COMMENT '점수',
  `cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_cmpln_chrps_vl_spc_00` (`st_yymm`,`lwad_part_flgcd`,`psgcd`,`stfno`,`vl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='준법감시담당자평가내역';
