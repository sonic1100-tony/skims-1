--
-- Table structure for table `fin_crpca_dl_spc_rcv`
--

DROP TABLE IF EXISTS `fin_crpca_dl_spc_rcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca_dl_spc_rcv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crtdt` date NOT NULL COMMENT '생성일자',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드회사코드',
  `crt_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '생성시간',
  `tlm_rcv_sno` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '전문수신일련번호',
  `rcv_dat_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신데이터내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_crpca_dl_spc_rcv_00` (`crtdt`,`crd_cmpcd`,`crt_hms`,`tlm_rcv_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드거래내역수신';
