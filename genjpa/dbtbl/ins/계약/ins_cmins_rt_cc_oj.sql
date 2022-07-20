--
-- Table structure for table `ins_cmins_rt_cc_oj`
--

DROP TABLE IF EXISTS `ins_cmins_rt_cc_oj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmins_rt_cc_oj` (
  `rt_cc_no` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '요율산출번호',
  `rkvl_seqno` decimal(5,0) NOT NULL COMMENT '위험평가순번',
  `rt_cc_oj_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요율산출목적물유형코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `isamt` decimal(17,2) NOT NULL COMMENT '가입금액',
  `woncr_cv_isamt` decimal(15,0) NOT NULL COMMENT '원화환산가입금액',
  `cmp_lmamt` decimal(17,2) NOT NULL COMMENT '보상한도금액',
  `woncr_cv_cmp_lmamt` decimal(15,0) NOT NULL COMMENT '원화환산보상한도금액',
  `self_chamt` decimal(15,0) NOT NULL COMMENT '자기부담금액',
  `woncr_cv_self_chamt` decimal(15,0) NOT NULL COMMENT '원화환산자기부담금액',
  `pml_or_eml_rt` decimal(12,6) NOT NULL COMMENT 'PML/EML비율',
  `rt_cc_cmp_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율산출보상기간코드',
  `rt_cc_imu_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율산출면책기간코드',
  `etqk_cvr_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지진담보가입여부',
  `typh_cvr_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '태풍담보가입여부',
  `flood_cvr_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '홍수담보가입여부',
  `rob_cvr_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도난담보가입여부',
  `xts_cvr_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확장담보가입여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rt_cc_no`,`rkvl_seqno`,`rt_cc_oj_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험요율산출목적물';
