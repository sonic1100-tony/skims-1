--
-- Table structure for table `ins_re_dl`
--

DROP TABLE IF EXISTS `ins_re_dl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_re_dl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `re_dlno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '출재처리번호',
  `re_dl_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출재처리대상구분코드',
  `re_dl_bjno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '출재처리대상번호',
  `nprp_lyrno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비비례LAYER번호',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `re_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재유형코드',
  `rn_xol_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원수XOL구분코드',
  `re_dl_scl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재처리범위구분코드',
  `ac_tf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경리이체구분코드',
  `ac_tfdt` date DEFAULT NULL COMMENT '경리이체일자',
  `redt` date DEFAULT NULL COMMENT '출재일자',
  `re_ppdt` date DEFAULT NULL COMMENT '출재계상일자',
  `lq_pr_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산예정년월',
  `cls_xcrt_apdt` date DEFAULT NULL COMMENT '마감환율적용일자',
  `cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고구분코드',
  `xol_crano` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL계약번호',
  `xol_clmns_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL사고보험종목코드',
  `re_dpsrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '출재예탁율',
  `avg_cmrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '평균수수료율',
  `bdr_cvr_incld_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신배책담보포함여부',
  `re_st_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재기준단위코드',
  `re_ap_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재적용화폐코드',
  `rt_aqrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율구득처코드',
  `fire_prdm_incyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화재대물포함여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_re_dl_00` (`re_dlno`),
  KEY `idx_ins_re_dl_02` (`re_dl_bjno`,`re_dl_bj_flgcd`,`cr_clm_flgcd`,`re_flgcd`,`lq_pr_yymm`,`re_dlno`,`re_dpsrt`,`re_ppdt`,`re_tpcd`)
) ENGINE=InnoDB AUTO_INCREMENT=52812 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출재처리';
