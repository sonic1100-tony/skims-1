--
-- Table structure for table `ins_bfpl_nc_mtt`
--

DROP TABLE IF EXISTS `ins_bfpl_nc_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bfpl_nc_mtt` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `nc_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항구분코드',
  `qust_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질문항목코드',
  `qust_rpl` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문답변',
  `et_dt_rpl` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타세부답변',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`relpc_seqno`,`nc_mtt_flgcd`,`qust_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계전알릴사항';
