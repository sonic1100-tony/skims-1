--
-- Table structure for table `ins_basts_cr`
--

DROP TABLE IF EXISTS `ins_basts_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_basts_cr` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `fnl_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약상태코드',
  `fnl_cr_dt_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약세부상태코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `type_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종구분코드',
  `cc_xcpt_dlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '산출예외처리코드',
  `prm_str_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료구조구분코드',
  `cr_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약채널코드',
  `ce_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집경로코드',
  `gr_cr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체계약여부',
  `nrdct` decimal(9,0) DEFAULT NULL COMMENT '피보험자수',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_st_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험시기시각',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `ins_clstr_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종기시각',
  `dgn_proc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단절차구분코드',
  `an_opn_age` decimal(3,0) DEFAULT NULL COMMENT '연금개시연령',
  `an_py_trm` decimal(3,0) DEFAULT NULL COMMENT '연금지급기간',
  `an_py_opndt` date DEFAULT NULL COMMENT '연금지급개시일자',
  `cr_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량용도코드',
  `coop_gd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴상품구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기초통계계약';
