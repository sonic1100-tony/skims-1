--
-- Table structure for table `igd_gd_xml_info`
--

DROP TABLE IF EXISTS `igd_gd_xml_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_xml_info` (
  `xml_info_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'XML정보구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '위험유형코드',
  `stdt` date NOT NULL COMMENT '기준일자',
  `xml_rt_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT 'XML요율속성코드',
  `xml_info` longtext COLLATE utf8mb4_bin NOT NULL COMMENT 'XML정보',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`xml_info_flgcd`,`gdcd`,`rk_tpcd`,`stdt`,`xml_rt_atrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품XML정보';
