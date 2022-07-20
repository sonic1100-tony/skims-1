--
-- Table structure for table `z_contract`
--

DROP TABLE IF EXISTS `z_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_contract` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=535 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
