--
-- Table structure for table `fin_br_fd_spc`
--

DROP TABLE IF EXISTS `fin_br_fd_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_br_fd_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `dsqno` decimal(5,0) NOT NULL COMMENT '거래순번',
  `fd_knd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자금종류구분코드',
  `cash_usamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '현금사용금액',
  `tf_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체지급금액',
  `dp_wdrc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금출금구분코드',
  `dp_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금원장번호',
  `dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_br_fd_spc_00` (`stdt`,`orgcd`,`dsqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1489 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지점자금내역';
