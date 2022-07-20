--
-- Table structure for table `fin_rtman_spc_acc_rltn`
--

DROP TABLE IF EXISTS `fin_rtman_spc_acc_rltn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rtman_spc_acc_rltn` (
  `rtman_ky_crtdt` date NOT NULL COMMENT '퇴직연금키생성일자',
  `rtman_ky_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '퇴직연금키구분코드',
  `no1_rtman_rltn_it_key` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '1번퇴직연금연계항목KEY',
  `no2_rtman_rltn_it_key` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '2번퇴직연금연계항목KEY',
  `no3_rtman_rltn_it_key` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '3번퇴직연금연계항목KEY',
  `no4_rtman_rltn_it_key` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '4번퇴직연금연계항목KEY',
  `ts_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송여부',
  `rtman_rltn_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '퇴직연금연계KEY',
  `lgsys_ccl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간계취소여부',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `tf_dl_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체처리시간',
  `ptrm_dt` date DEFAULT NULL COMMENT '전기일자',
  `spc_acc_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별계정KEY',
  `ot_bsns_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타업무KEY',
  `rtman_dl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '퇴직연금거래유형코드',
  `db_crdt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차변대변구분코드',
  `rtman_slp_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '퇴직연금전표유형코드',
  `o2_ot_bsns_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차타업무KEY',
  `dcu_head_ref_key` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서헤더참조KEY',
  `no2_db_crdt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번차변대변구분코드',
  `spc_acccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별계정코드',
  `spc_acamt` decimal(15,0) DEFAULT NULL COMMENT '특별계정금액',
  `no1_gu_slpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번구전표번호',
  `no2_gu_slpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번구전표번호',
  `gn_acc_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반계정내용',
  `cnr_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '센터내용',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산기관코드',
  `rtman_py_fndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '퇴직연금지급펀드코드',
  `notcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요코드',
  `crnt_dt` date DEFAULT NULL COMMENT '현재일자',
  `fllr_vl` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '필러값',
  `rtman_tlm_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '퇴직연금전문내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rtman_ky_crtdt`,`rtman_ky_flgcd`,`no1_rtman_rltn_it_key`,`no2_rtman_rltn_it_key`,`no3_rtman_rltn_it_key`,`no4_rtman_rltn_it_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='퇴직연금특별계정연계';
