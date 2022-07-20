--
-- Table structure for table `ccm_md_cnst_rmdy_spc`
--

DROP TABLE IF EXISTS `ccm_md_cnst_rmdy_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_md_cnst_rmdy_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `md_cnst_spc_seqno` decimal(3,0) NOT NULL COMMENT '의료자문내역순번',
  `rmdy_spc_seqno` decimal(3,0) NOT NULL COMMENT '치료내역순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `hagth_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입통원구분코드',
  `strdt` date DEFAULT NULL COMMENT '시작일자',
  `nddt` date DEFAULT NULL COMMENT '종료일자',
  `rmdy_days` decimal(5,0) DEFAULT NULL COMMENT '치료일수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_md_cnst_rmdy_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`md_cnst_spc_seqno`,`rmdy_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료자문치료내역';
