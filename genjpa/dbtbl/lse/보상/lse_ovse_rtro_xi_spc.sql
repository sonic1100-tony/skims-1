--
-- Table structure for table `lse_ovse_rtro_xi_spc`
--

DROP TABLE IF EXISTS `lse_ovse_rtro_xi_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ovse_rtro_xi_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ovse_rtro_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '해외수재구분코드',
  `adm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '관리년월',
  `adm_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '관리일련번호',
  `adm_seqno` decimal(10,0) NOT NULL COMMENT '관리순번',
  `tot_crct` decimal(7,0) DEFAULT NULL COMMENT '전체발생건수',
  `rtro_crano` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수재계약번호',
  `rtro_cr_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수재계약년도',
  `cr_ccdt` date DEFAULT NULL COMMENT '계약체결일자',
  `thcp_qtrt` decimal(12,6) DEFAULT NULL COMMENT '당사지분율',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `xcrt` decimal(12,6) DEFAULT NULL COMMENT '환율',
  `remn_xi_amt` decimal(17,2) DEFAULT NULL COMMENT '잔여추산금액',
  `ibnr_rrfnd` decimal(17,2) DEFAULT NULL COMMENT 'IBNR책임준비금액',
  `ibnr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IBNR구분코드',
  `ibnr_stdt` date DEFAULT NULL COMMENT 'IBNR기준일자',
  `ref_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고번호',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ovse_rtro_xi_spc_00` (`ovse_rtro_flgcd`,`adm_yymm`,`adm_sno`,`adm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해외수재추산내역';
