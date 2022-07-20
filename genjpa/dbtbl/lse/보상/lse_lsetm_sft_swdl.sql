--
-- Table structure for table `lse_lsetm_sft_swdl`
--

DROP TABLE IF EXISTS `lse_lsetm_sft_swdl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_sft_swdl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `dmas_crpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정법인명',
  `dmas_crp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해사정법인고객번호',
  `cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '협력업체순번',
  `cpent_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체담당자직원번호',
  `cpent_chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체담당자명',
  `dmas_cs` decimal(15,0) DEFAULT NULL COMMENT '손해사정비용',
  `cr_mntn_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약정비년월',
  `sft_swdl_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연성사기처리결과코드',
  `sft_swdl_dl_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연성사기처리내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_sft_swdl_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사연성사기';
