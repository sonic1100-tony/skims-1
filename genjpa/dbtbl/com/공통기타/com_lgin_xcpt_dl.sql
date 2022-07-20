--
-- Table structure for table `com_lgin_xcpt_dl`
--

DROP TABLE IF EXISTS `com_lgin_xcpt_dl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_lgin_xcpt_dl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mac_adr` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'MAC주소',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요청기관코드',
  `aces_ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접근IP주소',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자결재문서아이디',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `cno_ap_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접속승인상태코드',
  `xcpt_rq_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예외요청사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_lgin_xcpt_dl_00` (`mac_adr`,`rqog_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='로그인예외처리';
