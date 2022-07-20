--
-- Table structure for table `ins_bfpl_nc_mtt_atr`
--

DROP TABLE IF EXISTS `ins_bfpl_nc_mtt_atr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bfpl_nc_mtt_atr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `nc_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항구분코드',
  `qust_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질문항목코드',
  `qust_it_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질문항목속성코드',
  `qust_it_atrvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '질문항목속성값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_bfpl_nc_mtt_atr_00` (`plno`,`cgaf_ch_seqno`,`relpc_seqno`,`nc_mtt_flgcd`,`qust_itcd`,`qust_it_atrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계전알릴사항속성';
