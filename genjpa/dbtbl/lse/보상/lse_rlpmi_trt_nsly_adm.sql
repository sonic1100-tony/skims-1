--
-- Table structure for table `lse_rlpmi_trt_nsly_adm`
--

DROP TABLE IF EXISTS `lse_rlpmi_trt_nsly_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_rlpmi_trt_nsly_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `nsly_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '비급여구분코드',
  `dm_unprc_seqno` decimal(5,0) NOT NULL COMMENT '청구단가순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `dm_unprc` decimal(15,0) DEFAULT NULL COMMENT '청구단가',
  `pybj_mdcs` decimal(15,0) DEFAULT NULL COMMENT '지급대상의료비',
  `rmdy_dt` date DEFAULT NULL COMMENT '치료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_rlpmi_trt_nsly_adm_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`nsly_flgcd`,`dm_unprc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실손특약비급여관리';
