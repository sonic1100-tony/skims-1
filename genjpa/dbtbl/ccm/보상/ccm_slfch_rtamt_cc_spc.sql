--
-- Table structure for table `ccm_slfch_rtamt_cc_spc`
--

DROP TABLE IF EXISTS `ccm_slfch_rtamt_cc_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_slfch_rtamt_cc_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `pymdt` date DEFAULT NULL COMMENT '납부일자',
  `rtn_crdt` date DEFAULT NULL COMMENT '환급발생일자',
  `emamt` decimal(15,0) DEFAULT '0' COMMENT '청구금액',
  `pyamt` decimal(17,2) DEFAULT '0.00' COMMENT '지급금액',
  `aprt` decimal(12,6) DEFAULT '0.000000' COMMENT '적용율',
  `ntrt` decimal(5,2) DEFAULT '0.00' COMMENT '이자율',
  `ex_ibamt` decimal(17,2) DEFAULT '0.00' COMMENT '환입보험금액',
  `ex_ntamt` decimal(15,0) DEFAULT '0' COMMENT '환입이자금액',
  `rtamt_py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환급금지급여부',
  `slfch_nptrt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자기부담금미환급사유코드',
  `slfch_nptrt_et_rs` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자기부담금미환급기타사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_slfch_rtamt_cc_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`dm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자기부담금환급금산출내역';
