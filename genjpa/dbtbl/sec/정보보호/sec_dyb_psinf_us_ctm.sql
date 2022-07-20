--
-- Table structure for table `sec_dyb_psinf_us_ctm`
--

DROP TABLE IF EXISTS `sec_dyb_psinf_us_ctm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_dyb_psinf_us_ctm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `stdt` date NOT NULL COMMENT '기준일자',
  `psinf_sys_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보시스템구분코드',
  `onl_pg_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '온라인프로그램유형코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `tot_seqno` decimal(5,0) NOT NULL COMMENT '집계순번',
  `ctm_seqno` decimal(5,0) NOT NULL COMMENT '고객순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '성명',
  `brth` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '생년월일',
  `hp_tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '휴대폰전화국번',
  `hp_tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '휴대폰전화지역번호',
  `hp_tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '휴대폰전화일련번호',
  `scr_eng_pg_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '화면영문프로그램명',
  `scr_hngl_pg_nm` varchar(150) COLLATE utf8mb4_bin NOT NULL COMMENT '화면한글프로그램명',
  `ctm_info_srv_id` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객정보서비스ID',
  `srv_func_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '서비스함수유형코드',
  `ctm_info_srv_func` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객정보서비스함수',
  `ip_adr` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT 'IP주소',
  `nhgst_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차상위기관코드',
  `ppr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관코드',
  `crnt_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '현재기관코드',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sec_dyb_psinf_us_ctm_00` (`st_yymm`,`stdt`,`psinf_sys_flgcd`,`onl_pg_tpcd`,`stfno`,`tot_seqno`,`ctm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일별개인정보사용고객';
