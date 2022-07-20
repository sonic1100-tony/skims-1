--
-- Table structure for table `fin_mnbrn_acc_slp_spc`
--

DROP TABLE IF EXISTS `fin_mnbrn_acc_slp_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_mnbrn_acc_slp_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전표라인번호',
  `dbcr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차대구분코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `woncr_poamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화계상금액',
  `fc_poamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화계상금액',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `dltfp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대처구분코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대처코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `invln_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '투융자상품코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장번호',
  `bsns_cnnno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호구분코드',
  `bsns_cnnno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호',
  `bsns_cnndt` date DEFAULT NULL COMMENT '업무관련일자',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `bzcs_o1_dvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비1차배분코드',
  `bzcs_o2_dvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비2차배분코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산기관코드',
  `dlplc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처구분코드',
  `dlpno` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처번호',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드회사코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '펀드코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '적요사항',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_mnbrn_acc_slp_spc_00` (`slpdt`,`slpno`,`slp_lnno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='본지점계정전표내역';
