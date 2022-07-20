--
-- Table structure for table `gea_ga_cla_rqspc`
--

DROP TABLE IF EXISTS `gea_ga_cla_rqspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ga_cla_rqspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `cla_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '약관업무구분코드',
  `adr_ch_seq` decimal(10,0) NOT NULL COMMENT '주소변경회차',
  `rlv_wkct` decimal(3,0) NOT NULL COMMENT '해당주수',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cla_rq_ct` decimal(10,0) DEFAULT NULL COMMENT '약관신청건수',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청직원번호',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `rq_rst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청결과여부',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `ga_cla_rq_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'GA약관신청승인구분코드',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ga_cla_rq_snd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'GA약관신청발송구분코드',
  `snddt` date DEFAULT NULL COMMENT '발송일자',
  `cla_snd_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약관발송번호',
  `nap_rs` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미승인사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_ga_cla_rqspc_00` (`st_yymm`,`orgcd`,`cla_bsns_flgcd`,`adr_ch_seq`,`rlv_wkct`,`gdcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='GA약관신청내역';
