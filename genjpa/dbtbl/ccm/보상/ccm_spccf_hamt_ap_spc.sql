--
-- Table structure for table `ccm_spccf_hamt_ap_spc`
--

DROP TABLE IF EXISTS `ccm_spccf_hamt_ap_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_spccf_hamt_ap_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `spccf_hamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특인고액구분코드',
  `spccf_hamt_spc_seqno` decimal(3,0) NOT NULL COMMENT '특인고액내역순번',
  `spccf_hamt_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '특인고액접수년도',
  `spccf_hamt_sno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '특인고액일련번호',
  `rqfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청직원번호',
  `rq_dthms` datetime NOT NULL COMMENT '요청일시',
  `mn_apamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '최소승인금액',
  `mx_apamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '최대승인금액',
  `rqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신청금액',
  `ag_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '합의가능금액',
  `thcp_prst_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사제시금액',
  `tmnd_dcsam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '팀장판단금액',
  `py_rslt_no` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급결의번호',
  `rl_rsdpl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실거주지구분코드',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `cnsdr_rst` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자문의결과',
  `py_stamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급기준금액',
  `optn_stnw_ccst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임의기준내산출기준구분코드',
  `optn_stnw_cc_seq` decimal(3,0) DEFAULT NULL COMMENT '임의기준내산출회차',
  `optn_stdo_ccst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임의기준외산출기준구분코드',
  `optn_stdo_cc_seq` decimal(3,0) DEFAULT NULL COMMENT '임의기준외산출회차',
  `hamt_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고액승인구분코드',
  `dcn_ccst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확정산출기준구분코드',
  `dcn_cc_seq` decimal(3,0) DEFAULT NULL COMMENT '확정산출회차',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구금액',
  `dy1_avg_emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1일평균청구금액',
  `udamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '심사금액',
  `dy1_avg_udamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1일평균심사금액',
  `rpair_strdt` date DEFAULT NULL COMMENT '수리시작일자',
  `rpair_nddt` date DEFAULT NULL COMMENT '수리종료일자',
  `victm_ramt` decimal(17,2) DEFAULT '0.00' COMMENT '피해자요구금액',
  `ap_o1_amt` decimal(17,2) DEFAULT '0.00' COMMENT '승인1차금액',
  `ap_o2_amt` decimal(17,2) DEFAULT '0.00' COMMENT '승인2차금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_spccf_hamt_ap_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`spccf_hamt_flgcd`,`spccf_hamt_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특인고액승인내역';
