--
-- Table structure for table `str_nprp_aw_cc_av`
--

DROP TABLE IF EXISTS `str_nprp_aw_cc_av`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_nprp_aw_cc_av` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `dp_cascd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입금원인코드',
  `dp_dt_cascd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입금세부원인코드',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `bz_atrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업속성코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `dh_hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급본부기관코드',
  `dh_bz_part_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급영업부문기관코드',
  `dh_aregp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지역단기관코드',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `dh_brof_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급출장소코드',
  `dh_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급팀기관코드',
  `mdf_cvav` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '수정환산실적',
  `fsti_cv_av` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '초회환산실적',
  `mmcv_fsti_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '월납환산초회보험료',
  `nwcr_mdf_prm` decimal(17,2) DEFAULT NULL COMMENT '신계약수정보험료',
  `cm_mdf_prm` decimal(15,0) DEFAULT NULL COMMENT '수금수정보험료',
  `rn_avamt` decimal(15,0) DEFAULT NULL COMMENT '원수실적금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_nprp_aw_cc_av_00` (`plyno`,`incm_prm_cr_seqno`,`pym_seq`,`dh_stfno`,`st_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비비례수당산출실적';
