--
-- Table structure for table `cmp_intnl_crut_rcp_spc`
--

DROP TABLE IF EXISTS `cmp_intnl_crut_rcp_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_intnl_crut_rcp_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `rcp_seqno` decimal(5,0) NOT NULL COMMENT '접수순번',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `rgt_stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원명',
  `titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제목',
  `dt_prnt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세제보내용',
  `intnl_crut_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내부비리처리구분코드',
  `rgtnm_non_rgtnm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기명무기명구분코드',
  `o1_psinf_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차개인정보동의여부',
  `o2_psinf_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차개인정보동의여부',
  `rcp_hhmm` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수시분',
  `hmpag_inp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '홈페이지입력여부',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재직원번호',
  `dl_rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과내용',
  `rst_rprdt` date DEFAULT NULL COMMENT '결과통보일자',
  `cpldt` date DEFAULT NULL COMMENT '완료일자',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cmp_intnl_crut_rcp_spc_00` (`rcpdt`,`rcp_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='내부비리접수내역';
