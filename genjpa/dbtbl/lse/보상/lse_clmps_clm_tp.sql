--
-- Table structure for table `lse_clmps_clm_tp`
--

DROP TABLE IF EXISTS `lse_clmps_clm_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmps_clm_tp` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `us_tp_seqno` decimal(3,0) NOT NULL COMMENT '사용유형순번',
  `clm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고유형코드',
  `clm_dt_tpcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고상세유형코드',
  `clm_tp_csf_lvl` decimal(1,0) DEFAULT NULL COMMENT '사고유형분류레벨',
  `injr_dsas_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해질병구분코드',
  `clm_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고원인코드',
  `clm_2_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고2원인코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clmps_clm_tp_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`us_tp_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=7469 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고자사고유형';
