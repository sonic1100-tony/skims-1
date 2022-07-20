--
-- Table structure for table `ins_mthy_re_prm`
--

DROP TABLE IF EXISTS `ins_mthy_re_prm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mthy_re_prm` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고구분코드',
  `riamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험금액구분코드',
  `crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '계약번호',
  `gd_cvr_re_flgcd` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '상품담보출재구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `rert` decimal(12,6) DEFAULT NULL COMMENT '출재율',
  `ba_prm` decimal(15,0) DEFAULT NULL COMMENT '기본보험료',
  `ap_prm` decimal(17,2) DEFAULT NULL COMMENT '적용보험료',
  `rnd_yyct` decimal(5,0) DEFAULT NULL COMMENT '경과년수',
  `rn_pend_amt` decimal(15,0) DEFAULT NULL COMMENT '원수미결금액',
  `re_pend_amt` decimal(17,6) DEFAULT NULL COMMENT '출재미결금액',
  `rk_prm` decimal(15,0) DEFAULT NULL COMMENT '위험보험료',
  `re_prm` decimal(17,2) DEFAULT NULL COMMENT '출재보험료',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`plyno`,`cr_clm_flgcd`,`riamt_flgcd`,`crano`,`gd_cvr_re_flgcd`,`gdcd`,`cvrcd`,`cvr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='월별출재보험료';
