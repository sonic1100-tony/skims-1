--
-- Table structure for table `fin_bdl_tf_trrv_spc`
--

DROP TABLE IF EXISTS `fin_bdl_tf_trrv_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bdl_tf_trrv_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_tsdt` date NOT NULL COMMENT '전문전송일자',
  `bsns_cnnno_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무관련번호구분코드',
  `bsns_cnnno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '업무관련번호',
  `tlm_dsccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문식별코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `tfamt` decimal(15,0) NOT NULL COMMENT '이체금액',
  `tf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체여부',
  `impcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불능코드',
  `rl_pyamt` decimal(15,0) NOT NULL COMMENT '실지급액',
  `acct_spcft` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통장명기',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `cmscd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CMS코드',
  `tfdt` date DEFAULT NULL COMMENT '이체일자',
  `tf_seqno` decimal(5,0) DEFAULT NULL COMMENT '이체순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_bdl_tf_trrv_spc_00` (`tlm_tsdt`,`bsns_cnnno_flgcd`,`bsns_cnnno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일괄이체송수신내역';
