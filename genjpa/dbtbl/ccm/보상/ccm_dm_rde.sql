--
-- Table structure for table `ccm_dm_rde`
--

DROP TABLE IF EXISTS `ccm_dm_rde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dm_rde` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `ud_dgre` decimal(3,0) NOT NULL COMMENT '심사차수',
  `mnbrn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '본지점구분코드',
  `dm_rde_crs_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해절감과정내용',
  `obs_rde_amt` decimal(15,0) DEFAULT NULL COMMENT '장해절감금액',
  `next_mdcf_rde_amt` decimal(15,0) DEFAULT NULL COMMENT '향후치료비절감금액',
  `pvsp_rde_amt` decimal(15,0) DEFAULT NULL COMMENT '기왕증절감금액',
  `rde_smamt` decimal(15,0) DEFAULT NULL COMMENT '절감합계금액',
  `cnbd` decimal(5,2) DEFAULT NULL COMMENT '기여도',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`ud_dgre`,`mnbrn_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해절감';
