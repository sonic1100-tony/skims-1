--
-- Table structure for table `str_bzcs_dv_crst`
--

DROP TABLE IF EXISTS `str_bzcs_dv_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzcs_dv_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `rpt_acc_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '리포트계정대분류코드',
  `rpt_acc_mdccd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '리포트계정중분류코드',
  `rpt_acc_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '리포트계정소분류코드',
  `rpt_acc_lclnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리포트계정대분류명',
  `rpt_acc_mdcnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리포트계정중분류명',
  `rpt_acc_smcnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리포트계정소분류명',
  `cr_dm_nvcs_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차손해조사비배분금액',
  `cr_bzct_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차영업비배분금액',
  `cr_gn_admcs_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차일반관리비배분금액',
  `cr_dvamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자동차배분금액합계',
  `ltrm_dm_nvcs_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장기손해조사비배분금액',
  `ltrm_bzct_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장기영업비배분금액',
  `ltrm_gn_admcs_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장기일반관리비배분금액',
  `ltrm_dvamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '장기배분금액합계',
  `gn_dm_nvcs_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반손해조사비배분금액',
  `gn_bzct_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반영업비배분금액',
  `gn_gn_admcs_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반일반관리비배분금액',
  `gn_dvamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반배분금액합계',
  `fire_dvamt_sm` decimal(15,0) NOT NULL COMMENT '화특배분금액합계',
  `marne_dvamt_sm` decimal(15,0) NOT NULL COMMENT '해상배분금액합계',
  `cr_onl_dvamt_sm` decimal(15,0) NOT NULL COMMENT '자동차온라인배분금액합계',
  `cr_offl_dvamt_sm` decimal(15,0) NOT NULL COMMENT '자동차오프라인배분금액합계',
  `rtm_dvamt_sm` decimal(15,0) NOT NULL COMMENT '퇴직배분금액합계',
  `tot_dvamt_sm` decimal(15,0) NOT NULL COMMENT '전체배분금액합계',
  `slp_amt_sm` decimal(15,0) NOT NULL COMMENT '전표금액합계',
  `bzcs_dvamt_sm` decimal(15,0) NOT NULL COMMENT '사업비배분금액합계',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_bzcs_dv_crst_00` (`st_yymm`,`rpt_acc_lclcd`,`rpt_acc_mdccd`,`rpt_acc_smccd`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비배분현황';
