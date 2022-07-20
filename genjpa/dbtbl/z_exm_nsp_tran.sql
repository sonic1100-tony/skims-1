--
-- Table structure for table `z_exm_nsp_tran`
--

DROP TABLE IF EXISTS `z_exm_nsp_tran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_exm_nsp_tran` (
  `no` bigint(20) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL,
  `result` mediumtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
