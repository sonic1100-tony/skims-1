--
-- Table structure for table `str_nprp_cscl_dv`
--

DROP TABLE IF EXISTS `str_nprp_cscl_dv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_nprp_cscl_dv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `aw_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수당항목코드',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전표라인번호',
  `cls_da_seqno` decimal(10,0) NOT NULL COMMENT '마감자료순번',
  `bzcs_dvcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비배분코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `mdf_cvav` decimal(17,2) DEFAULT NULL COMMENT '수정환산실적',
  `fsti_cv_av` decimal(15,0) DEFAULT NULL COMMENT '초회환산실적',
  `mmcv_fsti_prm` decimal(15,0) DEFAULT NULL COMMENT '월납환산초회보험료',
  `dv_rt` decimal(20,14) NOT NULL DEFAULT '0.00000000000000' COMMENT '배분비율',
  `dvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배분금액',
  `rl_rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '실제귀속기관코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`,`st_yymm`),
  UNIQUE KEY `pux_str_nprp_cscl_dv_00` (`st_yymm`,`rr_orgcd`,`plyno`,`ntacc_cd`,`aw_itcd`,`slpno`,`slp_lnno`,`cls_da_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비비례건별배분'
