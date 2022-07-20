--
-- Table structure for table `fin_auto_tfact_rgt_tlm`
--

DROP TABLE IF EXISTS `fin_auto_tfact_rgt_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_auto_tfact_rgt_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `upls_tlm_tsdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송일자',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송시간',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스업무구분코드',
  `auto_tfact_rgt_tlm_dsccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체계좌등록전문식별코드',
  `tlm_dl_seqno` decimal(7,0) DEFAULT NULL COMMENT '전문처리순번',
  `prs_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `attf_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체신청구분코드',
  `auto_pym_dy` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동납부일',
  `bk_dh_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행취급지점코드',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `nml_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정상처리구분코드',
  `impcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불능코드',
  `brth_chek_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일체크구분코드',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민번호',
  `pyr_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납부자번호',
  `us_info` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용정보',
  `inorg_ctm_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관고객코드',
  `slc_event_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택이벤트구분코드',
  `bk_tmmno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행전문번호',
  `cap_mrk_inr_law_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자본시장통합법적용구분코드',
  `cmnpt_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공통부은행코드',
  `ndvdp_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개별부은행코드',
  `dl_br_gircd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래지점지로코드',
  `evd_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙자료구분코드',
  `wdrc_agre_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의자료구분코드',
  `wdrc_agre_da_kyvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금동의자료키값',
  `dpsr_rlnm_no_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주실명번호종류코드',
  `crt_hp_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자휴대폰전화국번',
  `crt_hp_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자휴대폰전화지역번호',
  `crt_hp_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자휴대폰전화일련번호',
  `chr_rcv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문자수신여부',
  `chr_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문자내용',
  `rq_chn_sys_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청채널시스템구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_auto_tfact_rgt_tlm_00` (`upls_tlm_tsdt`,`upls_tlm_ts_hms`,`upls_tmmno`,`upls_tlmcd`,`upls_bsns_flgcd`),
  KEY `idx_fin_auto_tfact_rgt_tlm_01` (`actno`)
) ENGINE=InnoDB AUTO_INCREMENT=105188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동이체계좌등록전문';
