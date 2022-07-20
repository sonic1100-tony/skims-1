--
-- Table structure for table `ins_ud_cndl_dt_cn`
--

DROP TABLE IF EXISTS `ins_ud_cndl_dt_cn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_cndl_dt_cn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cn_seqno` decimal(5,0) NOT NULL COMMENT '내용순번',
  `cndl_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조건부업무구분코드',
  `cndl_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조건부설계번호',
  `cndl_cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '조건부발행후변경순번',
  `cndl_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조건부증권번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ud_cndl_dt_cn_00` (`plno`,`cgaf_ch_seqno`,`cn_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사조건부상세내용';
