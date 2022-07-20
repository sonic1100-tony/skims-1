--
-- Table structure for table `lse_cnr_cl_dvmrt`
--

DROP TABLE IF EXISTS `lse_cnr_cl_dvmrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cnr_cl_dvmrt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `clmnv_cmp_cnr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사보상센터기관코드',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `clmnv_cpent_vl_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고조사협력업체평가등급코드',
  `cpent_dv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '협력업체배당구분코드',
  `clmnv_dvmrt` decimal(5,2) NOT NULL COMMENT '사고조사배당율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cnr_cl_dvmrt_00` (`clmnv_cmp_cnr_orgcd`,`ap_nd_dthms`,`ap_str_dthms`,`clmnv_cpent_vl_grdcd`,`cpent_dv_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='센터별배당율';
