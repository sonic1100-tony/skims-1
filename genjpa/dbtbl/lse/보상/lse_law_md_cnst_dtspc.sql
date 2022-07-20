--
-- Table structure for table `lse_law_md_cnst_dtspc`
--

DROP TABLE IF EXISTS `lse_law_md_cnst_dtspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_law_md_cnst_dtspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `requ_seqno` decimal(5,0) NOT NULL COMMENT '의뢰순번',
  `ch_seq` decimal(10,0) NOT NULL COMMENT '변경회차',
  `lsetm_rqst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사질의구분코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `crdt` date DEFAULT NULL COMMENT '발생일자',
  `note_1` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고1',
  `note_2` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고2',
  `note_3` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고3',
  `note_4` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고4',
  `note_5` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고5',
  `et_dt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타상세내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_law_md_cnst_dtspc_00` (`rcp_yymm`,`rcp_nv_seqno`,`requ_seqno`,`ch_seq`,`lsetm_rqst_flgcd`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법률의료자문상세내역';
