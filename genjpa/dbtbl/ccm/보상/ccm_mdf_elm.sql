--
-- Table structure for table `ccm_mdf_elm`
--

DROP TABLE IF EXISTS `ccm_mdf_elm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_mdf_elm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `onw_flt_apgr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신구과실적용도구분코드',
  `flt_apgr` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '과실적용도',
  `mdf_elmno` decimal(3,0) NOT NULL COMMENT '수정요소번호',
  `mdf_elmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '수정요소명',
  `atms_btms_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'A차B차구분코드',
  `mdf_elm_gpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정요소그룹코드',
  `mdfrt_mxvl` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '수정율최대값',
  `mdfrt_mnvl` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '수정율최소값',
  `mdf_elm_expcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정요소해설코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_mdf_elm_00` (`onw_flt_apgr_flgcd`,`flt_apgr`,`mdf_elmno`)
) ENGINE=InnoDB AUTO_INCREMENT=16133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수정요소';
