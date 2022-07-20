--
-- Table structure for table `fin_bdg_dp_spc`
--

DROP TABLE IF EXISTS `fin_bdg_dp_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bdg_dp_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dsodt` date NOT NULL COMMENT '발의일자',
  `bdg_dpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산발의번호',
  `dp_spc_seqno` decimal(5,0) NOT NULL COMMENT '발의내역순번',
  `act_ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '회계계정과목코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `woncr_scamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화발의금액',
  `fc_scamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화발의금액',
  `dc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공제유형코드',
  `dcrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '공제율',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `evd_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '증빙여부',
  `cy_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CY년월',
  `bdg_ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산계정과목코드',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산기관코드',
  `crnt_bdg_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '현재예산잔액',
  `rr_org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관실체구분코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `invln_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '투융자상품코드',
  `bzcs_o1_dvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비1차배분코드',
  `bzcs_o2_dvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비2차배분코드',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표라인번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_bdg_dp_spc_00` (`dsodt`,`bdg_dpno`,`dp_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산발의내역';
