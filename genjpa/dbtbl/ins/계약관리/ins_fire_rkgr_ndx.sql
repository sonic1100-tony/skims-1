--
-- Table structure for table `ins_fire_rkgr_ndx`
--

DROP TABLE IF EXISTS `ins_fire_rkgr_ndx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_fire_rkgr_ndx` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ap_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '적용년도',
  `objno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '물건번호',
  `spcl_bld_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특수건물업종코드',
  `bdr_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신배책업종코드',
  `bldnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물명',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `chkdt` date DEFAULT NULL COMMENT '점검일자',
  `rkgr_ndx` decimal(12,6) DEFAULT NULL COMMENT '위험도지수',
  `safe_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안전등급코드',
  `spcl_bld_dscrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '특수건물할인율',
  `xclc_obj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우량물건여부',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `form_kndnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '양식종류명',
  `ttare` decimal(17,2) DEFAULT '0.00' COMMENT '연면적',
  `fire_rkgr_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화재위험도주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_fire_rkgr_ndx_00` (`ap_yr`,`objno`)
) ENGINE=InnoDB AUTO_INCREMENT=302382 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화재위험도지수';
