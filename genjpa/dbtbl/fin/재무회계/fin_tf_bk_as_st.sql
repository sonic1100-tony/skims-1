--
-- Table structure for table `fin_tf_bk_as_st`
--

DROP TABLE IF EXISTS `fin_tf_bk_as_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_tf_bk_as_st` (
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '사용여부',
  `vnccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'VAN사코드',
  `as_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배정유형코드',
  `as_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배정기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bkcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='이체은행배정기준';
