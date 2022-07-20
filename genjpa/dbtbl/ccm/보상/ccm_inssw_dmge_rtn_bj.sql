--
-- Table structure for table `ccm_inssw_dmge_rtn_bj`
--

DROP TABLE IF EXISTS `ccm_inssw_dmge_rtn_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_inssw_dmge_rtn_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `rtn_bj_seqno` decimal(3,0) NOT NULL COMMENT '환급대상순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `rtn_bj_ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환급대상취소여부',
  `inssw_imu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기면책구분코드',
  `rpbl_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '책임손해금액',
  `optn_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '임의손해금액',
  `inssw_imu_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기면책원인코드',
  `inssw_dmge_cnfdt` date DEFAULT NULL COMMENT '보험사기피해확인일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_inssw_dmge_rtn_bj_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`rtn_bj_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험사기피해환급대상';
