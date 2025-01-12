--
-- Table structure for table `str_17_cscl_bsns_avtot`
--

DROP TABLE IF EXISTS `str_17_cscl_bsns_avtot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_17_cscl_bsns_avtot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `org_grpcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관군코드',
  `rn_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수보험료',
  `ltrm_rnprm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기원수보험료',
  `cr_rn_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차원수보험료',
  `gn_rn_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반원수보험료',
  `rtm_xcpt_rnprm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '퇴직제외원수보험료',
  `ltrm_xcpt_rnprm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기제외원수보험료',
  `fsyr_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '초년도보험료',
  `ltrm_fsyr_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기초년도보험료',
  `rn_nwcct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '원수신계약건수',
  `ltrm_rn_nwcct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '장기원수신계약건수',
  `cr_rn_nwcct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '자동차원수신계약건수',
  `gn_rn_nwcct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '일반원수신계약건수',
  `rtm_xcpt_rn_nwcct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '퇴직제외원수신계약건수',
  `ltrm_xcpt_rn_nwcct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '장기제외원수신계약건수',
  `ps_crct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '보유계약건수',
  `ltrm_ps_crct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '장기보유계약건수',
  `cr_ps_crct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '자동차보유계약건수',
  `gn_ps_crct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '일반보유계약건수',
  `rtm_xcpt_ps_crct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '퇴직제외보유계약건수',
  `ltrm_xcpt_ps_crct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '장기제외보유계약건수',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `ltrm_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기가입금액',
  `cr_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '자동차가입금액',
  `gn_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '일반가입금액',
  `rtm_xcpt_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '퇴직제외가입금액',
  `ltrm_xcpt_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기제외가입금액',
  `mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '수정보험료',
  `ltrm_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기수정보험료',
  `cr_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '자동차수정보험료',
  `gn_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '일반수정보험료',
  `rtm_xcpt_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '퇴직제외수정보험료',
  `ltrm_xcpt_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기제외수정보험료',
  `pr_bzcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예정사업비',
  `ltrm_pr_bzcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장기예정사업비',
  `cr_pr_bzcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차예정사업비',
  `gn_pr_bzcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반예정사업비',
  `nw_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '신규수정보험료',
  `ltrm_nw_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기신규수정보험료',
  `cr_nw_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '자동차신규수정보험료',
  `gn_nw_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '일반신규수정보험료',
  `rtm_xcpt_nw_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '퇴직제외신규수정보험료',
  `ltrm_xcpt_nw_mdf_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기제외신규수정보험료',
  `rn_clmct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '원수사고건수',
  `ltrm_rn_clmct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '장기원수사고건수',
  `cr_rn_clmct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '자동차원수사고건수',
  `gn_rn_clmct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '일반원수사고건수',
  `rtm_xcpt_rn_clmct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '퇴직제외원수사고건수',
  `ltrm_xcpt_rn_clmct` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '장기제외원수사고건수',
  `xp_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '예상보험금액',
  `ltrm_xp_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기예상보험금액',
  `cr_xp_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '자동차예상보험금액',
  `gn_xp_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '일반예상보험금액',
  `rtm_xcpt_xp_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '퇴직제외예상보험금액',
  `ltrm_xcpt_xp_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기제외예상보험금액',
  `rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수보험금액',
  `ltrm_rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기원수보험금액',
  `cr_rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '자동차원수보험금액',
  `gn_rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '일반원수보험금액',
  `rtm_xcpt_rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '퇴직제외원수보험금액',
  `ltrm_xcpt_rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기제외원수보험금액',
  `rn_py_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원수지급준비금액',
  `ltrm_rn_pyrfd` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장기원수지급준비금액',
  `cr_rn_pyrfd` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차원수지급준비금액',
  `gn_rn_pyrfd` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반원수지급준비금액',
  `rtm_xcpt_rn_pyrfd` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '퇴직제외원수지급준비금액',
  `ltrm_xcpt_rn_pyrfd` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장기제외원수지급준비금액',
  `cnarx_rfd` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '해지식준비금',
  `mmcv_fsti_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '월납환산초회보험료',
  `ltrm_mmcv_fsti_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장기월납환산초회보험료',
  `cr_mmcv_fsti_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차월납환산초회보험료',
  `gn_mmcv_fsti_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반월납환산초회보험료',
  `mdf_cvav` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '수정환산실적',
  `ltrm_mdf_cvav` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '장기수정환산실적',
  `cr_mdf_cvav` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '자동차수정환산실적',
  `gn_mdf_cvav` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '일반수정환산실적',
  `fsti_cv_av` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '초회환산실적',
  `ltrm_fsti_cvav` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장기초회환산실적',
  `cr_fsti_cvav` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차초회환산실적',
  `gn_fsti_cvav` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반초회환산실적',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_17_cscl_bsns_avtot_00` (`st_yymm`,`org_grpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='IFRS17건별업무실적집계';
