--
-- Table structure for table `ccm_trbl_iq_re_iq`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_re_iq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_re_iq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trbl_iq_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁심의접수번호',
  `dmbil_wrter_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구서작성자명',
  `dm_bsns_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구업무상태코드',
  `re_iq_rcp_dthms` datetime DEFAULT NULL COMMENT '재심의접수일시',
  `dm_wrt_dthms` datetime DEFAULT NULL COMMENT '청구작성일시',
  `re_iq_dm_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재심의청구상태코드',
  `dm_man_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구인회사코드',
  `dm_chps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청구변경자명',
  `cdm_wrter_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구작성자명',
  `cdm_bsns_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구업무상태코드',
  `cdm_rcp_dthms` datetime DEFAULT NULL COMMENT '피청구접수일시',
  `cdm_wrt_dthms` datetime DEFAULT NULL COMMENT '피청구작성일시',
  `cdm_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구상태코드',
  `cdm_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구회사코드',
  `cdm_chps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피청구변경자명',
  `ch_stdt` date DEFAULT NULL COMMENT '변경기준일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iq_re_iq_00` (`trbl_iq_rcpno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의재심의';
