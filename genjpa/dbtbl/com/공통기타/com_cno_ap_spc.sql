--
-- Table structure for table `com_cno_ap_spc`
--

DROP TABLE IF EXISTS `com_cno_ap_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_cno_ap_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rqfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청직원번호',
  `mac_adr` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'MAC주소',
  `xcpt_rq_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예외요청사유',
  `ap_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_cno_ap_spc_00` (`reqdt`,`rqfno`,`mac_adr`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='접송승인내역';
