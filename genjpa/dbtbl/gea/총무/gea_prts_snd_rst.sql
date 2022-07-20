--
-- Table structure for table `gea_prts_snd_rst`
--

DROP TABLE IF EXISTS `gea_prts_snd_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prts_snd_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seq` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '신청회차',
  `snd_seq` decimal(3,0) NOT NULL COMMENT '발송회차',
  `invc_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송장번호',
  `scan_dt` date DEFAULT NULL COMMENT '스캔일자',
  `scan_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔구분코드',
  `scan_bzp` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔영업소',
  `dl_rstdt` date DEFAULT NULL COMMENT '처리결과일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_prts_snd_rst_00` (`rqdt`,`rq_seq`,`snd_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인쇄물발송결과';
