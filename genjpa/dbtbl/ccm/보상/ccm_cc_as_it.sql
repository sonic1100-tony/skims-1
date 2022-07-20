--
-- Table structure for table `ccm_cc_as_it`
--

DROP TABLE IF EXISTS `ccm_cc_as_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cc_as_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `cc_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출기준구분코드',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `cc_as_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출사정항목코드',
  `sfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '상계전금액',
  `flt_saamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '과실상계후금액',
  `tmppy_lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '가지급한도금액',
  `pvpy_tmppy_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기지급가지급금액',
  `it_pvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '항목충당금액',
  `sb_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '차감지급금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cc_as_it_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`cc_st_flgcd`,`cc_seq`,`cc_as_itcd`)
) ENGINE=InnoDB AUTO_INCREMENT=574 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='산출사정항목';
