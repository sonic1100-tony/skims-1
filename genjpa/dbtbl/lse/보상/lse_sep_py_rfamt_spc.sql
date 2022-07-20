--
-- Table structure for table `lse_sep_py_rfamt_spc`
--

DROP TABLE IF EXISTS `lse_sep_py_rfamt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_sep_py_rfamt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `sep_amt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분할금구분코드',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `clsdt` date NOT NULL COMMENT '마감일자',
  `t_py_ct` decimal(3,0) NOT NULL COMMENT '총지급횟수',
  `pvpy_ct` decimal(3,0) NOT NULL COMMENT '기지급횟수',
  `nxt_seq_py_seqno` decimal(5,0) NOT NULL COMMENT '다음회차지급순번',
  `nxt_seq_pydt` date NOT NULL COMMENT '다음회차지급일자',
  `t1_per_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '1회당지급금액',
  `prtxt_vl_xiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '명목가치추산보험금',
  `crnt_vl_xiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '현재가치추산보험금',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_sep_py_rfamt_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`sep_amt_flgcd`,`xi_py_spc_seqno`,`cls_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분할지급준비금내역';
