--
-- Table structure for table `str_bzcs_dv_aw_spc`
--

DROP TABLE IF EXISTS `str_bzcs_dv_aw_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzcs_dv_aw_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `ce_awamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '모집수당금액',
  `mn_awamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '유지수당금액',
  `cm_awamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수금수당금액',
  `nw_ou_awamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신규성과수당금액',
  `mn_ou_awamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '유지성과수당금액',
  `et_awamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타수당금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_bzcs_dv_aw_spc_00` (`stdt`,`ntacc_cd`,`rr_orgcd`,`ins_imcd`,`sl_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비배분수당내역';
