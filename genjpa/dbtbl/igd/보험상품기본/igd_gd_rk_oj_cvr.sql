--
-- Table structure for table `igd_gd_rk_oj_cvr`
--

DROP TABLE IF EXISTS `igd_gd_rk_oj_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_rk_oj_cvr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `oj_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '목적물유형코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `mn_cvr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '주담보여부',
  `essn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '필수여부',
  `slc_cnc_avyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택해제가능여부',
  `scr_idc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '화면표시여부',
  `scr_idc_ordr` decimal(5,0) NOT NULL DEFAULT '1' COMMENT '화면표시순서',
  `cvr_es_unt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보설정단위구분코드',
  `scr_hmsg_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화면도움말내용',
  `essn_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '필수유형구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_igd_gd_rk_oj_cvr_00` (`gdcd`,`rk_tpcd`,`oj_tpcd`,`cvrcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB AUTO_INCREMENT=374085 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품위험목적물담보';
