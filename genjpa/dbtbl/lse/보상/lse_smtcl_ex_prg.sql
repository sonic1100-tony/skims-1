--
-- Table structure for table `lse_smtcl_ex_prg`
--

DROP TABLE IF EXISTS `lse_smtcl_ex_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_smtcl_ex_prg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ex_prg_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '환입진행상태코드',
  `ex_pramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환입예정금액',
  `examt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환입금액',
  `pend_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '미결금액',
  `dhaf_samp_ud_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사후표본심사오류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_smtcl_ex_prg_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SMARTCLAIM환입진행';
