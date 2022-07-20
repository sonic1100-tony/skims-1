--
-- Table structure for table `ccm_bd_par_dgn_it_ais`
--

DROP TABLE IF EXISTS `ccm_bd_par_dgn_it_ais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_bd_par_dgn_it_ais` (
  `dgn_parcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단부위코드',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `aiscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AIS코드',
  `dgn_par_lnrfg_yncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단부위좌우구분여부코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dgn_parcd`,`dgncd`,`aiscd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신체부위진단항목AIS';
