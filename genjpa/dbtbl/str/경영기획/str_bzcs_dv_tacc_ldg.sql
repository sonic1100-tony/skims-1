--
-- Table structure for table `str_bzcs_dv_tacc_ldg`
--

DROP TABLE IF EXISTS `str_bzcs_dv_tacc_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzcs_dv_tacc_ldg` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `wrkdt` date NOT NULL COMMENT '작업일자',
  `cm_db_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월차변원화금액',
  `cm_db_fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당월차변외화금액',
  `cm_crdt_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월대변원화금액',
  `cm_crdt_fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당월대변외화금액',
  `cm_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월원화금액',
  `cm_fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당월외화금액',
  `act_orgcd_lvl` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '회계기관코드레벨',
  `acc_sbjcd_lvl` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '계정과목코드레벨',
  `instm_lvl` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '보험종목레벨',
  `tot_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '집계여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`act_orgcd`,`ntacc_cd`,`ikd_grpcd`,`ins_imcd`,`fndcd`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비배분총계정원장';
