--
-- Table structure for table `ccm_schd_adm`
--

DROP TABLE IF EXISTS `ccm_schd_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_schd_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `schd_seqno` decimal(3,0) NOT NULL COMMENT '일정순번',
  `schd_bsns_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일정업무세부구분코드',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `nxtm_dt` date DEFAULT NULL COMMENT '차회일자',
  `schd_adm_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일정관리내용',
  `schd_cnf_dthms` datetime DEFAULT NULL COMMENT '일정확인일시',
  `schd_cnf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일정확인구분코드',
  `schd_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일정상태코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `cnv_rst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화결과여부',
  `adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소구분코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규주소구분코드',
  `rsd_rt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거주반송여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_schd_adm_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`schd_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일정관리';
