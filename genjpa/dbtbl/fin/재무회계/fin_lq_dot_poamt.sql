--
-- Table structure for table `fin_lq_dot_poamt`
--

DROP TABLE IF EXISTS `fin_lq_dot_poamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_lq_dot_poamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lq_dotno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '청산일계번호',
  `cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약사고구분코드',
  `woncr_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화보험료',
  `fc_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화보험료',
  `woncr_cn_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화해약환급금액',
  `fc_cn_rtamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화해약환급금액',
  `woncr_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화수수료',
  `fc_cm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화수수료',
  `woncr_rnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화유보금액',
  `fc_rnamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화유보금액',
  `woncr_rnamt_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화유보금액이자',
  `fc_rnamt_nt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화유보금액이자',
  `woncr_crps_cs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화부대비용',
  `fc_crps_cs` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화부대비용',
  `woncr_crps_cs_ex` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화부대비용환입',
  `fc_crps_cs_ex` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화부대비용환입',
  `woncr_net_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화정미보험료',
  `fc_net_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화정미보험료',
  `woncr_pft_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화이익수수료',
  `fc_pft_cm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화이익수수료',
  `woncr_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화보험금액',
  `fc_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화보험금액',
  `woncr_nvcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화조사비',
  `fc_nvcs` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화조사비',
  `woncr_net_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화정미보험금액',
  `fc_net_ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화정미보험금액',
  `woncr_examt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환입금액',
  `fc_rtn_examt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화환급환입금액',
  `mnts_dbamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '가수차변금액',
  `mnts_ciamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '가수대변금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_lq_dot_poamt_00` (`lq_dotno`)
) ENGINE=InnoDB AUTO_INCREMENT=18199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청산일계계상금액';
