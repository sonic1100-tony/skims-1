--
-- Table structure for table `fin_vnc_as_dot`
--

DROP TABLE IF EXISTS `fin_vnc_as_dot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_vnc_as_dot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `vnccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'VAN사코드',
  `ans_sccct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '응답성공건수',
  `ans_faict` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '응답실패건수',
  `as_rank_dgrm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '배정순위표',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_vnc_as_dot_00` (`stdt`,`vnccd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='VAN사배정일계';
