--
-- Table structure for table `lse_ltrm_dv_ch_crr`
--

DROP TABLE IF EXISTS `lse_ltrm_dv_ch_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_dv_ch_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ltrm_dv_ch_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장기배당변경항목코드',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `ch_apdt` date NOT NULL COMMENT '변경적용일자',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `chbf_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전내용',
  `chaf_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ltrm_dv_ch_crr_00` (`ltrm_dv_ch_itcd`,`ch_seqno`,`ch_apdt`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기배당변경이력';
