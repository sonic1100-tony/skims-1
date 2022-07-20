--
-- Table structure for table `cus_chn_id`
--

DROP TABLE IF EXISTS `cus_chn_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_chn_id` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `chn_id_flgcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '채널ID구분코드',
  `chn_id` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '채널ID',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_chn_id_00` (`ctmno`,`chn_id_flgcd`),
  KEY `idx_cus_chn_id_01` (`chn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='채널ID';
