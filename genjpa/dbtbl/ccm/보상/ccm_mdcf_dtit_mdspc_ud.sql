--
-- Table structure for table `ccm_mdcf_dtit_mdspc_ud`
--

DROP TABLE IF EXISTS `ccm_mdcf_dtit_mdspc_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_mdcf_dtit_mdspc_ud` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `dm_ud_seqno` decimal(3,0) NOT NULL COMMENT '청구심사순번',
  `as_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목구분코드',
  `as_it_csf_seqno` decimal(5,0) NOT NULL COMMENT '사정항목분류순번',
  `as_it_csfnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목분류명',
  `mm_emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '약재료청구금액',
  `mm_mdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '약재료조정금액',
  `ctc_emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '행위료청구금액',
  `ctc_mdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '행위료조정금액',
  `mdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조정코드',
  `md_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_mdcf_dtit_mdspc_ud_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`dm_seqno`,`dm_ud_seqno`,`as_it_flgcd`,`as_it_csf_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='치료비세부항목조정내역심사';
