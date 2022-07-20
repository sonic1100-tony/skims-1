--
-- Table structure for table `ccm_qlt_auth_ac`
--

DROP TABLE IF EXISTS `ccm_qlt_auth_ac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_qlt_auth_ac` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `as_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목구분코드',
  `gn_ac_emamt` decimal(15,0) DEFAULT '0' COMMENT '일반부품청구금액',
  `gn_ac_udamt` decimal(15,0) DEFAULT '0' COMMENT '일반부품심사금액',
  `auth_ac_emamt` decimal(15,0) DEFAULT '0' COMMENT '인증부품청구금액',
  `auth_ac_udamt` decimal(15,0) DEFAULT '0' COMMENT '인증부품심사금액',
  `oem_ac_emamt` decimal(15,0) DEFAULT '0' COMMENT 'OEM부품청구금액',
  `oem_ac_udamt` decimal(15,0) DEFAULT '0' COMMENT 'OEM부품심사금액',
  `payb_emamt` decimal(15,0) DEFAULT '0' COMMENT '페이백청구금액',
  `payb_udamt` decimal(15,0) DEFAULT '0' COMMENT '페이백심사금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_qlt_auth_ac_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`dm_seqno`,`as_it_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='품질인증부품';
