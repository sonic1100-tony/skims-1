--
-- Table structure for table `gd_rt`
--

DROP TABLE IF EXISTS `gd_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gd_rt` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `rt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요율구분코드',
  `rt_itvl_1` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율항목값1',
  `rt_itvl_2` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율항목값2',
  `rt_itvl_3` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율항목값3',
  `rt_itvl_4` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율항목값4',
  `rt_itvl_5` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율항목값5',
  `rt_itvl_6` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율항목값6',
  `rt_itvl_7` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율항목값7',
  `rt_itvl_8` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율항목값8',
  `rt` decimal(19,7) NOT NULL COMMENT '요율',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `idx_gd_rt_10` (`gdcd`,`crr_seqno`,`cvrcd`,`rt_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품요율';
