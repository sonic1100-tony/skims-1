--
-- Table structure for table `gea_cb`
--

DROP TABLE IF EXISTS `gea_cb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cb` (
  `fnd_mrdt` date NOT NULL COMMENT '기금모금일자',
  `fnd_mr_seqno` decimal(5,0) NOT NULL COMMENT '기금모금순번',
  `cb_seqno` decimal(5,0) NOT NULL COMMENT '기부순번',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소속기관코드',
  `hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본부기관코드',
  `srvgp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '봉사단기관코드',
  `dtycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직책코드',
  `clpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직급코드',
  `cb_actct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '기부구좌수',
  `nbamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기부금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`fnd_mrdt`,`fnd_mr_seqno`,`cb_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기부';
