--
-- Table structure for table `cus_rsno_sb_clct`
--

DROP TABLE IF EXISTS `cus_rsno_sb_clct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_rsno_sb_clct` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `clct_seqno` decimal(10,0) NOT NULL COMMENT '수집순번',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `ctm_agre_autno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '고객동의인증번호',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민번호',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `rsno_inflw_dthms` datetime DEFAULT NULL COMMENT '주민번호유입일시',
  `rsno_inflw_chn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민번호유입채널구분코드',
  `acs_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ACS신청구분코드',
  `acs_pr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ACS예정구분코드',
  `acs_rsvdt` date DEFAULT NULL COMMENT 'ACS예약일자',
  `acs_rsv_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ACS예약시각',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ctm_rgt_dthms` datetime DEFAULT NULL COMMENT '고객등록일시',
  `acs_rcv_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ACS수신결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_rsno_sb_clct_00` (`stdt`,`clct_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주민번호대체수집';
