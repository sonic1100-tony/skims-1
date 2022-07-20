--
-- Table structure for table `fin_dmcy_ibnf_spc`
--

DROP TABLE IF EXISTS `fin_dmcy_ibnf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dmcy_ibnf_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `dmcy_bj_seqno` decimal(5,0) NOT NULL COMMENT '휴면대상순번',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장종류코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `crdt` date NOT NULL COMMENT '발생일자',
  `rvi_dldt` date DEFAULT NULL COMMENT '부활처리일자',
  `rvi_dl_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부활처리기관코드',
  `rvi_dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부활처리직원번호',
  `rvi_slpdt` date DEFAULT NULL COMMENT '부활전표일자',
  `rvi_ldg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부활원장종류코드',
  `rvi_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부활원장번호',
  `rvi_slpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부활전표번호',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `fc_poamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화계상금액',
  `woncr_poamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화계상금액',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감자료종류코드',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `rvi_st_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부활기준년월',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_dmcy_ibnf_spc_00` (`st_yymm`,`cr_seqno`,`dmcy_bj_seqno`),
  KEY `idx_fin_dmcy_ibnf_spc_10` (`rvi_ldgno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='휴면보험금내역';
