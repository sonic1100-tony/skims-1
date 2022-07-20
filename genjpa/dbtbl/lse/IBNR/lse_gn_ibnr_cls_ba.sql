--
-- Table structure for table `lse_gn_ibnr_cls_ba`
--

DROP TABLE IF EXISTS `lse_gn_ibnr_cls_ba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_gn_ibnr_cls_ba` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_dat_seqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR데이터순번',
  `ibnr_instm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IBNR보험종목구분코드',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `ibnr_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IBNR일련번호',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ibnr_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IBNR담보구분코드',
  `cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보명',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `py_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급년월',
  `mgcmp_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사사코드',
  `thcp_pfrt` decimal(7,4) DEFAULT NULL COMMENT '당사참여율',
  `xi_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분코드',
  `thcp_py_ibamt` decimal(15,0) DEFAULT NULL COMMENT '당사지급보험금액',
  `rn_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수보험금액',
  `thcp_rtro_ibamt` decimal(17,2) DEFAULT NULL COMMENT '당사수재보험금액',
  `rtro_ibamt` decimal(17,2) DEFAULT NULL COMMENT '수재보험금액',
  `thcp_re_ibamt` decimal(15,0) DEFAULT NULL COMMENT '당사출재보험금액',
  `re_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재보험금액',
  `rn_xiamt` decimal(17,2) DEFAULT NULL COMMENT '원수추산보험금액',
  `thcp_xiamt` decimal(17,2) DEFAULT NULL COMMENT '당사추산보험금액',
  `rtro_xiamt` decimal(17,2) DEFAULT NULL COMMENT '수재추산보험금액',
  `thcp_rtro_xiamt` decimal(17,2) DEFAULT NULL COMMENT '당사수재추산보험금액',
  `re_xi_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재추산보험금액',
  `thcp_re_xiamt` decimal(17,2) DEFAULT NULL COMMENT '당사출재추산보험금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_gn_ibnr_cls_ba_00` (`cls_yymm`,`ibnr_dat_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반IBNR마감기초';
