--
-- Table structure for table `fin_ifrs_tacc_ldg`
--

DROP TABLE IF EXISTS `fin_ifrs_tacc_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ifrs_tacc_ldg` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반특별구분코드',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `invln_gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '투융자상품코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `dltfp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처구분코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `tacc_tot_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '총계정집계구분코드',
  `tot_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '집계여부',
  `wrkdt` date NOT NULL COMMENT '작업일자',
  `bfmm_db_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월차변원화잔액',
  `bfmm_db_fc_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전월차변외화잔액',
  `bfmm_crdt_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월대변원화잔액',
  `bfmm_crdt_fc_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전월대변외화잔액',
  `bfmm_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월원화잔액',
  `bfmm_fc_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전월외화잔액',
  `cm_db_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월차변원화금액',
  `cm_db_fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당월차변외화금액',
  `cm_crdt_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월대변원화금액',
  `cm_crdt_fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당월대변외화금액',
  `cm_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월원화금액',
  `cm_fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당월외화금액',
  `cm_db_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월차변원화잔액',
  `cm_db_fc_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당월차변외화잔액',
  `cm_crdt_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월대변원화잔액',
  `cm_crdt_fc_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당월대변외화잔액',
  `cm_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월원화잔액',
  `cm_fc_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당월외화잔액',
  `ptrm_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기원화금액',
  `ptrm_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기원화잔액',
  `bfyy_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전년도원화잔액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`,`st_yymm`),
  UNIQUE KEY `pux_fin_ifrs_tacc_ldg_00` (`st_yymm`,`gn_spc_flgcd`,`act_orgcd`,`ntacc_cd`,`ikd_grpcd`,`ins_imcd`,`invln_gdcd`,`fndcd`,`dltfp_flgcd`,`dltcd`,`mncd`,`tacc_tot_flgcd`,`tot_yn`)
) ENGINE=InnoDB AUTO_INCREMENT=136949 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='IFRS총계정원장'
