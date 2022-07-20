--
-- Table structure for table `ins_basts_cvr`
--

DROP TABLE IF EXISTS `ins_basts_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_basts_cvr` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `cvr_ba_trt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보기본특약구분코드',
  `indpd_trt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '독립특약여부',
  `rnw_cyc_yyct` decimal(5,0) DEFAULT NULL COMMENT '갱신주기년수',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_st_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험시기시각',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `ins_clstr_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종기시각',
  `rato_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이율구분코드',
  `pr_rato` decimal(12,6) DEFAULT NULL COMMENT '예정이율',
  `lowt_gu_rato` decimal(12,6) DEFAULT NULL COMMENT '최저보증이율',
  `rl_pym_trm` decimal(3,0) DEFAULT NULL COMMENT '실납입기간',
  `rl_nd_trm` decimal(3,0) DEFAULT NULL COMMENT '실만기기간',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `sustd_xc_rk_ndx` decimal(7,2) DEFAULT NULL COMMENT '표준하체할증위험지수',
  `basts_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기초통계자료구분코드',
  `basts_ps_rd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기초통계보유감소구분코드',
  `basts_incr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기초통계증가구분코드',
  `basts_da_st` date DEFAULT NULL COMMENT '기초통계자료시기',
  `basts_da_clstr` date DEFAULT NULL COMMENT '기초통계자료종기',
  `year_py_apprm` decimal(17,2) DEFAULT NULL COMMENT '연납적용보험료',
  `basts_isamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기초통계가입금액구분코드',
  `basts_rnd_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기초통계경과기간코드',
  `fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '최종납입회차',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종납입년월',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`plyno`,`ctmno`,`cvrcd`,`cvr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기초통계담보';
