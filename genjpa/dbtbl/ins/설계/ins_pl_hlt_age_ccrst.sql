--
-- Table structure for table `ins_pl_hlt_age_ccrst`
--

DROP TABLE IF EXISTS `ins_pl_hlt_age_ccrst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_hlt_age_ccrst` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `hlt_age_cc_dt` date NOT NULL COMMENT '건강연령산출일자',
  `mdcdt` date DEFAULT NULL COMMENT '검진일자',
  `hlt_mdc_vald_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '건강검진유효여부',
  `hlt_age_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '건강연령유형코드',
  `dc_age` decimal(3,0) DEFAULT NULL COMMENT '할인연령',
  `rk_dc_ndx` decimal(7,4) DEFAULT NULL COMMENT '위험할인지수',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`relpc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계건강연령산출결과';
