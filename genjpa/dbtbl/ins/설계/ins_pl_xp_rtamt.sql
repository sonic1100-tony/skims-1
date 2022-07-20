--
-- Table structure for table `ins_pl_xp_rtamt`
--

DROP TABLE IF EXISTS `ins_pl_xp_rtamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_xp_rtamt` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `rtamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '환급금구분코드',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `rtn_crdt` date NOT NULL COMMENT '환급발생일자',
  `pym_prm` decimal(17,2) NOT NULL COMMENT '납입보험료',
  `lgrat_rtamt` decimal(15,0) NOT NULL COMMENT '최저보증이율환급금액',
  `lgrat_rtn_rate` decimal(12,6) NOT NULL COMMENT '최저보증이율환급률',
  `avg_dcl_rato_rtamt` decimal(15,0) NOT NULL COMMENT '평균공시이율환급금액',
  `avg_dcl_rato_rtn_rate` decimal(12,6) NOT NULL COMMENT '평균공시이율환급률',
  `aprat_rtamt` decimal(15,0) NOT NULL COMMENT '적용이율환급금액',
  `aprat_rtn_rate` decimal(12,6) NOT NULL COMMENT '적용이율환급률',
  `rtamt_cr_stdt` date NOT NULL COMMENT '환급금발생기준일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`rtamt_flgcd`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계예상환급금';
