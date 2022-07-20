--
-- Table structure for table `met_csfcd_us_rel`
--

DROP TABLE IF EXISTS `met_csfcd_us_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_csfcd_us_rel` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분류코드',
  `cd_us_seqno` decimal(3,0) NOT NULL COMMENT '코드사용순번',
  `cnn_clm_xstn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '관련컬럼존재여부',
  `cd_us_ntynm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코드사용실체명',
  `cd_us_tabnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코드사용테이블명',
  `cd_us_atrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코드사용속성명',
  `cd_us_clmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코드사용컬럼명',
  `cd_us_rel_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코드사용관계설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_met_csfcd_us_rel_00` (`csfcd`,`cd_us_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분류코드사용관계';
