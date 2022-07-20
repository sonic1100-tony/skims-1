--
-- Table structure for table `ins_cr_nds_py_act`
--

DROP TABLE IF EXISTS `ins_cr_nds_py_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_nds_py_act` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `pfb_dpsr_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자예금주관계코드',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '예금주명',
  `dpsr_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '예금주주민번호',
  `actno_er_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호오류여부',
  `actno_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호오류코드',
  `actno_er_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호오류사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_nds_py_act_00` (`plyno`,`ndsno`,`ch_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약배서지급계좌';
