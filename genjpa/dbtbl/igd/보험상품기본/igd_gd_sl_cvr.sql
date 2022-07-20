--
-- Table structure for table `igd_gd_sl_cvr`
--

DROP TABLE IF EXISTS `igd_gd_sl_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_sl_cvr` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `cvr_ba_trt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보기본특약구분코드',
  `pym_trm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '납입기간구분코드',
  `pym_trm` decimal(3,0) NOT NULL COMMENT '납입기간',
  `ins_trm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험기간구분코드',
  `ins_trm` decimal(3,0) NOT NULL COMMENT '보험기간',
  `is_av_sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입가능성별코드',
  `is_av_oj_tpcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '가입가능목적물유형코드',
  `is_av_drve_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입가능운전형태코드',
  `is_av_rel_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입가능관계구분코드',
  `md_sadrp_dc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '의료수급권자할인여부',
  `rnw_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '갱신유형코드',
  `rnw_cyc_yyct` decimal(5,0) DEFAULT NULL COMMENT '갱신주기년수',
  `rnw_nd_trm` decimal(5,0) DEFAULT NULL COMMENT '갱신종료기간',
  `rnw_nd_age` decimal(3,0) DEFAULT NULL COMMENT '갱신종료연령',
  `cmp_lmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상한도코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`sl_cvrcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품판매담보';
