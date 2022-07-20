--
-- Table structure for table `lse_lsetm_dt_bsns_chrps`
--

DROP TABLE IF EXISTS `lse_lsetm_dt_bsns_chrps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_dt_bsns_chrps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `lsetm_dt_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사세부업무구분코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `ppr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_dt_bsns_chrps_00` (`orgcd`,`lsetm_dt_bsns_flgcd`,`ap_strdt`,`ap_nddt`,`chrps_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사세부업무담당자';
