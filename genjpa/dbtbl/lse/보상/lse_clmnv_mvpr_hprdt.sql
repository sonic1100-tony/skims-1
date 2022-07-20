--
-- Table structure for table `lse_clmnv_mvpr_hprdt`
--

DROP TABLE IF EXISTS `lse_clmnv_mvpr_hprdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmnv_mvpr_hprdt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `clm_nvgd_seqno` decimal(3,0) NOT NULL COMMENT '사고조사물순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `prdt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제품명',
  `prdt_flgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제품구분명',
  `by_cost` decimal(15,0) DEFAULT NULL COMMENT '매입원가',
  `pw_1_amt` decimal(15,0) DEFAULT NULL COMMENT '공정1금액',
  `pw_2_amt` decimal(15,0) DEFAULT NULL COMMENT '공정2금액',
  `pw_3_amt` decimal(15,0) DEFAULT NULL COMMENT '공정3금액',
  `pw_4_amt` decimal(15,0) DEFAULT NULL COMMENT '공정4금액',
  `pw_5_amt` decimal(15,0) DEFAULT NULL COMMENT '공정5금액',
  `unprc_prs_amt` decimal(15,0) DEFAULT NULL COMMENT '단가가공금액',
  `pw_unprc_stot_amt` decimal(15,0) DEFAULT NULL COMMENT '공정단가소계금액',
  `pwrt_t_prs_amt` decimal(15,0) DEFAULT NULL COMMENT '공정율총가공금액',
  `pwrt` decimal(17,2) DEFAULT NULL COMMENT '공정율',
  `pwrt_prs_amt` decimal(15,0) DEFAULT NULL COMMENT '공정율가공금액',
  `pwrt_unprc_stot_amt` decimal(15,0) DEFAULT NULL COMMENT '공정율단가소계금액',
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
  UNIQUE KEY `pux_lse_clmnv_mvpr_hprdt_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`clm_nvgd_seqno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사동산반제품';
