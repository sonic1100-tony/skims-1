--
-- Table structure for table `fin_bnc_dp_ldg`
--

DROP TABLE IF EXISTS `fin_bnc_dp_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bnc_dp_ldg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bnc_dp_ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '방카예금원장번호',
  `deldt` date NOT NULL COMMENT '거래일자',
  `dl_hms` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래시각',
  `dfpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예금상대처코드',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `dnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '거래금액',
  `nml_ccl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정상취소구분코드',
  `brald_ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취대취소여부',
  `dprnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금자명',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `bk_offcd_info` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행점포코드정보',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `rtxno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증번호',
  `dp_dpdt` date DEFAULT NULL COMMENT '예금입금일자',
  `tlm_pno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문고유번호',
  `rm_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '반제여부',
  `rv_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납기관코드',
  `rv_xcno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납정산번호',
  `rvdt` date DEFAULT NULL COMMENT '수납일자',
  `rm_slpdt` date DEFAULT NULL COMMENT '반제전표일자',
  `rm_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반제전표번호',
  `rm_slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반제전표라인번호',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `dp_wdrc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금출금구분코드',
  `bnc_tot_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방카집계구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_bnc_dp_ldg_00` (`bnc_dp_ldgno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='방카예금원장';
