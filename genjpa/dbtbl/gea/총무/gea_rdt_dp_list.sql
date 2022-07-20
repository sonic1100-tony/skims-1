--
-- Table structure for table `gea_rdt_dp_list`
--

DROP TABLE IF EXISTS `gea_rdt_dp_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rdt_dp_list` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `ase_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산유형코드',
  `pter_cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기말취득가액',
  `pter_sramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기말잔존가액',
  `cutnd_incrp_cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말증가분취득가액',
  `cutnd_wstqn_cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말폐기분취득가액',
  `cutnd_wstqn_sramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말폐기분잔존가액',
  `cutnd_rdt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말감가상각비',
  `cm_rdt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월감가상각비',
  `cutnd_cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말취득가액',
  `cutnd_sramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말잔존가액',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_rdt_dp_list_00` (`st_yymm`,`ase_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감가상각명세';
