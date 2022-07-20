--
-- Table structure for table `gea_rq_spc_prg_info`
--

DROP TABLE IF EXISTS `gea_rq_spc_prg_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rq_spc_prg_info` (
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) NOT NULL COMMENT '신청내역순번',
  `cr_tndno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '계약입찰번호',
  `spc_seqno` decimal(5,0) NOT NULL COMMENT '내역순번',
  `rq_spc_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청내역진행상태코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqdt`,`rq_seqno`,`rq_spc_seqno`,`cr_tndno`,`spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신청내역진행정보';
