--
-- Table structure for table `cus_ctm_cntad_er_dj_load`
--

DROP TABLE IF EXISTS `cus_ctm_cntad_er_dj_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_cntad_er_dj_load` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cntad_cntrt_rstcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처접촉결과코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `cntad_er_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처오류구분코드',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화국번',
  `str_tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '시작전화일련번호',
  `cntad_cntrt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '연락처접촉구분코드',
  `ctm_cntdt` date NOT NULL COMMENT '고객접촉일자',
  `cntrt_fail_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉실패사유코드',
  `cntrt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉직원번호',
  `cntad_db_ct` decimal(10,0) DEFAULT NULL COMMENT '연락처중복건수',
  `ecre_no` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이케어번호',
  `event_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이벤트명',
  `cntrt_fail_rs` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉실패사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_cntad_er_dj_load_00` (`cntad_cntrt_rstcd`,`ctmno`,`stfno`,`cntad_er_flgcd`,`cntad_flgcd`,`tlano`,`tltno`,`str_tlsno`,`cntad_cntrt_flgcd`,`ctm_cntdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객연락처오류대상적재';
