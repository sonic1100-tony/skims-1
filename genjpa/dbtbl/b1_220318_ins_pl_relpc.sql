--
-- Table structure for table `b1_220318_ins_pl_relpc`
--

DROP TABLE IF EXISTS `b1_220318_ins_pl_relpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b1_220318_ins_pl_relpc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `relpc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자유형코드',
  `relpc_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자상태코드',
  `st_chdt` date DEFAULT NULL COMMENT '상태변경일자',
  `hngl_relnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글관계자명',
  `eng_relnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문관계자명',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `relpc_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자식별번호구분코드',
  `dlncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래선코드',
  `prs_relpc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표관계자여부',
  `crdif_utl_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보활용동의여부',
  `crdif_prt23_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보23조동의여부',
  `crdif_prt24_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보24조동의여부',
  `crdif_prt32_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보32조동의여부',
  `crdif_prt33_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보33조동의여부',
  `cntad_seqno` decimal(10,0) DEFAULT NULL COMMENT '연락처순번',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드',
  `relpc_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자호칭',
  `relpc_name_pstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자호칭위치코드',
  `relpc_rlecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자역할코드',
  `isrdt` date DEFAULT NULL COMMENT '가입일자',
  `ppr_relpc_seqno` decimal(10,0) DEFAULT NULL COMMENT '상위관계자순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `sbd_gr_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하위단체고객번호',
  `gu_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구증권번호',
  `orel_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구관계코드',
  `sub_ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부고객식별번호',
  `fire_mn_nrdps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화특주피보험자여부',
  `injr_hsp_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해입원담보여부',
  `injr_otp_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해통원담보여부',
  `dsas_hsp_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병입원담보여부',
  `dsas_otp_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병통원담보여부',
  `gnrz_hsp_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종합입원담보여부',
  `gnrz_otp_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종합통원담보여부',
  `sep_cr_cn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분리계약해약여부',
  `rntcr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트카여부',
  `fn_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금융기관코드',
  `prps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질권자구분코드',
  `prm_pym_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '보험료납부비율',
  `hndps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애인여부',
  `ntn_mrtmn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국가유공자여부',
  `ba_sadps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기초수급자여부',
  `crt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자구분코드',
  `dmos_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국내외구분코드',
  `indpd_mrtmn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '독립유공자여부',
  `dflt_pt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고엽제환자여부',
  `dmrcy_518_injd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민주518부상자여부',
  `ndtm_ris_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만기시재가입동의여부',
  `pfb_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자구분코드',
  `nrdps_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자동의여부',
  `ut_rt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '도급비율',
  `md_cfcap_entp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정계수적용업체여부',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `jb_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '직업변경순번',
  `age` decimal(3,0) DEFAULT NULL COMMENT '연령',
  `wdg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결혼여부',
  `lic_specd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면허종별코드',
  `licno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면허번호',
  `lic_cqdt` date DEFAULT NULL COMMENT '면허취득일자',
  `clm_crr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고경력여부',
  `drve_crr_yyct` decimal(3,0) DEFAULT NULL COMMENT '운전경력년수',
  `drve_crr_mntct` decimal(3,0) DEFAULT NULL COMMENT '운전경력개월수',
  `drv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자구분코드',
  `hot_stdt` date DEFAULT NULL COMMENT '임대차시기일자',
  `hot_clsdt` date DEFAULT NULL COMMENT '임대차종기일자',
  `hot_oj` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임대차목적',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `relpc_scr_inp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자화면입력여부',
  `idnty_cnfc_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신원확인증종류코드',
  `idnty_cnfc_et_info` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신원확인증기타정보',
  `idnty_cnfc_no` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신원확인증번호',
  `idnty_cnfc_isdt` date DEFAULT NULL COMMENT '신원확인증발급일자',
  `idnty_cnfc_is_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신원확인증발급기관명',
  `idnty_cnf_pdtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신원확인대표자명',
  `idnty_cnf_bnnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신원확인업종명',
  `rdch_cr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승환계약유형코드',
  `cr_udrtk_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차인수지역코드',
  `pect_sl_mntr_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '완전판매모니터링채널코드',
  `mail_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일수신여부',
  `crcc_colus_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약체결수집이용동의여부',
  `crcc_crdir_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약체결신용정보조회동의여부',
  `crcc_crdio_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약체결신용정보제공동의여부',
  `gdint_colus_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품소개수집이용동의여부',
  `gdint_crdio_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품소개신용정보제공동의여부',
  `gdint_sesin_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품소개민감정보동의여부',
  `crcc_sesin_agre_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약체결민감정보동의여부',
  `gdint_inq_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품소개조회동의여부',
  `cm_mn_us_cn_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통신수단이용해지동의여부',
  `pfb_astch_agr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자지정변경약정여부',
  `pfb_astch_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자지정변경사유코드',
  `is_crr_appr_strdt` date DEFAULT NULL COMMENT '가입경력인정시작일자',
  `is_crr_appr_nddt` date DEFAULT NULL COMMENT '가입경력인정종료일자',
  `md_slr_sadps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의료급여수급자여부',
  `fd_wsh_bj_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자금세탁대상등급코드',
  `ovse_pytx_dty_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해외납세의무유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_relpc_00` (`plno`,`cgaf_ch_seqno`,`relpc_seqno`),
  KEY `idx_ins_pl_relpc_05` (`hngl_relnm`,`ikd_grpcd`,`relpc_tpcd`,`prs_relpc_yn`,`plno`,`cgaf_ch_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=127507 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계관계자';
