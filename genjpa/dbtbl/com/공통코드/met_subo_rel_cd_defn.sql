--
-- Table structure for table `met_subo_rel_cd_defn`
--

DROP TABLE IF EXISTS `met_subo_rel_cd_defn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_subo_rel_cd_defn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `subo_rel_tpcd` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '종속관계유형코드',
  `lvl_1_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '레벨1세부코드',
  `lvl_2_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '레벨2세부코드',
  `lvl_3_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '레벨3세부코드',
  `lvl_4_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '레벨4세부코드',
  `lvl_5_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '레벨5세부코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_met_subo_rel_cd_defn_00` (`subo_rel_tpcd`,`lvl_1_dtcd`,`lvl_2_dtcd`,`lvl_3_dtcd`,`lvl_4_dtcd`,`lvl_5_dtcd`)
) ENGINE=InnoDB AUTO_INCREMENT=35586 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='종속관계코드정의';
