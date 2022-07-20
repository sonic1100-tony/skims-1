--
-- Table structure for table `str_risk_vl_grd`
--

DROP TABLE IF EXISTS `str_risk_vl_grd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_risk_vl_grd` (
  `risk_pg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '리스크프로그램구분코드',
  `grd_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '등급종류코드',
  `grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '등급코드',
  `grcnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '등급코드명',
  `grd_cd_xpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등급코드설명',
  `st_strvl` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '기준시작값',
  `st_ndvl` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '기준종료값',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`risk_pg_flgcd`,`grd_kndcd`,`grdcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='리스크평가등급';
