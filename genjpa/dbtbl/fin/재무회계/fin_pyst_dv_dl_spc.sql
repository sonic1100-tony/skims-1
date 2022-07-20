--
-- Table structure for table `fin_pyst_dv_dl_spc`
--

DROP TABLE IF EXISTS `fin_pyst_dv_dl_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_pyst_dv_dl_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `py_st_dv_dlno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '지급정지배분처리번호',
  `pyst_dv_dl_seqno` decimal(5,0) NOT NULL COMMENT '지급정지배분처리순번',
  `bndps_deb_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '채권자채무자구분코드',
  `dv_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배분지급금액',
  `py_crno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '지급발생번호',
  `py_stno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '지급정지번호',
  `pd_dv_rt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '안분배분비율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_pyst_dv_dl_spc_00` (`py_st_dv_dlno`,`pyst_dv_dl_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급정지배분처리내역';
