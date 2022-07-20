--
-- Table structure for table `lse_orncl_bsns_crst`
--

DROP TABLE IF EXISTS `lse_orncl_bsns_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_orncl_bsns_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dl_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '처리년월',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자기관코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `clm_dldy` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '사고처리일',
  `clm_crct` decimal(7,0) DEFAULT NULL COMMENT '사고발생건수',
  `clm_endct` decimal(7,0) DEFAULT NULL COMMENT '사고종결건수',
  `clm_pndct` decimal(7,0) DEFAULT NULL COMMENT '사고미결건수',
  `crtdd_dlrt` decimal(12,6) DEFAULT NULL COMMENT '당일처리율',
  `dy3_dlrt` decimal(12,6) DEFAULT NULL COMMENT '3일처리율',
  `qlt_udwct` decimal(7,0) DEFAULT NULL COMMENT '품질심사건수',
  `qlt_udamt` decimal(15,0) DEFAULT NULL COMMENT '품질심사금액',
  `ibnf_pyamt` decimal(15,0) DEFAULT NULL COMMENT '보험금지급금액',
  `ibnf_pyct` decimal(7,0) DEFAULT NULL COMMENT '보험금지급건수',
  `cm_dlct` decimal(7,0) DEFAULT NULL COMMENT '당월처리건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_orncl_bsns_crst_00` (`dl_yymm`,`chrps_orgcd`,`chrps_stfno`,`clm_dldy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='조직별업무현황';
