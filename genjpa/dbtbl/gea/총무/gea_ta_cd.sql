--
-- Table structure for table `gea_ta_cd`
--

DROP TABLE IF EXISTS `gea_ta_cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ta_cd` (
  `ta_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '총무분류코드',
  `ta_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '총무코드',
  `ta_cdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총무코드명',
  `ta_cdvl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총무코드값',
  `ta_cd_numvl` decimal(15,2) DEFAULT NULL COMMENT '총무코드숫자값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ta_csfcd`,`ta_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='총무코드';
