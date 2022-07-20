--
-- Table structure for table `ins_cr_udwr_adm`
--

DROP TABLE IF EXISTS `ins_cr_udwr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_udwr_adm` (
  `ud_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '심사직원번호',
  `hdof_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '본사여부',
  `udwr_vctn_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '심사자휴가여부',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `ap_str_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용시작시간',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ap_nd_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적용종료시간',
  `ud_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사구분코드',
  `hdof_udwr_as_mdcd` varchar(2) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '본사심사자배정조정코드',
  `as_mdcnt` decimal(7,0) DEFAULT NULL COMMENT '배정조정건수',
  `ud_chr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사담당기관코드',
  `nxt_prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다음결재자직원번호',
  `wknd_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주말결재직원번호',
  `dv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배당여부',
  `fnl_ch_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종변경직원번호',
  `fnl_chdt` date DEFAULT NULL COMMENT '최종변경일자',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ud_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차심사자관리';
