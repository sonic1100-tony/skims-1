--
-- Table structure for table `cus_stf_wlst_fltr`
--

DROP TABLE IF EXISTS `cus_stf_wlst_fltr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_stf_wlst_fltr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `stf_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원영문명',
  `ntlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국적코드',
  `fltr_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '필터링결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_stf_wlst_fltr_00` (`stdt`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직원WATCH LIST필터링';
