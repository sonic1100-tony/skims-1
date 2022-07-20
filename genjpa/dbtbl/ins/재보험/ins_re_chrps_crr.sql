--
-- Table structure for table `ins_re_chrps_crr`
--

DROP TABLE IF EXISTS `ins_re_chrps_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_re_chrps_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `chrps_ta_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자이관대상구분코드',
  `chrps_ta_bjno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자이관대상번호',
  `crr_cr_dthms` datetime NOT NULL COMMENT '이력발생일시',
  `taps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관자직원번호',
  `tabf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관전직원번호',
  `taaf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관후직원번호',
  `chrps_ch_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자변경사유코드',
  `dv_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당사유',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_re_chrps_crr_00` (`chrps_ta_bj_flgcd`,`chrps_ta_bjno`,`crr_cr_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=1216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출재담당자이력';
