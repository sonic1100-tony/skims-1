--
-- Table structure for table `str_fxqtt_index_sts`
--

DROP TABLE IF EXISTS `str_fxqtt_index_sts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_fxqtt_index_sts` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `inctl_fxqtt_index_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제정량지표구분코드',
  `inctl_index_sts_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제지표통계구분코드',
  `hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '본부기관코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `bj_extr_st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '대상추출기준년월',
  `cls_da_seqno` decimal(10,0) NOT NULL COMMENT '마감자료순번',
  `pmtr_seqno` decimal(3,0) NOT NULL COMMENT '파라미터순번',
  `bj_cdvl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상코드값',
  `pmtr_nm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '파라미터명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_fxqtt_index_sts_00` (`inctl_fxqtt_index_flgcd`,`inctl_index_sts_flgcd`,`hdqt_orgcd`,`orgcd`,`seq`,`bj_extr_st_yymm`,`cls_da_seqno`,`pmtr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='정량지표통계';
