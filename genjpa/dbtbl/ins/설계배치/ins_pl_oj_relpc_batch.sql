--
-- Table structure for table `ins_pl_oj_relpc_batch`
--

DROP TABLE IF EXISTS `ins_pl_oj_relpc_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_oj_relpc_batch` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `rel_bjpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '관계대상코드',
  `olcrr_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '구이력순번',
  `rel_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관계대상구분코드',
  `peamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '질권금액',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `pr_es_strdt` date DEFAULT NULL COMMENT '질권설정시작일자',
  `pr_es_nddt` date DEFAULT NULL COMMENT '질권설정종료일자',
  `pr_es_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질권설정상태코드',
  `pr_es_mntct` decimal(3,0) DEFAULT NULL COMMENT '질권설정개월수',
  `pr_cnldt` date DEFAULT NULL COMMENT '질권해지일자',
  `pr_es_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질권설정내용',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`relpc_seqno`,`rel_bjpcd`,`olcrr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계목적물관계자_배치';
