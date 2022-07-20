--
-- Table structure for table `ccm_flt_chr`
--

DROP TABLE IF EXISTS `ccm_flt_chr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_flt_chr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `onw_flt_apgr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신구과실적용도구분코드',
  `flt_apgr` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '과실적용도',
  `chtnm` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '도표명',
  `flt_clm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '과실사고유형코드',
  `flt_clm_plccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실사고장소코드',
  `clm_crst` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고현황',
  `clm_stt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고상황',
  `chr_expl` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도표해설',
  `atms_ba_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT 'A차기본과실율',
  `btms_ba_fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT 'B차기본과실율',
  `flt_rghmp` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실약도',
  `flt_rghmp_file_pth` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실약도파일경로',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_flt_chr_00` (`onw_flt_apgr_flgcd`,`flt_apgr`)
) ENGINE=InnoDB AUTO_INCREMENT=2928 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='과실도표';
