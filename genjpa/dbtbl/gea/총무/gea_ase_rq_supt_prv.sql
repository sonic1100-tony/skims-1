--
-- Table structure for table `gea_ase_rq_supt_prv`
--

DROP TABLE IF EXISTS `gea_ase_rq_supt_prv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_rq_supt_prv` (
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `rq_supt_seqno` decimal(3,0) NOT NULL COMMENT '요청지원순번',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `ase_supt_prgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산지원진행코드',
  `prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재직원번호',
  `prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재구분코드',
  `prv_xmn_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재검토의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`reqno`,`rq_supt_seqno`,`prv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산요청지원결재';
