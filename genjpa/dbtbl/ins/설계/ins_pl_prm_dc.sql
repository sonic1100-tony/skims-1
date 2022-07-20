--
-- Table structure for table `ins_pl_prm_dc`
--

DROP TABLE IF EXISTS `ins_pl_prm_dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_prm_dc` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `dc_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '할인종류코드',
  `relpc_oj_seqno` decimal(10,0) DEFAULT NULL COMMENT '관계자목적물순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) DEFAULT NULL COMMENT '담보순번',
  `dscrt` decimal(12,6) NOT NULL COMMENT '할인율',
  `dcamt` decimal(15,0) NOT NULL COMMENT '할인금액',
  `prm_dc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험료할인구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계보험료할인';
