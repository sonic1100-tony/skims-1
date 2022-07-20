--
-- Table structure for table `fin_rv_xc`
--

DROP TABLE IF EXISTS `fin_rv_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rv_xc` (
  `rvdt` date NOT NULL COMMENT '수납일자',
  `rv_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수납기관코드',
  `rv_xcno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수납정산번호',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `rv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수납구분코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `rvct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '수납건수',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `rv_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수납원화금액',
  `rv_fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '수납외화금액',
  `diamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차액구분코드',
  `diamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '차액금액',
  `fx_pldoq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외환차손익구분코드',
  `fx_pqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '외환차손익금액',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `bll_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '어음이자',
  `rvi_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부활이자',
  `rv_slpdt` date DEFAULT NULL COMMENT '수납전표일자',
  `rv_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납전표번호',
  `ccldt` date DEFAULT NULL COMMENT '취소일자',
  `ccl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소직원번호',
  `ccl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '취소여부',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rvdt`,`rv_orgcd`,`rv_xcno`),
  KEY `idx_fin_rv_xc_10` (`rv_xcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수납정산';
