--
-- Table structure for table `lse_dsas_udcd_adm`
--

DROP TABLE IF EXISTS `lse_dsas_udcd_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dsas_udcd_adm` (
  `dsacd_ap_dgre` decimal(3,0) NOT NULL COMMENT '질병코드적용차수',
  `dsas_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질병중분류코드',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) NOT NULL COMMENT '진단코드일련번호',
  `dgnnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단명',
  `dgnnm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단명내용',
  `dgn_flg_dsacd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단구분질병코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dsacd_ap_dgre`,`dsas_mdccd`,`dgncd`,`dgncd_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='질병심사코드관리';
