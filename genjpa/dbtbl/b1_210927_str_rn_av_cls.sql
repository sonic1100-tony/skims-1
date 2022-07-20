--
-- Table structure for table `b1_210927_str_rn_av_cls`
--

DROP TABLE IF EXISTS `b1_210927_str_rn_av_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b1_210927_str_rn_av_cls` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `cls_da_seqno` decimal(10,0) NOT NULL COMMENT '마감자료순번',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '수입보험료발생순번',
  `cnrdt` date NOT NULL COMMENT '계약일자',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `fnl_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약상태코드',
  `fnl_cr_dt_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종계약세부상태코드',
  `fnl_cr_st_chdt` date DEFAULT NULL COMMENT '최종계약상태변경일자',
  `nw_rnw_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규갱신구분코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `rv_ccldt` date DEFAULT NULL COMMENT '수납취소일자',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `nanum_trt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '나눔특약여부',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '최종납입년월',
  `rp_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '영수보험료',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `dp_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금원인코드',
  `dp_dt_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금세부원인코드',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `condt_t_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공동인수총보험료',
  `mdf_cvav` decimal(17,2) NOT NULL COMMENT '수정환산실적',
  `mpy_cv_prm` decimal(17,2) NOT NULL COMMENT '월납환산보험료',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`cls_da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='원수실적마감';
