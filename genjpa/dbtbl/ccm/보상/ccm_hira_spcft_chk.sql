--
-- Table structure for table `ccm_hira_spcft_chk`
--

DROP TABLE IF EXISTS `ccm_hira_spcft_chk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_spcft_chk` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hira_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수년도',
  `hira_rcpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원접수번호',
  `hira_dmbil_sno` decimal(3,0) NOT NULL COMMENT '심평원청구서일련번호',
  `hira_spcft_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원명세서일련번호',
  `hira_dv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심평원배당구분코드',
  `hira_ud_dgre` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원심사차수',
  `hira_xc_ud_dgre` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원정산심사차수',
  `mdorg_dmdt` date NOT NULL COMMENT '의료기관청구일자',
  `hira_rcpdt` date NOT NULL COMMENT '심평원접수일자',
  `hira_dm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원청구구분코드',
  `thcp_dv_dt` date NOT NULL COMMENT '당사배당일자',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `vshs_dt` date DEFAULT NULL COMMENT '내원일자',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해서열',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `dm_ud_seqno` decimal(3,0) DEFAULT NULL COMMENT '청구심사순번',
  `py_rslt_no` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급결의번호',
  `chk_dv_cnfdt` date DEFAULT NULL COMMENT '점검배당확인일자',
  `quf_vald_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자격유효여부',
  `quf_chk_ctn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자격점검의견',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `py_gu_stop_dt` date DEFAULT NULL COMMENT '지급보증중지일자',
  `agdt` date DEFAULT NULL COMMENT '합의일자',
  `pt_dedt` date DEFAULT NULL COMMENT '환자사망일자',
  `py_gu_mx_amt` decimal(15,0) DEFAULT NULL COMMENT '지급보증상한금액',
  `hira_py_impcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심평원지급불능코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `dmur_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이의제기여부',
  `trs_dcuno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송신문서번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_spcft_chk_00` (`hira_rcp_yr`,`hira_rcpno`,`hira_dmbil_sno`,`hira_spcft_sno`,`hira_dv_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원명세서점검';
