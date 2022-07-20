--
-- Table structure for table `cus_gdint_agre_url_snd_crr`
--

DROP TABLE IF EXISTS `cus_gdint_agre_url_snd_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_gdint_agre_url_snd_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `snddt` date NOT NULL COMMENT '발송일자',
  `snd_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '발송시간',
  `tlno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '전화번호',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `agmdt` date DEFAULT NULL COMMENT '동의일자',
  `snd_log_cn` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송로그내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_gdint_agre_url_snd_crr_00` (`ctmno`,`snddt`,`snd_hms`,`tlno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품소개동의URL발송이력';
