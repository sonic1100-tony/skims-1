--
-- Table structure for table `gea_prts_etdv_crr`
--

DROP TABLE IF EXISTS `gea_prts_etdv_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prts_etdv_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `cr_dthms` datetime NOT NULL COMMENT '발생일시',
  `ntg_mfg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입고출고구분코드',
  `dl_qant` decimal(10,0) NOT NULL COMMENT '처리수량',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '처리자직원번호',
  `rqno` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_prts_etdv_crr_00` (`itmcd`,`cr_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인쇄물입출고이력';
