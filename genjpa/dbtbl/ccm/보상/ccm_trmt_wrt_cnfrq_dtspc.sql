--
-- Table structure for table `ccm_trmt_wrt_cnfrq_dtspc`
--

DROP TABLE IF EXISTS `ccm_trmt_wrt_cnfrq_dtspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trmt_wrt_cnfrq_dtspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `rmdy_crs_seqno` decimal(3,0) NOT NULL COMMENT '치료과정순번',
  `is_ordr` decimal(5,0) NOT NULL COMMENT '발급순차',
  `spc_seqno` decimal(5,0) NOT NULL COMMENT '내역순번',
  `rq_dtspc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요청세부내역구분코드',
  `rq_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요청사항구분코드',
  `dt_rq_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부요청사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trmt_wrt_cnfrq_dtspc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`rmdy_crs_seqno`,`is_ordr`,`spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='진료기록확인요청세부내역';
