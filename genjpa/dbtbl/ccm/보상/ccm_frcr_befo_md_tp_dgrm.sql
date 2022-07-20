--
-- Table structure for table `ccm_frcr_befo_md_tp_dgrm`
--

DROP TABLE IF EXISTS `ccm_frcr_befo_md_tp_dgrm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_frcr_befo_md_tp_dgrm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tp_dgrm_seqno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '유형표순번',
  `car_dfrn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량대차여부',
  `car_sng_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량단독여부',
  `car_cmpdg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량보상대물여부',
  `cr_xc_road_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차전용도로여부',
  `pklt_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주차장사고여부',
  `et_road_ty_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타도로형태여부',
  `nrpa_rpcrg_t2py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미수선수리비2회지급여부',
  `clsn_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추돌사고여부',
  `rvre_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후진사고여부',
  `cntrt_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉사고여부',
  `clah_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '충돌사고여부',
  `flodd_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '침수사고여부',
  `ps_obsnm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보유불명여부',
  `totls_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전손사고여부',
  `nrpa_rpcrg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미수선수리비여부',
  `xipy_ml2a_abov_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급200만원이상여부',
  `xipy_ml3a_abov_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급300만원이상여부',
  `xipy_ml5a_abov_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급500만원이상여부',
  `xipy_ml10a_abov_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급1000만원이상여부',
  `xipy_ml20a_abov_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급2000만원이상여부',
  `rgtnm_ps1_trt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기명1인특약여부',
  `mcpl_lmit_trt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부부한정특약여부',
  `drv_age40_belo_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자40세이하여부',
  `a5y_yytp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5년이상연식여부',
  `owcr_ad_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자차추가담보여부',
  `d10w_aprh_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '10일이내근접사고여부',
  `d90w_aprh_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '90일이내근접사고여부',
  `spls_ins_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '초과보험여부',
  `ltngt_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심야사고여부',
  `dlay_rcp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연접수여부',
  `foma_owcr_dfrn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외산자차대차여부',
  `hrm_victm_cpry_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가해자피해자모의여부',
  `ntt_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고의사고여부',
  `drnk_drve_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '음주운전여부',
  `nlic_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무면허사고여부',
  `nv_requ_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사의뢰구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_frcr_befo_md_tp_dgrm_00` (`tp_dgrm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외제차사전조정유형표';
