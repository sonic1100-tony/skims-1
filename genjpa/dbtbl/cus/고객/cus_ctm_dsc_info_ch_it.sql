--
-- Table structure for table `cus_ctm_dsc_info_ch_it`
--

DROP TABLE IF EXISTS `cus_ctm_dsc_info_ch_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_dsc_info_ch_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `ch_bfaf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '변경전후구분코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `ctm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객유형코드',
  `rgbrd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내외국구분코드',
  `frg_rlnm_ctfct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외국인실명증표구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_dsc_info_ch_it_00` (`reqno`,`ch_bfaf_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객식별정보변경항목';
