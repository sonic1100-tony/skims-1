--
-- Table structure for table `met_csfcd`
--

DROP TABLE IF EXISTS `met_csfcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_csfcd` (
  `csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분류코드',
  `cscnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '분류코드명',
  `csfcd_ennm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분류코드영문명',
  `csfcd_xpnm` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분류코드설명',
  `dtcd_lngth` decimal(2,0) DEFAULT NULL COMMENT '세부코드길이',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분코드',
  `inrcd_us_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통합코드사용용도코드',
  `cd_chrps_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코드담당자ID',
  `cl_rel_xstn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'N' COMMENT '계층관계존재여부',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분류코드';
