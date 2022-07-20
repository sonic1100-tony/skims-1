--
-- Table structure for table `com_tlm_mpp_clss_ch`
--

DROP TABLE IF EXISTS `com_tlm_mpp_clss_ch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_tlm_mpp_clss_ch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문관리번호',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `tlm_clss_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '전문클래스명',
  `tlm_hngl_clss_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문한글클래스명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_tlm_mpp_clss_ch_00` (`tlm_admno`,`ch_seqno`,`tlm_clss_nm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전문매핑클래스변경';
