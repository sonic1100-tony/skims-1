--
-- Table structure for table `lse_spvsn_bj`
--

DROP TABLE IF EXISTS `lse_spvsn_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_spvsn_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `spvsn_flg_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리구분코드',
  `rcp_seqno` decimal(5,0) DEFAULT NULL COMMENT '접수순번',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `py_lmit_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '지급제한여부',
  `prpn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비례여부',
  `sbcvr_py_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '부담보지급여부',
  `dsdt` date DEFAULT NULL COMMENT '결정일자',
  `py_ibamt` decimal(15,0) DEFAULT NULL COMMENT '지급보험금액',
  `exc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '실행여부',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `o1_spvsn_exc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '1차감리실행여부',
  `o1_spvsn_dtcn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차감리세부내용',
  `o1_spvsn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차감리직원번호',
  `o1_spvsn_dt` date DEFAULT NULL COMMENT '1차감리일자',
  `o2_spvsn_exc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '2차감리실행여부',
  `o2_spvsn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차감리직원번호',
  `o2_spvsn_dt` date DEFAULT NULL COMMENT '2차감리일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_spvsn_bj_00` (`rcp_yymm`,`rcp_nv_seqno`,`plyno`,`cc_seq`,`spvsn_flg_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감리대상';
