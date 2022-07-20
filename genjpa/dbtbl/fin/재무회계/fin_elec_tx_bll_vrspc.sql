--
-- Table structure for table `fin_elec_tx_bll_vrspc`
--

DROP TABLE IF EXISTS `fin_elec_tx_bll_vrspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_elec_tx_bll_vrspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `evd_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '증빙종류코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업자번호',
  `ssdt` date NOT NULL COMMENT '발행일자',
  `elec_tx_bll_apno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '전자세금계산서승인번호',
  `bzpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자명',
  `syamt` decimal(15,0) NOT NULL COMMENT '공급가액',
  `axamt` decimal(15,0) NOT NULL COMMENT '부가세액',
  `smamt` decimal(15,0) NOT NULL COMMENT '합계금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_elec_tx_bll_vrspc_00` (`evd_kndcd`,`bzmno`,`ssdt`,`elec_tx_bll_apno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전자세금계산서검증내역';
