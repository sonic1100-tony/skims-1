--
-- Table structure for table `igd_gd_sl_pl_adm`
--

DROP TABLE IF EXISTS `igd_gd_sl_pl_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_sl_pl_adm` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `plcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '플랜코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `plnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '플랜명',
  `gdsl_type_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품판매형코드',
  `str_age_ccst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작연령산출기준구분코드',
  `is_av_str_age` decimal(3,0) DEFAULT NULL COMMENT '가입가능시작연령',
  `nd_age_ccst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종료연령산출기준구분코드',
  `is_av_nd_age` decimal(3,0) DEFAULT NULL COMMENT '가입가능종료연령',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `drve_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전형태코드',
  `pl_slc_cd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '플랜선택코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`plcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품판매플랜관리';
