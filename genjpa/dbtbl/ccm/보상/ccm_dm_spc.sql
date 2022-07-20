--
-- Table structure for table `ccm_dm_spc`
--

DROP TABLE IF EXISTS `ccm_dm_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dm_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `as_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목구분코드',
  `emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구금액',
  `mm_emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '약재료청구금액',
  `ctc_emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '행위료청구금액',
  `ctc_dm_adamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '행위료청구가산금액',
  `cc_sno` decimal(5,0) DEFAULT NULL COMMENT '산출일련번호',
  `flt_stamt_xcpt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실상계액제외여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dm_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`dm_seqno`,`as_it_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청구내역';
