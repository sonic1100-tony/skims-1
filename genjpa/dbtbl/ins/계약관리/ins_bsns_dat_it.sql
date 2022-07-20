--
-- Table structure for table `ins_bsns_dat_it`
--

DROP TABLE IF EXISTS `ins_bsns_dat_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bsns_dat_it` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bsns_dat_no` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '업무데이터번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `itnm_1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명1',
  `itnm_2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명2',
  `itnm_3` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명3',
  `itnm_4` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명4',
  `itnm_5` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명5',
  `itnm_6` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명6',
  `itnm_7` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명7',
  `itnm_8` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명8',
  `itnm_9` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명9',
  `itnm_10` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명10',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_bsns_dat_it_00` (`bsns_dat_no`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업무데이터항목';
