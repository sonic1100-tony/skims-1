--
-- Table structure for table `ccm_py_dm_nvcs`
--

DROP TABLE IF EXISTS `ccm_py_dm_nvcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_py_dm_nvcs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `trvxp` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '출장비',
  `pkcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '주차비',
  `pln_mvocs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '현장출동비',
  `ictx` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '소득세',
  `rstx` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '주민세',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `aw_tf_stdt` date DEFAULT NULL COMMENT '수당이체기준일자',
  `aw_tf_dthms` datetime DEFAULT NULL COMMENT '수당이체일시',
  `aw_tfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수당이체금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_py_dm_nvcs_00` (`cls_yymm`,`chrps_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급손해조사비';
