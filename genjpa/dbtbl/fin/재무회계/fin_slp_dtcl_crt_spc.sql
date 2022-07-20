--
-- Table structure for table `fin_slp_dtcl_crt_spc`
--

DROP TABLE IF EXISTS `fin_slp_dtcl_crt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_slp_dtcl_crt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `act_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '회계속성코드',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반특별구분코드',
  `dbamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '차변금액',
  `ciamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대변금액',
  `tot_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '집계여부',
  `totct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '집계건수',
  `dl_tp_tot_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형집계구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_slp_dtcl_crt_spc_00` (`slpdt`,`slpno`,`st_yymm`,`dl_tp_o1_csfcd`,`dl_tp_o2_csfcd`,`act_atrcd`)
) ENGINE=InnoDB AUTO_INCREMENT=1384461 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전표일자별생성내역';
