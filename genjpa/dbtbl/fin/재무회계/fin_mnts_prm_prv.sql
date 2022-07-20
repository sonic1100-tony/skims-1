--
-- Table structure for table `fin_mnts_prm_prv`
--

DROP TABLE IF EXISTS `fin_mnts_prm_prv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_mnts_prm_prv` (
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장종류코드',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `gu_cr_slpno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '구발생전표번호',
  `ar_dlay_rs_inp_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '정리지연사유입력직원번호',
  `ar_dlay_rs_iptdt` date DEFAULT NULL COMMENT '정리지연사유입력일자',
  `ar_dlay_rs_inp_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정리지연사유입력시간',
  `o1_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재직원번호',
  `o1_prvdt` date DEFAULT NULL COMMENT '1차결재일자',
  `o1_prv_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재시간',
  `o2_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재직원번호',
  `o2_prvdt` date DEFAULT NULL COMMENT '2차결재일자',
  `o2_prv_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재시간',
  `o3_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차결재직원번호',
  `o3_prvdt` date DEFAULT NULL COMMENT '3차결재일자',
  `o3_prv_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차결재시간',
  `ar_pl_dt` date DEFAULT NULL COMMENT '정리계획일자',
  `dlay_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연사유',
  `prv_reqdt` date DEFAULT NULL COMMENT '결재요청일자',
  `ctl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통제여부',
  `ar_pl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정리계획구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ldgno`,`ldg_kndcd`,`crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가수보험료결재';
