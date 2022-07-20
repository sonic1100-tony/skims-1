--
-- Table structure for table `igd_gd_anal_da`
--

DROP TABLE IF EXISTS `igd_gd_anal_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_anal_da` (
  `da_crtdt` date NOT NULL COMMENT '자료생성일자',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dvpns_gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원상품코드',
  `dvpns_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원담보코드',
  `dvpns_clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원사고담보코드',
  `cmpx_cvr_prs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합담보대표구분코드',
  `rkrt_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험율코드',
  `rk_tp_flgcd1` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형구분코드1',
  `rk_tp_flgcd2` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형구분코드2',
  `rk_tp_flgcd3` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형구분코드3',
  `rk_tp_flgcd4` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형구분코드4',
  `rk_tp_flg_vl1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형구분값1',
  `rk_tp_flg_vl2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형구분값2',
  `rk_tp_flg_vl3` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형구분값3',
  `rk_tp_flg_vl4` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형구분값4',
  `xcpt_itcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예외항목코드',
  `xcpt_itvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예외항목값',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`da_crtdt`,`gdcd`,`cvrcd`,`clm_cvrcd`,`dvpns_gdcd`,`dvpns_cvrcd`,`dvpns_clm_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품분석자료';
