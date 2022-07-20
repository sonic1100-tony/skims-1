--
-- Table structure for table `z_exm_sample_backup`
--

DROP TABLE IF EXISTS `z_exm_sample_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_exm_sample_backup` (
  `id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력사용자id',
  `inp_dthms` datetime DEFAULT NULL COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정사용자id',
  `mdf_dthms` datetime DEFAULT NULL COMMENT '수정일시',
  `name` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `long_number` decimal(15,0) DEFAULT NULL,
  `double_number` double DEFAULT NULL,
  `big_decimal` decimal(15,0) DEFAULT NULL,
  `sql_date` datetime DEFAULT NULL,
  `util_date` datetime DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin,
  `local_date_time` datetime DEFAULT NULL,
  `local_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_z_exm_sample_backup_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='z_샘플_백업';
