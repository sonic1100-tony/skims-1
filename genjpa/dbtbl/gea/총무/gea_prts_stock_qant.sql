--
-- Table structure for table `gea_prts_stock_qant`
--

DROP TABLE IF EXISTS `gea_prts_stock_qant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prts_stock_qant` (
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `acm_ntg_qant` decimal(10,0) DEFAULT NULL COMMENT '누적입고수량',
  `acm_mfg_qant` decimal(10,0) DEFAULT NULL COMMENT '누적출고수량',
  `prts_stock_qant` decimal(10,0) NOT NULL COMMENT '인쇄물재고수량',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`itmcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인쇄물재고수량';
