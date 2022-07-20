--
-- Table structure for table `ccm_cidps_prop`
--

DROP TABLE IF EXISTS `ccm_cidps_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cidps_prop` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `cidps_prop_seqno` decimal(3,0) NOT NULL COMMENT '피구상자재산순번',
  `cidps_prop_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자재산구분코드',
  `lh_mr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전세월세구분코드',
  `is_ct` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입건수',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `idm_dwel_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상주거형태코드',
  `pysz` decimal(5,0) DEFAULT NULL COMMENT '평수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cidps_prop_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`cidps_rank`,`cidps_prop_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피구상자재산';
