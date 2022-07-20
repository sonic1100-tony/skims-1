--
-- Table structure for table `lse_chnmd_cvr_rmdy_crr`
--

DROP TABLE IF EXISTS `lse_chnmd_cvr_rmdy_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_chnmd_cvr_rmdy_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `chnmd_rmdy_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '한방치료구분코드',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `chnmd_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '한방담보구분코드',
  `rmdy_ct` decimal(3,0) NOT NULL COMMENT '치료횟수',
  `op_ct` decimal(7,0) NOT NULL COMMENT '수술건수',
  `bj_ct` decimal(3,0) NOT NULL COMMENT '대상횟수',
  `remn_ct` decimal(3,0) NOT NULL COMMENT '잔여횟수',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `prcg_cvr_py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선행담보지급여부',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_chnmd_cvr_rmdy_crr_00` (`ctmno`,`chnmd_rmdy_flgcd`,`crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='한방담보치료이력';
