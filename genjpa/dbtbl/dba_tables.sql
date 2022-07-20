--
-- Table structure for table `dba_tables`
--

DROP TABLE IF EXISTS `dba_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dba_tables` (
  `table_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `use_type` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `truncatable` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
