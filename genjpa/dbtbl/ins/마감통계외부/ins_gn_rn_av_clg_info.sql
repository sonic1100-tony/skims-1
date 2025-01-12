--
-- Table structure for table `ins_gn_rn_av_clg_info`
--

DROP TABLE IF EXISTS `ins_gn_rn_av_clg_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gn_rn_av_clg_info` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `rn_rtro_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원수수재계약구분코드',
  `rertr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출수재구분코드',
  `cls_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `relpc_oj_seqno` decimal(10,0) NOT NULL COMMENT '관계자목적물순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `mgcmp_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사사코드',
  `thcp_qtrt` decimal(12,6) DEFAULT NULL COMMENT '당사지분율',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `dp_dt_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금세부원인코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `crt_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자사업자번호',
  `crt_rs_or_crpno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자주민/법인번호',
  `nw_rnw_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규갱신구분코드',
  `prm` decimal(17,2) DEFAULT NULL COMMENT '보험료',
  `rn_prm` decimal(17,2) DEFAULT NULL COMMENT '원수보험료',
  `cn_rtamt` decimal(17,2) DEFAULT NULL COMMENT '해약환급금액',
  `woncr_prm` decimal(15,0) DEFAULT NULL COMMENT '원화보험료',
  `woncr_rn_prm` decimal(15,0) DEFAULT NULL COMMENT '원화원수보험료',
  `woncr_cn_rtamt` decimal(15,0) DEFAULT NULL COMMENT '원화해약환급금액',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `ce_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집기관코드',
  `ce_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집직원번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `chr_adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리기관코드',
  `chr_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당관리자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  PRIMARY KEY (`cls_yymm`,`rn_rtro_cr_flgcd`,`rertr_flgcd`,`cls_da_flgcd`,`plyno`,`incm_prm_cr_seqno`,`relpc_oj_seqno`,`cvrcd`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반원수실적결산정보'
