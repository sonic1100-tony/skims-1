--
-- Table structure for table `lse_stf_vl_it`
--

DROP TABLE IF EXISTS `lse_stf_vl_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_stf_vl_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vl_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '평가년월',
  `contr_vl_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '피평가직원번호',
  `vl_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '평가직원번호',
  `vl_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가업무구분코드',
  `cmp_stf_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보상직원평가항목코드',
  `vl_it_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가항목세부코드',
  `cmp_stf_vlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상직원평가코드',
  `vl_poct` decimal(5,0) DEFAULT NULL COMMENT '평가점수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_stf_vl_it_00` (`vl_yymm`,`contr_vl_stfno`,`vl_stfno`,`vl_bsns_flgcd`,`cmp_stf_vl_itcd`,`vl_it_dtcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='직원평가항목';
