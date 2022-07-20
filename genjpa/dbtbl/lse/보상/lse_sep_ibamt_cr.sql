--
-- Table structure for table `lse_sep_ibamt_cr`
--

DROP TABLE IF EXISTS `lse_sep_ibamt_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_sep_ibamt_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `sep_amt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분할금구분코드',
  `end_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종결여부',
  `py_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급주기코드',
  `hndph_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화지역번호',
  `hndph_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화국번',
  `hndph_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_sep_ibamt_cr_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`sep_amt_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분할보험금계약';
