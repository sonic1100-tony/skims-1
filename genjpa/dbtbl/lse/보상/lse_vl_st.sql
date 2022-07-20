--
-- Table structure for table `lse_vl_st`
--

DROP TABLE IF EXISTS `lse_vl_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_vl_st` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `org_vl_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기관평가년도',
  `entp_vl_trm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업체평가기간구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `entp_vl_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업체평가종목코드',
  `entp_vl_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업체평가평가항목코드',
  `vl_dt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가세부항목코드',
  `vl_stncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가기준코드',
  `vl_poct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '평가점수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_vl_st_00` (`org_vl_yr`,`entp_vl_trm_flgcd`,`ctmno`,`cprt_entp_seqno`,`entp_vl_imcd`,`entp_vl_vl_itcd`,`vl_dt_itcd`,`vl_stncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='평가기준';
