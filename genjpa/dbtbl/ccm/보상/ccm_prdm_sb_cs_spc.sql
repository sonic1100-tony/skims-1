--
-- Table structure for table `ccm_prdm_sb_cs_spc`
--

DROP TABLE IF EXISTS `ccm_prdm_sb_cs_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_prdm_sb_cs_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `as_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목구분코드',
  `cc_sno` decimal(5,0) NOT NULL COMMENT '산출일련번호',
  `prdm_sb_cs_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대물대체비용항목코드',
  `totls_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전손보험금액',
  `prdm_sb_cs_aprt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '대물대체비용적용율',
  `appr_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '인정금액',
  `st_prc` decimal(15,2) DEFAULT NULL COMMENT '기준가격',
  `rsrt` decimal(7,4) DEFAULT NULL COMMENT '잔가율',
  `tx_stamt` decimal(15,0) DEFAULT NULL COMMENT '과세표준금액',
  `rx_amt` decimal(15,0) DEFAULT NULL COMMENT '감면금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_prdm_sb_cs_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`as_it_flgcd`,`cc_sno`,`prdm_sb_cs_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대물대체비용내역';
