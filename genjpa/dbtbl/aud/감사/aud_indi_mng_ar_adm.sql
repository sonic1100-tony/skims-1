--
-- Table structure for table `aud_indi_mng_ar_adm`
--

DROP TABLE IF EXISTS `aud_indi_mng_ar_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_indi_mng_ar_adm` (
  `adt_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사년도',
  `adt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사구분코드',
  `adtno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사번호',
  `adt_seqno` decimal(5,0) NOT NULL COMMENT '감사순번',
  `adt_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사업무구분코드',
  `indi_mtt` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지적사항',
  `o1_indi_mng_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차지적조치구분코드',
  `o2_indi_mng_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차지적조치구분코드',
  `o3_indi_mng_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차지적조치구분코드',
  `adt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사직원번호',
  `mng_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치지점기관코드',
  `file_key` decimal(20,0) DEFAULT NULL COMMENT '파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adt_yr`,`adt_flgcd`,`adtno`,`adt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지적조치정리관리';
