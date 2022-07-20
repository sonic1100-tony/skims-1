--
-- Table structure for table `cus_ntp_fd_info`
--

DROP TABLE IF EXISTS `cus_ntp_fd_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ntp_fd_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ntp_cd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '기업코드',
  `st_rato_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기준이율종류코드',
  `slamt` decimal(15,0) DEFAULT NULL COMMENT '매출액',
  `net_pft` decimal(15,0) DEFAULT NULL COMMENT '순이익',
  `t_ase` decimal(15,0) DEFAULT NULL COMMENT '총자산',
  `debt_iht_amt` decimal(15,0) DEFAULT NULL COMMENT '부채상속액',
  `capt` decimal(15,0) DEFAULT NULL COMMENT '자본금',
  `crp_txamt` decimal(15,0) DEFAULT NULL COMMENT '법인세액',
  `adt_ctncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사의견코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ntp_fd_info_00` (`ntp_cd`,`st_rato_kndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기업자금정보';
