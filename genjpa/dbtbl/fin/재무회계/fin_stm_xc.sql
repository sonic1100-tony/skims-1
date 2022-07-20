--
-- Table structure for table `fin_stm_xc`
--

DROP TABLE IF EXISTS `fin_stm_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_stm_xc` (
  `stmdt` date NOT NULL COMMENT '결제일자',
  `stm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '결제기관코드',
  `stm_xcno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '결제정산번호',
  `stm_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결제종류코드',
  `stamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '결제금액',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드회사코드',
  `rcp_strdt` date DEFAULT NULL COMMENT '접수시작일자',
  `rcp_nddt` date DEFAULT NULL COMMENT '접수종료일자',
  `sl_tot_strdt` date DEFAULT NULL COMMENT '매출집계시작일자',
  `sl_tot_nddt` date DEFAULT NULL COMMENT '매출집계종료일자',
  `dmdt` date DEFAULT NULL COMMENT '청구일자',
  `dmct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '청구건수',
  `emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구금액',
  `rtct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '반송건수',
  `rramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '반송금액',
  `rsct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '보류건수',
  `rsamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보류금액',
  `cncct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '해제건수',
  `roamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '해제금액',
  `smct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '합계건수',
  `smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '합계금액',
  `feamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수수료금액',
  `dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '입금금액',
  `crd_cm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '카드수수료',
  `stm_slpdt` date DEFAULT NULL COMMENT '결제전표일자',
  `stm_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제전표번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stmdt`,`stm_orgcd`,`stm_xcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='결제정산';
