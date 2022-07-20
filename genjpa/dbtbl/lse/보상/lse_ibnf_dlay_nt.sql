--
-- Table structure for table `lse_ibnf_dlay_nt`
--

DROP TABLE IF EXISTS `lse_ibnf_dlay_nt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ibnf_dlay_nt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `nt_cc_seqno` decimal(3,0) NOT NULL COMMENT '이자산출순번',
  `nt_cc_strdt` date NOT NULL COMMENT '이자산출시작일자',
  `nt_cc_nddt` date NOT NULL COMMENT '이자산출종료일자',
  `t_rnd_days` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '총경과일수',
  `rnd_yyct` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '경과년수',
  `rnd_days` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '경과일수',
  `ap_rato` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '적용이율',
  `dlay_nt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지연이자',
  `woncv_dlay_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산지연이자',
  `dlay_nt_np_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연이자미지급사유코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ibnf_dlay_nt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`,`nt_cc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험금지연이자';
