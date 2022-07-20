--
-- Table structure for table `cus_ctm_mmdy`
--

DROP TABLE IF EXISTS `cus_ctm_mmdy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_mmdy` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `mmdy_seqno` decimal(5,0) NOT NULL COMMENT '기념일순번',
  `mmdy_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기념일구분코드',
  `mmdy_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기념일년도',
  `mmdy_dt` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기념일날짜',
  `self_relcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '본인관계코드',
  `mmdy_slcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기념일양음구분코드',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `mmdy_bjps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기념일대상자구분코드',
  `mmdy_bjpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기념일대상자명',
  `sms_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS발송여부',
  `acqt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지인구분코드',
  `acqnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지인명',
  `acqt_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지인전화지역번호',
  `acqt_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지인전화국번',
  `acqt_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지인전화일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_mmdy_00` (`ctmno`,`mmdy_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객기념일';
