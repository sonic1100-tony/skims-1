--
-- Table structure for table `fin_acc_dot`
--

DROP TABLE IF EXISTS `fin_acc_dot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_acc_dot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반특별구분코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `invln_gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '투융자상품코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `dltfp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처구분코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `act_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '회계속성코드',
  `wrkdt` date NOT NULL COMMENT '작업일자',
  `acc_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '계정원화잔액',
  `ldg_woncr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원장원화잔액',
  `acc_fc_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '계정외화잔액',
  `ldg_fc_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원장외화잔액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_acc_dot_00` (`stdt`,`gn_spc_flgcd`,`ntacc_cd`,`act_orgcd`,`ikd_grpcd`,`ins_imcd`,`invln_gdcd`,`fndcd`,`dltfp_flgcd`,`dltcd`,`mncd`,`act_atrcd`)
) ENGINE=InnoDB AUTO_INCREMENT=14869 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계정일계';
