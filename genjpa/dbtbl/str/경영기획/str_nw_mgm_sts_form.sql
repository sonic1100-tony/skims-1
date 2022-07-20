--
-- Table structure for table `str_nw_mgm_sts_form`
--

DROP TABLE IF EXISTS `str_nw_mgm_sts_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_nw_mgm_sts_form` (
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `mgm_sts_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경영통계구분코드',
  `sts_it_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계항목구분코드',
  `mgm_sts_meta_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '경영통계메타구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cy_yr`,`mgm_sts_flgcd`,`sts_it_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신경영통계양식';
