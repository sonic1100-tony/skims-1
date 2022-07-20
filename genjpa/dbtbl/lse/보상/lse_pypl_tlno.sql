--
-- Table structure for table `lse_pypl_tlno`
--

DROP TABLE IF EXISTS `lse_pypl_tlno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_pypl_tlno` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `ibnf_cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험금비용구분코드',
  `spc_seqno` decimal(5,0) NOT NULL COMMENT '내역순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객명',
  `hndph_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화지역번호',
  `hndph_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화국번',
  `hndph_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화일련번호',
  `clln_rfamt` decimal(15,0) DEFAULT NULL COMMENT '약대상환금액',
  `pyno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급번호',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_pypl_tlno_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`ibnf_cs_flgcd`,`spc_seqno`,`ctmno`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급처전화번호';
