--
-- Table structure for table `lse_mdud_trpa_requ`
--

DROP TABLE IF EXISTS `lse_mdud_trpa_requ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mdud_trpa_requ` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `trpa_seq` decimal(3,0) NOT NULL COMMENT '진료비회차',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `chrps_stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원명',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자기관코드',
  `chrps_orgnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자기관명',
  `rqudt` date NOT NULL COMMENT '의뢰일자',
  `mdud_asrdt` date DEFAULT NULL COMMENT '의료심사회신일자',
  `ud_revs_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사역직원번호',
  `ud_revs_stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사역직원명',
  `ud_revs_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사역기관코드',
  `ud_revs_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사역기관명',
  `trpa_prg_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료비진행상태코드',
  `trpa_ud_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비심사대상구분코드',
  `mdud_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mdud_trpa_requ_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`trpa_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료심사진료비의뢰';
