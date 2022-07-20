--
-- Table structure for table `ins_udwr_sb`
--

DROP TABLE IF EXISTS `ins_udwr_sb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_udwr_sb` (
  `ud_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '심사직원번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `sb_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '대체직원번호',
  `ud_gd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사상품구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `ud_pl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사설계구분코드',
  `sb_udwr_apcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대체심사자적용코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`ud_stfno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사자대체';
