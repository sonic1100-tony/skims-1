--
-- Table structure for table `str_inctl_vlrst`
--

DROP TABLE IF EXISTS `str_inctl_vlrst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_inctl_vlrst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `part_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '부문기관코드',
  `hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '본부기관코드',
  `part_are_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '파트지역기관코드',
  `inctl_vl_domn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가영역구분코드',
  `inctl_vl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가유형코드',
  `inctl_vl_part_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가부문구분코드',
  `inctl_vl_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가항목구분코드',
  `inctl_dcn_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제확정등급코드',
  `dcn_t_poct` decimal(7,0) NOT NULL COMMENT '확정총점수',
  `dcn_avg_poct` decimal(3,0) NOT NULL COMMENT '확정평균점수',
  `dcn_t_ct` decimal(7,0) NOT NULL COMMENT '확정총갯수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_inctl_vlrst_00` (`seq`,`part_orgcd`,`hdqt_orgcd`,`part_are_orgcd`,`inctl_vl_domn_flgcd`,`inctl_vl_tpcd`,`inctl_vl_part_flgcd`,`inctl_vl_it_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='내부통제평가결과';
