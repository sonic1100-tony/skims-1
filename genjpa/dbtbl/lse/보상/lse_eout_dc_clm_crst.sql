--
-- Table structure for table `lse_eout_dc_clm_crst`
--

DROP TABLE IF EXISTS `lse_eout_dc_clm_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_eout_dc_clm_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dc_plyno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '공제증권번호',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `clm_tpnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고유형명',
  `clmdt` date NOT NULL COMMENT '사고일자',
  `rcrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수자명',
  `chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자명',
  `chrps_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자전화지역번호',
  `chrps_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자전화국번',
  `chrps_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자전화일련번호',
  `end_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '종결여부',
  `enddt` date DEFAULT NULL COMMENT '종결일자',
  `woncr_cv_pyamt` decimal(17,2) DEFAULT NULL COMMENT '원화환산지급금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_eout_dc_clm_crst_00` (`dc_plyno`,`rcp_yymm`,`rcp_nv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외식공제사고현황';
