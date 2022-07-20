--
-- Table structure for table `ins_nrdps_tisrd_nt_spc`
--

DROP TABLE IF EXISTS `ins_nrdps_tisrd_nt_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nrdps_tisrd_nt_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `nt_seqno` decimal(5,0) NOT NULL COMMENT '통지순번',
  `rprnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통보자명',
  `nt_dt` date DEFAULT NULL COMMENT '통지일자',
  `nt_bj_st` date DEFAULT NULL COMMENT '통지대상시기',
  `nt_bj_clstr` date DEFAULT NULL COMMENT '통지대상종기',
  `nrdps_adm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자관리방법코드',
  `nrdct` decimal(9,0) DEFAULT NULL COMMENT '피보험자수',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_nrdps_tisrd_nt_spc_00` (`plyno`,`nt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피보험자부보자통지내역';
