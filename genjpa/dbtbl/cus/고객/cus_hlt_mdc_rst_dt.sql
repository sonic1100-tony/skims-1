--
-- Table structure for table `cus_hlt_mdc_rst_dt`
--

DROP TABLE IF EXISTS `cus_hlt_mdc_rst_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_hlt_mdc_rst_dt` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `mdcdt` date NOT NULL COMMENT '검진일자',
  `hlt_mdc_itcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '건강검진항목코드',
  `mdc_rstvl` decimal(20,5) DEFAULT NULL COMMENT '검진결과값',
  `refvl_unt` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고치단위',
  `nml_a_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정상A내용',
  `nml_b_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정상B내용',
  `dsas_dubt_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질환의심내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`ctmno`,`mdcdt`,`hlt_mdc_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='건강검진결과상세';
