--
-- Table structure for table `com_std_indcd_adm`
--

DROP TABLE IF EXISTS `com_std_indcd_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_std_indcd_adm` (
  `std_ind_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '표준산업분류코드',
  `std_ind_cscnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '표준산업분류코드명',
  `std_ind_csfcd_lvl` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '표준산업분류코드레벨',
  `ppr_std_ind_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위표준산업분류코드',
  `us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`std_ind_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='표준산업코드관리';
