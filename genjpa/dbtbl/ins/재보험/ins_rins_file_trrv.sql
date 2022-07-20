--
-- Table structure for table `ins_rins_file_trrv`
--

DROP TABLE IF EXISTS `ins_rins_file_trrv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_file_trrv` (
  `file_trrv_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '파일송수신관리번호',
  `file_trrv_rcpno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '파일송수신접수번호',
  `rinsc_dl_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보사처리상태코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `cscl_tot_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '건별집계구분코드',
  `rir_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보상품코드',
  `rir_gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보상품명',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `trt_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약년월',
  `nw_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규배서처리구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `reno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재번호',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `re_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재유형코드',
  `pvl_strdt` date DEFAULT NULL COMMENT '계상시작일자',
  `pvl_nddt` date DEFAULT NULL COMMENT '계상종료일자',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `re_dlno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '출재처리번호',
  `nprp_re_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '비비례출재여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`file_trrv_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험파일송수신';
