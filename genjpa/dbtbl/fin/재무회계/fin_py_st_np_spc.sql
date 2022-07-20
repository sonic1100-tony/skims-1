--
-- Table structure for table `fin_py_st_np_spc`
--

DROP TABLE IF EXISTS `fin_py_st_np_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_py_st_np_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `py_stno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '지급정지번호',
  `py_crno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '지급발생번호',
  `pyst_bjyn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '지급정지대상여부',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  `cncdt` date DEFAULT NULL COMMENT '해제일자',
  `cnc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해제직원번호',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_py_st_np_spc_00` (`py_stno`,`py_crno`),
  KEY `idx_fin_py_st_np_spc_10` (`py_crno`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급정지미지급내역';
