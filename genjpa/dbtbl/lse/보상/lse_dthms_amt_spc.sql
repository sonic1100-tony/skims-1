--
-- Table structure for table `lse_dthms_amt_spc`
--

DROP TABLE IF EXISTS `lse_dthms_amt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dthms_amt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `sep_amt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분할금구분코드',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `claq_pydt` date NOT NULL COMMENT '약관상지급일자',
  `dthms_amt_cc_dt` date NOT NULL COMMENT '일시금산출일자',
  `t1_per_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '1회당지급금액',
  `remn_py_ct` decimal(3,0) NOT NULL COMMENT '잔여지급횟수',
  `ap_rato` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '적용이율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dthms_amt_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`sep_amt_flgcd`,`xi_py_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일시금내역';
