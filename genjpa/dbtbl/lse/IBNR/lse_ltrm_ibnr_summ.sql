--
-- Table structure for table `lse_ltrm_ibnr_summ`
--

DROP TABLE IF EXISTS `lse_ltrm_ibnr_summ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ltrm_ibnr_summ` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ibnr_adm_clm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR관리사고년월',
  `dm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '청구년월',
  `ibnr_cvr_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR담보종류코드',
  `rn_pibam` decimal(17,2) NOT NULL COMMENT '원수지급보험금액',
  `rn_py_sep_ibamt` decimal(17,2) DEFAULT NULL COMMENT '원수지급분할보험금액',
  `rn_lltm_xiamt` decimal(17,2) DEFAULT NULL COMMENT '원수후기추산금액',
  `rn_lltm_sep_xiamt` decimal(17,2) DEFAULT NULL COMMENT '원수후기분할추산금액',
  `larg_clm_pibam` decimal(17,2) DEFAULT NULL COMMENT '대사고지급보험금액',
  `larg_clm_xiamt` decimal(17,2) DEFAULT NULL COMMENT '대사고추산금액',
  `fnl_rn_pibam` decimal(17,2) DEFAULT NULL COMMENT '최종원수지급보험금액',
  `re_lltm_xiamt` decimal(17,2) DEFAULT NULL COMMENT '출재후기추산금액',
  `fnl_rn_lltm_xiamt` decimal(17,2) DEFAULT NULL COMMENT '최종원수후기추산금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ltrm_ibnr_summ_00` (`cls_yymm`,`ibnr_adm_clm_yymm`,`dm_yymm`,`ibnr_cvr_kndcd`,`rn_pibam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장기IBNR요약';
