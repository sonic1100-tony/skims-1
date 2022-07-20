--
-- Table structure for table `ins_pl_ltrm_cvr`
--

DROP TABLE IF EXISTS `ins_pl_ltrm_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_ltrm_cvr` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `sustd_rt_key_assmb_cd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '표준하체요율KEY조립코드',
  `hlt_age_ap_bf_prm` decimal(17,2) DEFAULT NULL COMMENT '건강연령적용전보험료',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`cvrcd`,`cvr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계장기담보';
