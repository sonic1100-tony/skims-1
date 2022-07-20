--
-- Table structure for table `aud_mng_ar_spc`
--

DROP TABLE IF EXISTS `aud_mng_ar_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_mng_ar_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `adt_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사년도',
  `adt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사구분코드',
  `adtno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '감사번호',
  `adt_seqno` decimal(5,0) NOT NULL COMMENT '감사순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `mng_rq_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치요구사항',
  `mng_reqdt` date DEFAULT NULL COMMENT '조치요청일자',
  `mng_rqdt` date DEFAULT NULL COMMENT '조치요구일자',
  `mng_bj_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치대상기관코드',
  `wtop_file_key` decimal(20,0) DEFAULT NULL COMMENT '의견서파일KEY',
  `mng_rq_dcu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치요청문서구분코드',
  `rq_dcu_file_key` decimal(20,0) DEFAULT NULL COMMENT '요청문서파일KEY',
  `indi_ar_mtt` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지적정리사항',
  `ar_rptg_file_key` decimal(20,0) DEFAULT NULL COMMENT '정리보고서파일KEY',
  `ar_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정리기관코드',
  `mng_cpldt` date DEFAULT NULL COMMENT '조치완료일자',
  `indi_mtt_mng_rst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지적사항조치결과구분코드',
  `mng_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_aud_mng_ar_spc_00` (`adt_yr`,`adt_flgcd`,`adtno`,`adt_seqno`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='조치정리내역';
