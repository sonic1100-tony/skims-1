--
-- Table structure for table `str_cmpln_chrps_es`
--

DROP TABLE IF EXISTS `str_cmpln_chrps_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_cmpln_chrps_es` (
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `cmpln_adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '준법감시관리기관코드',
  `vl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`seq`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='준법감시담당자설정';
