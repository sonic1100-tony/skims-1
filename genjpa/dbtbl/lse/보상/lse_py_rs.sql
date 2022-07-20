--
-- Table structure for table `lse_py_rs`
--

DROP TABLE IF EXISTS `lse_py_rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_py_rs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `py_rs_adm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급사유관리구분코드',
  `ibnf_py_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험금지급사유코드',
  `ibnf_py_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금지급사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_py_rs_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`py_rs_adm_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급사유';
