--
-- Table structure for table `ins_crdis_ts_cr_da`
--

DROP TABLE IF EXISTS `ins_crdis_ts_cr_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crdis_ts_cr_da` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_opndt` date NOT NULL COMMENT '전문개시일자',
  `stdt` date NOT NULL COMMENT '기준일자',
  `dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래구분코드',
  `da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자료구분코드',
  `dl_sno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래일련번호',
  `cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회사코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `gr_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체계약여부',
  `ins_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종류코드',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `crdis_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원계약상태코드',
  `cr_ccdt` date DEFAULT NULL COMMENT '계약체결일자',
  `lapdt` date DEFAULT NULL COMMENT '실효일자',
  `rvidt` date DEFAULT NULL COMMENT '부활일자',
  `cnldt` date DEFAULT NULL COMMENT '해지일자',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `pym_prm` decimal(17,2) DEFAULT NULL COMMENT '납입보험료',
  `crdis_pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원납입주기코드',
  `crdis_pym_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원납입기간코드',
  `dgn_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단대상여부',
  `crdis_udrtk_ud_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원인수심사결과코드',
  `crdis_ce_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원모집경로코드',
  `ce_stf_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집직원성명',
  `ce_stf_brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집직원생년월일',
  `crdis_ce_stf_sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원모집직원성별코드',
  `ce_stf_ctqno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집직원자격증번호',
  `ce_stf_rgtdt` date DEFAULT NULL COMMENT '모집직원등록일자',
  `cer_of_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집자제공동의여부',
  `ce_org_ctqno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집기관자격증번호',
  `ce_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집기관명',
  `da_stdt` date DEFAULT NULL COMMENT '자료기준일자',
  `crdis_dl_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원처리사유코드',
  `crdis_da_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원자료처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_crdis_ts_cr_da_00` (`tlm_opndt`,`stdt`,`dl_flgcd`,`da_flgcd`,`dl_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=37009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용정보원전송계약자료';
