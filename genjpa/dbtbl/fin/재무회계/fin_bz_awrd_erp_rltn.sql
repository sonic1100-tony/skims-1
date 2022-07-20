--
-- Table structure for table `fin_bz_awrd_erp_rltn`
--

DROP TABLE IF EXISTS `fin_bz_awrd_erp_rltn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bz_awrd_erp_rltn` (
  `slpdt` date NOT NULL COMMENT '전표일자',
  `erp_slpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'ERP전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전표라인번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `stf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원구분코드',
  `awrd_amt` decimal(15,0) DEFAULT NULL COMMENT '시상금액',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목코드',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `evddt` date DEFAULT NULL COMMENT '증빙일자',
  `whtx_rflt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원천세반영여부',
  `br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점기관코드',
  `bzp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업소기관코드',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산기관코드',
  `nots` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요',
  `erp_pymtd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'ERP지급방법구분코드',
  `fina_dat_vrf_flg1_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재무데이터검증구분1값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`slpdt`,`erp_slpno`,`slp_lnno`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업시상ERP연계';
