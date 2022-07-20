--
-- Table structure for table `ins_gn_reins_dm_clg_info`
--

DROP TABLE IF EXISTS `ins_gn_reins_dm_clg_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_gn_reins_dm_clg_info` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `rn_rtro_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원수수재계약구분코드',
  `rertr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출수재구분코드',
  `cls_bjno` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '마감대상번호',
  `ibnf_cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험금비용구분코드',
  `xi_py_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '추산지급구분코드',
  `rins_crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험계약번호',
  `rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험자코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `dmos_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국내외구분코드',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `rert` decimal(12,6) DEFAULT NULL COMMENT '출재율',
  `re_pibam` decimal(17,2) DEFAULT NULL COMMENT '출재지급보험금액',
  `re_py_ibnf_rtamt` decimal(17,2) DEFAULT NULL COMMENT '출재지급보험금환급금',
  `re_xi_ibamt` decimal(17,2) DEFAULT NULL COMMENT '출재추산보험금액',
  `re_nvcs` decimal(17,2) DEFAULT NULL COMMENT '출재조사비',
  `re_nvcs_rfamt` decimal(17,2) DEFAULT NULL COMMENT '출재조사비준비금액',
  `woncr_re_py_ibnf` decimal(15,0) DEFAULT NULL COMMENT '원화출재지급보험금',
  `woncr_re_py_ibnf_rtamt` decimal(15,0) DEFAULT NULL COMMENT '원화출재지급보험금환급금액',
  `woncr_re_xiamt` decimal(15,0) DEFAULT NULL COMMENT '원화출재추산보험금액',
  `woncr_re_nvcs` decimal(15,0) DEFAULT NULL COMMENT '원화출재조사비',
  `woncr_re_nvcs_rfamt` decimal(15,0) DEFAULT NULL COMMENT '원화출재조사비준비금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  PRIMARY KEY (`cls_yymm`,`rn_rtro_cr_flgcd`,`rertr_flgcd`,`cls_bjno`,`ibnf_cs_flgcd`,`xi_py_flgcd`,`rins_crano`,`rincd`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반재보험손해결산정보'
