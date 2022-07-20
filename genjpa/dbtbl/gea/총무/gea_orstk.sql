--
-- Table structure for table `gea_orstk`
--

DROP TABLE IF EXISTS `gea_orstk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_orstk` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `dps_dt` date NOT NULL COMMENT '예탁일자',
  `dps_stct` decimal(7,0) NOT NULL COMMENT '예탁주식수',
  `lnctr_stct` decimal(7,0) DEFAULT NULL COMMENT '대출담보주식수',
  `tx_bj_stct` decimal(7,0) DEFAULT NULL COMMENT '과세대상주식수',
  `sale_rf_stct` decimal(7,0) DEFAULT NULL COMMENT '매도상환주식수',
  `remn_stct` decimal(7,0) DEFAULT NULL COMMENT '잔여주식수',
  `orstk_ln_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우리사주대출기관코드',
  `wdra_av_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '인출가능여부',
  `wdra_impr_rs` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인출불가사유',
  `wdra_av_mtd_xpnm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인출가능방법설명',
  `wdra_seccp_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인출증권사코드',
  `wdra_seccp_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인출증권사계좌번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`,`dps_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='우리사주';
