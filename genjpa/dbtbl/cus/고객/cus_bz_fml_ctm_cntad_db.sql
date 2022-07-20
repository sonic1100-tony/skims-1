--
-- Table structure for table `cus_bz_fml_ctm_cntad_db`
--

DROP TABLE IF EXISTS `cus_bz_fml_ctm_cntad_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bz_fml_ctm_cntad_db` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객식별번호',
  `tlano` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '전화일련번호',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dhtrb_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급처기관코드',
  `cntad_db_ctmct` decimal(7,0) DEFAULT NULL COMMENT '연락처중복고객수',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재상태코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `cntad_db_ap_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처중복승인방법코드',
  `cntad_db_ap_lms_autno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처중복승인LMS인증번호',
  `rqaps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청자직원번호',
  `prv_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재의견',
  `rq_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청의견',
  `cnt_lmit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락제한구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bz_fml_ctm_cntad_db_00` (`dh_stfno`,`ctm_dscno`,`tlano`,`tltno`,`tlsno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업가족고객연락처중복';
