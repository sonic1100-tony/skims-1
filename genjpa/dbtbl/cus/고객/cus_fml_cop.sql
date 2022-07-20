--
-- Table structure for table `cus_fml_cop`
--

DROP TABLE IF EXISTS `cus_fml_cop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fml_cop` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `fmlno` bigint(20) NOT NULL COMMENT '가족번호',
  `fml_mmb_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가족구성원구분코드',
  `fml_pdt_relcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가족대표자관계코드',
  `fml_lvtg_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '가족동거여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fml_cop_00` (`ctmno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가족구성';
