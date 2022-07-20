--
-- Table structure for table `cus_bsns_ch_ap`
--

DROP TABLE IF EXISTS `cus_bsns_ch_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bsns_ch_ap` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ch_dlno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '변경처리번호',
  `plyno_or_lnno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호/대출번호',
  `noty_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림여부',
  `rflt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반영여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bsns_ch_ap_00` (`ch_dlno`,`plyno_or_lnno`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업무변경적용';
