--
-- Table structure for table `fin_fd_index`
--

DROP TABLE IF EXISTS `fin_fd_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fd_index` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `fd_bopa_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자금수지표분류코드',
  `fd_bopa_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자금수지표항목코드',
  `crtdd_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당일입금금액',
  `mnth_accm_dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '월누계입금금액',
  `crtdd_wamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당일출금금액',
  `mnth_accm_wamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '월누계출금금액',
  `yy_pfrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '년수익율',
  `isp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입사고객번호',
  `gnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반금액',
  `spc_ndvn_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '특별무배당금액',
  `spc_xsdvm_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '특별유배당금액',
  `an_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연금금액',
  `shtm_fd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단기자금구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화금액',
  `xcrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '환율',
  `norm_irt` decimal(5,3) NOT NULL DEFAULT '0.000' COMMENT '보통금리',
  `woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화금액',
  `fd_inex_dcn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자금수지확정여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`fd_bopa_csfcd`,`fd_bopa_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자금수지표';
