--
-- Table structure for table `met_subo_rel_tp`
--

DROP TABLE IF EXISTS `met_subo_rel_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_subo_rel_tp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `subo_rel_tpcd` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '종속관계유형코드',
  `subo_rel_tp_xpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '종속관계유형설명',
  `mx_subo_lvl` decimal(1,0) NOT NULL DEFAULT '2' COMMENT '최대종속레벨',
  `lvl_1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '레벨1분류코드',
  `lvl_2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '레벨2분류코드',
  `lvl_3_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨3분류코드',
  `lvl_4_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨4분류코드',
  `lvl_5_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '레벨5분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_met_subo_rel_tp_00` (`subo_rel_tpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='종속관계유형';
