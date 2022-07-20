--
-- Table structure for table `ins_cr_pty_nd_prm`
--

DROP TABLE IF EXISTS `ins_cr_pty_nd_prm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_pty_nd_prm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `crdt` date DEFAULT NULL COMMENT '발생일자',
  `pty_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '추징보험료',
  `incm_prm_cr_seqno` decimal(5,0) DEFAULT NULL COMMENT '수입보험료발생순번',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `prm_diss_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료분해대상여부',
  `prm_diss_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료분해여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_pty_nd_prm_00` (`plyno`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약추징미처리보험료';
