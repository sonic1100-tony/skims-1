--
-- Table structure for table `igd_dsas_flgcd_temp`
--

DROP TABLE IF EXISTS `igd_dsas_flgcd_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_dsas_flgcd_temp` (
  `dsas_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질병구분코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `lsetm_bsns_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손사업무유형코드',
  `dsas_flgnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '질병구분명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dsas_flgcd`,`ap_strdt`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='질병구분관계';
