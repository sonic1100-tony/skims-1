--
-- Table structure for table `ins_pl_oj_tp_peamt`
--

DROP TABLE IF EXISTS `ins_pl_oj_tp_peamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_oj_tp_peamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rel_bjpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '관계대상코드',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `oj_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '목적물유형코드',
  `olcrr_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '구이력순번',
  `peamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '질권금액',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `pr_es_nddt` date DEFAULT NULL COMMENT '질권설정종료일자',
  `pr_es_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질권설정상태코드',
  `pr_es_strdt` date DEFAULT NULL COMMENT '질권설정시작일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_oj_tp_peamt_00` (`rel_bjpcd`,`plno`,`cgaf_ch_seqno`,`relpc_seqno`,`oj_tpcd`,`olcrr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계목적물유형질권금액';
