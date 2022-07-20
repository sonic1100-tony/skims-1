--
-- Table structure for table `cus_lms_auth`
--

DROP TABLE IF EXISTS `cus_lms_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_lms_auth` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `snddt` date NOT NULL COMMENT '발송일자',
  `snd_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '발송시간',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `lms_auth_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LMS인증업무구분코드',
  `bj_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상식별번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `ppr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관코드',
  `nhgst_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차상위기관코드',
  `bj_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상고객명',
  `hp_auth_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰인증주민사업자번호',
  `hp_auth_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰인증고객명',
  `cm_bzps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통신사업자구분코드',
  `hpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰번호',
  `hp_auth_snd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰인증발송직원번호',
  `hp_auth_asr_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰인증회신전화번호',
  `hp_auth_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰인증응답코드',
  `hp_auth_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰인증결과코드',
  `snd_autno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송인증번호',
  `asr_autno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신인증번호',
  `asr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신직원번호',
  `asrdt` date DEFAULT NULL COMMENT '회신일자',
  `asr_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신시간',
  `lms_snd_rst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LMS발송결과구분코드',
  `lms_auth_rst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LMS인증결과구분코드',
  `rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결과내용',
  `ci_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CI번호',
  `kcb_dl_sno` decimal(21,0) DEFAULT NULL COMMENT 'KCB거래일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_lms_auth_00` (`snddt`,`snd_hms`,`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='LMS인증';
