--
-- Table structure for table `dba_log_sp`
--

DROP TABLE IF EXISTS `dba_log_sp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dba_log_sp` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `exec_time` datetime NOT NULL,
  `table_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `result_code` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `result_message` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `idx_dba_log_sp_01` (`table_name`,`exec_time`)
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
