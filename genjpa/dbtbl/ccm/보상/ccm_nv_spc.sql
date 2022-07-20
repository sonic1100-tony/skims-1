--
-- Table structure for table `ccm_nv_spc`
--

DROP TABLE IF EXISTS `ccm_nv_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_nv_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `spccf_hamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특인고액구분코드',
  `spccf_hamt_spc_seqno` decimal(3,0) NOT NULL COMMENT '특인고액내역순번',
  `spccf_hamt_nv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특인고액조사구분코드',
  `nvdt` date NOT NULL COMMENT '조사일자',
  `nvr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '조사자직원번호',
  `vispl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방문처구분코드',
  `py_xp_mdcf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급예상치료비',
  `victm_stcr` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자현상태',
  `next_mdcf_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '향후치료비의견',
  `vispl_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방문처명',
  `nv_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사내용',
  `invps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면담자명',
  `victm_invps_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자면담자관계코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_nv_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`spccf_hamt_flgcd`,`spccf_hamt_spc_seqno`,`spccf_hamt_nv_flgcd`,`nvdt`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='조사내역';
