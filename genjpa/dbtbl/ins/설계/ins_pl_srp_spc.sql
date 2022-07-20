--
-- Table structure for table `ins_pl_srp_spc`
--

DROP TABLE IF EXISTS `ins_pl_srp_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_srp_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `srpno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT 'SRP번호',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '발행후변경순번',
  `oj_seqno` decimal(5,0) DEFAULT NULL COMMENT '목적물순번',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `vl_it_ap_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가항목적용유형코드',
  `srp_ap_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SRP적용단위코드',
  `vl_it_seqno` decimal(5,0) DEFAULT NULL COMMENT '평가항목순번',
  `vl_st_seqno` decimal(5,0) DEFAULT NULL COMMENT '평가기준순번',
  `dc_xcrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '할인할증율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_srp_spc_00` (`srpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계SRP내역';
