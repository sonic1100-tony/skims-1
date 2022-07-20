--
-- Table structure for table `ins_imty_wdrc_dl_spc`
--

DROP TABLE IF EXISTS `ins_imty_wdrc_dl_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_imty_wdrc_dl_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tfdt` date NOT NULL COMMENT '이체일자',
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `crt_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자주민번호',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `rp_prm` decimal(15,0) DEFAULT NULL COMMENT '영수보험료',
  `tblam` decimal(18,3) DEFAULT NULL COMMENT '잔액',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `rv_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납처리결과코드',
  `wrk_str_dthms` datetime DEFAULT NULL COMMENT '작업시작일시',
  `wrk_nd_dthms` datetime DEFAULT NULL COMMENT '작업종료일시',
  `dl_rst_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과설명',
  `pym_str_seq` decimal(3,0) DEFAULT NULL COMMENT '납부시작회차',
  `pym_nd_seq` decimal(3,0) DEFAULT NULL COMMENT '납부종료회차',
  `t01s_prm` decimal(15,0) DEFAULT NULL COMMENT '01회차보험료',
  `t02s_prm` decimal(15,0) DEFAULT NULL COMMENT '02회차보험료',
  `t03s_prm` decimal(15,0) DEFAULT NULL COMMENT '03회차보험료',
  `t04s_prm` decimal(15,0) DEFAULT NULL COMMENT '04회차보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_imty_wdrc_dl_spc_00` (`tfdt`,`ldgno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='즉시출금처리내역';
