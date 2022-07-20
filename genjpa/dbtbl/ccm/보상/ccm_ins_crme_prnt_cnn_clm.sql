--
-- Table structure for table `ccm_ins_crme_prnt_cnn_clm`
--

DROP TABLE IF EXISTS `ccm_ins_crme_prnt_cnn_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ins_crme_prnt_cnn_clm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prnt_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '제보접수년월',
  `prnt_rcp_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '제보접수순번',
  `clm_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '사고순번',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `rgtr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '등록자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_ins_crme_prnt_cnn_clm_00` (`prnt_rcp_yymm`,`prnt_rcp_seqno`,`clm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험범죄제보관련사고';
