--
-- Table structure for table `lse_ibnf_cs_qi`
--

DROP TABLE IF EXISTS `lse_ibnf_cs_qi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ibnf_cs_qi` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `xi_py_spc_seqno` decimal(3,0) NOT NULL COMMENT '추산지급내역순번',
  `cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '비용구분코드',
  `spvsn_dt_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리세부소분류코드',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `cr_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계약담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `clm_cvr_gpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보그룹코드',
  `clm_cvr_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보대분류코드',
  `spvsn_flg_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리구분코드',
  `spvsn_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리세부구분코드',
  `spvsn_prg_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리진행상태구분코드',
  `spvsn_prg_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리진행세부구분코드',
  `rcv_prg_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '환수진행상태구분코드',
  `dl_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '처리기관코드',
  `cmp_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '보상담당자직원번호',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자직원번호',
  `prvdt` date NOT NULL COMMENT '결재일자',
  `clmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고자명',
  `clmps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '사고자고객번호',
  `clmps_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '사고자식별번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `qi01_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI1차승인구분코드',
  `qi01_ap_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI1차승인세부구분코드',
  `qi01_appr_amt` decimal(17,2) DEFAULT NULL COMMENT 'QI1차인정금액',
  `qi01_er_amt` decimal(17,2) DEFAULT NULL COMMENT 'QI1차오류금액',
  `qi01_nappr_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI1차불인정사유코드',
  `qi01_nappr_dt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI1차불인정세부사유코드',
  `qi01_dt` date DEFAULT NULL COMMENT 'QI1차일자',
  `qi01_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI1차직원번호',
  `qi01_stf_psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI1차직원소속기관코드',
  `qi01_dtcn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI1차세부내용',
  `xpnt_rs_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소명사유구분코드',
  `re_rqamt` decimal(17,2) DEFAULT NULL COMMENT '재요청금액',
  `xpnt_er_amt` decimal(17,2) DEFAULT NULL COMMENT '소명오류금액',
  `non_accpt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불수용사유코드',
  `non_accpt_dt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불수용세부사유코드',
  `xpnt_dt` date DEFAULT NULL COMMENT '소명일자',
  `xpnt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소명직원번호',
  `xpnt_stf_psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소명직원소속기관코드',
  `xpnt_dtcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소명세부내용',
  `qifnl_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI최종승인구분코드',
  `qifnl_ap_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI최종승인세부구분코드',
  `qifnl_appr_amt` decimal(17,2) DEFAULT NULL COMMENT 'QI최종인정금액',
  `qifnl_er_amt` decimal(17,2) DEFAULT NULL COMMENT 'QI최종오류금액',
  `qifnl_nappr_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI최종불인정사유코드',
  `qifnl_nappr_dt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI최종불인정세부사유코드',
  `qifnl_dt` date DEFAULT NULL COMMENT 'QI최종일자',
  `qifnl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI최종직원번호',
  `qifnl_stf_psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI최종직원소속기관코드',
  `qifnl_dtcn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QI최종세부내용',
  `isamt` decimal(17,2) DEFAULT NULL COMMENT '가입금액',
  `dgncd_list` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단코드리스트',
  `hsp_flgcd_list` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원구분코드리스트',
  `trmt_sbjcd_list` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료과목코드리스트',
  `op_rstcd_list` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술결과코드리스트',
  `et_op_csfnm_list` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타수술분류명리스트',
  `op_seq` decimal(3,0) DEFAULT NULL COMMENT '수술회차',
  `obs_csfcd_list` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해분류코드리스트',
  `sum_obsrt_list` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '합산장해율리스트',
  `de_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사망종류코드',
  `clm_thtm_age` decimal(3,0) DEFAULT NULL COMMENT '사고당시연령',
  `insst_clmdt_rnddy` decimal(5,0) DEFAULT NULL COMMENT '보험시기사고일자경과일수',
  `gd_info_pyrt` decimal(12,2) DEFAULT NULL COMMENT '상품정보지급율',
  `cmp_dl_pyrt` decimal(12,2) DEFAULT NULL COMMENT '보상처리지급율',
  `thcp_crins_dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사자동차보험처리여부',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `bzus_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업용차량여부',
  `comp_clmcd_list` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '중대사고코드리스트',
  `slc_gn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택보장구분코드',
  `clm_week_nm` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고요일명',
  `hdy_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공휴일여부',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `victm_denum` decimal(5,0) DEFAULT NULL COMMENT '피해자사망자수',
  `victm_injct` decimal(5,0) DEFAULT NULL COMMENT '피해자부상자수',
  `drve_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전형태코드',
  `emamt` decimal(15,0) DEFAULT NULL COMMENT '청구금액',
  `ibnf_leak_prvtn_amt` decimal(15,0) DEFAULT NULL COMMENT '보험금누수방지금액',
  `rd_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감소유형코드',
  `rd_tp_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감소유형세부코드',
  `imu_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책사유코드',
  `vl_requ_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가의뢰사유',
  `clm_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고원인코드',
  `clm_nv_requ_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고조사의뢰여부',
  `cuttm_pyamt` decimal(17,2) DEFAULT NULL COMMENT '당회지급금액',
  `cvr_py_acamt` decimal(15,0) DEFAULT NULL COMMENT '담보지급누계금액',
  `spls_py_xpamt` decimal(15,0) DEFAULT NULL COMMENT '초과지급예상금액',
  `pfb_pypl_eqal_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자지급처일치여부',
  `szbj_anpe_py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '압류대상타인지급여부',
  `dbpy_xp_rcpno_1` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이중지급예상접수번호1',
  `dbpy_xp_rcpno_2` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이중지급예상접수번호2',
  `dbpy_xp_rcpno_3` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이중지급예상접수번호3',
  `cs_amt` decimal(17,2) DEFAULT NULL COMMENT '비용금액',
  `same_cs_flgcl_avgam` decimal(17,2) DEFAULT NULL COMMENT '동일비용구분별평균금액',
  `py_bjnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급대상명',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `hprm_nvcs_tamt` decimal(15,0) DEFAULT NULL COMMENT 'HPRM조사비용총액',
  `gnrz_vl_nvcs_tamt` decimal(15,0) DEFAULT NULL COMMENT '종합평가조사비용총액',
  `xipy_nvcs` decimal(15,0) DEFAULT NULL COMMENT '추산지급조사비용',
  `xi_hprm_pdiam` decimal(15,0) DEFAULT NULL COMMENT '추산HPRM지급차액',
  `xi_gnrz_pdiam` decimal(15,0) DEFAULT NULL COMMENT '추산종합지급차액',
  `few_py_xpamt` decimal(15,0) DEFAULT NULL COMMENT '과소지급예상금액',
  `sep_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분할대상여부',
  `part_py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일부지급여부',
  `befo_xi_amt` decimal(15,0) DEFAULT NULL COMMENT '직전추산금액',
  `rcp_end_rnddy` decimal(5,0) DEFAULT NULL COMMENT '접수종결경과일수',
  `dlay_nt` decimal(17,2) DEFAULT NULL COMMENT '지연이자',
  `dlynt_np_rscd_list` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연이자미지급사유코드리스트',
  `dlay_nt_np_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연이자미지급사유',
  `remn_xi_amt` decimal(17,2) DEFAULT NULL COMMENT '잔여추산금액',
  `er_xi_xpamt` decimal(15,0) DEFAULT NULL COMMENT '오류추산예상금액',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `befdm_enddt` date DEFAULT NULL COMMENT '직전청구종결일자',
  `rcp_prv_rnddy` decimal(5,0) DEFAULT NULL COMMENT '접수결재경과일수',
  `befo_xi_prv_rnddy` decimal(5,0) DEFAULT NULL COMMENT '직전추산결재경과일수',
  `frtxi_prv_rnddy` decimal(5,0) DEFAULT NULL COMMENT '최초추산결재경과일수',
  `befdm_end_prv_rnddy` decimal(5,0) DEFAULT NULL COMMENT '직전청구종결결재경과일수',
  `fnl_prv_inq_rnddy` decimal(5,0) DEFAULT NULL COMMENT '최종결재조회경과일수',
  `cuttm_py_ct` decimal(3,0) DEFAULT NULL COMMENT '당회지급횟수',
  `sep_t_py_ct` decimal(3,0) DEFAULT NULL COMMENT '분할총지급횟수',
  `lw_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송발생여부',
  `befo_xiamt_cmp_idamt` decimal(15,0) DEFAULT NULL COMMENT '직전추산금액대비증감액',
  `emamt_cmp_frtxi_idamt` decimal(15,0) DEFAULT NULL COMMENT '청구금액대비최초추산증감액',
  `bfmm_xiamt_cmp_idamt` decimal(15,0) DEFAULT NULL COMMENT '전월추산금액대비증감액',
  `rlvmm_same_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해당월동일사고여부',
  `befdm_np_end_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직전청구미지급종결여부',
  `befdm_rcp_ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직전청구접수취소여부',
  `hprm_nv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HPRM조사구분코드',
  `nvr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사자직원번호',
  `nv_rqudt` date DEFAULT NULL COMMENT '조사의뢰일자',
  `hprm_enddt` date DEFAULT NULL COMMENT 'HPRM종결일자',
  `acrc_mdud_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정밀의료심사여부',
  `mdud_prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사결재구분코드',
  `mdud_prg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료심사진행구분코드',
  `acrc_mdud_rqudt` date DEFAULT NULL COMMENT '정밀의료심사의뢰일자',
  `acrc_mdud_asrdt` date DEFAULT NULL COMMENT '정밀의료심사회신일자',
  `md_cnst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료자문여부',
  `md_cnst_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료자문상태코드',
  `cnsdr_rqudt` date DEFAULT NULL COMMENT '자문의의뢰일자',
  `cnsdr_asrdt` date DEFAULT NULL COMMENT '자문의회신일자',
  `pt_mdud_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환자의료심사여부',
  `pt_mdud_prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환자의료심사결재구분코드',
  `pt_mdud_rqudt` date DEFAULT NULL COMMENT '환자의료심사의뢰일자',
  `pt_mdud_asrdt` date DEFAULT NULL COMMENT '환자의료심사회신일자',
  `bd_mdud_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신체의료심사여부',
  `bd_mdud_prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신체의료심사결재구분코드',
  `bd_mdud_rqudt` date DEFAULT NULL COMMENT '신체의료심사의뢰일자',
  `bd_mdud_asrdt` date DEFAULT NULL COMMENT '신체의료심사회신일자',
  `trpa_ud_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비심사여부',
  `trpa_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비진행상태코드',
  `trpa_ud_rqudt` date DEFAULT NULL COMMENT '진료비심사의뢰일자',
  `trpa_ud_asrdt` date DEFAULT NULL COMMENT '진료비심사회신일자',
  `cuttm_de_pyamt` decimal(15,0) DEFAULT NULL COMMENT '당회사망지급금액',
  `cuttm_sel_hnd_pyamt` decimal(15,0) DEFAULT NULL COMMENT '당회후유장애지급금액',
  `cuttm_dascs_pyamt` decimal(15,0) DEFAULT NULL COMMENT '당회진단비지급금액',
  `cuttm_opccs_pyamt` decimal(15,0) DEFAULT NULL COMMENT '당회수술비지급금액',
  `cuttm_ddalw_pyamt` decimal(15,0) DEFAULT NULL COMMENT '당회일당지급금액',
  `cuttm_mdcs_pyamt` decimal(15,0) DEFAULT NULL COMMENT '당회의료비지급금액',
  `cuttm_man_et_pyamt` decimal(15,0) DEFAULT NULL COMMENT '당회인기타지급금액',
  `cuttm_prprt_lb_pyamt` decimal(15,0) DEFAULT NULL COMMENT '당회재물배상지급금액',
  `cuttm_py_stot_amt` decimal(15,0) DEFAULT NULL COMMENT '당회지급소계금액',
  `py_acamt` decimal(15,0) DEFAULT NULL COMMENT '지급누계금액',
  `xpnt_bj_ibamt` decimal(15,0) DEFAULT NULL COMMENT '소명대상보험금액',
  `xpnt_bj_cs_amt` decimal(15,0) DEFAULT NULL COMMENT '소명대상비용금액',
  `chrps_ardyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자전결여부',
  `same_pypl_ctrt_ardct` decimal(3,0) DEFAULT NULL COMMENT '동일지급처집중전결건수',
  `pwsnm_py_ardc_rcpno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동명이인지급전결접수번호',
  `pypl_chrps_eqlyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처담당자일치여부',
  `pypl_prvmn_eqlyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처결재자일치여부',
  `tcstf_crrlp_tpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사직원계약관계자유형명',
  `crrlp_tcstf_orgnm_list` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약관계자당사직원기관명리스트',
  `crrlp_chrps_same_pstyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약관계자담당자동일소속여부',
  `nvcrp_crrlp_tpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사법인계약관계자유형명',
  `crrlp_nvcrp_ctmnm_list` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약관계자조사법인고객명리스트',
  `ibnf_pypl_bj_list` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험금지급처대상리스트',
  `idm_cr_rgtdt` date DEFAULT NULL COMMENT '구상발생등록일자',
  `rcv_bjamt` decimal(15,0) DEFAULT NULL COMMENT '환수대상금액',
  `er_py_rcv_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류지급환수방법코드',
  `rcv_acamt` decimal(15,0) DEFAULT NULL COMMENT '환수누계금액',
  `nrcv_amt` decimal(15,0) DEFAULT NULL COMMENT '미환수금액',
  `fnl_rcv_dt` date DEFAULT NULL COMMENT '최종환수일자',
  `rcv_impr_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환수불가사유코드',
  `rcv_impr_dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환수불가세부내용',
  `clm_nv_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고조사종류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ibnf_cs_qi_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`,`xi_py_spc_seqno`,`cs_flgcd`,`spvsn_dt_smccd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험금비용품질개선';
