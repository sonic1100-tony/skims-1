--
-- Table structure for table `ins_noty_log_dt`
--

DROP TABLE IF EXISTS `ins_noty_log_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_noty_log_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bsns_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무대분류코드',
  `noty_dt` date NOT NULL COMMENT '알림일자',
  `noty_seqno` decimal(10,0) NOT NULL COMMENT '알림순번',
  `noty_mtd_seqno` decimal(5,0) NOT NULL COMMENT '알림방법순번',
  `noty_metcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알림방식코드',
  `hpno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰번호',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_noty_log_dt_00` (`bsns_lclcd`,`noty_dt`,`noty_seqno`,`noty_mtd_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='알림로그상세';
