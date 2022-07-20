--
-- Table structure for table `com_lms_msg_spc`
--

DROP TABLE IF EXISTS `com_lms_msg_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_lms_msg_spc` (
  `msg_cn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '메시지내용구분코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `msg_dt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지상세내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`msg_cn_flgcd`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='LMS메시지내역';
