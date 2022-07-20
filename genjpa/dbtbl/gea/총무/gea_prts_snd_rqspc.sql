--
-- Table structure for table `gea_prts_snd_rqspc`
--

DROP TABLE IF EXISTS `gea_prts_snd_rqspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prts_snd_rqspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seq` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '신청회차',
  `cla_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '약관업무구분코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `adr_ch_seq` decimal(10,0) NOT NULL COMMENT '주소변경회차',
  `itmcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `cect` decimal(9,0) DEFAULT NULL COMMENT '모집건수',
  `rq_qant` decimal(5,0) DEFAULT NULL COMMENT '신청수량',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청직원번호',
  `ap_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인상태코드',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `snd_dthms` datetime DEFAULT NULL COMMENT '발송일시',
  `nap_rs` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미승인사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_prts_snd_rqspc_00` (`rqdt`,`rq_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인쇄물발송신청내역';
