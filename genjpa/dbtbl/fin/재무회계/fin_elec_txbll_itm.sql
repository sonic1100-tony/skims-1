--
-- Table structure for table `fin_elec_txbll_itm`
--

DROP TABLE IF EXISTS `fin_elec_txbll_itm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_elec_txbll_itm` (
  `elec_tx_bll_apno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '전자세금계산서승인번호',
  `itm_seqno` decimal(4,0) NOT NULL COMMENT '품목순번',
  `itm_purdt` date DEFAULT NULL COMMENT '품목구입일자',
  `itmnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목명',
  `itm_std` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목규격',
  `itm_qant` decimal(7,0) DEFAULT NULL COMMENT '품목수량',
  `itm_unprc` decimal(15,0) DEFAULT NULL COMMENT '품목단가',
  `itm_syamt` decimal(15,0) NOT NULL COMMENT '품목공급가액',
  `itm_axamt` decimal(15,0) NOT NULL COMMENT '품목부가세액',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`elec_tx_bll_apno`,`itm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전자세금계산서품목';
