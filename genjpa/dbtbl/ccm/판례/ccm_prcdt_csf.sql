--
-- Table structure for table `ccm_prcdt_csf`
--

DROP TABLE IF EXISTS `ccm_prcdt_csf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_prcdt_csf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `acdno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '사건번호',
  `prcdt_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판례대분류코드',
  `prcdt_mdccd_1` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판례중분류코드1',
  `prcdt_mdccd_2` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판례중분류코드2',
  `prcdt_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판례소분류코드',
  `crtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법원코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_prcdt_csf_00` (`acdno`,`prcdt_lclcd`,`prcdt_mdccd_1`,`prcdt_mdccd_2`,`prcdt_smccd`,`crtcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='판례분류';
