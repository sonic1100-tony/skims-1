--
-- Table structure for table `lse_mdud_dl_prg`
--

DROP TABLE IF EXISTS `lse_mdud_dl_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mdud_dl_prg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `ud_seq` decimal(3,0) NOT NULL COMMENT '심사회차',
  `dl_spc_seqno` decimal(3,0) NOT NULL COMMENT '처리내역순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `mdud_prg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사진행구분코드',
  `prg_spc` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '진행내역',
  `dldt` date NOT NULL COMMENT '처리일자',
  `lsetm_stf_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사직원구분코드',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자직원번호',
  `dmd_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자기관코드',
  `mdud_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mdud_dl_prg_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`ud_seq`,`dl_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료심사처리진행';
