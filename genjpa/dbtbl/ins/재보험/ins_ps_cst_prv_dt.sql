--
-- Table structure for table `ins_ps_cst_prv_dt`
--

DROP TABLE IF EXISTS `ins_ps_cst_prv_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ps_cst_prv_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ps_cstno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보유품의번호',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `psrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '보유율',
  `ps_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보유가입금액',
  `ps_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보유보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ps_cst_prv_dt_00` (`ps_cstno`,`prv_seqno`,`rk_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보유품의결재상세';
