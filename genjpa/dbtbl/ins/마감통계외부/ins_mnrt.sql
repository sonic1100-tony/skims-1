--
-- Table structure for table `ins_mnrt`
--

DROP TABLE IF EXISTS `ins_mnrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mnrt` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `cr_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '계약년월',
  `leve_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '이탈년월',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `apl_ccl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '청약취소여부',
  `ltrm_gd_grp_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기상품군분류코드',
  `mn_crct` decimal(5,0) DEFAULT NULL COMMENT '유지계약건수',
  `mn_crprm` decimal(15,0) DEFAULT NULL COMMENT '유지계약보험료',
  `mn_yypy_cvprm` decimal(15,0) DEFAULT NULL COMMENT '유지년납환산보험료',
  `nwcr_cr_ct` decimal(7,0) DEFAULT NULL COMMENT '신계약계약건수',
  `nwcr_crprm` decimal(15,0) DEFAULT NULL COMMENT '신계약계약보험료',
  `nwcr_yypy_cvprm` decimal(15,0) DEFAULT NULL COMMENT '신계약년납환산보험료',
  `leve_crct` decimal(7,0) DEFAULT NULL COMMENT '이탈계약건수',
  `leve_cr_crprm` decimal(15,0) DEFAULT NULL COMMENT '이탈계약계약보험료',
  `leve_cr_yypy_cvprm` decimal(15,0) DEFAULT NULL COMMENT '이탈계약년납환산보험료',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`cr_yymm`,`leve_yymm`,`gdcd`,`apl_ccl_yn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유지율';
