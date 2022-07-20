--
-- Table structure for table `ccm_spccf_haap_obrpt_rmspc`
--

DROP TABLE IF EXISTS `ccm_spccf_haap_obrpt_rmspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_spccf_haap_obrpt_rmspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `spccf_hamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특인고액구분코드',
  `spccf_hamt_spc_seqno` decimal(3,0) NOT NULL COMMENT '특인고액내역순번',
  `hagth_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입통원구분코드',
  `rmdy_strdt` date NOT NULL COMMENT '치료시작일자',
  `rmdy_nddt` date DEFAULT NULL COMMENT '치료종료일자',
  `rmdy_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '치료내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_spccf_haap_obrpt_rmspc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`spccf_hamt_flgcd`,`spccf_hamt_spc_seqno`,`rmdy_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특인고액승인장해보고치료내역';
