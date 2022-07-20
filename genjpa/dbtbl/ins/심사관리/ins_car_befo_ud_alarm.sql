--
-- Table structure for table `ins_car_befo_ud_alarm`
--

DROP TABLE IF EXISTS `ins_car_befo_ud_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_car_befo_ud_alarm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자코드',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `nw_rnw_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신규갱신코드',
  `ins_itm_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목소분류코드',
  `cr_ud_chncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자동차심사채널코드',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '차명코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차종코드',
  `cr_tycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차형태코드',
  `befo_ud_alarm_seqno` decimal(5,0) NOT NULL COMMENT '사전심사알람순번',
  `befo_ud_alarm_atrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전심사알람속성코드',
  `befo_ud_alarm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전심사알람내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_car_befo_ud_alarm_00` (`nrdcd`,`ins_st`,`nw_rnw_cd`,`ins_itm_smccd`,`cr_ud_chncd`,`cnmcd`,`catcd`,`cr_tycd`,`befo_ud_alarm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차계약차량사전심사알람';
