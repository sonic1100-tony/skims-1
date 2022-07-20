--
-- Table structure for table `aud_adt_prg_spc`
--

DROP TABLE IF EXISTS `aud_adt_prg_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_adt_prg_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `adtdt` date NOT NULL COMMENT '감사일자',
  `adt_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사년도',
  `adt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사구분코드',
  `adtno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사번호',
  `adt_seqno` decimal(5,0) NOT NULL COMMENT '감사순번',
  `adt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '감사직원번호',
  `adt_bj_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사대상기관코드',
  `adt_nv_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사조사내용',
  `issu_mtt` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문제사항',
  `indi_mtt` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지적사항',
  `admr_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부서장의견',
  `file_key` decimal(20,0) DEFAULT NULL COMMENT '파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_aud_adt_prg_spc_00` (`adtdt`,`adt_yr`,`adt_flgcd`,`adtno`,`adt_seqno`,`adt_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감사진행내역';
