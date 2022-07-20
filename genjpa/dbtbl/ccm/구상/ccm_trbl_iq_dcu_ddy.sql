--
-- Table structure for table `ccm_trbl_iq_dcu_ddy`
--

DROP TABLE IF EXISTS `ccm_trbl_iq_dcu_ddy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trbl_iq_dcu_ddy` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trbl_iq_rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁심의접수번호',
  `trbl_iq_dcu_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분쟁심의문서종류코드',
  `dcu_apdt` date DEFAULT NULL COMMENT '문서승인일자',
  `ch_stdt` date DEFAULT NULL COMMENT '변경기준일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trbl_iq_dcu_ddy_00` (`trbl_iq_rcpno`,`trbl_iq_dcu_kndcd`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='분쟁심의문서기일';
