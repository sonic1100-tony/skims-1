--
-- Table structure for table `igd_gd_rk_tp`
--

DROP TABLE IF EXISTS `igd_gd_rk_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_rk_tp` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `essn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '필수여부',
  `scr_idc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '화면표시여부',
  `scr_idc_ordr` decimal(5,0) NOT NULL DEFAULT '1' COMMENT '화면표시순서',
  `cnn_scr_id` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련화면ID',
  `cnn_scr_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련화면세부구분코드',
  `cc_rule_id` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산출RULEID',
  `ps_cst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보유품의여부',
  `ppr_rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위위험유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`rk_tpcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품위험유형';
