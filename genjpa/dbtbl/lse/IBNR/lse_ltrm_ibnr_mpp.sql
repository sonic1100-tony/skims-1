--
-- Table structure for table `lse_ltrm_ibnr_mpp`
--

DROP TABLE IF EXISTS `lse_ltrm_ibnr_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_ibnr_mpp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_cvr_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR담보종류코드',
  `sts_trmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통계기간코드',
  `cc_cyc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출주기구분코드',
  `ibnr_cls_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감구분코드',
  `ibnr_ccst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR산출기준구분코드',
  `ibnr_cls_rnd_yyct` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR마감경과년수',
  `ibnr_clm_rnd_yyct` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR사고경과년수',
  `cls_dvlp_yyodr_num` decimal(3,0) DEFAULT NULL COMMENT '마감진전년차수',
  `clm_dvlp_yyodr_num` decimal(3,0) DEFAULT NULL COMMENT '사고진전년차수',
  `fnl_rn_pibam` decimal(17,2) DEFAULT NULL COMMENT '최종원수지급보험금액',
  `fnl_rn_lltm_xiamt` decimal(17,2) DEFAULT NULL COMMENT '최종원수후기추산금액',
  `dmamt` decimal(17,2) DEFAULT NULL COMMENT '손해액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ltrm_ibnr_mpp_00` (`cls_yymm`,`ibnr_cvr_kndcd`,`sts_trmcd`,`cc_cyc_flgcd`,`ibnr_cls_flgcd`,`ibnr_ccst_flgcd`,`ibnr_cls_rnd_yyct`,`ibnr_clm_rnd_yyct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기IBNR매핑';
