--
-- Table structure for table `fin_bdg_dp_cnn_ldg`
--

DROP TABLE IF EXISTS `fin_bdg_dp_cnn_ldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bdg_dp_cnn_ldg` (
  `dsodt` date NOT NULL COMMENT '발의일자',
  `bdg_dpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산발의번호',
  `dp_ar_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발의정리방법코드',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장종류코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `dlamt` decimal(15,0) DEFAULT NULL COMMENT '처리금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dsodt`,`bdg_dpno`,`dp_ar_mtdcd`,`ldg_kndcd`,`ldgno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산발의관련원장';
