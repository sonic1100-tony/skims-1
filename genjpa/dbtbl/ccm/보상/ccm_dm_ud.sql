--
-- Table structure for table `ccm_dm_ud`
--

DROP TABLE IF EXISTS `ccm_dm_ud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dm_ud` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `dm_ud_seqno` decimal(3,0) NOT NULL COMMENT '청구심사순번',
  `dm_ud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청구심사구분코드',
  `rqudt` date NOT NULL COMMENT '의뢰일자',
  `rqcl_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '의뢰자직원번호',
  `udwr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사자직원번호',
  `udwdt` date DEFAULT NULL COMMENT '심사일자',
  `udamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '심사금액합계',
  `mm_udamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '약재료심사금액합계',
  `ctc_udamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '행위료심사금액합계',
  `ctc_ud_adamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '행위료심사가산금액합계',
  `mig_py_ordr` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MIG지급순차',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dm_ud_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`dm_seqno`,`dm_ud_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청구심사';
