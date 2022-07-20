--
-- Table structure for table `ins_gn_ins_prm_diss`
--

DROP TABLE IF EXISTS `ins_gn_ins_prm_diss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gn_ins_prm_diss` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `cls_bjno` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '마감대상번호',
  `rn_rtro_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원수수재계약구분코드',
  `rertr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출수재구분코드',
  `cls_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료구분코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `rn_pr_bzcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원수예정사업비',
  `rn_pr_rk_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원수예정위험보험료',
  `rn_pr_prf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원수예정이윤',
  `nelp_pr_bzcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미경과예정사업비',
  `nelp_pr_rk_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미경과예정위험보험료',
  `nelp_pr_prf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미경과예정이윤',
  `rnd_pr_bzcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '경과예정사업비',
  `rnd_pr_rk_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '경과예정위험보험료',
  `rnd_pr_prf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '경과예정이윤',
  `gu_fire_dat_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구화재데이터여부',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) DEFAULT NULL COMMENT '수입보험료발생순번',
  `thcp_qtrt` decimal(12,6) DEFAULT NULL COMMENT '당사지분율',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `rp_prm` decimal(15,0) DEFAULT NULL COMMENT '영수보험료',
  `dcbf_prm` decimal(15,0) DEFAULT NULL COMMENT '할인전보험료',
  `dmgrt` decimal(15,7) DEFAULT NULL COMMENT '손해율',
  `bz_rt` decimal(15,7) DEFAULT NULL COMMENT '사업비율',
  `pftrt` decimal(15,7) DEFAULT NULL COMMENT '이익율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`cls_bjno`,`rn_rtro_cr_flgcd`,`rertr_flgcd`,`cls_da_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험보험료분해';
