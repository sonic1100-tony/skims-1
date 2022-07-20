--
-- Table structure for table `fin_crdvl_cmp_ci_inq_tlm`
--

DROP TABLE IF EXISTS `fin_crdvl_cmp_ci_inq_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crdvl_cmp_ci_inq_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tsdt` date NOT NULL COMMENT '전송일자',
  `tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전문전송시간',
  `pnt_ctmno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '포인트고객번호',
  `ci_rltn_1_info` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CI연계1정보',
  `ci_rltn_2_info` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CI연계2정보',
  `psn_ntp_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '개인기업여부',
  `dbis_cnf_info` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중복가입확인정보',
  `rnw_ct` decimal(3,0) DEFAULT NULL COMMENT '갱신횟수',
  `crdvl_anscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용평가응답코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_crdvl_cmp_ci_inq_tlm_00` (`tsdt`,`tlm_ts_hms`,`pnt_ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용평가회사CI조회전문';
