--
-- Table structure for table `ins_mdcs_trt_cr_inq`
--

DROP TABLE IF EXISTS `ins_mdcs_trt_cr_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mdcs_trt_cr_inq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mdcs_tlm_opndt` date NOT NULL COMMENT '의료비전문개시일자',
  `mdcs_tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비전문관리번호',
  `mdcs_tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '의료비전문전송순번',
  `mdcs_tlm_specd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비전문종별코드',
  `mdcs_tlm_spe_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비전문종별세부코드',
  `trscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'TRANSACTION코드',
  `knia` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'KNIA',
  `mdcs_tlm_opn_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료비전문개시시분초',
  `trs_org` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송신기관',
  `rcv_org` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신기관',
  `dat_lngth` decimal(4,0) DEFAULT NULL COMMENT '데이터길이',
  `sndr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송신자직원번호',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `nrdps_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자주민번호',
  `crdif_utl_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보활용동의여부',
  `inq_stdt` date DEFAULT NULL COMMENT '조회기준일자',
  `nrdps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자성명',
  `t_rgt_ct` decimal(3,0) DEFAULT NULL COMMENT '총등록건수',
  `rgt_cn_more` decimal(1,0) DEFAULT NULL COMMENT '등록내용MORE',
  `inq_reply_ct` decimal(2,0) DEFAULT NULL COMMENT '조회회보건수',
  `mdcs_trt_inq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비특약조회구분코드',
  `bk_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행지점코드',
  `bk_extn_qfp` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행유자격자',
  `bk_ipps` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행입력자',
  `dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서번호',
  `inq_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조회동의여부',
  `scan_cplt_dthms` datetime DEFAULT NULL COMMENT '스캔완료일시',
  `scan_cplt_perdt` date DEFAULT NULL COMMENT '스캔완료기한일자',
  `scan_dcuno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔문서번호',
  `inq_agmdt` date DEFAULT NULL COMMENT '조회동의일자',
  `scan_cplt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔완료유형코드',
  `pblct_out_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발행물출력여부',
  `wrcs_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의서유형코드',
  `hndph_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화지역번호',
  `hndph_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화국번',
  `hndph_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_mdcs_trt_cr_inq_00` (`mdcs_tlm_opndt`,`mdcs_tlm_admno`,`mdcs_tlm_ts_seqno`),
  KEY `idx_ins_mdcs_trt_cr_inq_10` (`nrdps_rsno`)
) ENGINE=InnoDB AUTO_INCREMENT=1937 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료비특약계약조회';
