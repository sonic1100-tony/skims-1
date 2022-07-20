--
-- Table structure for table `ccm_fds_mr_bj_adm`
--

DROP TABLE IF EXISTS `ccm_fds_mr_bj_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_fds_mr_bj_adm` (
  `mr_seqno` decimal(10,0) NOT NULL COMMENT 'MR순번',
  `mr_bj_flgcd` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MR대상구분코드',
  `mr_tpcd` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MR유형코드',
  `mr_dt_tpnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MR세부유형명',
  `mr_dscno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MR식별번호',
  `mr_dscno_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MR식별번호2',
  `mr_fmlr_ncknm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MR식별명',
  `mr_grdcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'MR등급코드',
  `alarm_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알람대상여부',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `ersdt` date DEFAULT NULL COMMENT '삭제일자',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `bsns_ky_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무키번호',
  `ikd_nm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종명',
  `imu_tpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책유형명',
  `imu_rsnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면책사유명',
  `fds_acdnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FDS사건명',
  `cvap_tpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원유형명',
  `lw_kndnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소송종류명',
  `lw_enddt` date DEFAULT NULL COMMENT '소송종결일자',
  `jg_rstnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판결결과명',
  `rq_orgnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청기관명',
  `dl_rstnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과명',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`mr_seqno`),
  KEY `idx_ccm_fds_mr_bj_adm_10` (`mr_dscno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='FDSMR대상관리';
