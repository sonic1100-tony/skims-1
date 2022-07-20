--
-- Table structure for table `ccm_idm_omit_adm`
--

DROP TABLE IF EXISTS `ccm_idm_omit_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_idm_omit_adm` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `idm_omit_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '구상누락구분코드',
  `end_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '종결담당자직원번호',
  `end_dthms` datetime NOT NULL COMMENT '종결일시',
  `idm_omit_dl_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상누락처리사유코드',
  `idm_omit_dl_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상누락처리사유',
  `idm_omit_dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상누락처리자직원번호',
  `idm_omit_dl_dthms` datetime DEFAULT NULL COMMENT '구상누락처리일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`idm_omit_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구상누락관리';
