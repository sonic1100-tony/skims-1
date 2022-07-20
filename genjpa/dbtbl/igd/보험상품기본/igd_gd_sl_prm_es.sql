--
-- Table structure for table `igd_gd_sl_prm_es`
--

DROP TABLE IF EXISTS `igd_gd_sl_prm_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_sl_prm_es` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `plcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '플랜코드',
  `sl_es_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매설정대상구분코드',
  `sl_es_bjpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매설정대상코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `gd_or_pl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품/플랜구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`plcd`,`sl_es_bj_flgcd`,`sl_es_bjpcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품판매허용설정';
