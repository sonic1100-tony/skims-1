--
-- Table structure for table `lse_rlpmi_joint_rpbl_pyamt`
--

DROP TABLE IF EXISTS `lse_rlpmi_joint_rpbl_pyamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_rlpmi_joint_rpbl_pyamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `py_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급사유코드',
  `trmt_strdt` date DEFAULT NULL COMMENT '진료시작일자',
  `trmt_nddt` date DEFAULT NULL COMMENT '진료종료일자',
  `ibnf_ccmtd_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금산출식내용',
  `ds_ibamt` decimal(15,0) DEFAULT NULL COMMENT '결정보험금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_rlpmi_joint_rpbl_pyamt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실손연대책임지급금액';
