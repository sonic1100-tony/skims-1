--
-- Table structure for table `b1_211102_cmp_cvap_adm`
--

DROP TABLE IF EXISTS `b1_211102_cmp_cvap_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b1_211102_cmp_cvap_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cvap_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '민원구분코드',
  `cvap_rcpdt` date NOT NULL COMMENT '민원접수일자',
  `cvap_rcpno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '민원접수번호',
  `cvap_rcp_ptncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '민원접수경로코드',
  `cvap_dl_chr_bsncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '민원처리담당업무코드',
  `cvap_dl_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '민원처리상태코드',
  `cvap_dlst_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '민원처리상태상세코드',
  `cvap_titl` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '민원제목',
  `cvam_cvap_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '민원인민원내용',
  `psinf_agmdt` date NOT NULL COMMENT '개인정보동의일자',
  `psinf_agryn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보동의여부',
  `cvap_rqdt` date NOT NULL COMMENT '민원신청일자',
  `cvap_rqapl_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원신청인명',
  `adx_file_pth1` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로1',
  `adx_file_pth2` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로2',
  `adx_file_pth3` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로3',
  `adx_file_pth4` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로4',
  `cvap_rcp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원접수직원번호',
  `cvap_end_dldt` date DEFAULT NULL COMMENT '민원종결처리일자',
  `cvap_end_dl_cnf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원종결처리확인직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_cmp_cvap_adm_01` (`cvap_flgcd`,`cvap_rcpdt`,`cvap_rcpno`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='민원관리';
