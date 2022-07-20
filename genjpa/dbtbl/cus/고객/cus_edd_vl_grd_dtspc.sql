--
-- Table structure for table `cus_edd_vl_grd_dtspc`
--

DROP TABLE IF EXISTS `cus_edd_vl_grd_dtspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_edd_vl_grd_dtspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `edd_admno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT 'EDD관리번호',
  `vl_grd_rk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가등급단계구분코드',
  `vl_grd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가등급구분코드',
  `vl_grd_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가등급세부구분코드',
  `edd_vl_grd` decimal(2,0) DEFAULT NULL COMMENT 'EDD평가등급',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_edd_vl_grd_dtspc_00` (`edd_admno`,`vl_grd_rk_flgcd`,`vl_grd_flgcd`,`vl_grd_dt_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='EDD평가등급세부내역';
