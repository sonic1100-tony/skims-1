--
-- Table structure for table `ins_cr_cr_ad`
--

DROP TABLE IF EXISTS `ins_cr_cr_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_cr_ad` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
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
  `cr_rcn_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량실사대상여부',
  `scd_is_crrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제2가입경력코드',
  `cr_ps_ct_sctcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량보유대수구간코드',
  `same_ply_gpno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일증권그룹번호',
  `ud_rancd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사순위코드',
  `nsc_bzndp_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계열사사업부코드',
  `rec_1_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '녹취1KEY',
  `rec_2_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '녹취2KEY',
  `rec_3_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '녹취3KEY',
  `rec_4_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '녹취4KEY',
  `rec_5_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '녹취5KEY',
  `cm_prg_rkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CM진행단계코드',
  `coop_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴채널코드',
  `o1_udrtk_iq_img_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차인수심의이미지구분코드',
  `o2_udrtk_iq_img_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차인수심의이미지구분코드',
  `o3_udrtk_iq_img_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차인수심의이미지구분코드',
  `o4_udrtk_iq_img_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4차인수심의이미지구분코드',
  `o5_udrtk_iq_img_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5차인수심의이미지구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험계약자동차부가';
