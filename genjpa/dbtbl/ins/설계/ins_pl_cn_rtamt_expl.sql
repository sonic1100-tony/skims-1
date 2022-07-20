--
-- Table structure for table `ins_pl_cn_rtamt_expl`
--

DROP TABLE IF EXISTS `ins_pl_cn_rtamt_expl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cn_rtamt_expl` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `rndtm_mc` decimal(5,0) NOT NULL COMMENT '경과기간월수',
  `lowt_gu_rato` decimal(12,6) NOT NULL COMMENT '최저보증이율',
  `avg_dcl_rato` decimal(12,6) NOT NULL COMMENT '평균공시이율',
  `ap_rato` decimal(12,6) NOT NULL COMMENT '적용이율',
  `pym_prm` decimal(17,2) NOT NULL COMMENT '납입보험료',
  `lgrat_rtamt` decimal(15,0) NOT NULL COMMENT '최저보증이율환급금액',
  `lgrat_rtn_rate` decimal(12,6) DEFAULT NULL COMMENT '최저보증이율환급률',
  `avg_dcl_rato_rtamt` decimal(15,0) NOT NULL COMMENT '평균공시이율환급금액',
  `avg_dcl_rato_rtn_rate` decimal(12,6) DEFAULT NULL COMMENT '평균공시이율환급률',
  `aprat_rtamt` decimal(15,0) NOT NULL COMMENT '적용이율환급금액',
  `aprat_rtn_rate` decimal(12,6) DEFAULT NULL COMMENT '적용이율환급률',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`rndtm_mc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계해지환급금예시';
