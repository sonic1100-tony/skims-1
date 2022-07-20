--
-- Table structure for table `str_bzcs_dv_st`
--

DROP TABLE IF EXISTS `str_bzcs_dv_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzcs_dv_st` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `bzcs_dvcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비배분코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `ins_imcd_lvl` decimal(1,0) NOT NULL COMMENT '보험종목코드레벨',
  `bzct_dv_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '영업비배분비율',
  `dm_nvcs_dv_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '손해조사비배분비율',
  `gn_admcs_dv_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '일반관리비배분비율',
  `invst_bg_dv_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '투자경비배분비율',
  `bzct_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '영업비배분금액',
  `dm_nvcs_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '손해조사비배분금액',
  `gn_admcs_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반관리비배분금액',
  `invst_bg_dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '투자경비배분금액',
  `sum_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '합산비율',
  `sum_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '합산금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`,`st_yymm`),
  UNIQUE KEY `pux_str_bzcs_dv_st_00` (`st_yymm`,`orgcd`,`bzcs_dvcd`,`ins_imcd`,`gdcd`,`sl_tpcd`,`cvrcd`,`ins_imcd_lvl`)
) ENGINE=InnoDB AUTO_INCREMENT=4589 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비배분기준'
