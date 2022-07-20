--
-- Table structure for table `fin_adtx_inr`
--

DROP TABLE IF EXISTS `fin_adtx_inr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_adtx_inr` (
  `evddt` date NOT NULL COMMENT '증빙일자',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생시스템코드',
  `spc_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '내역일련번호',
  `evdno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙번호',
  `evd_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙종류코드',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `rpr_prdno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신고기수',
  `by_sl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '매입매출구분코드',
  `adtx_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '부가세분류코드',
  `bzwpl_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업장사업자번호',
  `dlplc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처구분코드',
  `dlplc_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처식별번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `dlpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처명',
  `bzps_bstnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자업태명',
  `bzps_imnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자종목명',
  `buy` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '매수',
  `txrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '세율',
  `dcrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '공제율',
  `dc_syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공제공급가액',
  `dc_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공제세액',
  `non_dc_syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '불공제공급가액',
  `non_dc_txamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '불공제세액',
  `syamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공급가액합계',
  `txamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '세액합계',
  `da_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자료발생구분코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `hqbld_rgtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사옥등록코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`evddt`,`cr_syscd`,`spc_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부가세통합';
