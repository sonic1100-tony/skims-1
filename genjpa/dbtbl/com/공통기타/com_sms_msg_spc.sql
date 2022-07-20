--
-- Table structure for table `com_sms_msg_spc`
--

DROP TABLE IF EXISTS `com_sms_msg_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_sms_msg_spc` (
  `msg_cn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '메시지내용구분코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `strdt` date DEFAULT NULL COMMENT '시작일자',
  `nddt` date DEFAULT NULL COMMENT '종료일자',
  `msg_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지제목',
  `msg_dt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지상세내용',
  `inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력직원번호',
  `iptdt` date DEFAULT NULL COMMENT '입력일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`msg_cn_flgcd`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SMS메시지내역';
