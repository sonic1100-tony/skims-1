--
-- Table structure for table `lse_lw_dlynt`
--

DROP TABLE IF EXISTS `lse_lw_dlynt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lw_dlynt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `nt_cc_seqno` decimal(3,0) NOT NULL COMMENT '이자산출순번',
  `ap_ordr` decimal(5,0) NOT NULL COMMENT '적용순서',
  `ap_rato` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '적용이율',
  `rato_apdt` date NOT NULL COMMENT '이율적용일자',
  `nt_cc_strdt` date NOT NULL COMMENT '이자산출시작일자',
  `nt_cc_nddt` date NOT NULL COMMENT '이자산출종료일자',
  `rnd_days` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '경과일수',
  `dlay_nt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지연이자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lw_dlynt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`,`nt_cc_seqno`,`ap_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소송지연이자';
