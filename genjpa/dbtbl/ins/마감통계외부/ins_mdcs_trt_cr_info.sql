--
-- Table structure for table `ins_mdcs_trt_cr_info`
--

DROP TABLE IF EXISTS `ins_mdcs_trt_cr_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mdcs_trt_cr_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mdcs_tlm_opndt` date NOT NULL COMMENT '의료비전문개시일자',
  `mdcs_tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비전문관리번호',
  `mdcs_tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '의료비전문전송순번',
  `mdcs_cr_seqno` decimal(3,0) NOT NULL COMMENT '의료비계약순번',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험회사코드',
  `mdcs_trt_plyno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비특약증권번호',
  `mdcs_trt_ins_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비특약보험구분코드',
  `mdcs_trt_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비특약계약상태코드',
  `mdcs_trt_ndsno` decimal(5,0) DEFAULT NULL COMMENT '의료비특약배서번호',
  `nds_stdt` date DEFAULT NULL COMMENT '배서기준일자',
  `nds_apdt` date DEFAULT NULL COMMENT '배서승인일자',
  `de_iamto_pfb_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사망보험금외수익자주민번호',
  `pfbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자명',
  `mdcs_trt_opndt` date DEFAULT NULL COMMENT '의료비특약개시일자',
  `nddt` date DEFAULT NULL COMMENT '종료일자',
  `rvidt` date DEFAULT NULL COMMENT '부활일자',
  `mdcs_trt_t_isamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '의료비특약총가입금액',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `ins_gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험상품명',
  `crt_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자주민사업자번호',
  `crt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자성명',
  `mdcs_trt_cvr_ct` decimal(2,0) DEFAULT NULL COMMENT '의료비특약담보건수',
  `mdcs_trt_ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비특약보험종목코드',
  `cr_stadt` date DEFAULT NULL COMMENT '계약상태일자',
  `mdcs_trt_ins_gdcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비특약보험상품코드',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_mdcs_trt_cr_info_00` (`mdcs_tlm_opndt`,`mdcs_tlm_admno`,`mdcs_tlm_ts_seqno`,`mdcs_cr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1728 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료비특약계약정보';
