--
-- Table structure for table `lse_dmas_crp_vl`
--

DROP TABLE IF EXISTS `lse_dmas_crp_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dmas_crp_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `cvap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원여부',
  `inssw_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기여부',
  `mncp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고다발자여부',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `vl_poct` decimal(5,0) DEFAULT NULL COMMENT '평가점수',
  `tmnd_vl_poct` decimal(5,0) DEFAULT NULL COMMENT '팀장평가점수',
  `avg_poct` decimal(5,2) DEFAULT NULL COMMENT '평균점수',
  `cv_poct` decimal(7,2) DEFAULT NULL COMMENT '환산점수',
  `wgt_ap_amt` decimal(17,2) DEFAULT NULL COMMENT '가중치적용금액',
  `pln_nv_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '현장조사평가점수',
  `fnl_rptg_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '최종보고서평가점수',
  `cpmt_prst_days` decimal(5,0) DEFAULT NULL COMMENT '보완제출일수',
  `end_rptg_vlpoc` decimal(5,0) DEFAULT NULL COMMENT '종결보고서평가점수',
  `cpmt_rqct` decimal(3,0) DEFAULT NULL COMMENT '보완요청건수',
  `fxqtt_vl_sumpt` decimal(5,2) DEFAULT NULL COMMENT '정량평가합산점수',
  `fxqtt_vl_cv_poct` decimal(5,2) DEFAULT NULL COMMENT '정량평가환산점수',
  `fxqtt_vl_wgt_rt` decimal(5,2) DEFAULT NULL COMMENT '정량평가가중치비율',
  `t_sumpt` decimal(5,2) DEFAULT NULL COMMENT '총합산점수',
  `t_cv_poct` decimal(5,2) DEFAULT NULL COMMENT '총환산점수',
  `wgt_rt` decimal(5,2) DEFAULT NULL COMMENT '가중치비율',
  `gnrz_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종합의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dmas_crp_vl_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`ctmno`,`cprt_entp_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해사정법인평가';
