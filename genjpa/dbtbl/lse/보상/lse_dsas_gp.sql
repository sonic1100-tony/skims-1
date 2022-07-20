--
-- Table structure for table `lse_dsas_gp`
--

DROP TABLE IF EXISTS `lse_dsas_gp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dsas_gp` (
  `dsas_gp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질병그룹구분코드',
  `dsas_gpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질병그룹코드',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) NOT NULL COMMENT '진단코드일련번호',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`dsas_gp_flgcd`,`dsas_gpcd`,`dgncd`,`dgncd_sno`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='질병그룹';
