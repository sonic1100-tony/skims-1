--
-- Table structure for table `cus_rkvl_st_adm`
--

DROP TABLE IF EXISTS `cus_rkvl_st_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_rkvl_st_adm` (
  `aml_rkvl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AML위험평가구분코드',
  `aml_ctm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AML고객구분코드',
  `aml_psn_gr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AML개인단체구분코드',
  `aml_poct_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AML점수구분코드',
  `aml_cmn_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'AML공통코드',
  `aml_rk_poct` decimal(7,5) DEFAULT NULL COMMENT 'AML위험점수',
  `aml_cmn_cdnm` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AML공통코드명',
  `btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종코드',
  `essn_edd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '필수EDD여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aml_rkvl_flgcd`,`aml_ctm_flgcd`,`aml_psn_gr_flgcd`,`aml_poct_flgcd`,`aml_cmn_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='위험평가기준관리';
