--
-- Table structure for table `str_mng_vl_es`
--

DROP TABLE IF EXISTS `str_mng_vl_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_mng_vl_es` (
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `risk_pg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '리스크프로그램구분코드',
  `vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가항목코드',
  `inctl_vl_domn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가영역구분코드',
  `inctl_vl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가유형코드',
  `inctl_vl_part_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가부문구분코드',
  `inctl_vl_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가항목구분코드',
  `inctl_vl_chek_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가체크항목코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`seq`,`risk_pg_flgcd`,`vl_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주관평가설정';
