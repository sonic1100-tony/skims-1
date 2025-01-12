--
-- Table structure for table `gea_rstm`
--

DROP TABLE IF EXISTS `gea_rstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rstm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rstm_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '부동산등록번호',
  `rstnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '부동산명',
  `rstm_rgtdt` date NOT NULL COMMENT '부동산등록일자',
  `own_rnt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소유임차구분코드',
  `bld_stru_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물구축물구분코드',
  `stru_note_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구축물비고사항',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `osea_lc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '국외소재여부',
  `pstno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상세주소',
  `ba_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기초형식코드',
  `asmt_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지정형태코드',
  `str_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구조형식코드',
  `grod_flct` decimal(3,0) DEFAULT '0' COMMENT '지상층수',
  `towe_flct` decimal(3,0) DEFAULT '0' COMMENT '옥탑층수',
  `undg_flct` decimal(3,0) DEFAULT '0' COMMENT '지하층수',
  `t_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '총면적',
  `land_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '대지면적',
  `sns_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '건축면적',
  `xc_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전용면적',
  `flin_pbl_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '층내공용면적',
  `flout_pbl_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '층외공용면적',
  `acht_eqmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '냉난방시설코드',
  `acht_actvt_info` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '냉난방가동정보',
  `indr_pk_av_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '옥내주차가능대수',
  `oudr_pk_av_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '옥외주차가능대수',
  `indr_pk_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '옥내주차면적',
  `oudr_pk_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '옥외주차면적',
  `pasgr_elvct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '승객용승강기수',
  `frus_elvct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '화물용승강기수',
  `emeus_elvct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '비상용승강기수',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `rstm_use_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부동산용도구분코드',
  `actct` decimal(3,0) DEFAULT NULL COMMENT '구좌수',
  `cqdt` date DEFAULT NULL COMMENT '취득일자',
  `re_vlbe_cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '재평가전취득가액',
  `cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '취득금액',
  `own_bjpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유대상코드',
  `bypl_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '매입처고객번호',
  `dpodt` date DEFAULT NULL COMMENT '매각일자',
  `dppl_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '매각처고객번호',
  `ioamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '매각금액',
  `rlt_rstm_rgtno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대부동산등록번호',
  `bzwpl_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업장사업자번호',
  `ownr_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소유자고객번호',
  `relco_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계회사여부',
  `bld_bnd_vl_unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '건물채권평가단가',
  `land_bnd_vl_unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대지채권평가단가',
  `bld_bnd_vlamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '건물채권평가금액',
  `land_bnd_vlamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대지채권평가금액',
  `bld_bnd_vl_st` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물채권평가기준',
  `land_bnd_vl_st` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대지채권평가기준',
  `bnd_itg_lmrt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '채권보전한도율',
  `bnd_itg_lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '채권보전한도금액',
  `bld_cn_yyct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '건물내용년수',
  `bld_rnd_yyct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '건물경과년수',
  `bld_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물우편번호',
  `bld_ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물기본주소',
  `bld_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물상세주소',
  `land_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '토지우편번호',
  `land_ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '토지기본주소',
  `land_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '토지상세주소',
  `bsns_adx_file_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무첨부파일식별번호',
  `rstm_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부동산상태코드',
  `re_vldt` date DEFAULT NULL COMMENT '재평가일자',
  `re_vl_cqamt` decimal(15,0) DEFAULT '0' COMMENT '재평가취득금액',
  `sns_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건축년도',
  `bld_scl_info` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물규모정보',
  `bld_str_info` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물구조정보',
  `elv_info` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승강기정보',
  `pk_equ_info` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주차설비정보',
  `acht_equ_info` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '냉난방설비정보',
  `eleq_info` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전기설비정보',
  `fir_equ_info` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소방설비정보',
  `et_equ_info` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타설비정보',
  `mn_adm_entnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유지관리업체명',
  `mn_adm_crtm_info` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유지관리계약기간정보',
  `mn_adm_prsn_info` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유지관리인원정보',
  `hot_guamt_pyung_unprc` decimal(15,0) DEFAULT '0' COMMENT '임대차보증금액평단가',
  `mnth_hotcs_pyung_unprc` decimal(15,0) DEFAULT '0' COMMENT '월임대차료평단가',
  `mnth_admcs_pyung_unprc` decimal(15,0) DEFAULT '0' COMMENT '월관리비평단가',
  `aseno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산번호',
  `photo_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사진경로',
  `vl_stdt` date DEFAULT NULL COMMENT '평가기준일자',
  `pkcr_bnamt` decimal(15,0) DEFAULT NULL COMMENT '선순위채권금액',
  `bnd_es_rank` decimal(5,0) DEFAULT NULL COMMENT '채권설정순위',
  `bnd_es_rt` decimal(7,2) DEFAULT NULL COMMENT '채권설정비율',
  `mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주건물번호',
  `sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부건물번호',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `bld_mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물주건물번호',
  `bld_sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물부건물번호',
  `bld_ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건물참고항목',
  `land_mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '토지주건물번호',
  `land_sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '토지부건물번호',
  `land_ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '토지참고항목',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_rstm_00` (`rstm_rgtno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부동산';
