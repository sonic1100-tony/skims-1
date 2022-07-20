--
-- Table structure for table `ins_cmins_rt_cc_spc`
--

DROP TABLE IF EXISTS `ins_cmins_rt_cc_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmins_rt_cc_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rt_cc_no` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '요율산출번호',
  `rkvl_seqno` decimal(5,0) NOT NULL COMMENT '위험평가순번',
  `rt_cc_oj_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요율산출목적물유형코드',
  `rt_cc_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요율산출속성코드',
  `rt_cc_unt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율산출단위구분코드',
  `rt_cc_vl` decimal(20,7) NOT NULL COMMENT '요율산출값',
  `ap_prm` decimal(17,2) NOT NULL COMMENT '적용보험료',
  `woncr_cv_ap_prm` decimal(15,0) NOT NULL COMMENT '원화환산적용보험료',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cmins_rt_cc_spc_00` (`rt_cc_no`,`rkvl_seqno`,`rt_cc_oj_tpcd`,`rt_cc_atrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험요율산출내역';
