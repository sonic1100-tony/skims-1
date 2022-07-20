--
-- Table structure for table `lse_otcom_cr`
--

DROP TABLE IF EXISTS `lse_otcom_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_otcom_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험회사코드',
  `otcm_plyno` varchar(25) COLLATE utf8mb4_bin NOT NULL COMMENT '타사증권번호',
  `ins_strdt` date DEFAULT NULL COMMENT '보험시작일자',
  `ins_nddt` date DEFAULT NULL COMMENT '보험종료일자',
  `chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자명',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `cnf_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인내용',
  `otcm_cr_prg_crscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사계약진행과정코드',
  `otcm_cr_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타사계약분류코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '환율',
  `xcrt_apdt` date DEFAULT NULL COMMENT '환율적용일자',
  `acci_or_dsde_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '재해/질병사망가입금액',
  `sel_hnamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '후유장애금액',
  `ddalw` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '일당',
  `pnlty` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '벌금',
  `mdcs` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '의료비',
  `otprt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '통원비',
  `bz_mtrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업방법서코드',
  `prpn_cmp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비례보상여부',
  `cvr_spc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보내역',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `uiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '공제금액',
  `isamt_pdamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액안분금액',
  `indpd_rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '독립책임금액',
  `oj_spc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목적물내역',
  `pd_rpamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안분책임금액구분코드',
  `pd_or_rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '안분/책임금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_otcom_cr_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`ins_cmpcd`,`otcm_plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='타사계약';
