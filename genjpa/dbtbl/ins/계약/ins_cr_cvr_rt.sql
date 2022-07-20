--
-- Table structure for table `ins_cr_cvr_rt`
--

DROP TABLE IF EXISTS `ins_cr_cvr_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_cvr_rt` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `rt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분코드',
  `relpc_oj_seqno` decimal(10,0) DEFAULT NULL COMMENT '관계자목적물순번',
  `oj_seqno` decimal(5,0) DEFAULT NULL COMMENT '목적물순번',
  `rt` decimal(19,7) NOT NULL COMMENT '요율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`ndsno`,`cvrcd`,`cvr_seqno`,`rt_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험계약담보요율';
