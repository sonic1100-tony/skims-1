--
-- Table structure for table `str_bzcs_slp_spc`
--

DROP TABLE IF EXISTS `str_bzcs_slp_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzcs_slp_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `slpdt` date NOT NULL COMMENT '전표일자',
  `cls_da_seqno` decimal(10,0) NOT NULL COMMENT '마감자료순번',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `dp_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '발의기관코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `slp_amt_dfrn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '전표금액차이여부',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표라인번호',
  `bzcs_o1_dvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비1차배분코드',
  `bzcs_o2_dvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비2차배분코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '펀드코드',
  `woncr_poamt` decimal(15,0) DEFAULT NULL COMMENT '원화계상금액',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `bzcs_dv_exec_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비배분수행여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_bzcs_slp_spc_00` (`slpdt`,`cls_da_seqno`,`ntacc_cd`,`dp_orgcd`,`ikd_grpcd`,`ins_imcd`,`rr_orgcd`,`slp_amt_dfrn_yn`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비전표내역';
