--
-- Table structure for table `gea_itm_cr_prc`
--

DROP TABLE IF EXISTS `gea_itm_cr_prc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_itm_cr_prc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cr_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '계약등록번호',
  `cnrdt` date NOT NULL COMMENT '계약일자',
  `crnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '계약명',
  `cr_entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약업체고객번호',
  `itm_crano` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목계약번호',
  `naamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '계약금액',
  `cr_gu_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약보증종류코드',
  `cr_knd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약종류구분코드',
  `cr_strdt` date DEFAULT NULL COMMENT '계약시작일자',
  `cr_nddt` date DEFAULT NULL COMMENT '계약종료일자',
  `dlv_reqdt` date DEFAULT NULL COMMENT '납품요청일자',
  `dlv_plc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납품장소',
  `as_trm` decimal(3,0) DEFAULT '0' COMMENT 'AS기간',
  `cr_gu_plyno` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약보증증권번호',
  `cr_guamt_dpdt` date DEFAULT NULL COMMENT '계약보증금액입금일자',
  `cr_guamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '계약보증금액',
  `cr_chrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담당자명',
  `nstdt` date DEFAULT NULL COMMENT '검수일자',
  `nst_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검수기관코드',
  `nst_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검수직원번호',
  `nst_spc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검수내역',
  `uddt` date DEFAULT NULL COMMENT '인수일자',
  `us_rpbl_stfno_1` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용책임직원번호1',
  `us_rpbl_stfno_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용책임직원번호2',
  `itm_cr_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '품목계약상태코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `bsns_adx_file_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무첨부파일식별번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_itm_cr_prc_00` (`cr_rgtno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='품목계약구매';
