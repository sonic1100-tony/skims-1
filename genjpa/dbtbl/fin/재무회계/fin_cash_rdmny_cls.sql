--
-- Table structure for table `fin_cash_rdmny_cls`
--

DROP TABLE IF EXISTS `fin_cash_rdmny_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cash_rdmny_cls` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `bt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '권종구분코드',
  `bt_qant` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '권종수량',
  `btamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '권종금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`orgcd`,`bt_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='현금시재마감';
