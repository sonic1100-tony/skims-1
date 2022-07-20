--
-- Table structure for table `gea_dl_inr_amt_dt`
--

DROP TABLE IF EXISTS `gea_dl_inr_amt_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_dl_inr_amt_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dl_inrno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래통합번호',
  `dl_amt_seqno` decimal(5,0) NOT NULL COMMENT '거래금액순번',
  `evd_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '증빙종류코드',
  `aseno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산번호',
  `dl_amtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래금액코드',
  `syamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공급가액',
  `axamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부가세액',
  `etamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '기타금액',
  `dnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '거래금액',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_dl_inr_amt_dt_00` (`dl_inrno`,`dl_amt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='거래통합금액상세';
