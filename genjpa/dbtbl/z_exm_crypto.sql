--
-- Table structure for table `z_exm_crypto`
--

DROP TABLE IF EXISTS `z_exm_crypto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_exm_crypto` (
  `no` bigint(20) NOT NULL,
  `plain_value` mediumtext COLLATE utf8mb4_bin,
  `direct_enc_value` mediumtext COLLATE utf8mb4_bin,
  `writer_enc_value` mediumtext COLLATE utf8mb4_bin,
  `mapper_enc_value` mediumtext COLLATE utf8mb4_bin,
  `repository_enc_value` mediumtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
