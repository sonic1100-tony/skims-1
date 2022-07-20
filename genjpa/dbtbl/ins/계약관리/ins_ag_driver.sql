--
-- Table structure for table `ins_ag_driver`
--

DROP TABLE IF EXISTS `ins_ag_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ag_driver` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ppr_plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '상위증권번호',
  `rgt_seqno` decimal(3,0) NOT NULL COMMENT '등록순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ispl_agre_dthms` datetime DEFAULT NULL COMMENT '가입설계동의일시',
  `crcc_agre_dthms` datetime DEFAULT NULL COMMENT '계약체결동의일시',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_ag_driver_00` (`ppr_plyno`,`rgt_seqno`,`ctmno`)
) ENGINE=InnoDB AUTO_INCREMENT=452 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대리운전기사';
