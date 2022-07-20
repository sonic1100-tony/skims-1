--
-- Table structure for table `gea_mvi_crst`
--

DROP TABLE IF EXISTS `gea_mvi_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_mvi_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) NOT NULL COMMENT '신청내역순번',
  `crst_seqno` decimal(5,0) NOT NULL COMMENT '현황순번',
  `fl` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '층',
  `sico` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '호수',
  `mvinm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '입주자명',
  `bzps_bstnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자업태명',
  `bzps_imnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자종목명',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_mvi_crst_00` (`rqdt`,`rq_seqno`,`rq_spc_seqno`,`crst_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='입주현황';
