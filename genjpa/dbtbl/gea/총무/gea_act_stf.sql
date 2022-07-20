--
-- Table structure for table `gea_act_stf`
--

DROP TABLE IF EXISTS `gea_act_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_act_stf` (
  `ctvno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '활동번호',
  `act_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '활동직원번호',
  `act_strdt` date NOT NULL COMMENT '활동시작일자',
  `act_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '활동종료일자',
  `act_hms` decimal(4,0) NOT NULL DEFAULT '0' COMMENT '활동시간',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctvno`,`act_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='활동직원';
