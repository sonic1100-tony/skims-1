--
-- Table structure for table `ins_pl_cr_ad_batch`
--

DROP TABLE IF EXISTS `ins_pl_cr_ad_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cr_ad_batch` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `shtm_xctcs_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단기특례대상여부',
  `opinf_nts_pty_bjpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운행정보미전송추징대상코드',
  `py_act_nof_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급계좌미제공동의여부',
  `snrps_prnot_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종피보험자출력물구분코드',
  `xp_dmgrt` decimal(12,6) DEFAULT NULL COMMENT '예상손해율',
  `xp_sum_rt` decimal(12,6) DEFAULT NULL COMMENT '예상합산율',
  `md_sum_rt` decimal(12,6) DEFAULT NULL COMMENT '조정합산율',
  `udrtk_score_st_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수스코어기준등급코드',
  `cmps_tr_cnf_yn1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유상운송확인여부1',
  `cmps_tr_cnf_yn2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유상운송확인여부2',
  `cr_is_crrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량가입경력코드',
  `scd_is_crrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제2가입경력코드',
  `cr_ps_ct_sctcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량보유대수구간코드',
  `same_ply_gpno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일증권그룹번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`cgaf_ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험설계자동차부가_배치';
