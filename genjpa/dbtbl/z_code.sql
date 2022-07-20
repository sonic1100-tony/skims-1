--
-- Table structure for table `z_code`
--

DROP TABLE IF EXISTS `z_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_code` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '그룹코드',
  `cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코드',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '코드',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `cd` (`cd`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
