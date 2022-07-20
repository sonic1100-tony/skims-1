--
-- Table structure for table `met_cmn_prop`
--

DROP TABLE IF EXISTS `met_cmn_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_cmn_prop` (
  `prop_id` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '속성_ID',
  `prop_val` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '속성_값',
  `prop_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '속성_명',
  `prop_xpnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '속성_설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`prop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공통_속성';
