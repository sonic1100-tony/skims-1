--
-- Table structure for table `str_aw_py_spc`
--

DROP TABLE IF EXISTS `str_aw_py_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_aw_py_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `pydt` date NOT NULL COMMENT '지급일자',
  `nprpn_av_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '비비례성실적년월',
  `psgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '소속기관코드',
  `rcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환수금액',
  `aw_mncs_itg_uiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수당운영비보전공제금액',
  `bz_atrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업속성코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_aw_py_spc_00` (`stfno`,`pydt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수당지급내역';
