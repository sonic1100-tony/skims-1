--
-- Table structure for table `cmp_cmpln_adx_file_chek`
--

DROP TABLE IF EXISTS `cmp_cmpln_adx_file_chek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_cmpln_adx_file_chek` (
  `vl_chk_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가점검업무구분코드',
  `chk_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '점검년월',
  `chk_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '점검기관코드',
  `chk_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '점검직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`vl_chk_bsns_flgcd`,`chk_yymm`,`chk_orgcd`,`chk_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='준법감시첨부파일체크';
