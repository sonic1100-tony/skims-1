--
-- Table structure for table `aud_rtx_nrcvy_sts`
--

DROP TABLE IF EXISTS `aud_rtx_nrcvy_sts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_rtx_nrcvy_sts` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관리기관코드',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급지점기관코드',
  `dhgnc_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급소기관코드',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `mlamt_belo_gn_ltrm_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '100만원이하일반장기경과건수',
  `mlamt_belo_gn_ltrm_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '100만원이하일반장기미경과건수',
  `ml10a_belo_gn_ltrm_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '1000만원이하일반장기경과건수',
  `ml10a_belo_gn_ltrm_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '1000만원이하일반장기미경과건수',
  `ml10a_abov_gn_ltrm_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '1000만원이상일반장기경과건수',
  `ml10a_abov_gn_ltrm_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '1000만원이상일반장기미경과건수',
  `cr_fc_idc_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차외화표시경과건수',
  `cr_fc_idc_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차외화표시미경과건수',
  `cr_spcf_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차특정경과건수',
  `cr_spcf_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차특정미경과건수',
  `cr_inr_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차통합경과건수',
  `cr_inr_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차통합미경과건수',
  `bll_nt_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '어음이자경과건수',
  `bll_nt_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '어음이자미경과건수',
  `gn_apldo_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '일반청약서경과건수',
  `gn_apldo_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '일반청약서미경과건수',
  `ltrm_rvi_nds_apldo_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '장기부활배서청약서경과건수',
  `ltrm_rvi_nds_apldo_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '장기부활배서청약서미경과건수',
  `cr_spcf_apldo_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차특정청약서경과건수',
  `cr_spcf_apldo_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차특정청약서미경과건수',
  `cr_inr_apldo_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차통합청약서경과건수',
  `cr_inr_apldo_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차통합청약서미경과건수',
  `cr_pyp_nds_apldo_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차분납배서청약서경과건수',
  `cr_pyp_nds_apldo_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차분납배서청약서미경과건수',
  `cr_hwmc_apldo_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차하우머치청약서경과건수',
  `cr_hwmc_apldo_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차하우머치청약서미경과건수',
  `ltrm_cmpu_rtx_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '장기전산영수증경과건수',
  `ltrm_cmpu_rtx_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '장기전산영수증미경과건수',
  `cr_cmpu_rtx_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차전산영수증경과건수',
  `cr_cmpu_rtx_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '자동차전산영수증미경과건수',
  `an_cmpu_rtx_rnd_ct` decimal(10,0) DEFAULT NULL COMMENT '연금전산영수증경과건수',
  `an_cmpu_rtx_nelp_ct` decimal(10,0) DEFAULT NULL COMMENT '연금전산영수증미경과건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_aud_rtx_nrcvy_sts_00` (`adm_orgcd`,`dh_br_orgcd`,`dhgnc_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증미회수통계';
