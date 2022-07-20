--
-- Table structure for table `igd_gd_info_usr_adm`
--

DROP TABLE IF EXISTS `igd_gd_info_usr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_info_usr_adm` (
  `lgin_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '로그인사용자ID',
  `gd_bsncd` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '상품업무코드',
  `lgin_usr_nm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '로그인사용자성명',
  `gd_scrno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '상품비밀번호',
  `gd_autcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품권한코드',
  `chrps_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자전화번호',
  `hpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰번호',
  `fnl_lgin_hms` datetime NOT NULL COMMENT '최종로그인시간',
  `fnl_lgout_hms` datetime NOT NULL COMMENT '최종로그아웃시간',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `stf_acc_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원계정상태코드',
  `scrno_er_ct` decimal(3,0) DEFAULT NULL COMMENT '비밀번호오류횟수',
  `scrno_chdt` date DEFAULT NULL COMMENT '비밀번호변경일자',
  `stf_acc_strdt` date DEFAULT NULL COMMENT '직원계정시작일자',
  `stf_acc_nddt` date DEFAULT NULL COMMENT '직원계정만료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`lgin_usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품정보사용자관리';
