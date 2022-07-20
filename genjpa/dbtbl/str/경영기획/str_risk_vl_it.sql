--
-- Table structure for table `str_risk_vl_it`
--

DROP TABLE IF EXISTS `str_risk_vl_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_risk_vl_it` (
  `risk_pg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '리스크프로그램구분코드',
  `vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가항목코드',
  `vl_it_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '평가항목내용',
  `lvl_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '레벨분류코드',
  `grd_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등급종류코드',
  `it_idc_ordr` decimal(3,0) NOT NULL COMMENT '항목표시순서',
  `vl_av_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '평가가능여부',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '사용여부',
  `ppr_vl_itcd` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '상위평가항목코드',
  `ppr_pg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '상위프로그램구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`risk_pg_flgcd`,`vl_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='리스크평가항목';
