--
-- Table structure for table `fin_lq_spc`
--

DROP TABLE IF EXISTS `fin_lq_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_lq_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lq_ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '청산원장번호',
  `lq_seqno` decimal(5,0) NOT NULL COMMENT '청산순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `woncr_lqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화청산금액',
  `fc_lqamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화청산금액',
  `woncr_lq_cr_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화청산발생잔액',
  `fc_lq_cr_tblam` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화청산발생잔액',
  `diamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차액구분코드',
  `diamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '차액금액',
  `fx_pldoq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외환차손익구분코드',
  `fx_pqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '외환차손익금액',
  `lqdt` date NOT NULL COMMENT '청산일자',
  `lq_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '청산기관코드',
  `lq_xcno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '청산정산번호',
  `lq_asmt_seqno` decimal(5,0) DEFAULT NULL COMMENT '청산지정순번',
  `asmt_xcrt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지정환율유형코드',
  `asmt_ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '지정적용환율',
  `asmt_xcrt_apdt` date DEFAULT NULL COMMENT '지정환율적용일자',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표라인번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_lq_spc_00` (`lq_ldgno`,`lq_seqno`),
  KEY `idx_fin_lq_spc_10` (`lqdt`,`lq_xcno`,`lq_orgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청산내역';
