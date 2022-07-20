--
-- Table structure for table `cus_ctm_pbrlt_msg_snd`
--

DROP TABLE IF EXISTS `cus_ctm_pbrlt_msg_snd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_pbrlt_msg_snd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `pbrlt_msg_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '홍보메시지유형코드',
  `sms_bsns_smccd` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS업무소분류코드',
  `snd_dthms` datetime NOT NULL COMMENT '발송일시',
  `sms_snd_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS발송결과코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_pbrlt_msg_snd_00` (`ctmno`,`pbrlt_msg_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객홍보메시지발송';
