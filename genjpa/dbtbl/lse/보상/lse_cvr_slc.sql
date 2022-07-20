--
-- Table structure for table `lse_cvr_slc`
--

DROP TABLE IF EXISTS `lse_cvr_slc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cvr_slc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `lsetm_cvr_slc_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사담보선택코드',
  `lsetm_cvr_slcvl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사담보선택값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cvr_slc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`lsetm_cvr_slc_cd`)
) ENGINE=InnoDB AUTO_INCREMENT=613 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담보선택';
