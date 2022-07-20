--
-- Table structure for table `ccm_trbl_iq_ag_drut`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_ag_drut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_ag_drut` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trbl_iq_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁심의접수번호',
  `trbl_iq_dm_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분쟁심의청구상태코드',
  `dmbil_wrter_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구서작성자명',
  `dmbil_wrt_dthms` datetime DEFAULT NULL COMMENT '청구서작성일시',
  `dm_man_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구인회사코드',
  `dm_rcp_dthms` datetime DEFAULT NULL COMMENT '청구접수일시',
  `cdm_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구상태코드',
  `cdm_wrter_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구작성자명',
  `cdm_wrt_dthms` datetime DEFAULT NULL COMMENT '피청구작성일시',
  `cdm_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구회사코드',
  `cdm_rcp_dthms` datetime DEFAULT NULL COMMENT '피청구접수일시',
  `ch_stdt` date DEFAULT NULL COMMENT '변경기준일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iq_ag_drut_00` (`trbl_iq_rcpno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의합의파기';
