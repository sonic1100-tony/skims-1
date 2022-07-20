--
-- Table structure for table `gea_prts_adr_adm`
--

DROP TABLE IF EXISTS `gea_prts_adr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prts_adr_adm` (
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `adr_ch_seq` decimal(10,0) NOT NULL COMMENT '주소변경회차',
  `us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용여부',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `adr_onw_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소신구구분코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `pst_sno` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편일련번호',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `radnm_baadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명기본주소',
  `radnm_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명상세주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`orgcd`,`adr_ch_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인쇄물발송주소관리';
