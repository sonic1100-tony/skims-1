--
-- Table structure for table `fin_ldg_acc_crr`
--

DROP TABLE IF EXISTS `fin_ldg_acc_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ldg_acc_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cr_rmdt` date NOT NULL COMMENT '발생반제일자',
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장종류코드',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `cr_rm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생반제구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `fc_cr_rmamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화발생반제금액',
  `woamt_cr_rmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화금액발생반제금액',
  `fc_cr_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화발생잔액',
  `woncr_cr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화발생잔액',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `acc_crr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정이력유형코드',
  `xcdt` date DEFAULT NULL COMMENT '정산일자',
  `xc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산기관코드',
  `xcno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산번호',
  `dsodt` date DEFAULT NULL COMMENT '발의일자',
  `bdg_dpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산발의번호',
  `bf_ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계정과목코드',
  `bfact_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전회계기관코드',
  `bfdh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전취급기관코드',
  `bfdh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전취급직원번호',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표라인번호',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '삭제여부',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `erp_ts_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ERP전송여부',
  `erp_tsdt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ERP전송일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`,`cr_rmdt`),
  KEY `idx_fin_ldg_acc_crr_01` (`ldgno`,`ldg_kndcd`)
) ENGINE=InnoDB AUTO_INCREMENT=68246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='원장계정이력'
