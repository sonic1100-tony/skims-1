--
-- Table structure for table `com_cno_ap`
--

DROP TABLE IF EXISTS `com_cno_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_cno_ap` (
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rqfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청직원번호',
  `mac_adr` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'MAC주소',
  `aces_ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접근IP주소',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청기관코드',
  `cno_ap_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접속승인상태코드',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `ap_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인기관코드',
  `ap_dthms` datetime DEFAULT NULL COMMENT '승인일시',
  `ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`reqdt`,`rqfno`,`mac_adr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='접속승인';
