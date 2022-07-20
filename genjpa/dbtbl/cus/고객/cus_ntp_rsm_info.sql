--
-- Table structure for table `cus_ntp_rsm_info`
--

DROP TABLE IF EXISTS `cus_ntp_rsm_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ntp_rsm_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ntp_cd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '기업코드',
  `strvl` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '시작값',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `dl_spc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래내역',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ntp_rsm_info_00` (`ntp_cd`,`strvl`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기업개요정보';
