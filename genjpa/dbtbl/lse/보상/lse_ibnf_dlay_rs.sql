--
-- Table structure for table `lse_ibnf_dlay_rs`
--

DROP TABLE IF EXISTS `lse_ibnf_dlay_rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ibnf_dlay_rs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `spc_seqno` decimal(5,0) NOT NULL COMMENT '내역순번',
  `dcu_insfc_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서류미비사유',
  `dcu_insfc_strdt` date DEFAULT NULL COMMENT '서류미비시작일자',
  `dcu_insfc_nddt` date DEFAULT NULL COMMENT '서류미비종료일자',
  `dcu_insfc_xcpt_days` decimal(5,0) DEFAULT NULL COMMENT '서류미비제외일수',
  `nv_rejet_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사거부내용',
  `nv_rejet_xcpt_strdt` date DEFAULT NULL COMMENT '조사거부제외시작일자',
  `nv_rejet_xcpt_nddt` date DEFAULT NULL COMMENT '조사거부제외종료일자',
  `nv_rejet_xcpt_days` decimal(5,0) DEFAULT NULL COMMENT '조사거부제외일수',
  `et_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타내용',
  `et_cn_xcpt_strdt` date DEFAULT NULL COMMENT '기타내용제외시작일자',
  `et_cn_xcpt_nddt` date DEFAULT NULL COMMENT '기타내용제외종료일자',
  `et_cn_xcpt_days` decimal(5,0) DEFAULT NULL COMMENT '기타내용제외일수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ibnf_dlay_rs_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험금지연사유';
