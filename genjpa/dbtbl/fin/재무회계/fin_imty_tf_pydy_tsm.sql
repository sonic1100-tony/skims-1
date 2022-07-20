--
-- Table structure for table `fin_imty_tf_pydy_tsm`
--

DROP TABLE IF EXISTS `fin_imty_tf_pydy_tsm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_imty_tf_pydy_tsm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `deldt` date NOT NULL COMMENT '거래일자',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `bkct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '은행건수',
  `bkamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '은행금액',
  `ldgct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '원장건수',
  `ldamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원장금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_imty_tf_pydy_tsm_00` (`deldt`,`bkcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='즉시이체지급일계';
