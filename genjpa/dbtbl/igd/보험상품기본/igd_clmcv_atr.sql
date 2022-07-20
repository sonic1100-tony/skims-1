--
-- Table structure for table `igd_clmcv_atr`
--

DROP TABLE IF EXISTS `igd_clmcv_atr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_clmcv_atr` (
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `atrvl` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '속성값',
  `atrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성명',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`clm_cvrcd`,`atrcd`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고담보속성';
