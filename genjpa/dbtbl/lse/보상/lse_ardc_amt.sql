--
-- Table structure for table `lse_ardc_amt`
--

DROP TABLE IF EXISTS `lse_ardc_amt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ardc_amt` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `woncr_cv_xiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산추산금액',
  `usd_xiamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미화추산금액',
  `woncr_cv_pyamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '원화환산지급금액',
  `usd_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미화지급금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전결금액';
