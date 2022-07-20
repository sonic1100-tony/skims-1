--
-- Table structure for table `gea_inex_amt_dt`
--

DROP TABLE IF EXISTS `gea_inex_amt_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_inex_amt_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `rstm_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '부동산등록번호',
  `av_pl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '실적계획구분코드',
  `dl_amt_seqno` decimal(5,0) NOT NULL COMMENT '거래금액순번',
  `dl_amtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래금액코드',
  `dnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '거래금액',
  `incm_exp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수입지출구분코드',
  `ta_dltp_o1_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총무거래유형1차코드',
  `ta_dltp_o2_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총무거래유형2차코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_inex_amt_dt_00` (`st_yymm`,`rstm_rgtno`,`av_pl_flgcd`,`dl_amt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수지금액상세';
