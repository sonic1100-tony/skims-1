--
-- Table structure for table `lse_cvrcl_dv_st`
--

DROP TABLE IF EXISTS `lse_cvrcl_dv_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cvrcl_dv_st` (
  `cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고구분코드',
  `dv_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배당담보구분코드',
  `dv_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배당담보코드',
  `dv_cvr_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배당담보대분류코드',
  `dv_cvr_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배당담보중분류코드',
  `dv_cvr_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배당담보소분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cr_clm_flgcd`,`dv_cvr_flgcd`,`dv_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담보별배당기준';
