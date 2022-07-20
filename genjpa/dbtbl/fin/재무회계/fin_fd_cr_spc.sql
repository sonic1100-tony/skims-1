--
-- Table structure for table `fin_fd_cr_spc`
--

DROP TABLE IF EXISTS `fin_fd_cr_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fd_cr_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crdt` date NOT NULL COMMENT '발생일자',
  `crzcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '발생기관코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `fd_knd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자금종류구분코드',
  `cash_uramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '현금발생금액',
  `tf_lm_uramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체한도발생금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_fd_cr_spc_00` (`crdt`,`crzcd`,`cr_seqno`,`fd_knd_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=15351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자금발생내역';
