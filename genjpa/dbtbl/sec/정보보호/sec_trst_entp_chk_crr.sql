--
-- Table structure for table `sec_trst_entp_chk_crr`
--

DROP TABLE IF EXISTS `sec_trst_entp_chk_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_trst_entp_chk_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trst_entp_no` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수탁업체번호',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `chkdt` date NOT NULL COMMENT '점검일자',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `inspt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검자기관코드',
  `inspt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검자직원번호',
  `chk_bj_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검대상년월',
  `chk_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검유형코드',
  `chk_dt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검세부유형코드',
  `rcn_chk_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실사점검여부',
  `chk_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검내용',
  `chk_rst_poct` decimal(5,0) DEFAULT NULL COMMENT '점검결과점수',
  `bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무파일KEY',
  `edu_rst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교육결과여부',
  `chk_entp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검업체구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_sec_trst_entp_chk_crr_00` (`trst_entp_no`,`bsns_flgcd`,`chkdt`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수탁업체점검이력';
