--
-- Table structure for table `ins_pl_hlt_age_ccrst_dt`
--

DROP TABLE IF EXISTS `ins_pl_hlt_age_ccrst_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_hlt_age_ccrst_dt` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `hlt_mdc_itcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '건강검진항목코드',
  `mdc_rstvl` decimal(20,5) DEFAULT NULL COMMENT '검진결과값',
  `rk_dc_ndx` decimal(7,4) NOT NULL COMMENT '위험할인지수',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`relpc_seqno`,`hlt_mdc_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계건강연령산출결과상세';
