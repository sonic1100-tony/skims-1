--
-- Table structure for table `gea_fnd_ldg`
--

DROP TABLE IF EXISTS `gea_fnd_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_fnd_ldg` (
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `orgn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '조직기관코드',
  `fnd_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기금종류코드',
  `asamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배정금액',
  `mramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '모금금액',
  `xcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '집행금액',
  `cfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이월금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yr`,`orgn_orgcd`,`fnd_kndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기금원장';
