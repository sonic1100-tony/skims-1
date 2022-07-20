--
-- Table structure for table `ccm_hira_trs_dcu_head`
--

DROP TABLE IF EXISTS `ccm_hira_trs_dcu_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hira_trs_dcu_head` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trs_dcuno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '송신문서번호',
  `trs_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '송신직원번호',
  `trsdt` date NOT NULL COMMENT '송신일자',
  `trs_finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송신파일명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hira_trs_dcu_head_00` (`trs_dcuno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심평원송신문서헤더';
