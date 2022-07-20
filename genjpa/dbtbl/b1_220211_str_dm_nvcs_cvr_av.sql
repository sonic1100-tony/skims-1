--
-- Table structure for table `b1_220211_str_dm_nvcs_cvr_av`
--

DROP TABLE IF EXISTS `b1_220211_str_dm_nvcs_cvr_av`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b1_220211_str_dm_nvcs_cvr_av` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담보코드',
  `bzcs_dv_rn_clmct` decimal(10,2) NOT NULL COMMENT '사업비배분원수사고건수',
  `bzcs_dv_rn_pyct` decimal(10,2) NOT NULL COMMENT '사업비배분원수지급건수',
  `rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수보험금액',
  `rn_py_rfamt` decimal(15,0) NOT NULL COMMENT '원수지급준비금액',
  `rn_clmct_rt` decimal(20,14) NOT NULL COMMENT '원수사고건수비율',
  `rn_pyct_rt` decimal(20,14) NOT NULL COMMENT '원수지급건수비율',
  `rn_ibamt_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '원수보험금액비율',
  `rn_py_rfamt_rt` decimal(20,14) NOT NULL COMMENT '원수지급준비금액비율',
  `dm_nv_bsns_sumrt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '손해조사업무합산비율',
  `tot_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '집계여부',
  `rk_num` decimal(3,0) DEFAULT NULL COMMENT '단계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_dm_nvcs_cvr_av_00` (`st_yymm`,`orgcd`,`ins_imcd`,`sl_tpcd`,`cvrcd`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해조사비담보실적';
