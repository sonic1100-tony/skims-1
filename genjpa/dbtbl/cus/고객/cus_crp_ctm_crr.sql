--
-- Table structure for table `cus_crp_ctm_crr`
--

DROP TABLE IF EXISTS `cus_crp_ctm_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_crp_ctm_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `crpno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인번호',
  `crp_bzps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인사업자구분코드',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `eng_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문고객명',
  `ref_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참조사업자번호',
  `pdt_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표자주민번호',
  `pdtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표자명',
  `pdt_ctm_rgt_seq` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표자고객등록회차',
  `ntp_grp_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기업군명',
  `btpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종코드',
  `ns_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계열상세구분코드',
  `ind_grp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산업군구분코드',
  `hmpag_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '홈페이지주소',
  `owrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보유자코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `fax_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스지역번호',
  `fx_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX국번',
  `fx_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FAX일련번호',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `hspcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원코드',
  `bzps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자구분코드',
  `rglr_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정규자료구분코드',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `clodt` date DEFAULT NULL COMMENT '폐쇄일자',
  `lawlg_mng_dsdt` date DEFAULT NULL COMMENT '법적조치결정일자',
  `uc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미수구분코드',
  `crpno_cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인번호확인여부',
  `cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약여부',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_crp_ctm_crr_00` (`ctmno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인고객이력';
