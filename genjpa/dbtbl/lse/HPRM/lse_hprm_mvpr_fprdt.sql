--
-- Table structure for table `lse_hprm_mvpr_fprdt`
--

DROP TABLE IF EXISTS `lse_hprm_mvpr_fprdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_mvpr_fprdt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `prprt_dt_seqno` decimal(3,0) NOT NULL COMMENT '재물상세순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `prdt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제품명',
  `adtx_incld_sl_prc` decimal(15,0) DEFAULT NULL COMMENT '부가세포함판매가격',
  `adtx_xcpt_sl_prc` decimal(15,0) DEFAULT NULL COMMENT '부가세제외판매가격',
  `mrgn_rt` decimal(17,2) DEFAULT NULL COMMENT '마진율',
  `mrgn_xcpt_prc` decimal(15,0) DEFAULT NULL COMMENT '마진제외가격',
  `by_cost` decimal(15,0) DEFAULT NULL COMMENT '매입원가',
  `drct_lbrxp_rt` decimal(17,2) DEFAULT NULL COMMENT '직접노무비비율',
  `drct_lbrxp` decimal(15,0) DEFAULT NULL COMMENT '직접노무비',
  `drct_bg_rt` decimal(17,2) DEFAULT NULL COMMENT '직접경비비율',
  `drct_bg` decimal(15,0) DEFAULT NULL COMMENT '직접경비',
  `prd_drtcs_rt` decimal(17,2) DEFAULT NULL COMMENT '제조간접비비율',
  `prd_drtcs` decimal(15,0) DEFAULT NULL COMMENT '제조간접비',
  `prs_amt_stot_rt` decimal(17,2) DEFAULT NULL COMMENT '가공비소계비율',
  `drct_inp_prs_amt_stot_rt` decimal(17,2) DEFAULT NULL COMMENT '직접입력가공비소계비율',
  `prs_amt_stot_amt` decimal(15,0) DEFAULT NULL COMMENT '가공비소계금액',
  `re_prd_cost` decimal(15,0) DEFAULT NULL COMMENT '재생산원가',
  `unprc` decimal(15,0) DEFAULT NULL COMMENT '단가',
  `tot_qant` decimal(5,0) DEFAULT NULL COMMENT '전체수량',
  `ivamt` decimal(17,2) DEFAULT NULL COMMENT '보험가액',
  `dm_qant` decimal(5,0) DEFAULT NULL COMMENT '손해수량',
  `dmgrt` decimal(15,7) DEFAULT NULL COMMENT '손해율',
  `dmamt` decimal(17,2) DEFAULT NULL COMMENT '손해액',
  `unprc_cal_metd_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단가계산방식내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_mvpr_fprdt_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`prprt_dt_seqno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM동산완제품';
