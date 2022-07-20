--
-- Table structure for table `lse_dsas_sct_adm`
--

DROP TABLE IF EXISTS `lse_dsas_sct_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dsas_sct_adm` (
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) NOT NULL COMMENT '진단코드일련번호',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `dgnnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단명',
  `dsas_sctnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병구간명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dgncd`,`dgncd_sno`,`ap_str_dthms`,`ap_nd_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='질병구간관리';
