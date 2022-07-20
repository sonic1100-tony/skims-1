--
-- Table structure for table `igd_nc_mtt_qusdc`
--

DROP TABLE IF EXISTS `igd_nc_mtt_qusdc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_nc_mtt_qusdc` (
  `qust_dcu_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질문문서유형코드',
  `qust_dcu_tpnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '질문문서유형명',
  `qust_dcu_scr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질문문서화면ID',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '유효종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`qust_dcu_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='알릴사항질문문서';
