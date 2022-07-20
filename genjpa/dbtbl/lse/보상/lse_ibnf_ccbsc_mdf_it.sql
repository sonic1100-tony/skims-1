--
-- Table structure for table `lse_ibnf_ccbsc_mdf_it`
--

DROP TABLE IF EXISTS `lse_ibnf_ccbsc_mdf_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ibnf_ccbsc_mdf_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `ccmtd_seqno` decimal(3,0) NOT NULL COMMENT '산출식순번',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `amt_mdf_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '금액수정사유코드',
  `amt_mdf_dt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '금액수정세부항목코드',
  `chbf_dt_itvl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전세부항목값',
  `chaf_dt_itvl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후세부항목값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ibnf_ccbsc_mdf_it_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`,`ccmtd_seqno`,`ch_seqno`,`amt_mdf_rscd`,`amt_mdf_dt_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험금산출근거수정항목';
