--
-- Table structure for table `ccm_pl_stf_dt_spc`
--

DROP TABLE IF EXISTS `ccm_pl_stf_dt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_pl_stf_dt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `cc_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출기준구분코드',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `pl_stf_dt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손익상계세부항목코드',
  `pl_stf_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '손익상계금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_pl_stf_dt_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`cc_st_flgcd`,`cc_seq`,`pl_stf_dt_itcd`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손익상계세부내역';
