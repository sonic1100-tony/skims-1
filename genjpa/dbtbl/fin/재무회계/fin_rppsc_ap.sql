--
-- Table structure for table `fin_rppsc_ap`
--

DROP TABLE IF EXISTS `fin_rppsc_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rppsc_ap` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ap_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '승인관리번호',
  `rppsc_ap_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '책임자승인상태코드',
  `rppsc_apdt` date DEFAULT NULL COMMENT '책임자승인일자',
  `rppsc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '책임자기관코드',
  `rppsc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '책임자직원번호',
  `dl_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_rppsc_ap_00` (`ap_admno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='책임자승인';
