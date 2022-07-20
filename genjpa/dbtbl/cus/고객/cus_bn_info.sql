--
-- Table structure for table `cus_bn_info`
--

DROP TABLE IF EXISTS `cus_bn_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bn_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prs_btpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대표업종코드',
  `btpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업종코드',
  `bnnm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bn_info_00` (`prs_btpcd`,`btpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업종정보';
