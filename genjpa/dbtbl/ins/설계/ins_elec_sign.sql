--
-- Table structure for table `ins_elec_sign`
--

DROP TABLE IF EXISTS `ins_elec_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_elec_sign` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `elec_sign_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자서명구분코드',
  `lms_snd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LMS발송구분코드',
  `img_srvr_rgt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지서버등록여부',
  `crt_lms_snddt` date DEFAULT NULL COMMENT '계약자LMS발송일자',
  `crt_lms_snd_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자LMS발송상태코드',
  `cetr_lms_snddt` date DEFAULT NULL COMMENT '모집인LMS발송일자',
  `cetr_lms_snd_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집인LMS발송상태코드',
  `link_kyvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연결키값',
  `auth_ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증IP주소',
  `auth_dthms` datetime DEFAULT NULL COMMENT '인증일시',
  `elec_sign_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자서명채널코드',
  `imty_wdrc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '즉시출금여부',
  `imty_wdrc_fail_resn` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '즉시출금실패이유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_elec_sign_00` (`plno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전자서명';
