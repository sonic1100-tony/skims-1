--
-- Table structure for table `ccm_dm_rde_spc`
--

DROP TABLE IF EXISTS `ccm_dm_rde_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dm_rde_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `ud_dgre` decimal(3,0) NOT NULL COMMENT '심사차수',
  `mnbrn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '본지점구분코드',
  `obs_dgn_seqno` decimal(5,0) NOT NULL COMMENT '장해진단순번',
  `rde_bfaf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '절감전후구분코드',
  `obs_parnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해부위명',
  `dgn_hsp_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '진단병원고객번호',
  `hsp_cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '병원협력업체순번',
  `ap_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감정병원명',
  `ap_drnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감정의사명',
  `obsrt` decimal(5,2) DEFAULT NULL COMMENT '장해율',
  `emamt` decimal(15,0) DEFAULT NULL COMMENT '청구금액',
  `mdud_obsrt` decimal(5,2) DEFAULT NULL COMMENT '의료심사장해율',
  `lbnz_cfc` decimal(7,4) DEFAULT NULL COMMENT '라이프니쯔계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dm_rde_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`ud_dgre`,`mnbrn_flgcd`,`obs_dgn_seqno`,`rde_bfaf_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해절감내역';
