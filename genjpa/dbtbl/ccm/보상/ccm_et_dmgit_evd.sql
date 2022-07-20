--
-- Table structure for table `ccm_et_dmgit_evd`
--

DROP TABLE IF EXISTS `ccm_et_dmgit_evd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_et_dmgit_evd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `as_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사정항목구분코드',
  `rtx_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증구분코드',
  `rtx_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증여부',
  `txbll_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세금계산서여부',
  `cash_rtx_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현금영수증여부',
  `tf_spcft_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체내역서여부',
  `smp_rtx_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간이영수증여부',
  `smp_rtx_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간이영수증사유',
  `dl_spcft_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래명세서여부',
  `dl_spcft_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래명세서사유',
  `et_evd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타증빙여부',
  `et_evd_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타증빙사유',
  `matcs_prd_unprc_dgrm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재료비제조단가표여부',
  `matcs_intr_mprc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재료비인터넷시가여부',
  `matcs_gdprc_info_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재료비물가정보여부',
  `matcs_et_mprc_dgrm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재료비기타시세표여부',
  `lbrxp_rlv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '노무비해당여부',
  `cr_mdch_dgrm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약수가표여부',
  `et_mdch_dgrm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타수가표여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_et_dmgit_evd_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`dm_seqno`,`as_it_flgcd`,`rtx_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기타피해물증빙';
