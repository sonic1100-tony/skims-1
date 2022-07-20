--
-- Table structure for table `cus_ctm_ad_it`
--

DROP TABLE IF EXISTS `cus_ctm_ad_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_ad_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `crp_fnd_oj` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인설립목적',
  `owrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보유자코드',
  `ref_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참조사업자번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_ad_it_00` (`ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객부가항목';
