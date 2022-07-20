--
-- Table structure for table `ins_gd_ce_prm_es`
--

DROP TABLE IF EXISTS `ins_gd_ce_prm_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gd_ce_prm_es` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `plsno` decimal(5,0) NOT NULL COMMENT '플랜순번',
  `ce_es_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모집설정대상구분코드',
  `ce_es_bjpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모집설정대상코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ce_prm_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '모집허용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_gd_ce_prm_es_00` (`gdcd`,`plsno`,`ce_es_bj_flgcd`,`ce_es_bjpcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품모집허용설정';
