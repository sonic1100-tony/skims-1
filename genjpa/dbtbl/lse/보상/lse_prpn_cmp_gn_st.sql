--
-- Table structure for table `lse_prpn_cmp_gn_st`
--

DROP TABLE IF EXISTS `lse_prpn_cmp_gn_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_prpn_cmp_gn_st` (
  `gn_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보장군코드',
  `gn_cncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보장내용코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gn_grpcd`,`gn_cncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비례보상보장기준';
