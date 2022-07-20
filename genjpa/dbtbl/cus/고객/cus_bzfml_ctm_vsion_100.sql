--
-- Table structure for table `cus_bzfml_ctm_vsion_100`
--

DROP TABLE IF EXISTS `cus_bzfml_ctm_vsion_100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bzfml_ctm_vsion_100` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `bz_fml_ctm_seqno` decimal(10,0) NOT NULL COMMENT '영업가족고객순번',
  `aces_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접근경로코드',
  `year_incm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연수입구분코드',
  `cntrt_rnd_trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉경과기간구분코드',
  `fvor_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '친밀도코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bzfml_ctm_vsion_100_00` (`stfno`,`bz_fml_ctm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업가족고객비전100';
