--
-- Table structure for table `gea_hshgd_fixt_ry_info`
--

DROP TABLE IF EXISTS `gea_hshgd_fixt_ry_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_hshgd_fixt_ry_info` (
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) NOT NULL COMMENT '신청내역순번',
  `da_seqno` decimal(7,0) NOT NULL COMMENT '자료순번',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관실체구분코드',
  `chc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변동기관코드',
  `chc_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변동사유코드',
  `ad_chc_qant` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '추가변동수량',
  `qant_chcdt` date DEFAULT NULL COMMENT '수량변동일자',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqdt`,`rq_seqno`,`rq_spc_seqno`,`da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='집기비품회수정보';
