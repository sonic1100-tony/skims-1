--
-- Table structure for table `ins_cmins_ins_cr_clgdt`
--

DROP TABLE IF EXISTS `ins_cmins_ins_cr_clgdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmins_ins_cr_clgdt` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `cls_bjno` varchar(40) COLLATE utf8mb4_bin NOT NULL COMMENT '마감대상번호',
  `rinsr_reno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험자출재번호',
  `cls_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료구분코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `crt_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자사업자번호',
  `sbd_gr_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하위단체고객번호',
  `pst_rins_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경유재보험구분코드',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '브로커재보험자코드',
  `ptccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참여사코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `isamt` decimal(17,2) NOT NULL COMMENT '가입금액',
  `woncr_cv_isamt` decimal(15,0) NOT NULL COMMENT '원화환산가입금액',
  `ap_prm` decimal(17,2) NOT NULL COMMENT '적용보험료',
  `woncr_cv_prm` decimal(15,0) NOT NULL COMMENT '원화환산보험료',
  `nre_isamt` decimal(17,2) NOT NULL COMMENT '순출재가입금액',
  `nre_woncr_cv_isamt` decimal(15,0) NOT NULL COMMENT '순출재원화환산가입금액',
  `nre_prm` decimal(17,2) NOT NULL COMMENT '순출재보험료',
  `nre_woncr_cv_prm` decimal(15,0) NOT NULL COMMENT '순출재원화환산보험료',
  `nre_cn_rtamt` decimal(17,2) NOT NULL COMMENT '순출재해약환급금액',
  `nre_woncv_cn_rtamt` decimal(15,0) NOT NULL COMMENT '순출재원화환산해약환급금액',
  `re_cm` decimal(17,2) NOT NULL COMMENT '출재수수료',
  `woncr_cv_re_cm` decimal(15,0) NOT NULL COMMENT '원화환산출재수수료',
  `re_nelp_prm` decimal(17,2) NOT NULL COMMENT '출재미경과보험료',
  `woncr_cv_re_nrnpr` decimal(15,0) NOT NULL COMMENT '원화환산출재미경과보험료',
  `plcg_or_recpc_rert` decimal(12,6) NOT NULL COMMENT 'PLACINGOR재출출재율',
  `re_cmrt` decimal(12,6) NOT NULL COMMENT '출재수수료율',
  `ac_tf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경리이체구분코드',
  `lq_dotno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산일계번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `incm_prm_cr_seqno` decimal(5,0) DEFAULT NULL COMMENT '수입보험료발생순번',
  `re_rnd_prm` decimal(15,0) DEFAULT NULL COMMENT '출재경과보험료',
  `pft_cm` decimal(17,2) DEFAULT NULL COMMENT '이익수수료',
  `trt_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특약년월',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`cls_bjno`,`rinsr_reno`,`cls_da_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험계약결산상세';
