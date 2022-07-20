--
-- Table structure for table `fin_bdl_tf_tf_spc`
--

DROP TABLE IF EXISTS `fin_bdl_tf_tf_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bdl_tf_tf_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `bdl_tf_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일괄이체업무구분코드',
  `bdl_tf_dl_seqno` decimal(5,0) NOT NULL COMMENT '일괄이체처리순번',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `tf_ct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '이체건수',
  `tfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_bdl_tf_tf_spc_00` (`st_yymm`,`bdl_tf_bsns_flgcd`,`bdl_tf_dl_seqno`,`bkcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일괄이체이체내역';
