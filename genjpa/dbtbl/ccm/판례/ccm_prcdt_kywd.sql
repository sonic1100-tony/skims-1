--
-- Table structure for table `ccm_prcdt_kywd`
--

DROP TABLE IF EXISTS `ccm_prcdt_kywd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_prcdt_kywd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법원코드',
  `acdno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '사건번호',
  `kywd` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '키워드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_prcdt_kywd_00` (`crtcd`,`acdno`,`kywd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='판례키워드';
