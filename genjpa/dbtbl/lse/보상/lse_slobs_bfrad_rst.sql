--
-- Table structure for table `lse_slobs_bfrad_rst`
--

DROP TABLE IF EXISTS `lse_slobs_bfrad_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_slobs_bfrad_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `bfrad_nbj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전관리비대상여부',
  `bfrad_nbj_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전관리비대상사유',
  `bfrad_cn_uncs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전관리내용불필요여부',
  `bfrad_cn_uncs_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전관리내용불필요사유',
  `xp_obs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예상장해여부',
  `clm_ptpdg` decimal(3,0) DEFAULT NULL COMMENT '사고관여도',
  `xp_obsrt` decimal(5,2) DEFAULT NULL COMMENT '예상장해율',
  `slobs_is_tamt` decimal(15,0) DEFAULT NULL COMMENT '후유장해가입총액',
  `xp_dmamt` decimal(17,5) DEFAULT NULL COMMENT '예상손해액',
  `otcm_is_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사가입내용',
  `brk_invtn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커개입내용',
  `spc_adm_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별관리대상여부',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_slobs_bfrad_rst_00` (`rcp_yymm`,`rcp_nv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='후유장해사전관리결과';
