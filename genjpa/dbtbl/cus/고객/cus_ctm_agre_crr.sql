--
-- Table structure for table `cus_ctm_agre_crr`
--

DROP TABLE IF EXISTS `cus_ctm_agre_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_agre_crr` (
  `agre_admno` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '동의관리번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `agre_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '동의분류코드',
  `agre_bsnno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '동의업무번호',
  `agre_utlcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '동의활용코드',
  `agre_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '동의항목코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `agre_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의상태코드',
  `agre_summ_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의요약상세구분코드',
  `agre_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의채널코드',
  `agre_dl_dthms` datetime DEFAULT NULL COMMENT '동의처리일시',
  `auth_admno` bigint(20) DEFAULT NULL COMMENT '인증관리번호',
  `agre_bsnno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의업무번호구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`agre_admno`),
  UNIQUE KEY `idx_cus_ctm_agre_crr_00` (`ctmno`,`agre_csfcd`,`agre_bsnno`,`agre_utlcd`,`agre_itcd`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객동의이력';
