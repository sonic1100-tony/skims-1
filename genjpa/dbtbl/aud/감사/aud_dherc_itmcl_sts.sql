--
-- Table structure for table `aud_dherc_itmcl_sts`
--

DROP TABLE IF EXISTS `aud_dherc_itmcl_sts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_dherc_itmcl_sts` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관리기관코드',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급지점기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `rtx_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증종류코드',
  `rtn_ct` decimal(9,0) DEFAULT NULL COMMENT '반납건수',
  `nmlct` decimal(9,0) DEFAULT NULL COMMENT '정상건수',
  `dmg_ct` decimal(10,0) DEFAULT NULL COMMENT '서손건수',
  `lss_ct` decimal(9,0) DEFAULT NULL COMMENT '분실건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_aud_dherc_itmcl_sts_00` (`st_yymm`,`adm_orgcd`,`dh_br_orgcd`,`dh_stfno`,`rtx_kndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='취급자별종목별통계';
