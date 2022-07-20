--
-- Table structure for table `lse_amlg_slobs_bfrad`
--

DROP TABLE IF EXISTS `lse_amlg_slobs_bfrad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_amlg_slobs_bfrad` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `bfrad_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사전관리구분코드',
  `bfrad_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사전관리항목코드',
  `bfrad_itvl` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '사전관리항목값',
  `bfrad_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전관리대상여부',
  `ud_seq` decimal(3,0) DEFAULT NULL COMMENT '심사회차',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_amlg_slobs_bfrad_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`dm_seqno`,`bfrad_flgcd`,`bfrad_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상하지후유장해사전관리';
