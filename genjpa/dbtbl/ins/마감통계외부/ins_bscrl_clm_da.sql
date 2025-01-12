--
-- Table structure for table `ins_bscrl_clm_da`
--

DROP TABLE IF EXISTS `ins_bscrl_clm_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bscrl_clm_da` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dvpns_ins_cmpcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원보험회사코드',
  `dvpns_ikdcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원보종코드',
  `cr_yr` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '계약년도',
  `dvpns_crano` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원계약번호',
  `clm_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '사고순번',
  `oldbl_seqno` decimal(5,0) NOT NULL COMMENT '구중복순번',
  `dvpns_clm_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원사고자료구분코드',
  `imu_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책사고여부',
  `noflt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무과실여부',
  `othcr_bdin_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타차대인사고여부',
  `othcr_obi_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타차자손사고여부',
  `nlic_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무면허사고여부',
  `nrdps_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호구분코드',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `cr_dbcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량차대구분코드',
  `cr_or_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량/차대번호',
  `cr_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량용도코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `ndv_gr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개별단체구분코드',
  `dvpns_us_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원사용용도코드',
  `rgtnm_nrdps_frg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기명피보험자외국인여부',
  `rgtnm_nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기명피보험자명',
  `rgtnm_nrdps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기명피보험자구분코드',
  `rgtnm_nrdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기명피보험자번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `spcf_obj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특정물건여부',
  `clm_dthms` datetime DEFAULT NULL COMMENT '사고일시',
  `cmpx_clm_bdin_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합사고대인여부',
  `cmpx_clm_prdm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합사고대물여부',
  `cmpx_clm_obi_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합사고자손여부',
  `cmpx_clm_owcr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합사고자차여부',
  `drnkn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주취여부',
  `drnk_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '음주여부',
  `sgnl_vlt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신호위반여부',
  `ctln_invs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중앙선침범여부',
  `speed_vlt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속도위반여부',
  `pass_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '앞지르기여부',
  `rcmtd_vlt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건널목통과방법위반여부',
  `crswk_vlt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '횡단보도위반여부',
  `fleeg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도주여부',
  `crme_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '범죄사고여부',
  `medi_txc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약물중독여부',
  `ftway_invs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보도침범여부',
  `pgsv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개문발차여부',
  `humn_clm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인적사고구분코드',
  `inj_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부상급수코드',
  `prdm_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대물손해금액',
  `cr_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '차량손해액',
  `cr_clm_poct` decimal(5,1) DEFAULT '0.0' COMMENT '차량사고점수',
  `ntt_imu_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고의면책여부',
  `sh_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위장사고여부',
  `nrprt_as_drv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미신고보조운전자여부',
  `unins_injr_bdin_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무보험상해대인여부',
  `unins_injr_prdm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무보험상해대물여부',
  `noflt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무과실구분코드',
  `da_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료년월',
  `unins_othcr_prdm_dmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '무보험타차대물손해액',
  `mtral_xc_stamt` decimal(15,0) DEFAULT '0' COMMENT '물적할증기준금액',
  `week_vlt_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요일위반사고여부',
  `fr_rcrdt` date DEFAULT NULL COMMENT '최초접보일자',
  `rdm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재청구구분코드',
  `fr_exdt` date DEFAULT NULL COMMENT '최초환입일자',
  `rdm_amt` decimal(15,0) DEFAULT NULL COMMENT '재청구금액',
  `clmdr_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고운전자주민번호',
  `clmdr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고운전자성명',
  `ag_drv_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대리운전자사고여부',
  `dvpns_madmo_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원마디모사고여부',
  `flt_chc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실변동여부',
  `lwflt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '저과실여부',
  `clmcn_poct` decimal(5,1) DEFAULT NULL COMMENT '사고내용점수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_bscrl_clm_da_00` (`dvpns_ins_cmpcd`,`dvpns_ikdcd`,`cr_yr`,`dvpns_crano`,`clm_seqno`,`oldbl_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업계사고자료';
