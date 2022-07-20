--
-- Table structure for table `fin_dl_rst_spc`
--

DROP TABLE IF EXISTS `fin_dl_rst_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dl_rst_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `deldt` date NOT NULL COMMENT '거래일자',
  `lpnt_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래구분코드',
  `dlno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래번호',
  `opcmp_apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운용사승인번호',
  `opcmp_apdt` date DEFAULT NULL COMMENT '운용사승인일자',
  `opcmp_ap_hms` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운용사승인시각',
  `rflt_pnt_num` decimal(15,0) DEFAULT NULL COMMENT '반영포인트수',
  `lpnt_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엘포인트응답코드',
  `ans_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답상세코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_dl_rst_spc_00` (`deldt`,`lpnt_dl_flgcd`,`dlno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='거래결과내역';
