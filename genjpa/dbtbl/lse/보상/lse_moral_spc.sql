--
-- Table structure for table `lse_moral_spc`
--

DROP TABLE IF EXISTS `lse_moral_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_moral_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `moral_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모랄분류코드',
  `moral_ndxcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '모랄지수코드',
  `moral_ndx` decimal(3,0) NOT NULL COMMENT '모랄지수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_moral_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`moral_csfcd`,`moral_ndxcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='모랄내역';
