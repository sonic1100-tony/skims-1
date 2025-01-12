--
-- Table structure for table `cus_edd_adm`
--

DROP TABLE IF EXISTS `cus_edd_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_edd_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `edd_admno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT 'EDD관리번호',
  `psn_crp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인법인구분코드',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin NOT NULL COMMENT '한글고객명',
  `eng_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문고객명',
  `ctm_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호구분코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `edd_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'EDD업무구분코드',
  `cnrdt` date NOT NULL COMMENT '계약일자',
  `fnl_vl_grd` decimal(2,0) NOT NULL COMMENT '최종평가등급',
  `rk2_rk_vl_grd` decimal(2,0) NOT NULL COMMENT '2단계위험평가등급',
  `rk2_mntr_vl_grd` decimal(2,0) NOT NULL COMMENT '2단계모니터링평가등급',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dhtrb_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급처기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `rgt_dthms` datetime NOT NULL COMMENT '등록일시',
  `rgtr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '등록자직원번호',
  `strpt_ud_dthms` datetime DEFAULT NULL COMMENT 'STR심사일시',
  `strpt_udwr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'STR심사자직원번호',
  `strpt_ud_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'STR심사의견',
  `strpt_ud_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'STR심사결과코드',
  `dl_fd_wh_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래자금원천내용',
  `dl_fd_sorc_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래자금출처내용',
  `dl_oj_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래목적내용',
  `edd_inp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'EDD입력여부',
  `hamt_ins_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고액보험계약구분코드',
  `dl_fd_sorc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래자금출처구분코드',
  `ins_dl_oj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험거래목적구분코드',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `edd_prv_prg_rkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'EDD결재진행단계코드',
  `edd_auto_aryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'EDD자동승인여부',
  `edd_mntr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'EDD모니터링직원번호',
  `edd_mntr_dt` date DEFAULT NULL COMMENT 'EDD모니터링일자',
  `edd_mntr_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'EDD모니터링의견',
  `edd_mntr_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'EDD모니터링결과코드',
  `wpcnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직장명',
  `bnnm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종명',
  `adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소구분코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규주소구분코드',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `depnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부서명',
  `ptn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직위',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `str_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작전화일련번호',
  `end_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '끝전화일련번호',
  `nlnno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내선번호',
  `prop_crst_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재산현황내용',
  `ntp_sclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기업규모코드',
  `lstst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상장구분코드',
  `fnddt` date DEFAULT NULL COMMENT '설립일자',
  `hmpag_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '홈페이지주소',
  `mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일아이디',
  `mail_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소구분코드',
  `mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일도메인',
  `cmp_spec_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회사특징내용',
  `empct` decimal(7,0) DEFAULT NULL COMMENT '종업원수',
  `mrk_psrt` decimal(7,2) DEFAULT '0.00' COMMENT '시장점유율',
  `rqno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청번호',
  `whpy_rqdt` date DEFAULT NULL COMMENT '제지급신청일자',
  `ssno` decimal(5,0) DEFAULT NULL COMMENT '발행번호',
  `ss_dtno` decimal(3,0) DEFAULT NULL COMMENT '발행세부번호',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '발행후변경순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_edd_adm_00` (`edd_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='EDD관리';
