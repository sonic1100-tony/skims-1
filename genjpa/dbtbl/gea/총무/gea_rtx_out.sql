--
-- Table structure for table `gea_rtx_out`
--

DROP TABLE IF EXISTS `gea_rtx_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rtx_out` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rtxno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증번호',
  `out_seqno` decimal(5,0) NOT NULL COMMENT '출력순번',
  `out_dthms` datetime DEFAULT NULL COMMENT '출력일시',
  `out_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '출력기관코드',
  `out_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '출력직원번호',
  `out_ap_rq_dthms` datetime DEFAULT NULL COMMENT '출력승인요청일시',
  `out_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력승인직원번호',
  `out_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력상태코드',
  `out_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_rtx_out_00` (`rtxno`,`out_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증출력';
