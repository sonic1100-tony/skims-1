--
-- Table structure for table `ccm_lse_dm_crinf`
--

DROP TABLE IF EXISTS `ccm_lse_dm_crinf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lse_dm_crinf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `crdis_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원업무구분코드',
  `crdis_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원일련번호',
  `clm_sno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '사고일련번호',
  `dm_sno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '청구일련번호',
  `crdis_ins_knd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원보험종류구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `grin_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체보험여부',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `cr_ccdt` date NOT NULL COMMENT '계약체결일자',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `ins_clstr` date NOT NULL COMMENT '보험종기',
  `crt_psn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자개인여부',
  `crt_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자주민사업자번호',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `crt_nw_pstno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자신우편번호',
  `crt_gu_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자구우편번호',
  `crt_info_of_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자정보제공동의여부',
  `nrdps_crt_rel_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자계약자관계구분코드',
  `crdis_ce_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원모집경로코드',
  `cetr_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집인명',
  `cetr_brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집인생년월일',
  `cetr_sex_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집인성별구분코드',
  `cetr_rgtno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집인등록번호',
  `cetr_rgtdt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집인등록일자',
  `cetr_info_of_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집인정보제공동의여부',
  `ce_agyno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집대리점번호',
  `ce_agynm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집대리점명',
  `da_stdt` date DEFAULT NULL COMMENT '자료기준일자',
  `dl_rs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리사유구분코드',
  `crdis_da_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원자료처리구분코드',
  `tsdt` date DEFAULT NULL COMMENT '전송일자',
  `rcvdt` date DEFAULT NULL COMMENT '수신일자',
  `crdis_er_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원오류구분코드',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lse_dm_crinf_00` (`stdt`,`crdis_bsns_flgcd`,`crdis_sno`,`clm_sno`,`dm_sno`,`crdis_ins_knd_flgcd`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험신용정보_청구계약정보';
