--
-- Table structure for table `ccm_rpcrg_itcl_haap_cn`
--

DROP TABLE IF EXISTS `ccm_rpcrg_itcl_haap_cn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_rpcrg_itcl_haap_cn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `spccf_hamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특인고액구분코드',
  `spccf_hamt_spc_seqno` decimal(3,0) NOT NULL COMMENT '특인고액내역순번',
  `as_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목구분코드',
  `hamt_apamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '고액승인금액',
  `hamt_ap_ud_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고액승인심사내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_rpcrg_itcl_haap_cn_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`spccf_hamt_flgcd`,`spccf_hamt_spc_seqno`,`as_it_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수리비항목별고액승인내역';
