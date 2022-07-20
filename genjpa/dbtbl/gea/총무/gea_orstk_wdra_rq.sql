--
-- Table structure for table `gea_orstk_wdra_rq`
--

DROP TABLE IF EXISTS `gea_orstk_wdra_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_orstk_wdra_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `dps_dt` date NOT NULL COMMENT '예탁일자',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rq_stct` decimal(7,0) NOT NULL COMMENT '요청주식수',
  `wdra_seccp_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인출증권사코드',
  `wdra_seccp_actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '인출증권사계좌번호',
  `wdra_prdt` date DEFAULT NULL COMMENT '인출예정일자',
  `wdra_rq_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인출요청상태코드',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_orstk_wdra_rq_00` (`reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='우리사주인출요청';
