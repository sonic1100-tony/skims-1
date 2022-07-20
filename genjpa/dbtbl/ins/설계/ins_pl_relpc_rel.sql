--
-- Table structure for table `ins_pl_relpc_rel`
--

DROP TABLE IF EXISTS `ins_pl_relpc_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_relpc_rel` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `st_relpc_seqno` decimal(10,0) NOT NULL COMMENT '기준관계자순번',
  `cnft_relpc_seqno` decimal(10,0) NOT NULL COMMENT '대응관계자순번',
  `st_relpc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기준관계자유형코드',
  `cnft_relpc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대응관계자유형코드',
  `relpc_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자관계코드',
  `de_ibnf_dvrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '사망보험금배분율',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`st_relpc_seqno`,`cnft_relpc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계관계자관계';
