--
-- Table structure for table `str_cvr_bsns_av`
--

DROP TABLE IF EXISTS `str_cvr_bsns_av`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_cvr_bsns_av` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `rn_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수보험료',
  `pr_bzcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예정사업비',
  `rn_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원수보험금액',
  `rn_prm_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '원수보험료비율',
  `pr_bzcs_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '예정사업비비율',
  `rn_ibamt_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '원수보험금액비율',
  `cr_ud_bsns_sumrt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '계약심사업무합산비율',
  `dm_nv_bsns_sumrt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '손해조사업무합산비율',
  `bz_cnn_bsns_sumrt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '영업관련업무합산비율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`orgcd`,`ins_imcd`,`gdcd`,`sl_tpcd`,`cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담보업무실적'
