--
-- Table structure for table `cus_sms_snd_spc`
--

DROP TABLE IF EXISTS `cus_sms_snd_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_sms_snd_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ctm_snd_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객발송업무구분코드',
  `snddt` date NOT NULL COMMENT '발송일자',
  `snd_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '발송시간',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `chek_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '체크여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_sms_snd_spc_00` (`ctmno`,`ctm_snd_bsns_flgcd`,`snddt`,`snd_hms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SMS발송내역';
