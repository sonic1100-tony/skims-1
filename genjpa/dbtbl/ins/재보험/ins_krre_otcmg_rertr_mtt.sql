--
-- Table structure for table `ins_krre_otcmg_rertr_mtt`
--

DROP TABLE IF EXISTS `ins_krre_otcmg_rertr_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_krre_otcmg_rertr_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `krre_co_ins_seqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '코리안리공동보험순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `trt_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특약분류코드',
  `rins_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험형태코드',
  `rertr_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '출수재율',
  `cmear_riamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '출수재보험금액',
  `rertr_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '출수재보험료',
  `rertr_cmrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '출수재수수료율',
  `cmear_re_cm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '출수재수수료',
  `rertr_rtmny` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '출수재유보금',
  `rertr_ibnf` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '출수재보험금',
  `rertr_crpcs` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '출수재부대비',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_krre_otcmg_rertr_mtt_00` (`krre_co_ins_seqno`,`mncd`,`trt_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='코리안리타사간사출수재사항';
