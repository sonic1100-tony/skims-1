--
-- Table structure for table `com_scr_func`
--

DROP TABLE IF EXISTS `com_scr_func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_scr_func` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `scr_eng_pg_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '화면영문프로그램명',
  `scr_dl_id` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '화면거래ID',
  `scr_fnccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화면기능코드',
  `scr_hngl_pg_nm` varchar(150) COLLATE utf8mb4_bin NOT NULL COMMENT '화면한글프로그램명',
  `scr_fnccd_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '화면기능코드명',
  `psinf_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보업무구분코드',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당직원번호',
  `chaf_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후담당자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_scr_func_00` (`scr_eng_pg_nm`,`scr_dl_id`,`scr_fnccd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화면기능';
