--
-- Table structure for table `lse_siu_co_nv_sptps`
--

DROP TABLE IF EXISTS `lse_siu_co_nv_sptps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_siu_co_nv_sptps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `siu_co_nv_admno` bigint(20) NOT NULL COMMENT 'SIU공동조사관리번호',
  `siu_clm_sptps_seqno` decimal(3,0) NOT NULL COMMENT 'SIU사고혐의자순번',
  `spcn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '혐의구분코드',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민번호',
  `tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '전화일련번호',
  `adr_cn` varchar(280) COLLATE utf8mb4_bin NOT NULL COMMENT '주소내용',
  `clm_ct` decimal(5,0) NOT NULL COMMENT '사고횟수',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_siu_co_nv_sptps_00` (`siu_co_nv_admno`,`siu_clm_sptps_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU공동조사혐의자';
