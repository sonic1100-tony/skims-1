--
-- Table structure for table `ins_dvpns_ag_drve_clm`
--

DROP TABLE IF EXISTS `ins_dvpns_ag_drve_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_ag_drve_clm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mn_drv_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주운전자식별번호',
  `clm_dthms` datetime NOT NULL COMMENT '사고일시',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `nrdps_crpno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자법인번호',
  `nrdps_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자사업자번호',
  `owrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보유자코드',
  `mn_drvnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주운전자명',
  `dmamt` decimal(17,2) DEFAULT NULL COMMENT '손해액',
  `dsdt` date DEFAULT NULL COMMENT '결정일자',
  `noflt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무과실여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dvpns_ag_drve_clm_00` (`mn_drv_dscno`,`clm_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대리운전자사고';
