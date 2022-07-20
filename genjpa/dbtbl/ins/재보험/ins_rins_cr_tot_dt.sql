--
-- Table structure for table `ins_rins_cr_tot_dt`
--

DROP TABLE IF EXISTS `ins_rins_cr_tot_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_cr_tot_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `amt_cr_untno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '금액발생단위번호',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `rins_st_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험기준유형코드',
  `rins_stno` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험기준번호',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수형태코드',
  `relpc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자유형코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `eng_relnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문관계자명',
  `re_dl_bjno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '출재처리대상번호',
  `re_ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '출재배서번호',
  `re_dlno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '출재처리번호',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재구분코드',
  `re_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재유형코드',
  `re_ppdt` date NOT NULL COMMENT '출재계상일자',
  `lq_pr_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산예정년월',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `rinsr_reno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험자출재번호',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자코드',
  `nre_prm` decimal(17,2) NOT NULL COMMENT '순출재보험료',
  `nre_woncr_cv_prm` decimal(15,0) NOT NULL COMMENT '순출재원화환산보험료',
  `re_cm` decimal(17,2) NOT NULL COMMENT '출재수수료',
  `woncr_cv_re_cm` decimal(15,0) NOT NULL COMMENT '원화환산출재수수료',
  `lq_dotno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산일계번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rins_cr_tot_dt_00` (`amt_cr_untno`,`ptccd`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험계약집계상세';
