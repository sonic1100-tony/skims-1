--
-- Table structure for table `igd_gd_vlidtn`
--

DROP TABLE IF EXISTS `igd_gd_vlidtn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_vlidtn` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `gd_vlidtn_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품정합성분류코드',
  `gd_vlidtn_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품정합성유형코드',
  `gd_vlidtn_st_bjt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품정합성기준객체구분코드',
  `gd_vlidtn_st_bjt_atrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상품정합성기준객체속성명',
  `gd_vlidtn_bj_bjt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품정합성대상객체구분코드',
  `gd_vlidtn_bj_bjt_atrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상품정합성대상객체속성명',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `gd_vlidtn_chek_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품정합성체크코드',
  `gd_vlidtn_st_bjt_prmvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품정합성기준객체허용값',
  `gd_vlidtn_bj_bjt_prmvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품정합성대상객체허용값',
  `isamt_rt` decimal(12,6) NOT NULL COMMENT '가입금액비율',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`gd_vlidtn_csfcd`,`gd_vlidtn_tpcd`,`gd_vlidtn_st_bjt_flgcd`,`gd_vlidtn_st_bjt_atrnm`,`gd_vlidtn_bj_bjt_flgcd`,`gd_vlidtn_bj_bjt_atrnm`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품정합성';
