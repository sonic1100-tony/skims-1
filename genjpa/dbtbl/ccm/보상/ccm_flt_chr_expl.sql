--
-- Table structure for table `ccm_flt_chr_expl`
--

DROP TABLE IF EXISTS `ccm_flt_chr_expl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_flt_chr_expl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `onw_flt_apgr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신구과실적용도구분코드',
  `flt_apgr` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '과실적용도',
  `flt_apgr_seqno` decimal(3,0) NOT NULL COMMENT '과실적용도순번',
  `chr_expl` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도표해설',
  `cnn_rglt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련법규내용',
  `ref_prcdt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고판례내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_flt_chr_expl_00` (`onw_flt_apgr_flgcd`,`flt_apgr`,`flt_apgr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=7063 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='과실도표해설';
