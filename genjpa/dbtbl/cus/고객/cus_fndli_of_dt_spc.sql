--
-- Table structure for table `cus_fndli_of_dt_spc`
--

DROP TABLE IF EXISTS `cus_fndli_of_dt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fndli_of_dt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_sno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '접수일련번호',
  `rqsno` decimal(10,0) NOT NULL COMMENT '요청순번',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `plyno_or_lnno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호/대출번호',
  `dtspc_seqno` decimal(5,0) NOT NULL COMMENT '상세내역순번',
  `fndli_of_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융거래정보제공항목코드',
  `fndli_of_itvl` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융거래정보제공항목값',
  `ad_bj_gp_seqno` decimal(3,0) DEFAULT NULL COMMENT '추가대상그룹순번',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fndli_of_dt_spc_00` (`rcp_sno`,`rqsno`,`bsns_flgcd`,`plyno_or_lnno`,`dtspc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=65365 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='금융거래정보제공상세내역';
