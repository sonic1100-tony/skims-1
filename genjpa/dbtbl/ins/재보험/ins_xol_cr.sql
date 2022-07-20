--
-- Table structure for table `ins_xol_cr`
--

DROP TABLE IF EXISTS `ins_xol_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_xol_cr` (
  `xol_crano` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL계약번호',
  `xol_trtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL특약코드',
  `xol_trt_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL특약형태코드',
  `xol_trt_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL특약년월',
  `xol_trt_strdt` date DEFAULT NULL COMMENT 'XOL특약시작일자',
  `xol_trt_nddt` date DEFAULT NULL COMMENT 'XOL특약종료일자',
  `xol_cnrdt` date DEFAULT NULL COMMENT 'XOL계약일자',
  `xp_netps_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '예상순보유보험료',
  `xp_netps_sub_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예상순보유SUB화폐코드',
  `risk_uiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'RISK공제금액',
  `evnt_uiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'EVENT공제금액',
  `cmbnd_uiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'COMBINED공제금액',
  `sub_uiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT 'SUB공제금액',
  `uiamt_mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공제금액화폐코드',
  `xp_netps_sub_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '예상순보유SUB보험료',
  `pym_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입방법코드',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `gu_fire_dat_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구화재데이터여부',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `re_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재구분코드',
  `acm_uiamt` decimal(15,0) DEFAULT NULL COMMENT '누적공제금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`xol_crano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='XOL계약';
