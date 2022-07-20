--
-- Table structure for table `fin_nfnc_rtm_slr_ba`
--

DROP TABLE IF EXISTS `fin_nfnc_rtm_slr_ba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_nfnc_rtm_slr_ba` (
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `rtm_slr_cost_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '퇴직급여원가구분코드',
  `gn_admcs` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '일반관리비',
  `prop_admcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '재산관리비',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yr`,`rtm_slr_cost_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비금융퇴직급여기초';
