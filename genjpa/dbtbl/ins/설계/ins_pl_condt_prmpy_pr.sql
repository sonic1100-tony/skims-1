--
-- Table structure for table `ins_pl_condt_prmpy_pr`
--

DROP TABLE IF EXISTS `ins_pl_condt_prmpy_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_condt_prmpy_pr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `seq_db_seqno` decimal(5,0) NOT NULL COMMENT '회차중복순번',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `crt_relpc_seqno` decimal(10,0) NOT NULL COMMENT '계약자관계자순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `mgcmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사회사여부',
  `qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '지분율',
  `prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보험료',
  `woncr_cv_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_condt_prmpy_pr_00` (`seq_db_seqno`,`plno`,`cgaf_ch_seqno`,`pym_seq`,`ptccd`,`crt_relpc_seqno`,`mncd`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계공동인수보험료납입예정';
