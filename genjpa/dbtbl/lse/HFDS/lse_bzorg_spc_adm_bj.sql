--
-- Table structure for table `lse_bzorg_spc_adm_bj`
--

DROP TABLE IF EXISTS `lse_bzorg_spc_adm_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_bzorg_spc_adm_bj` (
  `adm_bj_no` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '관리대상번호',
  `cer_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집자주민번호',
  `cn_dthms` datetime NOT NULL COMMENT '해지일시',
  `thcp_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '당사여부',
  `siu_nv_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU조사유형코드',
  `ce_stf_bz_atrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집직원영업속성코드',
  `cer_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집자직원번호',
  `cer_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집자성명',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `str_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작전화일련번호',
  `end_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '끝전화일련번호',
  `adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소구분코드',
  `nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규주소구분코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `asso_sno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협회일련번호',
  `adm_rst_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '관리결과내용',
  `asso_no_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협회번호년도',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adm_bj_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업조직특별관리대상';
