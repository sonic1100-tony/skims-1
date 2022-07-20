--
-- Table structure for table `igd_gd_sl_cvrcd`
--

DROP TABLE IF EXISTS `igd_gd_sl_cvrcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_sl_cvrcd` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `cvr_kornm` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '담보한글명',
  `cvr_ennm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보영문명',
  `cvr_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보설명',
  `isamt_rt` decimal(12,6) NOT NULL COMMENT '가입금액비율',
  `pyaf_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급후상태코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`sl_cvrcd`,`cvrcd`,`ap_strdt`),
  KEY `idx_igd_gd_sl_cvrcd_10` (`cvrcd`,`pyaf_stcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품판매담보코드';
