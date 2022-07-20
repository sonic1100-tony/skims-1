--
-- Table structure for table `cus_aml_rpt_xcpt_org`
--

DROP TABLE IF EXISTS `cus_aml_rpt_xcpt_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_aml_rpt_xcpt_org` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `pbc_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '공공기관코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `pbc_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공공기관명',
  `pbc_org_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공공기관분류코드',
  `org_rgt_bsc_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관등록근거내용',
  `org_rgtdt` date DEFAULT NULL COMMENT '기관등록일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_aml_rpt_xcpt_org_00` (`pbc_orgcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='AML보고제외기관';
