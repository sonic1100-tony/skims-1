--
-- Table structure for table `cus_rk_grd_rvl_tot`
--

DROP TABLE IF EXISTS `cus_rk_grd_rvl_tot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_rk_grd_rvl_tot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `edd_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'EDD업무구분코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dhtrb_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급처기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `edd_1_grd_ct` decimal(9,0) NOT NULL DEFAULT '0' COMMENT 'EDD1등급건수',
  `edd_2_grd_ct` decimal(9,0) NOT NULL DEFAULT '0' COMMENT 'EDD2등급건수',
  `edd_3_grd_ct` decimal(9,0) NOT NULL DEFAULT '0' COMMENT 'EDD3등급건수',
  `edd_4_grd_ct` decimal(9,0) NOT NULL DEFAULT '0' COMMENT 'EDD4등급건수',
  `edd_5_grd_ct` decimal(9,0) NOT NULL DEFAULT '0' COMMENT 'EDD5등급건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_rk_grd_rvl_tot_00` (`stdt`,`edd_bsns_flgcd`,`dh_orgcd`,`dhtrb_orgcd`,`dh_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='위험등급재평가집계';
