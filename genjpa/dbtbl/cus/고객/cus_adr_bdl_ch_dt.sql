--
-- Table structure for table `cus_adr_bdl_ch_dt`
--

DROP TABLE IF EXISTS `cus_adr_bdl_ch_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_adr_bdl_ch_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_fn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '접수금융기관코드',
  `rcp_yymd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월일',
  `rcp_hmms` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수시분밀리초',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `adr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '주소구분코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `bdl_ch_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄변경상세주소',
  `bld_admno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물관리번호',
  `bdl_ch_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄변경처리결과코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `adr_seqno` decimal(10,0) DEFAULT NULL COMMENT '주소순번',
  `ap_str_dthms` datetime DEFAULT NULL COMMENT '적용시작일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_adr_bdl_ch_dt_00` (`rcp_fn_orgcd`,`rcp_yymd`,`rcp_hmms`,`rsno`,`adr_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주소일괄변경상세';
