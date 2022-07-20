--
-- Table structure for table `lse_yycl_ic_quint`
--

DROP TABLE IF EXISTS `lse_yycl_ic_quint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_yycl_ic_quint` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `md_ins_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료보험구분코드',
  `sct_seqno` decimal(2,0) NOT NULL COMMENT '구간순번',
  `sct_str_amt` decimal(15,0) NOT NULL COMMENT '구간시작금액',
  `sct_nd_amt` decimal(15,0) NOT NULL COMMENT '구간종료금액',
  `self_chamt` decimal(15,0) NOT NULL COMMENT '자기부담금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_yycl_ic_quint_00` (`st_yr`,`md_ins_flgcd`,`sct_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='연도별소득분위';
