--
-- Table structure for table `ins_ps_cst_cr_spc`
--

DROP TABLE IF EXISTS `ins_ps_cst_cr_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ps_cst_cr_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ps_cstno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보유품의번호',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `lb_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배상구분코드',
  `cmp_lmamt_unt` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상한도금액단위',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `thcp_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당사가입금액',
  `thcp_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당사보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ps_cst_cr_spc_00` (`ps_cstno`,`rk_tpcd`,`cvrcd`,`lb_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보유품의계약내역';
