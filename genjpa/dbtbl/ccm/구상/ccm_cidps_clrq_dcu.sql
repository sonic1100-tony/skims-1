--
-- Table structure for table `ccm_cidps_clrq_dcu`
--

DROP TABLE IF EXISTS `ccm_cidps_clrq_dcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cidps_clrq_dcu` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `clrq_dcu_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '징구서류종류코드',
  `et_dcu` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타서류',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cidps_clrq_dcu_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`cidps_rank`,`clrq_dcu_kndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피구상자징구서류';
