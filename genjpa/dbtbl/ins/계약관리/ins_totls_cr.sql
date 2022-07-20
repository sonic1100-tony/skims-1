--
-- Table structure for table `ins_totls_cr`
--

DROP TABLE IF EXISTS `ins_totls_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_totls_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `clm_sno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '사고일련번호',
  `totls_xmn_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전손검토상태구분코드',
  `clm_rcpno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고접수번호',
  `clm_dthms` datetime DEFAULT NULL COMMENT '사고일시',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `carno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호구분코드',
  `carno_hngl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호한글',
  `dl_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리담당자직원번호',
  `cnv_rlt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화상대구분코드',
  `cnv_cntrp_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화상대자명',
  `cnv_dthms` datetime DEFAULT NULL COMMENT '통화일시',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드',
  `cntad_areno` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처지역번호',
  `cntad_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처국번',
  `cntad_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처일련번호',
  `cnv_rst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통화결과구분코드',
  `o1_ndscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차배서코드',
  `o2_ndscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차배서코드',
  `dcndt` date DEFAULT NULL COMMENT '확정일자',
  `fr_inp_dthms` datetime DEFAULT NULL COMMENT '최초입력일시',
  `nds_inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서입력직원번호',
  `hdcft_mdf_inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수기수정입력직원번호',
  `hdcft_mdf_dthms` datetime DEFAULT NULL COMMENT '수기수정일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_totls_cr_00` (`plyno`,`clm_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전손계약';
