--
-- Table structure for table `igd_gd_csf`
--

DROP TABLE IF EXISTS `igd_gd_csf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_csf` (
  `gd_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품분류코드',
  `ppr_gd_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위상품분류코드',
  `gd_csfnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '상품분류명',
  `gd_csf_lvl` decimal(1,0) NOT NULL DEFAULT '1' COMMENT '상품분류레벨',
  `fnl_lvl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '최종레벨여부',
  `scr_idc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '화면표시여부',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `main_gd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주요상품여부',
  `main_gd_ordr` decimal(3,0) DEFAULT NULL COMMENT '주요상품순서',
  `cnn_scr_gpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련화면그룹코드',
  `cnn_scr_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련화면세부구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gd_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품분류';
