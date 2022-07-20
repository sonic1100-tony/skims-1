--
-- Table structure for table `lse_hprm_ctn_xch`
--

DROP TABLE IF EXISTS `lse_hprm_ctn_xch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_ctn_xch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `dl_spc_seqno` decimal(3,0) NOT NULL COMMENT '처리내역순번',
  `hprm_ctn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'HPRM의견구분코드',
  `hprm_bsns_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'HPRM업무유형코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `ctn_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '의견내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_ctn_xch_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`dl_spc_seqno`,`hprm_ctn_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM의견교환';
