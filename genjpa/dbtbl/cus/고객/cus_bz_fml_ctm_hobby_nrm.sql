--
-- Table structure for table `cus_bz_fml_ctm_hobby_nrm`
--

DROP TABLE IF EXISTS `cus_bz_fml_ctm_hobby_nrm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bz_fml_ctm_hobby_nrm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `bz_fml_ctm_seqno` decimal(10,0) NOT NULL COMMENT '영업가족고객순번',
  `hobby_nr_mttcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '취미관심사항코드',
  `hobby_nr_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취미관심사항구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bz_fml_ctm_hobby_nrm_00` (`stfno`,`bz_fml_ctm_seqno`,`hobby_nr_mttcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업가족고객취미관심사항';
