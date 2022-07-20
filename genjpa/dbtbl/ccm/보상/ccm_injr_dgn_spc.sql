--
-- Table structure for table `ccm_injr_dgn_spc`
--

DROP TABLE IF EXISTS `ccm_injr_dgn_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_injr_dgn_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `optdc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '임의확정구분코드',
  `injr_grd_seqno` decimal(3,0) NOT NULL COMMENT '상해등급순번',
  `injr_dgn_spc_seqno` decimal(3,0) NOT NULL COMMENT '상해진단내역순번',
  `dgn_parcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단부위코드',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `dgnnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단명',
  `dgn_inj_rnk` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '진단부상급수',
  `dgn_inj_it` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '진단부상항목',
  `dgn_par_lnr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단부위좌우구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_injr_dgn_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`optdc_flgcd`,`injr_grd_seqno`,`injr_dgn_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상해진단내역';
