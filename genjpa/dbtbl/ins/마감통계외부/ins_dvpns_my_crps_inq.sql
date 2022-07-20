--
-- Table structure for table `ins_dvpns_my_crps_inq`
--

DROP TABLE IF EXISTS `ins_dvpns_my_crps_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_my_crps_inq` (
  `dvpns_rcpno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원접수번호',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `rqfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청직원번호',
  `nrdps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자성명',
  `ikdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종코드',
  `vl_trm_st` date DEFAULT NULL COMMENT '평가기간시기',
  `vl_trm_clstr` date DEFAULT NULL COMMENT '평가기간종기',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간구분코드',
  `inq_trm_st` date DEFAULT NULL COMMENT '조회기간시기',
  `inq_trm_clstr` date DEFAULT NULL COMMENT '조회기간종기',
  `iramt_ct` decimal(5,0) DEFAULT NULL COMMENT '부보대수',
  `avg_vald_ct` decimal(10,2) DEFAULT NULL COMMENT '평균유효대수',
  `clmct` decimal(7,0) DEFAULT NULL COMMENT '사고건수',
  `rnd_prm` decimal(17,2) DEFAULT NULL COMMENT '경과보험료',
  `dmamt` decimal(17,2) DEFAULT NULL COMMENT '손해액',
  `my_cr_inq_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다수차량조회응답코드',
  `dvpns_inq_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원조회상태코드',
  `dvpns_inqct` decimal(5,0) DEFAULT NULL COMMENT '개발원조회건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dvpns_rcpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원다수차량보유자조회';
