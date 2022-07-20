--
-- Table structure for table `ins_sl_crst`
--

DROP TABLE IF EXISTS `ins_sl_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_sl_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `orgn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조직구분코드',
  `ppr_orncd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '상위조직코드',
  `dh_brof_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급출장소코드',
  `orncd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '조직코드',
  `gn_co_obj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반공동물건구분코드',
  `ctp_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차종용도코드',
  `ins_itm_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목소분류코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `age_lmit_trtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연령한정특약코드',
  `drv_lmit_trtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '운전자한정특약코드',
  `bj_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '대상년월',
  `vald_ct` decimal(7,0) DEFAULT NULL COMMENT '유효대수',
  `clmct` decimal(7,0) DEFAULT NULL COMMENT '사고건수',
  `rn_prm` decimal(17,2) DEFAULT NULL COMMENT '원수보험료',
  `incm_prm` decimal(15,0) DEFAULT NULL COMMENT '수입보험료',
  `ptrm_nelp_prm` decimal(15,0) DEFAULT NULL COMMENT '전기미경과보험료',
  `lltm_nelp_prm` decimal(15,0) DEFAULT NULL COMMENT '후기미경과보험료',
  `rnd_prm` decimal(17,2) DEFAULT NULL COMMENT '경과보험료',
  `py_ibamt` decimal(15,0) DEFAULT NULL COMMENT '지급보험금액',
  `ptrm_osamt` decimal(15,0) DEFAULT NULL COMMENT '전기OS금액',
  `lltm_osamt` decimal(15,0) DEFAULT NULL COMMENT '후기OS금액',
  `dmamt` decimal(17,2) DEFAULT NULL COMMENT '손해액',
  `rpbl_dmamt` decimal(15,0) DEFAULT NULL COMMENT '책임손해금액',
  `rpbl_rnd_prm` decimal(15,0) DEFAULT NULL COMMENT '책임경과보험료',
  `br_tgt_dmgrt` decimal(5,2) DEFAULT NULL COMMENT '지점목표손해율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_sl_crst_00` (`orgn_flgcd`,`ppr_orncd`,`dh_brof_cd`,`orncd`,`gn_co_obj_flgcd`,`ctp_usecd`,`ins_itm_smccd`,`gdcd`,`age_lmit_trtcd`,`drv_lmit_trtcd`,`bj_yymm`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='매출현황';
