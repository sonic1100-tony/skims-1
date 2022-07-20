--
-- Table structure for table `cus_ctm_info_mntr_tot`
--

DROP TABLE IF EXISTS `cus_ctm_info_mntr_tot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_info_mntr_tot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `ctm_info_srv_id` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객정보서비스ID',
  `srv_chr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '서비스담당구분코드',
  `dorcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '거래기관코드',
  `nml_inqct` decimal(9,0) NOT NULL COMMENT '정상조회건수',
  `agre_inqct` decimal(9,0) NOT NULL COMMENT '동의조회건수',
  `nagrt_inqct` decimal(9,0) NOT NULL COMMENT '미동의조회건수',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_info_mntr_tot_00` (`stdt`,`ctm_info_srv_id`,`srv_chr_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객정보모니터링집계';
