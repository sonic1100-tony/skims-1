--
-- Table structure for table `gea_prv_info`
--

DROP TABLE IF EXISTS `gea_prv_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prv_info` (
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `prv_dthms` datetime NOT NULL COMMENT '결재일시',
  `prv_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '결재기관코드',
  `prv_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재직원번호',
  `prv_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재상태구분코드',
  `prv_xmn_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재검토의견',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqdt`,`rq_seqno`,`prv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='결재정보';
