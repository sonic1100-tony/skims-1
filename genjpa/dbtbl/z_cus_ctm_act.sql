--
-- Table structure for table `z_cus_ctm_act`
--

DROP TABLE IF EXISTS `z_cus_ctm_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_cus_ctm_act` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL,
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `actno` varchar(48) COLLATE utf8mb4_bin NOT NULL,
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_act_00` (`ctmno`,`bkcd`,`actno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
