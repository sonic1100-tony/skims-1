--
-- Table structure for table `ccm_dm_lbamt_cc`
--

DROP TABLE IF EXISTS `ccm_dm_lbamt_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dm_lbamt_cc` (
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `dmge_cncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피해내용코드',
  `actvt_age` decimal(3,0) NOT NULL COMMENT '가동연령',
  `clm_thtm_age_yyct` decimal(3,0) NOT NULL COMMENT '사고당시연령년수',
  `clm_thtm_age_mc` decimal(2,0) NOT NULL COMMENT '사고당시연령월수',
  `clm_thtm_age_days` decimal(3,0) NOT NULL COMMENT '사고당시연령일수',
  `exp_rol` decimal(5,2) NOT NULL COMMENT '기대여명',
  `rol_nddt` date NOT NULL COMMENT '여명종료일자',
  `actvt_nddt` date NOT NULL COMMENT '가동종료일자',
  `sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '합산장해율',
  `cv_obsrt` decimal(5,2) DEFAULT NULL COMMENT '환산장해율',
  `hl_cfc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HL계수구분코드',
  `prop_dmamt` decimal(15,0) DEFAULT NULL COMMENT '재산손해금액',
  `py_mdcf` decimal(15,0) DEFAULT NULL COMMENT '지급치료비',
  `pvsp_dcamt` decimal(15,0) DEFAULT NULL COMMENT '기왕증공제액',
  `dm_lbamt` decimal(15,0) DEFAULT NULL COMMENT '손해배상금',
  `crmcs_agamt` decimal(15,0) DEFAULT NULL COMMENT '형사합의금액',
  `et_uiamt` decimal(15,0) DEFAULT NULL COMMENT '기타공제금액',
  `fnrxp` decimal(15,0) DEFAULT NULL COMMENT '장례비',
  `bygn_mdcf` decimal(15,0) DEFAULT NULL COMMENT '기왕치료비',
  `loss_rtamt` decimal(15,0) DEFAULT NULL COMMENT '일실퇴직금액',
  `mtral_dmamt` decimal(15,0) DEFAULT NULL COMMENT '물적손해금액',
  `et_dmamt` decimal(17,2) DEFAULT NULL COMMENT '기타손해금액',
  `wrtdt` date DEFAULT NULL COMMENT '작성일자',
  `dl_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리사유',
  `db_obsrt` decimal(5,2) DEFAULT NULL COMMENT '중복장해율',
  `ic_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소득기준구분코드',
  `bygn_nsamt` decimal(15,0) DEFAULT NULL COMMENT '기왕개호비',
  `xp_fltrt` decimal(3,0) DEFAULT NULL COMMENT '예상과실율',
  `xp_jgamt` decimal(15,0) DEFAULT NULL COMMENT '예상판결액',
  `cslmn_stamt` decimal(15,0) DEFAULT NULL COMMENT '위자료기준금액',
  `cslmn_uiamt` decimal(15,0) DEFAULT NULL COMMENT '위자료공제금액',
  `sht_rol_stncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단축여명기준코드',
  `sht_rol` decimal(5,2) DEFAULT NULL COMMENT '단축여명',
  `bnd_trsf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채권양도여부',
  `exp_rol_st_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기대여명기준년도',
  `summ_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요약내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cmp_ky_yr`,`cmp_ky_seqno`,`cc_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해배상금산출';
