--
-- Table structure for table `fin_dp_dl_list_nt_tlm`
--

DROP TABLE IF EXISTS `fin_dp_dl_list_nt_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dp_dl_list_nt_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `upls_tlm_tsdt` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송일자',
  `upls_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문전송시간',
  `upls_tmmno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스전문번호',
  `upls_tlmcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유플러스전문코드',
  `upls_bsns_flgcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '유플러스업무구분코드',
  `tsdt` date DEFAULT NULL COMMENT '전송일자',
  `tmmno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문번호',
  `mthr_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모계좌번호',
  `dp_dl_list_nt_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금거래명세통지거래구분코드',
  `dl_cr_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래발생은행코드',
  `dnamt` decimal(15,0) DEFAULT NULL COMMENT '거래금액',
  `tblam_sign` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔액부호',
  `dlaf_tblam` decimal(15,0) DEFAULT NULL COMMENT '거래후잔액',
  `dp_dl_bk_offcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금거래은행점포코드',
  `dpps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금인성명',
  `chkno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수표번호',
  `slc_domn_1_vl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택영역1값',
  `slc_domn_2_vl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택영역2값',
  `slc_domn_3_vl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선택영역3값',
  `dp_dlpcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금거래처코드',
  `dp_dl_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금거래시간',
  `dp_deldt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금거래일자',
  `bk_tmmno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행전문번호',
  `cap_mrk_inr_law_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자본시장통합법적용구분코드',
  `cmnpt_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공통부은행코드',
  `ndvdp_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개별부은행코드',
  `dp_bk_offcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금은행점포코드',
  `bll_nd_dp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '어음만기입금구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_dp_dl_list_nt_tlm_00` (`upls_tlm_tsdt`,`upls_tlm_ts_hms`,`upls_tmmno`,`upls_tlmcd`,`upls_bsns_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예금거래명세통지전문';
