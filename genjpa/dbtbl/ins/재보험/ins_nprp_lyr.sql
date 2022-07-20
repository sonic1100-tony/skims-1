--
-- Table structure for table `ins_nprp_lyr`
--

DROP TABLE IF EXISTS `ins_nprp_lyr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nprp_lyr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nprp_lyrno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '비비례LAYER번호',
  `nprp_lyr_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '비비례LAYER대상구분코드',
  `nprp_lyr_bjno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '비비례LAYER대상번호',
  `lyr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'LAYER구분코드',
  `xol_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL구분코드',
  `lmamt_mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '한도액화폐코드',
  `lmamt_strvl` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '한도액시작값',
  `lmamt_ndvl` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '한도액종료값',
  `prs_brk` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표브로커',
  `prs_rinsr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표재보험자',
  `xc_rt` decimal(15,7) NOT NULL DEFAULT '0.0000000' COMMENT '정산요율',
  `rpbl_lmamt_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '책임한도액비율',
  `rprm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험료유형코드',
  `thcp_lowt_dpst_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사최저예치보험료',
  `bscrl_lowt_dpst_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '업계최저예치보험료',
  `nprp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비비례여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_nprp_lyr_00` (`nprp_lyrno`)
) ENGINE=InnoDB AUTO_INCREMENT=24305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비비례LAYER';
