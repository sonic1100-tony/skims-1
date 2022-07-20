--
-- Table structure for table `ins_auto_tf_schd`
--

DROP TABLE IF EXISTS `ins_auto_tf_schd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_auto_tf_schd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tf_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '이체년월',
  `tf_daycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체일코드',
  `tf_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체유형코드',
  `dm_wrkdt` date NOT NULL COMMENT '청구작업일자',
  `tfdt` date NOT NULL COMMENT '이체일자',
  `dp_wrkdt` date NOT NULL COMMENT '입금작업일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_auto_tf_schd_00` (`tf_yymm`,`tf_daycd`,`tf_tpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동이체일정';
