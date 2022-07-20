--
-- Table structure for table `lse_dm_rde_nvr_spcz_feld`
--

DROP TABLE IF EXISTS `lse_dm_rde_nvr_spcz_feld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dm_rde_nvr_spcz_feld` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `cpent_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '협력업체담당자직원번호',
  `nvr_spcz_felcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조사자특화분야코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dm_rde_nvr_spcz_feld_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`cpent_chrps_stfno`,`nvr_spcz_felcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해절감조사자특화분야';
