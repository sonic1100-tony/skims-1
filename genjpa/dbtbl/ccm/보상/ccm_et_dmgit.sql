--
-- Table structure for table `ccm_et_dmgit`
--

DROP TABLE IF EXISTS `ccm_et_dmgit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_et_dmgit` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `as_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목구분코드',
  `matcs_emamt` decimal(15,0) DEFAULT NULL COMMENT '재료비청구금액',
  `matcs_udamt` decimal(15,0) DEFAULT NULL COMMENT '재료비심사금액',
  `lbrxp_emamt` decimal(15,0) DEFAULT NULL COMMENT '노무비청구금액',
  `lbrxp_udamt` decimal(15,0) DEFAULT NULL COMMENT '노무비심사금액',
  `bg_emamt` decimal(15,0) DEFAULT NULL COMMENT '경비청구금액',
  `bg_udamt` decimal(15,0) DEFAULT NULL COMMENT '경비심사금액',
  `gn_admcs_emamt` decimal(15,0) DEFAULT NULL COMMENT '일반관리비청구금액',
  `gn_admcs_udamt` decimal(15,0) DEFAULT NULL COMMENT '일반관리비심사금액',
  `prf_emamt` decimal(15,0) DEFAULT NULL COMMENT '이윤청구금액',
  `prf_udamt` decimal(15,0) DEFAULT NULL COMMENT '이윤심사금액',
  `et_emamt` decimal(15,0) DEFAULT NULL COMMENT '기타청구금액',
  `et_udamt` decimal(15,0) DEFAULT NULL COMMENT '기타심사금액',
  `rdt_dp_emamt` decimal(15,0) DEFAULT NULL COMMENT '감가상각청구금액',
  `rdt_dp_udamt` decimal(15,0) DEFAULT NULL COMMENT '감가상각심사금액',
  `sb_dc_emamt` decimal(15,0) DEFAULT NULL COMMENT '잔존물공제청구금액',
  `sb_dc_udamt` decimal(15,0) DEFAULT NULL COMMENT '잔존물공제심사금액',
  `adtx_emamt` decimal(15,0) DEFAULT NULL COMMENT '부가세청구금액',
  `adtx_udamt` decimal(15,0) DEFAULT NULL COMMENT '부가세심사금액',
  `bz_ls_emamt` decimal(15,0) DEFAULT NULL COMMENT '영업손실청구금액',
  `bz_ls_udamt` decimal(15,0) DEFAULT NULL COMMENT '영업손실심사금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_et_dmgit_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`dm_seqno`,`as_it_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기타피해물';
