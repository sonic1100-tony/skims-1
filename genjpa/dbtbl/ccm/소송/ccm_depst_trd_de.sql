--
-- Table structure for table `ccm_depst_trd_de`
--

DROP TABLE IF EXISTS `ccm_depst_trd_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_depst_trd_de` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `depst_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '공탁접수년도',
  `depst_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '공탁접수일련번호',
  `trd_deb_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '제3채무자서열',
  `rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '접수번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_depst_trd_de_00` (`depst_rcp_yr`,`depst_rcp_sno`,`trd_deb_rank`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공탁제3채무';
