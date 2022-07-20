--
-- Table structure for table `z_exm_sample_item`
--

DROP TABLE IF EXISTS `z_exm_sample_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_exm_sample_item` (
  `id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `item_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `item_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `item_number` int(11) DEFAULT NULL,
  `item_local_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='z_샘플_item';
