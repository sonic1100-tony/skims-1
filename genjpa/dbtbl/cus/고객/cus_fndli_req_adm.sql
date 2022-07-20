--
-- Table structure for table `cus_fndli_req_adm`
--

DROP TABLE IF EXISTS `cus_fndli_req_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fndli_req_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_sno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '접수일련번호',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청기관코드',
  `rq_org_dtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청기관세부명',
  `rq_org_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청기관주소',
  `rq_org_chrnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청기관담당자명',
  `rq_org_chrps_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청기관담당자전화번호',
  `cc_bsc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산출근거',
  `info_us_oj` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정보이용목적',
  `rq_org_dcu_sno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청기관문서일련번호',
  `inq_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회기준구분코드',
  `inq_bj_st` date DEFAULT NULL COMMENT '조회대상시기',
  `inq_bj_clstr` date DEFAULT NULL COMMENT '조회대상종기',
  `inq_stdt` date DEFAULT NULL COMMENT '조회기준일자',
  `rcp_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수방법코드',
  `wrk_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업방법코드',
  `extr_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추출계약상태코드',
  `amt_dl_stncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금액처리기준코드',
  `asr_dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신문서번호',
  `ntclt_ss_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내장발행대상여부',
  `ntclt_ss_grc_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내장발행유예기간코드',
  `ntclt_ss_reqdt` date DEFAULT NULL COMMENT '안내장발행요청일자',
  `ntclt_ssdt` date DEFAULT NULL COMMENT '안내장발행일자',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `rq_dthms` datetime DEFAULT NULL COMMENT '요청일시',
  `prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진행상태코드',
  `wrk_dthms` datetime DEFAULT NULL COMMENT '작업일시',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `asr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회신여부',
  `fndli_of_asrdt` date DEFAULT NULL COMMENT '금융거래정보제공회신일자',
  `hmpag_inq_xcpt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '홈페이지조회제외여부',
  `gp_prs_rcp_sno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '그룹대표접수일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `idx_cus_fndli_req_adm_10` (`rcp_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='금융거래정보요청관리';
