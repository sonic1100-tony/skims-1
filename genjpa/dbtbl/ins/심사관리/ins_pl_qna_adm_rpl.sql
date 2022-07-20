--
-- Table structure for table `ins_pl_qna_adm_rpl`
--

DROP TABLE IF EXISTS `ins_pl_qna_adm_rpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_qna_adm_rpl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `dsacd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질병코드',
  `qust_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '질문ID',
  `dsas_mpp_seqno` decimal(5,0) NOT NULL COMMENT '질병매핑순번',
  `snro_dsacd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시나리오질병코드',
  `ppr_qust_id` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위질문ID',
  `qust_ordr` decimal(5,0) DEFAULT NULL COMMENT '질문순서',
  `rpl_id` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변ID',
  `rpl_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '답변값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Q&A관리답변';
