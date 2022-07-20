--
-- Table structure for table `fin_py_cr_dtspc`
--

DROP TABLE IF EXISTS `fin_py_cr_dtspc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_py_cr_dtspc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `py_crno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '지급발생번호',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `py_woamt` decimal(15,0) NOT NULL COMMENT '지급원화금액',
  `py_fcamt` decimal(17,2) DEFAULT NULL COMMENT '지급외화금액',
  `pylno` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `pypl_actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처계좌번호',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '예금주명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_py_cr_dtspc_00` (`py_crno`,`cr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급발생상세내역';
