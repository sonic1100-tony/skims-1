--
-- Table structure for table `ins_sbrnc_index_crst`
--

DROP TABLE IF EXISTS `ins_sbrnc_index_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_sbrnc_index_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '본부기관코드',
  `aregp_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '지역단기관코드',
  `br_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '지점기관코드',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `tot_rn_prm` decimal(17,2) DEFAULT NULL COMMENT '전체원수보험료',
  `psnus_bsnpp_rnprm` decimal(17,2) DEFAULT NULL COMMENT '개인용업무용원수보험료',
  `nw_apprm` decimal(17,2) DEFAULT NULL COMMENT '신규적용보험료',
  `ply_per_nwct` decimal(9,0) DEFAULT NULL COMMENT '증권당신규건수',
  `bdin1_nw_inct` decimal(9,0) DEFAULT NULL COMMENT '대인1신규가입건수',
  `bdin2_nw_inct` decimal(9,0) DEFAULT NULL COMMENT '대인2신규가입건수',
  `prdm_nw_inct` decimal(9,0) DEFAULT NULL COMMENT '대물신규가입건수',
  `obi_nw_inct` decimal(9,0) DEFAULT NULL COMMENT '자손신규가입건수',
  `unins_cr_injr_nw_inct` decimal(9,0) DEFAULT NULL COMMENT '무보험차량상해신규가입건수',
  `owcr_nw_inct` decimal(9,0) DEFAULT NULL COMMENT '자차신규가입건수',
  `emgmv_nw_inct` decimal(9,0) DEFAULT NULL COMMENT '긴급출동신규가입건수',
  `law_supt_nw_inct` decimal(9,0) DEFAULT NULL COMMENT '법률지원신규가입건수',
  `fml_trf_injr_nw_inct` decimal(9,0) DEFAULT NULL COMMENT '가족교통상해신규가입건수',
  `prdm_is_k5_abov_inct` decimal(9,0) DEFAULT NULL COMMENT '대물가입5천이상가입건수',
  `obi_is_k5_abov_inct` decimal(9,0) DEFAULT NULL COMMENT '자손가입5천이상가입건수',
  `emgmv_2_nw_inct` decimal(9,0) DEFAULT NULL COMMENT '긴급출동2신규가입건수',
  `dc_xc_pt50l_ct` decimal(9,0) DEFAULT NULL COMMENT '할인할증50퍼센트이하건수',
  `dc_xc_smamt` decimal(15,0) DEFAULT NULL COMMENT '할인할증합계금액',
  `rnwrt_bjct` decimal(9,0) DEFAULT NULL COMMENT '갱신율대상건수',
  `rnwrt_bj_rnwct` decimal(9,0) DEFAULT NULL COMMENT '갱신율대상갱신건수',
  `cm_rank_bj_brcno` decimal(5,0) DEFAULT NULL COMMENT '당월순위대상지점수',
  `cm_pt50l_dc_xc_rank` decimal(5,0) DEFAULT NULL COMMENT '당월50퍼센트이하할인할증순위',
  `cm_avg_dc_xc_rank` decimal(5,0) DEFAULT NULL COMMENT '당월평균할인할증순위',
  `cm_bct_prm_rank` decimal(5,0) DEFAULT NULL COMMENT '당월건당보험료순위',
  `acm_rank_bj_brcno` decimal(5,0) DEFAULT NULL COMMENT '누적순위대상지점수',
  `acm_pt50l_dc_xc_rank` decimal(5,0) DEFAULT NULL COMMENT '누적50퍼센트이하할인할증순위',
  `acm_avg_dc_xc_rank` decimal(5,0) DEFAULT NULL COMMENT '누적평균할인할증순위',
  `acm_bct_prm_rank` decimal(5,0) DEFAULT NULL COMMENT '누적건당보험료순위',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_sbrnc_index_crst_00` (`hdqt_orgcd`,`aregp_orgcd`,`br_orgcd`,`st_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부지점지표현황';
