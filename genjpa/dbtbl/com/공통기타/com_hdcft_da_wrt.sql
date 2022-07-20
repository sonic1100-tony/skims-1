--
-- Table structure for table `com_hdcft_da_wrt`
--

DROP TABLE IF EXISTS `com_hdcft_da_wrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_hdcft_da_wrt` (
  `hdcft_dano` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '수기자료번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `wrtdt` date DEFAULT NULL COMMENT '작성일자',
  `wrter_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작성자직원번호',
  `hdcft_da_wrt_ct` decimal(5,0) DEFAULT NULL COMMENT '수기자료작성건수',
  `cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인여부',
  `cnfm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인자직원번호',
  `cnfdt` date DEFAULT NULL COMMENT '확인일자',
  `ts_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전송여부',
  `stdt` date DEFAULT NULL COMMENT '기준일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`hdcft_dano`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수기자료작성';
