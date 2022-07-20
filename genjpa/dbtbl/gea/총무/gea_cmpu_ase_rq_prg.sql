--
-- Table structure for table `gea_cmpu_ase_rq_prg`
--

DROP TABLE IF EXISTS `gea_cmpu_ase_rq_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cmpu_ase_rq_prg` (
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `prg_seqno` decimal(3,0) NOT NULL COMMENT '진행순번',
  `ase_ch_dl_rkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산변경처리단계코드',
  `ch_prg_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '변경진행상태코드',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`reqno`,`prg_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전산자산요청진행';
