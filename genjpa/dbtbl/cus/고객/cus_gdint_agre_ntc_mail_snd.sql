--
-- Table structure for table `cus_gdint_agre_ntc_mail_snd`
--

DROP TABLE IF EXISTS `cus_gdint_agre_ntc_mail_snd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_gdint_agre_ntc_mail_snd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `snddt` date NOT NULL COMMENT '발송일자',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `chek_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '체크여부',
  `chek_dthms` datetime DEFAULT NULL COMMENT '체크일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_gdint_agre_ntc_mail_snd_00` (`ctmno`,`snddt`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품소개동의안내이메일발송';
