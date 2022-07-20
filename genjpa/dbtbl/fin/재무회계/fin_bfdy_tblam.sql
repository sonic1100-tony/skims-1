--
-- Table structure for table `fin_bfdy_tblam`
--

DROP TABLE IF EXISTS `fin_bfdy_tblam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bfdy_tblam` (
  `deldt` date NOT NULL COMMENT '거래일자',
  `dfpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예금상대처코드',
  `woncr_tblam` decimal(15,0) DEFAULT '0' COMMENT '원화잔액',
  `fc_tblam` decimal(17,2) DEFAULT '0.00' COMMENT '외화잔액',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`deldt`,`dfpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전일잔액';
