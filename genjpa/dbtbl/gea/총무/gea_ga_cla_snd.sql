--
-- Table structure for table `gea_ga_cla_snd`
--

DROP TABLE IF EXISTS `gea_ga_cla_snd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ga_cla_snd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cla_ord_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '약관주문번호',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `invc_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송장번호',
  `cla_snd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약관발송구분코드',
  `dl_rstdt` date DEFAULT NULL COMMENT '처리결과일자',
  `cla_snd_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '약관발송방법코드',
  `adcrg_amt` decimal(15,0) DEFAULT NULL COMMENT '과금금액',
  `rt_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반송사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_ga_cla_snd_00` (`cla_ord_no`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='GA약관발송';
