--
-- Table structure for table `ccm_pln_stf`
--

DROP TABLE IF EXISTS `ccm_pln_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_pln_stf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `cprt_entp_stf_seqno` decimal(3,0) NOT NULL COMMENT '협력업체직원순번',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `stf_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '직원성명',
  `stf_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원주민번호',
  `hndph_tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '핸드폰전화지역번호',
  `hndph_tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '핸드폰전화국번',
  `hndph_tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '핸드폰전화일련번호',
  `mvo_stf_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출동직원상태코드',
  `pwd` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '패스워드',
  `scrno_chdt` date DEFAULT NULL COMMENT '비밀번호변경일자',
  `scrno_er_ct` decimal(3,0) DEFAULT NULL COMMENT '비밀번호오류횟수',
  `fnl_cno_dt` date DEFAULT NULL COMMENT '최종접속일자',
  `ret_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '퇴사여부',
  `mvo_av_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출동가능상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_pln_stf_00` (`ctmno`,`cprt_entp_seqno`,`cprt_entp_stf_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='현장출동직원';
