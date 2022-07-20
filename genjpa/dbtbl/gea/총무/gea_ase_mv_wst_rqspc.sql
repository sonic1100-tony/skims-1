--
-- Table structure for table `gea_ase_mv_wst_rqspc`
--

DROP TABLE IF EXISTS `gea_ase_mv_wst_rqspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_mv_wst_rqspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) NOT NULL COMMENT '신청내역순번',
  `ase_mv_seqno` decimal(5,0) NOT NULL COMMENT '자산이동순번',
  `aseno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '자산번호',
  `ase_mv_wst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산이동폐기구분코드',
  `mv_supt_prdt` date DEFAULT NULL COMMENT '이동지원예정일자',
  `mvbf_org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전기관실체구분코드',
  `mvbf_us_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전사용기관코드',
  `mvbf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전우편번호',
  `mvbf_ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전기본주소',
  `mvbf_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전상세주소',
  `mvbf_usr_cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동전사용자연락처',
  `mvaf_org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후기관실체구분코드',
  `mvaf_us_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후사용기관코드',
  `mvaf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후우편번호',
  `mvaf_ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후기본주소',
  `mvaf_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후상세주소',
  `mvaf_usr_cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후사용자연락처',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_ase_mv_wst_rqspc_00` (`rqdt`,`rq_seqno`,`rq_spc_seqno`,`ase_mv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산이동폐기신청내역';
