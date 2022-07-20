--
-- Table structure for table `lse_oil_unprc_crst`
--

DROP TABLE IF EXISTS `lse_oil_unprc_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_oil_unprc_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `st_sd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '기준시도',
  `oil_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '유류종류코드',
  `oil_unprc` decimal(15,0) NOT NULL COMMENT '유류단가',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_oil_unprc_crst_00` (`st_yymm`,`st_sd`,`oil_kndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유류단가현황';
