--
-- Table structure for table `fin_cu_st`
--

DROP TABLE IF EXISTS `fin_cu_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cu_st` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `lpnt_chncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트채널코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime DEFAULT NULL COMMENT '적용종료일시',
  `st_insst` date DEFAULT NULL COMMENT '기준보험시기',
  `cu_sl_mn_lmamt` decimal(17,2) DEFAULT NULL COMMENT '적립매출최소한도금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`lpnt_chncd`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적립기준';
