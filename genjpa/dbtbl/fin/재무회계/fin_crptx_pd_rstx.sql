--
-- Table structure for table `fin_crptx_pd_rstx`
--

DROP TABLE IF EXISTS `fin_crptx_pd_rstx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crptx_pd_rstx` (
  `tx_stdt` date NOT NULL COMMENT '과세기준일자',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `jrd_uofcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관할관청코드',
  `rpr_pymdt` date NOT NULL COMMENT '신고납부일자',
  `tot_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '집계여부',
  `empct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '종업원수',
  `t_empct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '총종업원수',
  `ttare` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '연면적',
  `t_ttare` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '총연면적',
  `pd_rt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '안분비율',
  `crptx_tamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '법인세총액',
  `tx_stamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '과세표준금액',
  `cc_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '산출세액',
  `ds_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '결정세액',
  `sasbt_coamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '소액부징수금액',
  `pym_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부세액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tx_stdt`,`orgcd`,`jrd_uofcd`,`rpr_pymdt`,`tot_yn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인세할주민세';
