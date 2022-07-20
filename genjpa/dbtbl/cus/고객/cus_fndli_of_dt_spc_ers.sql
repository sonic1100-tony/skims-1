--
-- Table structure for table `cus_fndli_of_dt_spc_ers`
--

DROP TABLE IF EXISTS `cus_fndli_of_dt_spc_ers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fndli_of_dt_spc_ers` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_sno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '접수일련번호',
  `rqsno` decimal(10,0) NOT NULL COMMENT '요청순번',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `plyno_or_lnno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호/대출번호',
  `dtspc_seqno` decimal(5,0) NOT NULL COMMENT '상세내역순번',
  `relpc_tpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자유형명',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `ctm_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객주민번호',
  `ers_dthms` datetime NOT NULL COMMENT '삭제일시',
  `ers_dlr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '삭제처리자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fndli_of_dt_spc_ers_00` (`rcp_sno`,`rqsno`,`bsns_flgcd`,`plyno_or_lnno`,`dtspc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='금융거래정보제공상세내역삭제';
