--
-- Table structure for table `dba_test`
--

DROP TABLE IF EXISTS `dba_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dba_test` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `col1` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
