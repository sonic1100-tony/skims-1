--
-- Table structure for table `cmp_psinf_us_mktg_utl_spc`
--

DROP TABLE IF EXISTS `cmp_psinf_us_mktg_utl_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_psinf_us_mktg_utl_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `psinf_of_seqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보제공순번',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `psinf_read_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보열람요청여부',
  `psinf_clct_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보수집여부',
  `psinf_ps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보보유여부',
  `psinf_thrps_of_crst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보제3자제공현황여부',
  `psinf_dl_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보처리동의여부',
  `mktg_wdr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅철회여부',
  `wdr_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취하사유',
  `rvsn_ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정정삭제여부',
  `rvsn_ers_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정정삭제사유',
  `dl_st_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래정지여부',
  `dl_st_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리정지사유',
  `inp_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력시간',
  `psinf_scr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보화면구분코드',
  `psinf_us_of_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보이용제공상태구분코드',
  `cnsm_ta_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소비자이관여부',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `fnl_inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종입력직원번호',
  `fnl_iptdt` date DEFAULT NULL COMMENT '최종입력일자',
  `fnl_inp_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종입력시간',
  `batch_exc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배치실행여부',
  `ctm_inq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객조회여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cmp_psinf_us_mktg_utl_spc_00` (`psinf_of_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보이용마케팅활용내역';
