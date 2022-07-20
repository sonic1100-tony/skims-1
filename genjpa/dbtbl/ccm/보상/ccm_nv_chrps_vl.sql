--
-- Table structure for table `ccm_nv_chrps_vl`
--

DROP TABLE IF EXISTS `ccm_nv_chrps_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_nv_chrps_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `nv_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조사평가항목코드',
  `nv_vl_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조사평가등급코드',
  `vl_bj_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가대상직원번호',
  `vlr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '평가자직원번호',
  `vldt` date NOT NULL COMMENT '평가일자',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_nv_chrps_vl_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`nv_vl_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='조사담당자평가';
