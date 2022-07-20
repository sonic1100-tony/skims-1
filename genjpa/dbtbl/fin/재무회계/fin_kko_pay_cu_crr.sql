--
-- Table structure for table `fin_kko_pay_cu_crr`
--

DROP TABLE IF EXISTS `fin_kko_pay_cu_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_kko_pay_cu_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cu_api_tsdt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적립API전송일자',
  `cu_api_ts_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적립API전송시간',
  `kko_cu_sno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오적립일련번호',
  `tid` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'TID',
  `pay_cu_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'PAY적립업무구분코드',
  `tfamt` decimal(15,0) DEFAULT NULL COMMENT '이체금액',
  `kko_acc_id` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오계정ID',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `err_msg` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '에러메시지',
  `cu_rst` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적립결과',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='카카오PAY적립이력';
