--
-- Table structure for table `com_cptrb_rcp`
--

DROP TABLE IF EXISTS `com_cptrb_rcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_cptrb_rcp` (
  `cptrb_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '전산장애접수번호',
  `cptrb_rqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '전산장애신청번호',
  `mng_unt_seqno` decimal(2,0) NOT NULL COMMENT '조치단위순번',
  `rcp_dthms` datetime NOT NULL COMMENT '접수일시',
  `rqaps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '신청자직원번호',
  `rqaps_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '신청자명',
  `mlt_rcp_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '다중접수여부',
  `cptrb_eqmt_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전산장애장비유형코드',
  `cmpu_admno` varchar(23) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산관리번호',
  `pst_cnf_need_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위치확인필요여부',
  `mng_cplt_dthms` datetime NOT NULL COMMENT '조치완료일시',
  `mng_trm_hdy_num` decimal(2,0) DEFAULT NULL COMMENT '조치기간공휴일수',
  `dlay_hms_num` decimal(7,0) DEFAULT NULL COMMENT '지연시간수',
  `mngbj_ip` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치대상IP',
  `cptrb_cn` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '전산장애내용',
  `cptrb_mng_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산장애조치유형코드',
  `cptrb_mng_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전산장애조치상태코드',
  `mng_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치직원번호',
  `mng_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치내용',
  `db_cptrb_rcpno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중복전산장애접수번호',
  `cptrb_mntr_admno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산장애모니터링관리번호',
  `flt_img_cn` longtext COLLATE utf8mb4_bin COMMENT '결함이미지내용',
  `no1_et_cn` varchar(800) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번기타내용',
  `no2_et_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번기타내용',
  `ba_ky_clmvl_1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값1',
  `ba_ky_clmvl_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값2',
  `srvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서비스코드',
  `befo_cptrb_rcpno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전전산장애접수번호',
  `scr_chr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화면담당기관코드',
  `scr_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화면담당직원번호',
  `ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인여부',
  `cptrb_mntr_admno_2` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산장애모니터링관리번호2',
  `cptrb_mntr_admno_3` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산장애모니터링관리번호3',
  `mng_stfno_2` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치직원번호2',
  `mng_stfno_3` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치직원번호3',
  `dvp_strdt` date DEFAULT NULL COMMENT '개발시작일자',
  `dvp_nddt` date DEFAULT NULL COMMENT '개발종료일자',
  `taaf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관후직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cptrb_rcpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전산장애접수';
