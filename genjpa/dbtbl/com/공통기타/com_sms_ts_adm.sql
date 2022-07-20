--
-- Table structure for table `com_sms_ts_adm`
--

DROP TABLE IF EXISTS `com_sms_ts_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_sms_ts_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `sms_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SMS일련번호',
  `rsv_snd_hms` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예약발송시간',
  `sms_snd_chn_flgcd` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS발송채널구분코드',
  `msg_knd_1` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지종류1',
  `msg_knd_2` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지종류2',
  `msg_knd_3` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지종류3',
  `msg_knd_4` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지종류4',
  `snd_msg` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송메시지',
  `ctm_hpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객휴대폰번호',
  `ctm_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객주민번호',
  `ctm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객성명',
  `sndr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송자성명',
  `snd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송직원번호',
  `sms_asrno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS회신번호',
  `sms_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS응답코드',
  `msg_typ` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지타입',
  `msg_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지제목',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_sms_ts_adm_00` (`sms_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SMS전송관리';
