--
-- Table structure for table `fin_np_acc_ldg`
--

DROP TABLE IF EXISTS `fin_np_acc_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_np_acc_ldg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `np_acc_ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '미지급계정원장번호',
  `crdt` date NOT NULL COMMENT '발생일자',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생시스템코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `py_dl_o1_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처리1차구분코드',
  `py_dl_o2_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처리2차구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `cr_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '발생원화금액',
  `cr_fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '발생외화금액',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `invln_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '투융자상품코드',
  `bsns_cnnno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호구분코드',
  `bsns_cnnno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호',
  `rvdt` date DEFAULT NULL COMMENT '수납일자',
  `rv_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납기관코드',
  `rv_xcno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납정산번호',
  `py_crno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급발생번호',
  `py_bjno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급대상번호',
  `rm_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '반제상태코드',
  `fnl_rmdt` date DEFAULT NULL COMMENT '최종반제일자',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `fina_dat_vrf_flg1_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재무데이터검증구분1값',
  `fina_dat_vrf_flg2_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재무데이터검증구분2값',
  `fina_dat_vrf_flg3_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재무데이터검증구분3값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_np_acc_ldg_00` (`np_acc_ldgno`),
  KEY `idx_fin_np_acc_ldg_10` (`py_crno`),
  KEY `idx_fin_np_acc_ldg_11` (`py_bjno`),
  KEY `idx_fin_np_acc_ldg_12` (`dh_stfno`,`crdt`)
) ENGINE=InnoDB AUTO_INCREMENT=1799 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='미지급계정원장';
