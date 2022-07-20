--
-- Table structure for table `aud_adt_lc`
--

DROP TABLE IF EXISTS `aud_adt_lc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_adt_lc` (
  `adt_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사년도',
  `adt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사구분코드',
  `adtno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사번호',
  `adt_knd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사종류구분코드',
  `adt_ty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사형태구분코드',
  `adtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사명',
  `adt_xec_strdt` date DEFAULT NULL COMMENT '감사실시시작일자',
  `adt_xec_nddt` date DEFAULT NULL COMMENT '감사실시종료일자',
  `adt_bj_strdt` date DEFAULT NULL COMMENT '감사대상시작일자',
  `adt_bj_nddt` date DEFAULT NULL COMMENT '감사대상종료일자',
  `file_key` decimal(20,0) DEFAULT NULL COMMENT '파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adt_yr`,`adt_flgcd`,`adtno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감사착수';
