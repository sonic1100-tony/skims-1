--
-- Table structure for table `ccm_cv_obsrt_cal`
--

DROP TABLE IF EXISTS `ccm_cv_obsrt_cal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cv_obsrt_cal` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `cal_seqno` decimal(5,0) NOT NULL COMMENT '계산순번',
  `obs_trm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장해기간구분코드',
  `obs_yyct` decimal(3,0) DEFAULT NULL COMMENT '장해년수',
  `obs_mc` decimal(3,0) DEFAULT NULL COMMENT '장해월수',
  `obsrt` decimal(5,2) NOT NULL COMMENT '장해율',
  `db_obsrt` decimal(5,2) NOT NULL COMMENT '중복장해율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cv_obsrt_cal_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`cc_seq`,`cal_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='환산장해율계산';
