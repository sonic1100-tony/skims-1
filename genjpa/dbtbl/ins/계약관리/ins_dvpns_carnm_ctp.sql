--
-- Table structure for table `ins_dvpns_carnm_ctp`
--

DROP TABLE IF EXISTS `ins_dvpns_carnm_ctp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_carnm_ctp` (
  `yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '년도',
  `qtr` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '분기',
  `opedt` date NOT NULL COMMENT '시행일자',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '차명코드',
  `ctp_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차종용도코드',
  `psn_crp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개인법인구분코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차종코드',
  `ctp_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종세부코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`yr`,`qtr`,`opedt`,`cnmcd`,`ctp_usecd`,`psn_crp_flgcd`,`catcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원차명차종';
