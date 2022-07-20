--
-- Table structure for table `lse_orghd_sms_adm`
--

DROP TABLE IF EXISTS `lse_orghd_sms_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_orghd_sms_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `orghd_inp_crr_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '기관장입력이력순번',
  `orghd_inp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관장입력구분코드',
  `orghd_inp_dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관장입력상세내용',
  `inp_orghd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력기관장직원번호',
  `mdf_orghd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정기관장직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_orghd_sms_adm_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`orghd_inp_crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기관장SMS관리';
