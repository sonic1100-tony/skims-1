--
-- Table structure for table `lse_ltrm_ibnr_dvcf_avg`
--

DROP TABLE IF EXISTS `lse_ltrm_ibnr_dvcf_avg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_ibnr_dvcf_avg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_cvr_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR담보종류코드',
  `sts_trmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계기간코드',
  `cc_cyc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출주기구분코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `ibnr_ccst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR산출기준구분코드',
  `cls_dvlp_yyodr_num` decimal(3,0) NOT NULL COMMENT '마감진전년차수',
  `ibnr_avg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR평균구분코드',
  `avg_dsprm_dvcf` decimal(15,10) DEFAULT NULL COMMENT '평균결정보험금진전계수',
  `avg_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '평균손해액진전계수',
  `avg_if_dsprm_dvcf` decimal(15,10) DEFAULT NULL COMMENT '평균추정결정보험금진전계수',
  `avg_if_dmamt_dvcf` decimal(15,10) DEFAULT NULL COMMENT '평균추정손해액진전계수',
  `rn_acm_ds_tot_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수누적결정전체보험금액',
  `rn_dmamt_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수손해액보험금액',
  `if_ds_ibamt` decimal(17,2) DEFAULT NULL COMMENT '추정결정보험금액',
  `if_dmamt` decimal(17,2) DEFAULT NULL COMMENT '추정손해액',
  `xp_ds_ibamt` decimal(17,2) DEFAULT NULL COMMENT '예상결정보험금액',
  `xp_dmamt` decimal(17,5) DEFAULT NULL COMMENT '예상손해액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ltrm_ibnr_dvcf_avg_00` (`cls_yymm`,`ibnr_cvr_kndcd`,`sts_trmcd`,`cc_cyc_flgcd`,`ibnr_cls_flgcd`,`ibnr_ccst_flgcd`,`cls_dvlp_yyodr_num`,`ibnr_avg_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기IBNR진전계수평균';
