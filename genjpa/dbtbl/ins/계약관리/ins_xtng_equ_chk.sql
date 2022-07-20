--
-- Table structure for table `ins_xtng_equ_chk`
--

DROP TABLE IF EXISTS `ins_xtng_equ_chk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_xtng_equ_chk` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ap_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '적용년도',
  `objno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '물건번호',
  `xtng_equ_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소화설비종류코드',
  `xtng_equ_seqno` decimal(5,0) NOT NULL COMMENT '소화설비순번',
  `bldnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물명',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `xtng_equ_btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소화설비업종코드',
  `spcl_bld_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특수건물여부',
  `chkdt` date DEFAULT NULL COMMENT '점검일자',
  `dc_ap_part` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할인적용부분',
  `ap_are` decimal(17,2) DEFAULT '0.00' COMMENT '적용면적',
  `dscrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '할인율',
  `xtng_equ_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소화설비주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_xtng_equ_chk_00` (`ap_yr`,`objno`,`xtng_equ_kndcd`,`xtng_equ_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=43632 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소화설비점검';
