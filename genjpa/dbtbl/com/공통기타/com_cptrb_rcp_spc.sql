--
-- Table structure for table `com_cptrb_rcp_spc`
--

DROP TABLE IF EXISTS `com_cptrb_rcp_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_cptrb_rcp_spc` (
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `rcp_seqno` decimal(5,0) NOT NULL COMMENT '접수순번',
  `hnd_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애상태구분코드',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청기관코드',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청직원번호',
  `rcp_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수시간',
  `cmpu_eqmt_admno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산장비관리번호',
  `cmpu_eqmt_sno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산장비일련번호',
  `rq_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청내용',
  `trm_cm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단말통신구분코드',
  `cmpu_eqmt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산장비구분코드',
  `rpair_chg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리교체구분코드',
  `vis_tl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방문전화구분코드',
  `dl_cpldt` date DEFAULT NULL COMMENT '처리완료일자',
  `dl_cplt_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리완료시간',
  `dlrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자명',
  `dl_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리내용',
  `mdfdt` date DEFAULT NULL COMMENT '수정일자',
  `mdf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정직원번호',
  `hnd_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애상세구분코드',
  `rqaps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자명',
  `hnd_lclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애대분류코드',
  `hnd_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애처리구분코드',
  `dmd_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자우편번호',
  `rqaps_sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자시도',
  `rqaps_sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자시군구',
  `rqaps_twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자읍면동',
  `rqaps_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자상세주소',
  `rqaps_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자전화지역번호',
  `rqaps_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자전화국번',
  `rqaps_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자전화일련번호',
  `rl_dl_cpldt` date DEFAULT NULL COMMENT '실제처리완료일자',
  `rl_dl_cplt_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실제처리완료시간',
  `hnd_rcp_dl_nd_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애접수처리소요시간',
  `hnd_rcp_dl_nd_hhmm` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애접수처리소요시분',
  `rqaps_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자전화번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcpdt`,`rcp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전산장애접수내역';
