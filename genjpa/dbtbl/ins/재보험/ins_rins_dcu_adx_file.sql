--
-- Table structure for table `ins_rins_dcu_adx_file`
--

DROP TABLE IF EXISTS `ins_rins_dcu_adx_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_dcu_adx_file` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rins_dcu_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험문서번호',
  `rcv_plac_gp_seqno` decimal(5,0) NOT NULL COMMENT '수신처그룹순번',
  `adx_file_seqno` decimal(3,0) NOT NULL COMMENT '첨부파일순번',
  `bsnno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무번호',
  `dcu_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서분류코드',
  `bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_dcu_adx_file_00` (`rins_dcu_no`,`rcv_plac_gp_seqno`,`adx_file_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험문서첨부파일';
