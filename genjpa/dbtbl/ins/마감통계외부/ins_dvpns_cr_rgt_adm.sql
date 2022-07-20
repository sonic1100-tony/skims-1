--
-- Table structure for table `ins_dvpns_cr_rgt_adm`
--

DROP TABLE IF EXISTS `ins_dvpns_cr_rgt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_cr_rgt_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `carno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호구분코드',
  `dvpns_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원차구분코드',
  `fr_rgt_stdt` date DEFAULT NULL COMMENT '최초등록기준일자',
  `dvpns_inqcn_vrf_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원조회조건검증결과코드',
  `dvpns_inq_rst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원조회결과구분코드',
  `carno_xstn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호존재여부',
  `rgt_ownr_eqal_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록소유자일치여부',
  `chsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차대번호',
  `dvpns_cr_rgt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원차량등록구분코드',
  `carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명',
  `yytp` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연식',
  `dvpns_cr_rgt_catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원자동차등록차종코드',
  `fr_rgtdt` date DEFAULT NULL COMMENT '최초등록일자',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `dvpns_rgt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원등록사유코드',
  `dvpns_co_nm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원공동명의구분코드',
  `ch_rgt_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경등록차량번호',
  `rgt_owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록소유자명',
  `dvpns_gr_car_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원단체차량구분코드',
  `cr_or_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량/차대번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dvpns_cr_rgt_adm_00` (`carno`,`ctm_dscno`,`ins_st`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원차량등록관리';
