--
-- Table structure for table `z_sam_stf`
--

DROP TABLE IF EXISTS `z_sam_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_sam_stf` (
  `stfno` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `admr_stfno` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `crnt_orgcd` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `indc_stfno` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `mail_domn` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `mail_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `nm` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `rsno` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inp_usr_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
