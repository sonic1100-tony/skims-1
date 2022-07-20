--
-- Table structure for table `ins_xc_cr_adm`
--

DROP TABLE IF EXISTS `ins_xc_cr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_xc_cr_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `xc_seq` decimal(5,0) NOT NULL COMMENT '정산회차',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `xc_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산주기코드',
  `xc_prdt` date DEFAULT NULL COMMENT '정산예정일자',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `ins_clstr` date NOT NULL COMMENT '보험종기',
  `xc_bj_st` date DEFAULT NULL COMMENT '정산대상시기',
  `xc_bj_clstr` date DEFAULT NULL COMMENT '정산대상종기',
  `xc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산여부',
  `xp_cc_ba_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예상산출기초항목코드',
  `xp_cc_ba_num` decimal(17,2) DEFAULT NULL COMMENT '예상산출기초수',
  `xc_ins_rt` decimal(19,7) NOT NULL DEFAULT '0.0000000' COMMENT '정산보험요율',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `dcn_cc_ba_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확정산출기초항목코드',
  `dcn_cc_ba_num` decimal(17,2) DEFAULT NULL COMMENT '확정산출기초수',
  `xc_amt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산금액구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `dpst_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '예치보험료',
  `woncr_cv_dpst_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산예치보험료',
  `dcn_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '확정보험료',
  `xc_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '정산보험료',
  `woncr_cv_xc_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산정산보험료',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_xc_cr_adm_00` (`plyno`,`xc_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='정산계약관리';
