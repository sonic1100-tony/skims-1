--
-- Table structure for table `igd_sl_cvr`
--

DROP TABLE IF EXISTS `igd_sl_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_sl_cvr` (
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `sl_cvr_kornm` varchar(150) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보한글명',
  `sl_cvr_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매담보영문명',
  `sl_cvr_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매담보설명',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL COMMENT '유효종료일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`sl_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='판매담보';
