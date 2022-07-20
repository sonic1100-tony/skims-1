--
-- Table structure for table `z_sam_org`
--

DROP TABLE IF EXISTS `z_sam_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_sam_org` (
  `orgcd` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `org_flgcd` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `orgnm` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ppr_orgcd` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inp_usr_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
