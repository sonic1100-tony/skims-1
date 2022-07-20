--
-- Table structure for table `cus_gdint_agre_nd_pr_ntc_chr`
--

DROP TABLE IF EXISTS `cus_gdint_agre_nd_pr_ntc_chr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_gdint_agre_nd_pr_ntc_chr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `snddt` date NOT NULL COMMENT '발송일자',
  `snd_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '발송시간',
  `cral_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대전화번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의여부',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `gd_trnm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품전달여부',
  `gd_trnm_dt` date DEFAULT NULL COMMENT '상품전달일자',
  `gd_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품발송여부',
  `gd_snddt` date DEFAULT NULL COMMENT '상품발송일자',
  `gd_nd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품만료여부',
  `snd_log_cn` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송로그내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_gdint_agre_nd_pr_ntc_chr_00` (`ctmno`,`snddt`,`snd_hms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품소개동의만료예정안내문자';
