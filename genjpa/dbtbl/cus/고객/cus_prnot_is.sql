--
-- Table structure for table `cus_prnot_is`
--

DROP TABLE IF EXISTS `cus_prnot_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_prnot_is` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prnot_itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '출력물품목코드',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `isno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '발급번호',
  `rq_dthms` datetime DEFAULT NULL COMMENT '신청일시',
  `onl_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '온라인신청여부',
  `isdt` date DEFAULT NULL COMMENT '발급일자',
  `is_dthms` datetime DEFAULT NULL COMMENT '발급일시',
  `prs_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표취급직원번호',
  `prnot_trnm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력물전달방법코드',
  `out_mdm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력매체구분코드',
  `is_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `is_bj_st` date DEFAULT NULL COMMENT '발급대상시기',
  `is_bj_clstr` date DEFAULT NULL COMMENT '발급대상종기',
  `rpub_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재발행여부',
  `out_buy` decimal(3,0) DEFAULT NULL COMMENT '출력매수',
  `is_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급기관코드',
  `rgs_sno` decimal(6,0) DEFAULT NULL COMMENT '등기일련번호',
  `ctm_dsc_spc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별내역',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `str_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작전화일련번호',
  `end_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '끝전화일련번호',
  `hp_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰지역번호',
  `hp_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰전화국번',
  `hp_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰전화일련번호',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '발행후변경순번',
  `mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일아이디',
  `mail_domn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일도메인',
  `mdm_seqno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '매체순번',
  `otbnd_scc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '아웃바운드성공여부',
  `otbnd_fail_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '아웃바운드실패사유코드',
  `prnot_save_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력물저장경로',
  `is_cas_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급원인구분코드',
  `out_pth_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력경로구분코드',
  `self_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본인동의여부',
  `ply_rpub_rq_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권재발행요청사유코드',
  `et_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타내용',
  `snddt` date DEFAULT NULL COMMENT '발송일자',
  `sndpl_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송지우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `ri_or_lrdlp` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '리/대량배달처',
  `nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규주소구분코드',
  `road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도로명',
  `undg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지하구분코드',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `sndpl_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송지상세주소',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `rgsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등기번호',
  `rt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반송여부',
  `rtdt` date DEFAULT NULL COMMENT '반송일자',
  `rt_dthms` datetime DEFAULT NULL COMMENT '반송일시',
  `rt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반송사유코드',
  `rtrs_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반송사유내용',
  `rt_mngcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반송조치코드',
  `rt_mngdt` date DEFAULT NULL COMMENT '반송조치일자',
  `rt_mng_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반송조치직원번호',
  `auth_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증방법코드',
  `trm_ip` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단말기아이피',
  `trm_mac_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단말MAC주소',
  `is_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_prnot_is_00` (`prnot_itmcd`,`rqdt`,`isno`),
  KEY `idx_cus_prnot_is_01` (`ctmno`,`rqdt`,`prnot_itmcd`)
) ENGINE=InnoDB AUTO_INCREMENT=844 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출력물발급';
