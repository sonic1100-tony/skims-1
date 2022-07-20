--
-- Table structure for table `gea_prts_rq_spc`
--

DROP TABLE IF EXISTS `gea_prts_rq_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prts_rq_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) NOT NULL COMMENT '신청내역순번',
  `spc_seqno` decimal(5,0) NOT NULL COMMENT '내역순번',
  `prts_rq_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인쇄물신청상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_prts_rq_spc_00` (`rqdt`,`rq_seqno`,`rq_spc_seqno`,`spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인쇄물신청내역';
