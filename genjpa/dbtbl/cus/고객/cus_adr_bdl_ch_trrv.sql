--
-- Table structure for table `cus_adr_bdl_ch_trrv`
--

DROP TABLE IF EXISTS `cus_adr_bdl_ch_trrv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_adr_bdl_ch_trrv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_fn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '접수금융기관코드',
  `rcp_yymd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월일',
  `rcp_hmms` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수시분밀리초',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `rcpdt_dat_seqno` decimal(7,0) DEFAULT NULL COMMENT '접수일자데이터순번',
  `trrv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송수신구분코드',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `rqapl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청인구분코드',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일아이디',
  `mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일도메인',
  `dat_crt_metcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터생성방식코드',
  `bdl_ch_rcp_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄변경접수방법코드',
  `rcp_fnorg_brnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수금융기관지점명',
  `rcp_fnorg_rcrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수금융기관접수자명',
  `rcp_fnorg_rcpr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수금융기관접수자직원번호',
  `dat_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터처리구분코드',
  `rcv_fnorg_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신금융기관코드',
  `rcv_dnld_dthms` datetime DEFAULT NULL COMMENT '수신다운로드일시',
  `fsvs_dat_seqno` decimal(7,0) DEFAULT NULL COMMENT '금감원데이터순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `adr_bdl_ch_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소일괄변경처리구분코드',
  `psn_info_utagr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보활용동의여부',
  `nrept_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미통보여부',
  `adr_ch_rcp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소변경접수구분코드',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자직원번호',
  `file_key` decimal(20,0) DEFAULT NULL COMMENT '파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_adr_bdl_ch_trrv_00` (`rcp_fn_orgcd`,`rcp_yymd`,`rcp_hmms`,`rsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주소일괄변경송수신';
